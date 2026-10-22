// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  out float o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[2].xy * v0.xy;
  r1.xyzw = t1.Gather(s1_s, r0.xy).xyzw;
  r0.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  o1.xyz = r0.xyz;
  r0.x = min(r1.x, r1.y);
  r0.x = min(r0.x, r1.z);
  r0.x = min(r0.x, r1.w);
  r0.y = r0.x * cb1[65].z + -cb1[65].w;
  r0.x = r0.x * cb1[65].x + cb1[65].y;
  r0.y = 1 / r0.y;
  r0.x = r0.x + r0.y;
  o0.x = 0.00999999978 * r0.x;
  o1.w = 1;
  return;
}