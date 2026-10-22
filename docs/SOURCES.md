# Sources and tools

Research date: 2026-10-22. The full client came from local files provided by the user; this project did not download a game client from the network.

## SDK and versions

- [DNNDHH/BLUE_PROTOCOL_SDK](https://github.com/DNNDHH/BLUE_PROTOCOL_SDK), branch `JP`.
- Pinned commit: `a238c0a128256d91bcf9d3d8bf87b406ed27b237`.
- [Pinned README](https://github.com/DNNDHH/BLUE_PROTOCOL_SDK/blob/a238c0a128256d91bcf9d3d8bf87b406ed27b237/README.md): source of the game version, UE version, and public AES key.
- Client `binary_information.ini`: `project_version=1.08.000.837664`.
- Rendering-field evidence is in [sdk-rendering-evidence.json](../catalog/sdk-rendering-evidence.json), including original file paths and 1-based line numbers. A field's existence does not prove a computation formula.

## Format references

- [CUE4Parse / FSerializedShaderArchive.cs](https://github.com/FabianFG/CUE4Parse/blob/master/CUE4Parse/UE4/Shaders/FSerializedShaderArchive.cs): array and structure layout of the version-2 shader archive.
- [CUE4Parse / FShaderCodeArchive.cs](https://github.com/FabianFG/CUE4Parse/blob/master/CUE4Parse/UE4/Shaders/FShaderCodeArchive.cs): archiveVersion branches and context.
- [CUE4Parse](https://github.com/FabianFG/CUE4Parse): Apache-2.0. This project's scripts were written from the layout and verified against local data; the library is not bundled.

## Extraction and material parsing

- [repak](https://github.com/trumank/repak), primarily a **standalone compatibility build of 0.2.2** here; the source build is a tool the user already had.
- [repak 0.2.2 Oodle loader](https://github.com/trumank/repak/blob/v0.2.2/oodle_loader/src/lib.rs): the old DLL pin and loading flow.
- [repak 0.2.3 Oodle loader](https://github.com/trumank/repak/blob/v0.2.3/oodle_loader/src/lib.rs): Oodle 2.9.10 source URL and SHA-256.
- The DLL used here is `oo2core_9_win64.dll`, SHA-256 `6f5d41a7892ea6b2db420f2458dad2f84a63901c9a93ce9497337b16c195f457`, matching the value specified by the upstream loader.
- The DLL was obtained from the [OodleUE SDK 2.9.10](https://github.com/WorkingRobot/OodleUE/tree/main/Engine/Source/Programs/Shared/EpicGames.Oodle/Sdk/2.9.10) location referenced by that loader. The DLL is not included in this repository.
- [UAssetGUI 1.1.0](https://github.com/atenfyr/UAssetGUI/releases/tag/v1.1.0) / [UAssetAPI](https://github.com/atenfyr/UAssetAPI): material property export; upstream license is MIT. The resulting JSON records tool version information.
- [FModel](https://github.com/4sval/FModel): a UE asset viewer investigated during the study; the batch results here were produced with repak and UAssetGUI, and FModel is not presented as an executed step.

## Decompilation and validation

- [3Dmigoto 1.3.16](https://github.com/bo3b/3Dmigoto/releases/tag/1.3.16), using the offline tools from the `cmd_Decompiler-1.3.16.zip` release asset.
- `--disassemble-ms` produces Direct3D assembly; `-D` produces reconstructed HLSL. No injection-based runtime method was used.
- Windows `d3dcompiler_47.dll` and its `D3DCompile` entry point were used for the 16-HLSL compile sample.
- Binary tools and their DLLs are not distributed with the Git project; tool versions and actual file hashes are recorded in [tool-provenance.json](../catalog/tool-provenance.json).

## three.js research entry points

- [Three.js Shading Language documentation](https://github.com/mrdoob/three.js/wiki/Three.js-Shading-Language).
- [WebGPURenderer source](https://github.com/mrdoob/three.js/blob/dev/src/renderers/webgpu/WebGPURenderer.js).
- [NodeMaterial source](https://github.com/mrdoob/three.js/blob/dev/src/materials/nodes/NodeMaterial.js).

These three links are porting-route references; this project does not claim that anything has been run successfully on a particular three.js version.
