// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  uint v3 : PRIMITIVE_ID0,
  float3 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[7].z * cb0[142].z;
  r0.x = frac(r0.x);
  r0.xy = cb1[3].xy * r0.xx;
  r0.xy = floor(r0.xy);
  r0.xy = r0.xy / cb1[2].xy;
  r0.zw = v2.xy / cb1[2].xy;
  r0.xy = r0.zw + r0.xy;
  r0.x = t0.SampleBias(s0_s, r0.xy, cb0[143].y).w;
  r0.x = -0.333299994 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}