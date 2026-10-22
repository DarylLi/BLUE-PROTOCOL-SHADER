// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD5,
  float3 v2 : PARTICLE_LIGHTING_OFFSET0,
  float4 v3 : TANGENTX0,
  float4 v4 : TANGENTZ0,
  float4 v5 : TEXCOORD6,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  if (-1 != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}