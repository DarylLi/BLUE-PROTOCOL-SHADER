import fs from "node:fs";
import path from "node:path";
import readline from "node:readline";
import crypto from "node:crypto";

const [sourceArg, projectArg] = process.argv.slice(2);
if (!sourceArg || !projectArg)
  throw Error(
    "Usage: node tools/import-analysis.mjs ANALYSIS_ROOT PROJECT_ROOT",
  );
const source = path.resolve(sourceArg),
  project = path.resolve(projectArg);
if (source === project) throw Error("Source and project must differ");
const posix = (s) => s.replaceAll("\\", "/");
const write = (name, value) => {
  const file = path.join(project, name);
  fs.mkdirSync(path.dirname(file), { recursive: true });
  fs.writeFileSync(
    file,
    typeof value === "string" ? value : JSON.stringify(value, null, 2) + "\n",
  );
};
const copy = (src, dest) => {
  const out = path.join(project, dest);
  fs.mkdirSync(path.dirname(out), { recursive: true });
  fs.copyFileSync(src, out);
};
const summary = JSON.parse(
  fs.readFileSync(path.join(source, "catalog/summary.json")),
);
const stageValidation = JSON.parse(
  fs.readFileSync(path.join(source, "catalog/stage-validation.json")),
);
const materials = JSON.parse(
  fs.readFileSync(path.join(source, "catalog/materials-summary.json")),
);
const shaderMeta = new Map(),
  libraryHandles = new Map(),
  stageCounts = {},
  files = [];
const manifestFd = (() => {
  fs.mkdirSync(path.join(project, "catalog"), { recursive: true });
  return fs.openSync(path.join(project, "catalog/file-integrity.ndjson"), "w");
})();
const record = (file) => {
  const b = fs.readFileSync(path.join(project, file));
  fs.writeSync(
    manifestFd,
    JSON.stringify({
      path: file,
      bytes: b.length,
      sha256: crypto.createHash("sha256").update(b).digest("hex"),
    }) + "\n",
  );
};

for await (const line of readline.createInterface({
  input: fs.createReadStream(path.join(source, "catalog/shaders.ndjson")),
  crlfDelay: Infinity,
})) {
  if (!line) continue;
  const x = JSON.parse(line),
    catalog = `catalog/libraries/${x.library}.ndjson`;
  if (!libraryHandles.has(catalog)) {
    fs.mkdirSync(path.dirname(path.join(project, catalog)), {
      recursive: true,
    });
    libraryHandles.set(catalog, fs.openSync(path.join(project, catalog), "w"));
  }
  const row = {
    hash: x.hash,
    stage: x.stage,
    frequency: x.frequency,
    archiveOffset: x.offset,
    compressedBytes: x.size,
    uncompressedBytes: x.usize,
    dxbcBytes: x.dxbcBytes,
    dxbcSha256: x.sha256,
    compression: x.compression,
    dxbcOffset: x.dxbcOffset,
  };
  fs.writeSync(libraryHandles.get(catalog), JSON.stringify(row) + "\n");
  if (shaderMeta.has(x.hash)) continue;
  const hlslSrc = path.join(source, "dxbc", x.stage, x.hash + ".hlsl"),
    asmSrc = path.join(source, "dxbc", x.stage, x.hash + ".msasm");
  const hlsl = fs.existsSync(hlslSrc)
    ? `shaders/hlsl/${x.stage}/${x.hash}.hlsl`
    : null;
  const assembly = fs.existsSync(asmSrc)
    ? `shaders/assembly/${x.stage}/${x.hash}.msasm`
    : null;
  let needsManualFix = false;
  if (hlsl) {
    let text = fs.readFileSync(hlslSrc, "utf8");
    needsManualFix = /Needs manual fix|void main\)/i.test(text);
    text = text.replace(
      /^\/\/ ---- Created with 3Dmigoto[^\r\n]*/,
      "// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.",
    );
    write(hlsl, text);
    record(hlsl);
  }
  if (assembly) {
    copy(asmSrc, assembly);
    record(assembly);
  }
  const meta = {
    hash: x.hash,
    stage: x.stage,
    hlsl,
    assembly,
    needsManualFix,
    dxbcSha256: x.sha256,
  };
  shaderMeta.set(x.hash, meta);
  stageCounts[x.stage] = (stageCounts[x.stage] || 0) + 1;
  if (hlsl || assembly) files.push(meta);
}
for (const fd of libraryHandles.values()) fs.closeSync(fd);
for (const catalog of libraryHandles.keys()) record(catalog);
write("catalog/readable-shaders.json", files);
record("catalog/readable-shaders.json");
const libSummary = [];
for (const file of fs
  .readdirSync(path.join(source, "catalog"))
  .filter((f) => f.endsWith(".maps.json"))) {
  const lib = JSON.parse(fs.readFileSync(path.join(source, "catalog", file))),
    id = file.replace(".maps.json", "");
  const name = `catalog/shader-maps/${file}`;
  write(name, {
    library: id,
    pak: lib.source.pak,
    archive: lib.source.path,
    group: lib.group,
    maps: lib.maps,
  });
  record(name);
  libSummary.push({
    id,
    pak: lib.source.pak,
    archive: lib.source.path,
    group: lib.group,
    maps: lib.maps.length,
    catalog: `catalog/libraries/${id}.ndjson`,
    shaderMaps: name,
  });
}
write("catalog/libraries.json", libSummary);
const materialIndex = [];
for (const material of materials) {
  const relative = material.asset.replace(/\.uasset$/, ".json"),
    json = `materials/raw/${relative}`,
    detail = `materials/summary/${relative}`,
    page = `materials/by-name/${relative.replace(/\.json$/, ".md")}`;
  // Preserve original serialized 64-bit values exactly by copying the JSON bytes.
  copy(path.join(source, material.sourceJson), json);
  record(json);
  const item = {
    ...material,
    sourceJson: json,
    shaderMaps: material.shaderMaps.map((m) => ({
      ...m,
      shaders: m.shaders.map(
        (hash) => shaderMeta.get(hash) || { hash, missingCatalog: true },
      ),
    })),
  };
  write(detail, item);
  record(detail);
  const href = (file) =>
    posix(
      path.relative(
        path.dirname(path.join(project, page)),
        path.join(project, file),
      ),
    );
  const name = material.objects[0]?.name || path.basename(relative, ".json");
  let md = `# ${name}\n\nSource package: \`${material.pak}\`\n\nAsset: \`${material.asset}\`\n\n[Parameter summary](${href(detail)}) · [Raw JSON](${href(json)})\n\n`;
  for (const obj of material.objects) {
    md += `Object: \`${obj.name}\`; class: \`${obj.class}\`; parent material: \`${obj.parent || "no explicit reference"}\`; explicit ShadingModel: \`${obj.shadingModel?.value || "not serialized / may be inherited"}\`.\n\n`;
  }
  if (!item.shaderMaps.length)
    md +=
      "No ShaderMap hash from the same package was matched in this asset's .uexp; continue searching through the parent material.\n";
  for (const map of item.shaderMaps) {
    md += `## ShaderMap ${map.hash}\n\nMatch basis: the 20-byte hash at .uexp byte offset ${map.byteOffset} is identical to the shader library in the same package; ${map.shaderCount} shaders in total. The UE pass / permutation name of each shader was not identified further.\n\n| Stage | Shader hash | HLSL | Assembly | Status |\n|---|---|---|---|---|\n`;
    for (const s of map.shaders)
      md += `| ${s.stage || "?"} | \`${s.hash}\` | ${s.hlsl ? `[View](${href(s.hlsl)})` : "Not generated"} | ${s.assembly ? `[View](${href(s.assembly)})` : "Not generated"} | ${s.needsManualFix ? "Manual-fix marker present" : s.hlsl ? "Not individually compile-verified" : "Retained in the full DXBC export"} |\n`;
    md += "\n";
  }
  write(page, md);
  materialIndex.push({
    name,
    asset: material.asset,
    pak: material.pak,
    parent: material.objects[0]?.parent || null,
    shadingModel: material.objects[0]?.shadingModel?.value || null,
    shaderMaps: material.shaderMaps.length,
    shaderReferences: material.shaderMaps.reduce(
      (s, m) => s + m.shaders.length,
      0,
    ),
    page,
    summary: detail,
    json,
  });
}
write("catalog/materials.json", materialIndex);
let materialsMd =
  "# Material index\n\nBase and patch packages are kept separately. They are not automatically merged into the final mount state used at game runtime.\n\n| Material | Source | Explicit shading model | ShaderMap / shader references |\n|---|---|---|---|\n";
