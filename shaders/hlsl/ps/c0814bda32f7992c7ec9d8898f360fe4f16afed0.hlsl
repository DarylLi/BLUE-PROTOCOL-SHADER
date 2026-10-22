// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r1.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.xy = max(cb0[0].xy, r0.xy);
  r0.xy = min(cb0[0].zw, r0.xy);
  r2.xyzw = t1.SampleLevel(s1_s, r0.xy, 0).xyzw;
  r0.xyz = t2.SampleLevel(s2_s, r0.xy, 0).xyz;
  r1.xyz = r2.www * r1.xyz;
  o0.xyz = r1.xyz * r0.xyz + r2.xyz;
  o0.w = 0;
  return;
}