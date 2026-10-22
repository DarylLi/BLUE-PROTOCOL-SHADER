// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[6];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[144];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = floor(v5.xy);
  r0.x = dot(r0.xy, float2(347.834503,3343.28369));
  r0.x = cos(r0.x);
  r0.x = 1000 * r0.x;
  r0.x = frac(r0.x);
  r0.y = 1 + cb2[0].x;
  r0.y = cmp(r0.x < r0.y);
  r0.x = cmp(cb2[0].x < r0.x);
  r0.z = cmp(cb2[0].x < 0);
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = cmp((int)r0.x == 0);
  r0.y = cmp(cb2[0].x != 0.000000);
  r0.z = cmp(0.00100000005 < abs(cb2[0].x));
  r0.y = r0.z ? r0.y : 0;
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) discard;
  r0.x = t0.SampleBias(s0_s, v2.xy, cb1[143].y).w;
  r0.x = cb3[5].z * r0.x;
  r0.y = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.y = cb3[5].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = -0.333299994 + r0.y;
  r0.y = cmp(r0.y < 0);
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x != 0) discard;
  o0.xyzw = cb0[2].xyzw;
  return;
}