for (const m of materialIndex)
  materialsMd += `| [${m.name}](${posix(path.relative("materials", m.page))}) | ${m.pak} | ${m.shadingModel || "not explicitly recorded"} | ${m.shaderMaps} / ${m.shaderReferences} |\n`;
write("materials/README.md", materialsMd);
const validation = JSON.parse(
  fs
    .readFileSync(path.join(source, "catalog/hlsl-validation.json"), "utf8")
    .replace(/^\uFEFF/, ""),
);
for (const v of validation) {
  v.hlsl = `shaders/hlsl/${v.stage}/${v.hash}.hlsl`;
  v.diagnostics = v.diagnostics
    .replaceAll(path.join(source, "dxbc"), "shaders/hlsl")
    .replaceAll(posix(path.join(source, "dxbc")), "shaders/hlsl")
    .replaceAll("\\", "/")
    .replaceAll("\u0000", "");
}
write("catalog/hlsl-validation.json", validation);
write("catalog/stage-validation.json", stageValidation);
write(
  "catalog/decode-failures.json",
  JSON.parse(fs.readFileSync(path.join(source, "catalog/failures.json"))),
);
const report = {
  clientVersion: "1.08.000.837664",
  sdkCommit: "a238c0a128256d91bcf9d3d8bf87b406ed27b237",
  analysisDate: "2026-10-22",
  pakCount: 118,
  shaderLibraryCount: summary.libraries,
  shaderEntries: summary.entries,
  uniqueDxbc: summary.uniqueShaders,
  decodeFailures: summary.failures,
  stageCounts,
  hlsl: files.filter((x) => x.hlsl).length,
  assembly: files.filter((x) => x.assembly).length,
  hlslWithManualFixMarkers: files.filter((x) => x.hlsl && x.needsManualFix)
    .length,
  materials: materials.length,
  materialsWithShaderMaps: materials.filter((x) => x.shaderMaps.length).length,
  shaderMapReferences: materials.reduce((s, x) => s + x.shaderMaps.length, 0),
  materialReferencedShaders: new Set(
    materials.flatMap((x) => x.shaderMaps.flatMap((m) => m.shaders)),
  ).size,
  compileSamples: validation.length,
  compileSamplesPassed: validation.filter((x) => x.passed).length,
  archives: summary.archives,
};
write("catalog/summary.json", report);
fs.closeSync(manifestFd);
console.log(JSON.stringify({ ...report, archives: undefined }, null, 2));
