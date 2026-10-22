// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float w0 : TEXCOORD6,
  float w0 : TEXCOORD8,
  float3 v1 : TEXCOORD7,
  float4 v2 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  o0.xyzw = float4(0,0,0,0);
  oDepth = saturate(w0.x * cb0[27].w + w0.x);
  return;
}