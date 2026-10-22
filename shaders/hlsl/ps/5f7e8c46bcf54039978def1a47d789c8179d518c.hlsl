// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : HIT_PROXY_ID0,
  float4 v5 : TEXCOORD6,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
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
  r0.x = v6.z;
  r0.y = 1;
  r0.xy = v6.ww * r0.xy;
  r0.z = r0.x * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r0.x = r0.x * cb1[65].x + cb1[65].y;
  r0.x = r0.x + r0.z;
  r0.z = cmp(cb1[31].w < 1);
  r0.x = r0.z ? r0.y : r0.x;
  r0.y = cb2[1].w * 0.617499948 + -r0.x;
  r0.zw = float2(0.649999976,0.487499982) * cb2[1].ww;
  r0.y = saturate(r0.y / r0.w);
  r0.w = -cb2[1].w * 0.649999976 + 8000;
  r0.y = r0.y * r0.w + r0.z;
  r0.z = cb3[9].z + r0.x;
  r0.x = r0.x / cb3[9].z;
  r0.y = r0.z / r0.y;
  r0.z = cb3[9].y * cb2[1].w;
  r0.w = cmp(r0.z >= 0);
  r0.z = cmp(9.99999975e-006 < abs(r0.z));
  r0.y = r0.w ? r0.y : r0.x;
  r0.x = r0.z ? r0.y : r0.x;
  r0.yzw = -cb1[129].xxy + v6.xxy;
  r1.xy = cb1[152].xx + r0.zw;
  r1.xy = (uint2)r1.xy;
  r1.y = (uint)r1.y << 1;
  r1.x = (int)r1.y + (int)r1.x;
  r1.x = (uint)r1.x % 5;
  r1.x = (uint)r1.x;
  r0.y = r0.y * cb1[130].z + -0.469999999;
  r0.yzw = float3(4.93230057,0.015625,0.015625) * r0.yzw;
  r0.y = cos(r0.y);
  r0.y = 0.899999976 + r0.y;
  r0.y = saturate(0.555555582 * r0.y);
  r0.z = t1.SampleBias(s1_s, r0.zw, cb1[143].y).x;
  r0.z = r1.x + r0.z;
  r0.z = 0.166666672 * r0.z;
  r0.w = cmp(9.99999975e-006 < abs(cb3[9].y));
  r1.x = 1 + cb3[9].y;
  r0.w = r0.w ? r1.x : 1.39999998;
  r0.y = r0.w + -r0.y;
  r0.x = r0.x * r0.y + r0.z;
  r0.x = saturate(-0.5 + r0.x);
  r1.xyzw = cb1[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb1[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb1[46].xyzw + r1.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r0.yzw = r1.xyz / r1.www;
  r0.yzw = -cb1[70].xyz + r0.yzw;
  r0.yzw = -cb1[67].xyz + r0.yzw;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / cb3[6].w;
  r0.z = log2(r0.y);
  r0.y = cmp(0 >= r0.y);
  r0.z = cb3[7].x * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.w = 1 + cb3[7].y;
  r0.z = r0.z * r0.w;
  r0.y = r0.y ? 0 : r0.z;
  r0.y = cb1[143].y + r0.y;
  r0.y = -1 + r0.y;
  r0.y = t0.SampleBias(s0_s, v3.xy, r0.y).w;
  r0.x = r0.y * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = cb0[10].xyzw + v4.xyzw;
  return;
}