# BLUE PROTOCOL Shader

**English** | [中文](README.zh-CN.md)

A research dataset of shaders and materials extracted, decoded, and documented from the original PC client of _BLUE PROTOCOL_, together with a reproducible extraction and decompilation workflow, cross-validation records, and an evidence trail. It covers PAK unpacking, UE shader-library parsing, DXBC decompilation, material asset export, and ShaderMap linkage, and can serve as a reference for rendering implementations, toon-shading research, or reverse-engineering analysis.

**The HLSL here is a representation decompiled from Direct3D SM5 bytecode, not the original official HLSL. This repository is a dataset and research record, not a runnable rendering project.** Most temporary variable and constant-buffer names cannot be recovered, and some decompiled output still needs manual fixes. No generic toon-shading formula is presented as the game's implementation, and no GLSL was generated to impersonate original files.

## What this repository contains

| Part                    | Contents                                                                                                                  |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| Data indexes            | Complete JSON/NDJSON indexes of shader libraries, entries, ShaderMaps, and material links                                 |
| Readable shaders        | HLSL and Direct3D SM5 assembly named by UE shader hash                                                                    |
| Material data           | Raw JSON, parameter summaries, and per-name index pages for 594 materials, material functions, and parameter collections  |
| Evidence and validation | Compile sampling, stage validation, SDK field provenance, and file checksum manifests                                     |
| Tooling and workflow    | Scripts for extraction, parsing, importing, and checking, plus full steps to reproduce from your own client               |
| Downstream reference    | How to turn confirmed register and texture-sampling evidence into explainable rendering modules for porting to any engine |

## Where to start

1. **[Material guide](docs/MATERIAL-GUIDE.md)**: start from character, face, hair, eye, and outline entries to see real parameter values, parent materials, and linked HLSL.
2. **[Full material index](materials/README.md)**: 594 material, material-function, and parameter-collection asset JSON files, with base and patch packages kept separate.
3. **[Results and validation](docs/RESULTS.md)**: full statistics, validation scope, failures, and open items.
4. **[Format and evidence](docs/FORMAT.md)**, **[sources and tools](docs/SOURCES.md)**: how each conclusion was reached.
5. **[Reproduction workflow](docs/REPRODUCE.md)**: redo the unpacking, extraction, and decompilation from your own client.

Optional downstream material:

- **[Porting reference](docs/WEBGPU-PORTING.md)**: uses three.js / TSL / WGSL as an example of turning register and texture-sampling evidence into explainable rendering modules; the same organized results apply to other engines and custom pipelines.

## What has been done

- Verified that the AES key published in the SDK README can read this client's encrypted PAK indexes and export the target assets.
- Scanned **118 PAK files**. The client's `binary_information.ini` reports version **1.08.000.837664**; the SDK README reports UE **4.27.2**.
- Exported **57 `.ushaderbytecode` shader libraries** and **2 `GlobalShaderCache` files**. Same-named files from the base and patch packages are stored separately; the 2 caches are not included in the library-parsing statistics below.
- Parsed **274,755 shader entries** across the libraries, yielding **182,602 distinct DXBC blobs** by UE shader hash. Every entry received a bounds and DXBC container check.
- Exported **594 asset JSON files**; **428** of them matched a ShaderMap hash in the `.uexp` of the same package, for **436 links** in total, covering **17,500 distinct shaders**.
- Generated HLSL and Direct3D assembly for shaders in the common, character, and global libraries and for shaders referenced by linked materials. Final counts are in the [results report](docs/RESULTS.md) and the machine-readable [summary.json](catalog/summary.json).
- This snapshot contains **24,217 HLSL files** and **24,279 assembly files**; 62 shaders produced no HLSL, and 5,483 HLSL files carry manual-fix markers.
- **16 vertex/pixel HLSL files** for hair, face, armor, and outline were sampled through `D3DCompile`, and **16 passed**. This is not a per-file compile guarantee and does not prove visual equivalence.

Analysis date: **2026-10-22**. The SDK is pinned to commit `a238c0a128256d91bcf9d3d8bf87b406ed27b237`; its DLLs, injection code, and game-modification features were not included in the workflow.

## Layout

```text
catalog/
  summary.json              Analysis scope and statistics
  libraries/                Complete per-library shader entry index (NDJSON)
  shader-maps/              ShaderMap hash -> shader hash lists
  readable-shaders.json     Readable file paths, stages, and manual-fix markers
  materials.json            Material names, parent materials, entry paths
  hlsl-validation.json      16 compile-sample results
  sdk-rendering-evidence.json SDK field declarations and original line numbers
  file-integrity.ndjson     SHA-256 manifest of data files
materials/
  raw/                     UAssetGUI JSON preserving original serialized values
  summary/                 Parameters, parent materials, texture references, ShaderMap links
  by-name/                 Markdown pages linking each material to HLSL/assembly
shaders/
  hlsl/{vs,ps,gs,hs,ds,cs}/  Decompiled HLSL named by UE shader hash
  assembly/                Direct3D SM5 assembly
docs/                      Research findings, format, reproduction, porting reference, sources
tools/                     Extraction, parsing, import, and validation scripts
tests/                     LZ4 and shader-format boundary tests
```

Full DXBC blobs, game packages, unpacked binary materials, tool executables, logs, and local configuration are not committed to Git. Readable results are plain Git text files; large indexes are split per library. Reading the existing data does not require Git LFS.

## Reading the existing results

Reading the Markdown, HLSL, and JSON needs neither the game client nor extra dependencies. Running the checks requires **Node.js 22 or newer** and no npm install:

```powershell
npm test
npm run verify
```

Validation checks data-file checksums, index paths, material page links, shader stages, statistics, and whether raw packages or executables were committed by mistake.

To find real parameter values:

```powershell
# With ripgrep installed:
rg 'RimExponent|RimThreshold|Spec_ValueOffset|BaseColorTexture' materials/summary
rg 'MSM_ToonHair|MSM_ToonCharacter|MSM_Outline' materials/summary
```

Start from `materials/by-name` to find a specific material's ShaderMap, then read the linked HLSL. One material maps to many vertex factories, passes, and permutations; do not infer a whole material's algorithm from the first shader.

## Reproducing from your own client

See **[REPRODUCE.md](docs/REPRODUCE.md)** for the full steps. Extraction and decompilation tools run on Windows; parsing and data checks use Node.js.

```powershell
Copy-Item config.example.json config.local.json
# Edit the paths; put the local key in config.local.json or set BLUEPROTOCOL_AES_KEY.
npm run index
npm run extract:shaders
npm run decode
npm run extract:materials
npm run materials:json
npm run materials:link
npm run decompile:core
npm run decompile:materials
```

The tools are not distributed with this repository. This client's patch packages contain special index entries, so some repak versions fail outright; the reproduction document records the compatibility workaround, tool hashes, and limitations. Do not treat "a file exists in the directory" as a successful export: check exit status, file sizes, and downstream parsing as well.

## Publishing to a Git repository

This is a standalone project. Git is initialized locally, with no remote configured and nothing pushed. Once the remote is known, run from the project directory:

```powershell
git add .
git commit -m "Add BLUE PROTOCOL shader research dataset and workflow"
git remote add origin <your repository URL>
git push -u origin main
```

If the remote already has commits, sync the branch according to your repository's workflow instead of force-pushing. Ownership of the research data and third-party tools is recorded separately in [RIGHTS.md](RIGHTS.md); no fictional open-source license is attached to the game-derived data.
