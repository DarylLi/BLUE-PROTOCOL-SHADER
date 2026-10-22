// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[28];
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
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float v4 : TEXCOORD6,
  float w4 : TEXCOORD8,
  float3 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = floor(v6.xy);
  r0.x = dot(r0.xy, float2(347.834503,3343.28369));
  r0.x = cos(r0.x);
  r0.x = 1000 * r0.x;
  r0.x = frac(r0.x);
  r0.y = 1 + v2.w;
  r0.y = cmp(r0.x < r0.y);
  r0.x = cmp(v2.w < r0.x);
  r0.z = cmp(v2.w < 0);
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = cmp((int)r0.x == 0);
  r0.y = cmp(0.00100000005 < abs(v2.w));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) discard;
  r0.x = t0.SampleBias(s0_s, v3.xy, cb0[143].y).w;
  r0.x = cb2[5].z * r0.x;
  r0.y = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.y = cb2[5].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = -0.333299994 + r0.y;
  r0.y = cmp(r0.y < 0);
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  oDepth = saturate(v4.x * cb1[27].w + w4.x);
  return;
}