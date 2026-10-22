// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * cb0[1].xy + cb0[1].zw;
  r0.xy = cb0[2].xy * float2(-0.25,-0.25) + r0.xy;
  r0.zw = cb0[2].zw + -cb0[2].xy;
  r0.xy = min(r0.xy, r0.zw);
  r0.xyzw = t0.Gather(s0_s, r0.xy).xyzw;
  r0.xy = min(r0.xz, r0.yw);
  o0.xyzw = min(r0.xxxx, r0.yyyy);
  return;
}