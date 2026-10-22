// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TANGENTX0,
  float4 v1 : TANGENTZ0,
  float v2 : TEXCOORD6,
  float w2 : TEXCOORD8,
  float3 v3 : TEXCOORD7,
  float4 v4 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  o0.xyzw = float4(0,0,0,0);
  oDepth = saturate(v2.x * cb0[27].w + w2.x);
  return;
}