# Porting notes: three.js WebGPU as an example

## Current boundaries

This repository provides decompiled code, asset parameters, and linkage evidence from the real client. A TSL/WGSL port has not been completed, and there is no demo aligned with in-game screenshots.

The Windows client ships Direct3D SM5 bytecode; no standalone `.hlsl`, `.glsl`, `.usf`, or `.ush` source files were found here. Recovering the algorithm and resource semantics first, then writing TSL/WGSL, is closer to the goal than mechanically translating large amounts of decompiled HLSL into GLSL.

three.js' current WebGPU material workflow uses NodeMaterial / TSL. TSL generates shaders through the rendering backend; if hand-written WGSL is needed, study TSL's `wgslFn` interface and the support in the chosen three.js version. The legacy WebGL `ShaderMaterial` string path is not a direct migration route here. No three.js dependency version has been selected or tested yet; pin the version when implementing.

## Existing evidence and open questions

| Module | Existing evidence | Next step |
|---|---|---|
| Character surface | SDK `MSM_ToonCharacter`; character materials and instances; HLSL sets | Identify the lighting, shadow threshold, texture channels, and material-parameter sources of the main surface pass |
| Hair | `MSM_ToonHair`; 60 shader references in `M_CH_ToonHair` | Separate surface color, hair highlight, and transparency-related branches; confirm whether distinct passes exist |
| Outline | `MSM_Outline`; `M_CH_Outline`; ToonOutline family; SDK depth/normal/color outline fields | Determine how geometric and screen-space outlines actually relate; do not pick one implementation from field names alone |
| Face and skin | Parent chain `MI_CH_AvatarFace -> MI_CH_AvatarSkin -> MI_CH_MobSkin`; related textures and parameters | Recover material inheritance, color overrides, and masks; do not assume the face uses SDF without evidence |
| Shadow color | SDK `FToonShadowHSV`, `CalcToonShadowColor` declarations | Find the constant table/runtime values and interpolation logic; SDK function bodies are only ProcessEvent wrappers |
| Rim light | Real parameters `RimExponent`, `RimThreshold`, `RimBaseReflectFraction`, etc. | Trace the corresponding constants and computations; confirm working space, occlusion conditions, and falloff |
| Environment and day/night | Toon lighting intensity/saturation curves; MasterShader assets | Recover directional light, sky light, exposure, and post-processing conditions |

## Recommended order

1. **Pick one material and one reference frame.** Start with one of the character main material, hair, or outline. Record camera, model pose, main light direction, exposure, and background so lighting differences are not mistaken for shader differences.
2. **Identify what each shader does.** Use input/output signatures, texture samples, output targets, and constant access within the ShaderMap set to distinguish depth, shadow, base pass, and other candidates. Pass names need further evidence; the current index does not recover them.
3. **Recover parameter bindings.** `cb0[17].xyz` is a constant-register access, not a specific material parameter. Map it using uniform-expression data, parameter layouts, or available frame captures. Do not copy UE constant buffers verbatim.
4. **Recover texture semantics.** The JSON contains texture object paths, but this repository does not export every dependent texture as a browser image. After obtaining the textures, verify color space, normal encoding, channel packing, UVs, samplers, and mip settings.
5. **Write confirmed computations as small TSL node functions.** Handle base color, shadow color, rim light, specular, transparency, and outline separately. Implement only what the current material needs, then add branches incrementally.
6. **Compare intermediate values.** Display normals, lighting terms, shadow masks, material IDs, rim light, and final color separately. Compare screenshots with exposure and tone mapping fixed.

## Type and operation migration

| HLSL/UE expression | TSL/WGSL migration notes |
|---|---|
| `float3`, `float4` | Use the corresponding vector type and preserve scalar/vector broadcast semantics |
| `saturate(x)` | Equivalent to clamping to `[0,1]`; do not normalize instead |
| `lerp(a,b,t)` | Maps to mix; confirm whether `t` was clamped in the original logic |
| `mul(a,b)` | Determine row/column vector conventions and matrix storage; do not just swap the function name |
| `ddx`/`ddy`, SampleGrad | Pay attention to screen-coordinate orientation, derivative consistency, and branch control flow |
| `clip(x)` | Consider alpha testing and depth writes together; do not always convert to alpha blending |
| `Texture2D` / `SamplerState` | Recover independent resource and sampler bindings; preserve filtering and addressing modes |
| `cbN[...]` | Rebuild semantic fields before mapping uniforms; WGSL structure alignment needs a separate check |
| `SV_Position`, interpolated inputs | Provided again by the three.js geometry/node pipeline; verify space conversions |
| GBuffer/SceneTexture | May require custom render targets or a post-processing chain; cannot be replaced directly by an ordinary mesh texture |

Forms such as `#define cmp -` in `shaders/hlsl` come from the decompiler, not the original author's naming style. Read the assembly alongside the HLSL; files containing `Needs manual fix` must not be treated as compilable implementations.

## Completion criteria

- Name the specific material, pass, parameters, and textures that were ported.
- Record the three.js version, browser/WebGPU backend, and test scene used.
- Include intermediate-value comparisons and final screenshots; distinguish compiling, numeric equivalence, and visual similarity.
- Keep annotations on unidentified parts; do not name an approximation "the original formula."

Reference: the official three.js TSL documentation and NodeMaterial source, listed in [SOURCES.md](SOURCES.md).
