// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  o0.xyzw = v2.xyzw;
  o1.xyzw = v3.xyzw;
  return;
}