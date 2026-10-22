# Results and validation

Analysis date: 2026-10-22; client version: `1.08.000.837664`.

| Metric | Count |
|---|---:|
| PAK files | 118 |
| version-2 shader libraries | 57 |
| Shader entries in libraries (including cross-package duplicates) | 274,755 |
| Distinct DXBC blobs | 182,602 |
| Decode failures | 0 |
| Selected readable code scope | 24,279 |
| HLSL generated | 24,217 |
| Assembly generated | 24,279 |
| Missing HLSL (assembly retained) | 62 |
| HLSL files with manual-fix markers | 5,483 |
| Material / material-function / parameter-collection JSON | 594 |
| Assets with a ShaderMap match | 428 |
| ShaderMap reference matches | 436 |
| Distinct shaders referenced by materials | 17,500 |
| HLSL compile samples | 16 |
| Samples passed | 16 |

## Scope

All shader libraries were fully decoded. Decompilation covers the common, character, and global libraries plus shaders referenced by the materials selected here; it is not a full decompilation of all 182,602 DXBC blobs in the game. All 17,500 shaders referenced by linked materials produced HLSL, but producing HLSL is not the same as compiling it.

Material assets come from Character/Common/Material and Character/Material in Chunk200, and Environment/Common/MasterShader in Chunk100. The 594 files include base and patch versions, so they do not represent 594 distinct materials active at runtime.

The 2 GlobalShaderCache files were exported successfully but were not included in version-2 library decoding; the 57 libraries and 2 caches in the shader index must not be merged into one statistic.

## Validation performed

- AES index reading and target asset extraction succeeded; all 59 target library/cache files are non-empty.
- Every library passed array, offset, size, decompression, and DXBC chunk boundary checks; 274,755 entries decoded without failure.
- The `SHDR`/`SHEX` program type of all 182,602 distinct DXBC blobs was cross-checked against the UE frequency; the stage mismatch count is 0.
- DXBC blobs sharing the same UE shader hash have identical SHA-256 content; the index keeps every source library.
- All 594 JSON files have a readable Export structure; 428 link to a same-package ShaderMap through the full 20-byte hash in the original `.uexp`.
- 16 HLSL files compiled successfully with `D3DCompile`; see the [sample records](../catalog/hlsl-validation.json) for the specific materials, hashes, and profiles.
- `npm test` covers LZ4 overlapping matches, invalid references, truncated data, shader stage conflicts, and unknown versions. `npm run verify` checks project file checksums, links, sizes, and statistics.

## Failures and unverified items

62 shaders produced no HLSL: 31 pixel shaders and 31 compute shaders. Their assembly was retained. See [decompilation-status.json](../catalog/decompilation-status.json) for the per-shader list and [decompile-recovery.json](../catalog/decompile-recovery.json) for retry exit status. These entries were not filled in with generic implementations.

5,483 HLSL files contain decompiler manual-fix markers or clearly incomplete entry points. The remaining files were not all recompiled either; "no marker" must not be read as "verified correct."

The sample deliberately chose representative code without manual-fix markers, so it is not a random-sample pass rate. A successful compile validates syntax and types only; it does not guarantee control flow, resource binding, performance, or visual equivalence.

Full material node graphs, shader pass/permutation names, complete bindings between constant buffers and material parameters, and the final patch-mount view have not been recovered. No three.js scene has been implemented, and no browser rendering comparison has been made.

## Traceable files

- [Analysis statistics](../catalog/summary.json)
- [Per-package summary](../catalog/pak-summary.json)
- [Target file export records](../catalog/shader-extraction.json)
- [Full library index entry point](../catalog/libraries.json)
- [Readable shader file entry point](../catalog/readable-shaders.json)
- [Data file SHA-256 manifest](../catalog/file-integrity.ndjson)

Data-file checksums do not cover Git itself, hand-written documentation, or tool executables. Tool hashes are recorded separately in [tool-provenance.json](../catalog/tool-provenance.json).

## Compiler warnings

1 sample results contain compiler warnings; see the diagnostics in the sample records. This run includes the X3578 warning that output o5 is not fully initialized; even when compilation returns success, every control-flow path must be checked before porting.
