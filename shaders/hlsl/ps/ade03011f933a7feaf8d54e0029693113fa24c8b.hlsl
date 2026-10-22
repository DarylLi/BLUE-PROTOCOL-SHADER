// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : ORIGINAL_POSITION0,
  float2 v3 : TEXCOORD0,
  float2 w3 : TEXCOORD2,
  float4 v4 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = cb0[5].xyzw;
  return;
}