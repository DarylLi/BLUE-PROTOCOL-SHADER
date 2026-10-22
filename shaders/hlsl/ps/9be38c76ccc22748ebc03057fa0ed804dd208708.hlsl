// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[136];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb0[129].xy * cb0[132].zw + v0.xy;
  r0.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 1;
  return;
}