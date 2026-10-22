// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[9];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : HIT_PROXY_ID0,
  float4 v5 : TEXCOORD6,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
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
  r0.xyzw = cb1[45].xyzw * v6.yyyy;
  r0.xyzw = v6.xxxx * cb1[44].xyzw + r0.xyzw;
  r0.xyzw = v6.zzzz * cb1[46].xyzw + r0.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb1[70].xyz + r0.xyz;
  r0.xyz = -cb1[67].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.yzw = -cb2[2].xyz + cb1[67].xyz;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.xy = sqrt(r0.xy);
  r0.z = max(cb2[2].x, cb2[2].y);
  r0.z = max(cb2[2].z, r0.z);
  r0.z = saturate(ceil(r0.z));
  r0.w = r0.z * r0.y;
  r0.y = r0.z * r0.y + cb4[7].w;
  r0.z = max(r0.y, r0.w);
  r0.y = min(r0.y, r0.w);
  r0.xy = r0.xy / r0.zz;
  r0.z = 1 + r0.y;
  r0.x = saturate(r0.x * r0.z + -r0.y);
  r0.x = r0.x * 3 + -1;
  r0.x = max(cb4[8].x, r0.x);
  r0.x = min(1, r0.x);
  r0.y = 1 + -r0.x;
  r0.z = saturate(ceil(cb3[2].y));
  r0.x = r0.z * r0.y + r0.x;
  r1.xyzw = -cb1[129].xyxy + v6.xyxy;
  r2.xyzw = float4(0.015625,0.015625,0.5,0.5) * r1.xyzw;
  r0.yz = cb1[152].xx + r1.zw;
  r0.yz = (uint2)r0.yz;
  r1.xy = frac(r2.zw);
  r0.w = t1.SampleBias(s1_s, r2.xy, cb1[143].y).x;
  r1.xy = r1.xy + r1.xy;
  r1.xy = floor(r1.xy);
  r1.z = r1.x + r1.y;
  r1.xy = r1.xy + -r1.yx;
  r1.z = -1 + r1.z;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.x = 0.5 * r1.x;
  r1.x = r1.z * 0.25 + r1.x;
  r1.x = r1.y * 0.75 + r1.x;
  r0.x = r1.x + r0.x;
  r0.x = saturate(-0.824450016 + r0.x);
  r0.x = ceil(r0.x);
  r0.z = (uint)r0.z << 1;
  r0.y = (int)r0.z + (int)r0.y;
  r0.y = (uint)r0.y % 5;
  r0.y = (uint)r0.y;
  r0.y = r0.y + r0.w;
  r0.y = r0.y * 0.166666672 + 0.5;
  r0.x = r0.y * r0.x;
  r0.yz = cb4[4].xx * v3.xy;
  r0.y = t0.SampleBias(s0_s, r0.yz, cb1[143].y).w;
  r0.x = r0.x * r0.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = cb0[9].xyzw + v4.xyzw;
  return;
}