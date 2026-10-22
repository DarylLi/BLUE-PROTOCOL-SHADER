# File formats and evidence levels

## From AES to HLSL

```text
Encrypted PAK index / assets
  -> repak with the matching AES key
  -> .ushaderbytecode (archiveVersion = 2)
  -> ShaderMap / shader hashes, entry index, compressed data
  -> LZ4 decompression (the method actually used here)
  -> shader data with UE leading/trailing metadata
  -> extract DXBC via the DXBC magic, container length, and chunk table
  -> Microsoft disassembly + 3Dmigoto decompilation to HLSL
```

AES only addresses container encryption; it cannot recover source code, comments, or material node graphs already discarded during cooking/compilation.

## archiveVersion 2

The following is the UE4 layout that applies here. Integers are little-endian; arrays start with a 32-bit element count.

| Field | Element layout |
|---|---|
| ShaderMapHashes | 20 bytes per item |
| ShaderHashes | 20 bytes per item |
| ShaderMapEntries | `uint32 ShaderIndicesOffset, NumShaders, FirstPreloadIndex, NumPreloadEntries` |
| ShaderEntries | `uint64 Offset; uint32 Size, UncompressedSize; uint8 Frequency`, packed into 17 bytes |
| PreloadEntries | `int64 Offset, Size` |
| ShaderIndices | `uint32` |
| CodeData | Offset relative to the start of this section |

The layout follows CUE4Parse's `FSerializedShaderArchive` and was verified entry by entry against local client files. The parser rejects unsupported archiveVersion values; it is not a universal UE4/UE5 parser.

UE ShaderFrequency values and DXBC program types use different numeric orders:

| Stage | UE Frequency | DXBC program type |
|---|---:|---:|
| vertex / vs | 0 | 1 |
| hull / hs | 1 | 3 |
| domain / ds | 2 | 4 |
| pixel / ps | 3 | 0 |
| geometry / gs | 4 | 2 |
| compute / cs | 5 | 5 |

This project cross-checks stages using the DXBC `SHDR`/`SHEX` program type rather than guessing from directory names.

## Linking materials to ShaderMaps

`materials/summary` records the linkage method `exact-20-byte-hash-in-uexp`: it searches the raw bytes of the material's `.uexp` for the 20-byte ShaderMap hash from the shader library in the same PAK, and stores the byte offset.

This is hash-reference matching; it does not fully deserialize each material's native ShaderMap objects. It can associate an asset with a shader set, but it cannot by itself recover shader type, vertex factory, permutation ID, or render pass. Do not automatically label one pixel shader from the set as "final color" or "outline pass."

## Parameter JSON

- `materials/raw` is a byte-for-byte copy of UAssetGUI's raw JSON; 64-bit integers were not rewritten through JavaScript numbers.
- `materials/summary` is a readable projection. Do not use large integers there, which may have passed through JavaScript `Number`, as lossless serialization input; hash linkage uses the raw binary bytes and hex strings.
- `Parent` and texture object indices are resolved to object paths through the Import/Export tables.
- When a material instance has no explicit ShadingModel, it is recorded as unrecorded/maybe inherited and must not be assumed to be Unlit.
- `Extras` may still contain unparsed native data. Successfully producing JSON does not mean the full editor material graph has been recovered.

## Base and patch packages

Both `WindowsClient` and `WindowsClient_0_P` are retained. Full runtime mount priority and delete-record merging were not performed, so it cannot be claimed that every asset in the base package is still active in the current client.

repak 0.2.2 reports `0x80000000` index entries as invalid offsets and skips them. This project keeps the logs; such skipped entries were not counted as successfully exported materials. "Not exported from the patch" is not a safe reason to fall back to the base package.
