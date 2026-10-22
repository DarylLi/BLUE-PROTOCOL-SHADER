// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[29];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD6,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3;
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
  r0.y = cb3[1].w * 0.617499948 + -r0.x;
  r0.zw = float2(0.649999976,0.487499982) * cb3[1].ww;
  r0.y = saturate(r0.y / r0.w);
  r0.w = -cb3[1].w * 0.649999976 + 8000;
  r0.y = r0.y * r0.w + r0.z;
  r0.z = cb4[28].z + r0.x;
  r0.y = r0.z / r0.y;
  r0.z = r0.x / cb4[28].z;
  r0.x = 1000000 + -r0.x;
  r0.x = saturate(r0.x / cb4[28].x);
  r0.w = cb4[28].y * cb3[1].w;
  r1.x = cmp(r0.w >= 0);
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.y = r1.x ? r0.y : r0.z;
  r0.y = r0.w ? r0.y : r0.z;
  r1.xyz = -cb1[129].xxy + v6.xxy;
  r0.zw = cb1[152].xx + r1.yz;
  r0.zw = (uint2)r0.zw;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r1.yz = float2(0.015625,0.015625) * r1.yz;
  r0.w = r1.x * cb1[130].z + -0.469999999;
  r0.w = 4.93230057 * r0.w;
  r0.w = cos(r0.w);
  r0.w = 0.899999976 + r0.w;
  r0.w = saturate(0.555555582 * r0.w);
  r1.x = t2.SampleBias(s2_s, r1.yz, cb1[143].y).x;
  r0.z = r1.x + r0.z;
  r0.z = 0.166666672 * r0.z;
  r1.x = cmp(9.99999975e-006 < abs(cb4[28].y));
  r1.y = 1 + cb4[28].y;
  r1.x = r1.x ? r1.y : 1.39999998;
  r0.w = r1.x + -r0.w;
  r0.y = r0.y * r0.w + r0.z;
  r0.y = saturate(-0.5 + r0.y);
  r0.y = v2.y * r0.y;
  r1.xyz = v1.zxy * v0.yzx;
  r1.xyz = v1.yzx * v0.zxy + -r1.xyz;
  r1.xyz = v1.www * r1.xyz;
  r2.xyzw = cb1[45].xyzw * v6.yyyy;
  r2.xyzw = v6.xxxx * cb1[44].xyzw + r2.xyzw;
  r2.xyzw = v6.zzzz * cb1[46].xyzw + r2.xyzw;
  r2.xyzw = cb1[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r0.z = dot(-r2.xyz, -r2.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = -r2.xyz * r0.zzz;
  r2.xyz = -cb1[70].xyz + r2.xyz;
  r2.xyz = -cb1[67].xyz + r2.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = sqrt(r0.z);
  r0.z = saturate(r0.z / cb4[21].y);
  r0.z = min(cb4[21].z, r0.z);
  r1.y = dot(r1.xyz, r3.xyz);
  r1.x = dot(v0.xyz, r3.xyz);
  r1.zw = cb4[17].yw * float2(0.0199999996,0.0199999996) + float2(-0.00999999978,-0.00999999978);
  r2.xyzw = r1.xyxy * r1.zzww + v3.xyxy;
  r0.w = t0.SampleBias(s0_s, r2.zw, cb1[143].y).y;
  r1.z = t0.SampleBias(s0_s, r2.xy, cb1[143].y).x;
  r0.w = cb4[18].x * r0.w;
  r0.w = r1.z * cb4[17].z + r0.w;
  r1.zw = cb4[18].yw * float2(0.0199999996,0.0199999996) + float2(-0.00999999978,-0.00999999978);
  r1.xyzw = r1.xyxy * r1.zzww + v3.xyxy;
  r1.x = t0.SampleBias(s0_s, r1.xy, cb1[143].y).z;
  r1.y = t0.SampleBias(s0_s, r1.zw, cb1[143].y).w;
  r0.w = r1.x * cb4[18].z + r0.w;
  r0.w = saturate(r1.y * cb4[19].x + r0.w);
  r1.xy = cb4[10].xy * v3.xy;
  r1.z = cb4[21].w * cb1[142].z;
  r1.xy = r1.zz * cb4[22].zw + r1.xy;
  r1.x = t1.SampleBias(s1_s, r1.xy, cb1[143].y).x;
  r1.x = max(cb4[12].x, r1.x);
  r1.yw = cb4[14].xy * v3.xy;
  r1.yw = r1.zz * cb4[24].xy + r1.yw;
  r1.y = t1.SampleBias(s1_s, r1.yw, cb1[143].y).y;
  r1.y = max(cb4[12].x, r1.y);
  r1.x = r1.x * r1.y;
  r1.yw = cb4[16].xy * v3.xy;
  r1.yz = r1.zz * cb4[25].zw + r1.yw;
  r1.yzw = t1.SampleBias(s1_s, r1.yz, cb1[143].y).xyz;
  r1.yzw = max(cb4[12].xyz, r1.yzw);
  r1.xyz = r1.xxx * r1.yzw;
  r1.x = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.z = max(r1.x, r0.z);
  r1.x = max(cb4[27].x, r0.z);
  r1.y = max(cb4[26].z, r0.z);
  r0.z = r0.z * r0.w;
  r1.x = r1.x + -r1.y;
  r1.x = r0.w * r1.x + r1.y;
  r0.w = max(cb4[27].y, r0.w);
  r0.w = r1.x * r0.w + -r0.z;
  r0.z = cb4[20].w * r0.w + r0.z;
  r0.z = cb4[27].z * r0.z;
  r0.x = r0.z * r0.x;
  r0.x = saturate(r0.x * r0.y);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = v4.x * cb2[11].y + cb0[8].y;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}