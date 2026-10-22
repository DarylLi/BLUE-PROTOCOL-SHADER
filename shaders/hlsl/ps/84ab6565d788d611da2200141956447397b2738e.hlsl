// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[66];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  out float o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[2].xy * v0.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.y = r0.x * cb1[65].z + -cb1[65].w;
  r0.x = r0.x * cb1[65].x + cb1[65].y;
  r0.y = 1 / r0.y;
  r0.x = r0.x + r0.y;
  o0.x = 0.00999999978 * r0.x;
  return;
}