// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  out float4 o0 : SV_POSITION0)
{
  o0.xy = v0.xy;
  o0.z = cb0[0].x;
  o0.w = 1;
  return;
}