// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[21];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  float4 v5 : HIT_PROXY_ID0,
  float4 v6 : TEXCOORD6,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = floor(v7.xy);
  r0.x = dot(r0.xy, float2(347.834503,3343.28369));
  r0.x = cos(r0.x);
  r0.x = 1000 * r0.x;
  r0.x = frac(r0.x);
  r0.y = 1 + v3.w;
  r0.y = cmp(r0.x < r0.y);
  r0.x = cmp(v3.w < r0.x);
  r0.z = cmp(v3.w < 0);
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = cmp((int)r0.x == 0);
  r0.y = cmp(0.00100000005 < abs(v3.w));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) discard;
  r0.xyz = -cb1[129].xxy + v7.xxy;
  r1.xy = cb1[152].xx + r0.yz;
  r1.xy = (uint2)r1.xy;
  r0.w = (uint)r1.y << 1;
  r0.w = (int)r0.w + (int)r1.x;
  r0.w = (uint)r0.w % 5;
  r0.w = (uint)r0.w;
  r0.x = r0.x * cb1[130].z + -0.469999999;
  r0.xyz = float3(4.93230057,0.015625,0.015625) * r0.xyz;
  r0.x = cos(r0.x);
  r0.x = 0.899999976 + r0.x;
  r0.x = saturate(0.555555582 * r0.x);
  r0.x = cb2[19].z + -r0.x;
  r0.y = t1.SampleBias(s1_s, r0.yz, cb1[143].y).x;
  r0.y = r0.w + r0.y;
  r0.y = 0.166666672 * r0.y;
  r0.z = cmp(cb1[31].w < 1);
  r1.x = v7.z;
  r1.y = 1;
  r1.xy = v7.ww * r1.xy;
  r0.w = r1.x * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r1.z = r1.x * cb1[65].x + cb1[65].y;
  r0.w = r1.z + r0.w;
  r0.z = r0.z ? r1.y : r0.w;
  r0.w = r0.z / cb2[19].x;
  r0.z = r0.z / cb2[20].x;
  r0.x = r0.w * r0.x + r0.y;
  r0.y = cb2[19].w * r0.y;
  r0.x = saturate(-0.5 + r0.x);
  r1.zw = cb2[10].xx * v4.xy;
  r0.w = t0.SampleBias(s0_s, r1.zw, cb1[143].y).w;
  r0.x = r0.w * r0.x;
  r0.x = r0.x * v3.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.x = cb2[20].y * r0.x;
  r0.x = exp2(r0.x);
  r0.x = min(1, r0.x);
  r0.x = cb2[20].z * r0.x;
  r0.x = max(1, r0.x);
  r0.x = r0.z ? 1 : r0.x;
  r0.x = r0.y * r0.x + r1.y;
  r0.x = r1.x / r0.x;
  oDepthLE = min(v7.z, r0.x);
  o0.xyzw = cb0[9].xyzw + v5.xyzw;
  return;
}