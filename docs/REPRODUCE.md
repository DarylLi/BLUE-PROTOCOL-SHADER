# Reproduction workflow

## Environment and inputs

- Windows x64; Node.js 22+.
- The original BLUE PROTOCOL client's `Content/Paks`, version `1.08.000.837664` for this snapshot.
- The AES-256 key for that version. This snapshot took it from the DNNDHH/BLUE_PROTOCOL_SDK README; see [sources](SOURCES.md).
- repak, the 3Dmigoto command-line decompiler, and UAssetGUI; none of them are included in this repository.
- Enough space to hold shader libraries, full DXBC blobs, material binaries, and intermediate output. `workRoot` can point to another disk.

Copy `config.example.json` to `config.local.json` and fill in `paksRoot`, `workRoot`, and tool paths. Relative paths are resolved from the project root. The key can go in the Git-ignored local configuration or be supplied through the `BLUEPROTOCOL_AES_KEY` environment variable.

## Tool combination and patch index issue

Some directory indexes in this game patch contain `0x80000000` entries:

- repak 0.2.2 reports these entries and skips them, but its Oodle loader pins an old DLL hash whose automatic download no longer succeeds on this machine.
- The repak 0.2.3 build tested here can use Oodle 2.9.10, but hit an array out-of-bounds error when reading these indexes.
- A separate repak 0.2.2 compatibility build was used: its pinned Oodle DLL hash constant was updated to the verified Oodle 2.9.10 DLL hash, while retaining the old behavior of skipping the special index entries. Tools in the original game directory were not modified.

The `tools/prepare-compatible-repak.mjs` script used for reproduction first verifies the Oodle DLL SHA-256 and strictly checks the expected constant count. It applies only to the repak 0.2.2 build used here and is not a general-purpose binary patcher; it stops if the expected constant is absent.

1. Obtain a repak 0.2.2 executable from upstream.
2. Place the verified Oodle 2.9.10 `oo2core_9_win64.dll` in `tools/bin/repak/`. The DLL source and hash for this snapshot are in [SOURCES.md](SOURCES.md).
3. From the project root, run:

```powershell
node tools/prepare-compatible-repak.mjs "D:/Tools/repak-0.2.2/repak.exe"
```

Output goes to `tools/bin/repak-compatible/` and contains the standalone copy, the DLL, and a modification record. All of `tools/bin/` is Git-ignored. You may instead configure another repak build that is verified to handle this client correctly, but re-check the index, extraction, and parsing results.

Place the 3Dmigoto `cmd_Decompiler` **1.3.16** program and its bundled `d3dcompiler_46.dll` in the configured directory. Material JSON was exported with **UAssetGUI 1.1.0**; the selected assets here parse as UE4.27 tagged-property format without an extra `.usmap`.

The SDK also ships `Mappings/BLUEPROTOCOL.usmap`; it is a property mapping, not shader source, and its presence is not evidence that material graphs were recovered.

## Extraction, parsing, and linkage

```powershell
npm run index
npm run extract:shaders
npm run decode
npm run extract:materials
npm run materials:json
npm run materials:link
npm run decompile:core
npm run decompile:materials
npm run decompile:recover
```

What each step does:

| Command | Output and scope |
|---|---|
| `index` | Writes per-package file lists, PAK sizes, and candidate render assets to `work/analysis`; the name filter only selects candidates and does not cover every material type |
| `extract:shaders` | Extracts shader libraries and GlobalShaderCache files while preserving the source package hierarchy; does not unpack the whole game |
| `decode` | Parses the 57 version-2 libraries, decompresses and validates them, and writes DXBC blobs by hash; the 2 GlobalShaderCache files are kept separately and not parsed with this structure |
| `extract:materials` | Extracts Chunk200 character common materials, character materials, and Chunk100 environment MasterShader assets, keeping base and patch packages separate |
| `materials:json` | Exports the 594 selected `.uasset` files as UAssetGUI JSON; matching `.uexp` files are kept alongside for parsing |
| `materials:link` | Parses Parent, parameters, and texture references, and matches ShaderMap hashes in the same package |
| `decompile:core` | Shaders in the common, character, and global scope; makes no claim that the whole game was decompiled |
| `decompile:materials` | Adds every shader referenced by linked materials |
| `decompile:recover` | Retries missing HLSL/assembly one by one so that a single process failure does not skew batch statistics |

All source paths and tool errors remain in the local work directory. The later import script strips local absolute paths from the published material.

## Compile sampling

```powershell
npm run sample:select
# Use the actual workRoot from config.local.json:
./tools/validate-hlsl-samples.ps1 -Root "D:/Analysis/blueprotocol-work"
```

The sampling script selects 2 vertex and 2 pixel HLSL files each from `M_CH_ToonHair`, `MI_CH_AvatarFace`, `MI_CH_AvatarArmor`, and `M_CH_Outline` in the patch package. It avoids code marked for manual fixes, so **16/16 passing cannot be extrapolated to the whole dataset's compile rate**.

Results are recorded in `catalog/hlsl-validation.json`. Only syntax, types, and the target profile are checked; equivalence with the original bytecode or the in-game image is not.

## Importing into the Git project

```powershell
node tools/import-analysis.mjs "D:/Analysis/blueprotocol-work" "."
npm test
npm run verify
```

Prefer importing into a new empty directory, or review the changes on a clean Git branch. The importer writes generated data files but does not delete leftovers from previous versions; if you import a different version repeatedly, use a new target directory to avoid mixing versions. Large single shader indexes are split into one NDJSON file per library.

`docs/RESULTS.md` and `docs/MATERIAL-GUIDE.md` are research reports for this snapshot. After changing versions or expanding the extraction scope, update both documents and the README against the new `catalog/summary.json`; do not reuse this snapshot's statistics and conclusions.

## Not completed in this snapshot

- Full-game texture export, model export, and browser-format conversion.
- Complete merging of runtime mount priority and delete records.
- Recovery of global shader type names, shader permutations, and vertex factory names.
- Recompilation and rendering comparison for every HLSL file.
- An actual three.js/TSL/WGSL port.
