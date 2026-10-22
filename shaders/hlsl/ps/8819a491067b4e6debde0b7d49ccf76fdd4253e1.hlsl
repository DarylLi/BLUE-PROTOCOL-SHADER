// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float3 v0 : PARTICLE_LIGHTING_OFFSET0,
  float4 v1 : TANGENTX0,
  float4 v2 : TANGENTZ0,
  float4 v3 : TEXCOORD6,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = cb0[2].xyzw;
  return;
}