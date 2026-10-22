# Material guide

Start from the specific materials below to see parameter JSON, parent materials, and linked shaders directly. The table prefers patch versions; base versions remain in the [full index](../materials/README.md), and the two versions must not be assumed interchangeable.

| Material | Explicit model | Parent | Shader references |
|---|---|---|---:|
| [M_CH_ToonOUtline](../materials/by-name/pakchunk200-WindowsClient_0_P/BLUEPROTOCOL/Content/Character/Material/M_CH_ToonOUtline.md) | MSM_ToonCharacter | `no explicit reference` | 86 |
| [M_CH_ToonHair](../materials/by-name/pakchunk200-WindowsClient_0_P/BLUEPROTOCOL/Content/Character/Material/M_CH_ToonHair.md) | MSM_ToonHair | `no explicit reference` | 60 |
| [M_CH_Outline](../materials/by-name/pakchunk200-WindowsClient_0_P/BLUEPROTOCOL/Content/Character/Material/M_CH_Outline.md) | MSM_Outline | `no explicit reference` | 26 |
| [M_CH_ToonOutlineBlend](../materials/by-name/pakchunk200-WindowsClient_0_P/BLUEPROTOCOL/Content/Character/Material/M_CH_ToonOutlineBlend.md) | MSM_ToonCharacter | `no explicit reference` | 58 |
| [M_CH_ToonOutlineBlendDepth](../materials/by-name/pakchunk200-WindowsClient_0_P/BLUEPROTOCOL/Content/Character/Material/M_CH_ToonOutlineBlendDepth.md) | MSM_ToonCharacter | `no explicit reference` | 58 |
| [MI_CH_MobSkin](../materials/by-name/pakchunk200-WindowsClient_0_P/BLUEPROTOCOL/Content/Character/Material/MI_CH_MobSkin.md) | not explicitly recorded / may be inherited | `/Game/Character/Material/M_CH_ToonOUtline.M_CH_ToonOutline` | 86 |
| [MI_CH_AvatarSkin](../materials/by-name/pakchunk200-WindowsClient_0_P/BLUEPROTOCOL/Content/Character/Material/MI_CH_AvatarSkin.md) | not explicitly recorded / may be inherited | `/Game/Character/Material/MI_CH_MobSkin.MI_CH_MobSkin` | 86 |
| [MI_CH_AvatarFace](../materials/by-name/pakchunk200-WindowsClient_0_P/BLUEPROTOCOL/Content/Character/Material/MI_CH_AvatarFace.md) | not explicitly recorded / may be inherited | `/Game/Character/Material/MI_CH_AvatarSkin.MI_CH_AvatarSkin` | 86 |
| [MI_CH_AvatarArmor](../materials/by-name/pakchunk200-WindowsClient_0_P/BLUEPROTOCOL/Content/Character/Material/MI_CH_AvatarArmor.md) | not explicitly recorded / may be inherited | `/Game/Character/Material/MI_CH_AvatarCostume.MI_CH_AvatarCostume` | 86 |
| [MI_CH_AvatarCostume](../materials/by-name/pakchunk200-WindowsClient_0_P/BLUEPROTOCOL/Content/Character/Material/MI_CH_AvatarCostume.md) | not explicitly recorded / may be inherited | `/Game/Character/Material/MI_CH_MobCostume.MI_CH_MobCostume` | 86 |
| [M_CH_EyeBrows](../materials/by-name/pakchunk200-WindowsClient_0_P/BLUEPROTOCOL/Content/Character/Material/M_CH_EyeBrows.md) | MSM_ToonCharacter | `no explicit reference` | 60 |
| [M_CH_F000_eye_L_000](../materials/by-name/pakchunk200-WindowsClient_0_P/BLUEPROTOCOL/Content/Character/Common/Material/Eye/M_CH_F000_eye_L_000.md) | not explicitly recorded / may be inherited | `/Game/Character/Material/MI_CH_AvatarEye.MI_CH_AvatarEye` | 0 |
| [M_ENV_ToonOutline](../materials/by-name/pakchunk100-WindowsClient_0_P/BLUEPROTOCOL/Content/Environment/Common/MasterShader/Material/M_ENV_ToonOutline.md) | MSM_ToonCharacter | `no explicit reference` | 76 |

The actual spelling of `M_CH_ToonOUtline` is preserved from the asset. It explicitly uses `MSM_ToonCharacter`, while `M_CH_Outline` uses `MSM_Outline`; the word "Outline" in the name alone does not prove they are the same outline pass.

The 60 shaders of `M_CH_ToonHair` are the set inside that ShaderMap, not 60 independent materials. Its pass and permutation names have not been recovered.

## Parsed parameter example

The values below are the scalar overrides actually serialized in the patch eyebrow material. They are this instance's parameter values, not global defaults or the original formulas.

Source: [M_CH_cmn_brw_000](../materials/by-name/pakchunk200-WindowsClient_0_P/BLUEPROTOCOL/Content/Character/Common/Material/Brow/M_CH_cmn_brw_000.md).

| Parameter | Value |
|---|---:|
| `AlphaThreshold` | 0.5 |
| `MipBias` | -1 |
| `SecondaryLowIntensity` | 0.699999988079071 |
| `DistanceFar` | 6000 |
| `DistanceMiddle` | 500 |
| `DistanceNear` | 50 |
| `WeightFar` | 0.20000000298023224 |
| `WeightMiddle` | 0.6000000238418579 |
| `WeightNear` | 1 |
| `RimBaseReflectFraction` | 0.03999999910593033 |
| `RimDistance` | 1000 |
| `RimExponent` | 1.2000000476837158 |
| `RimGroundAttenuation` | 10 |
| `RimThreshold` | 0.6000000238418579 |
| `Roughness` | 0.30000001192092896 |
| `Spec_ValueOffset` | 1 |
| `RefractionDepthBias` | "+0" |

## How to read a shader

1. On a material page, pick a ShaderMap and start with the stage and assembly signature. `vs` is vertex and `ps` is pixel; geometry, tessellation, and compute stages need different porting strategies.
2. Open the HLSL and assembly together to confirm inputs/outputs and texture and constant access.
3. Look up Parent and parameter overrides in the raw/summary JSON, and keep tracing through parent materials.
4. Record confirmed computations in the [porting notes](WEBGPU-PORTING.md), preserving unknown bindings and unidentified branches.

`CachedExpressionData` in the raw JSON must not be treated as the complete editor material node graph. Some native data remains in `Extras`; conclusions here are limited to clearly readable fields and hash references.
