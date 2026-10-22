// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = max(cb0[34].xy, v0.xy);
  r0.xy = min(cb0[34].zw, r0.xy);
  r0.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}