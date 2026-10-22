// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[34];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
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
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = floor(v5.xy);
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
  r0.x = v5.z;
  r0.y = 1;
  r0.xy = v5.ww * r0.xy;
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
  r0.z = cb4[33].w + r0.x;
  r0.x = r0.x / cb4[33].w;
  r0.y = r0.z / r0.y;
  r0.z = cb4[33].z * cb3[1].w;
  r0.w = cmp(r0.z >= 0);
  r0.z = cmp(9.99999975e-006 < abs(r0.z));
  r0.y = r0.w ? r0.y : r0.x;
  r0.x = r0.z ? r0.y : r0.x;
  r0.yzw = -cb1[129].xxy + v5.xxy;
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
  r0.z = t3.SampleBias(s3_s, r0.zw, cb1[143].y).x;
  r0.z = r1.x + r0.z;
  r0.z = 0.166666672 * r0.z;
  r0.w = cmp(9.99999975e-006 < abs(cb4[33].z));
  r1.x = 1 + cb4[33].z;
  r0.w = r0.w ? r1.x : 1.39999998;
  r0.y = r0.w + -r0.y;
  r0.x = r0.x * r0.y + r0.z;
  r0.x = saturate(-0.5 + r0.x);
  r1.xyzw = cb1[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb1[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb1[46].xyzw + r1.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r0.yzw = r1.xyz / r1.www;
  r0.yzw = -cb1[70].xyz + r0.yzw;
  r1.xy = r0.yz / cb4[31].ww;
  r1.x = t1.SampleBias(s1_s, r1.xy, cb1[143].y).x;
  r1.y = log2(r1.x);
  r1.x = cmp(0 >= r1.x);
  r1.y = cb4[32].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = cb4[32].y * r1.y;
  r1.x = r1.x ? -0 : -r1.y;
  r1.x = cb4[32].w + r1.x;
  r1.x = 1 + r1.x;
  r1.yzw = -cb1[67].xyz + r0.yzw;
  r0.yz = r0.yz / cb4[16].yy;
  r0.y = t1.SampleBias(s1_s, r0.yz, cb1[143].y).x;
  r0.z = dot(r1.yzw, r1.yzw);
  r0.z = sqrt(r0.z);
  r0.w = r0.z / cb4[33].x;
  r0.z = cb4[17].w * r0.z;
  r1.y = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.y = cb4[33].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r0.w = r0.w ? 0 : r1.y;
  r0.w = saturate(r1.x * r0.w);
  r0.w = 1 + -r0.w;
  r1.x = cb4[16].z + -cb4[16].w;
  r0.y = saturate(r0.y * r1.x + cb4[16].w);
  r0.y = cb4[17].x + r0.y;
  r0.y = r0.y * -cb4[17].y + cb4[17].y;
  r0.y = r0.y * r0.z + cb1[143].y;
  r0.y = t2.SampleBias(s2_s, v3.xy, r0.y).w;
  r0.y = r0.y * r0.w;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * v2.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.zw = float2(0,1);
  r1.xw = float2(0,1);
  r2.x = min(0, cb2[7].w);
  r2.y = cmp(cb2[7].z < r2.x);
  r2.xz = -cb2[7].zy + r2.xx;
  r3.xyz = cb2[7].wzw + -cb2[7].zyy;
  r4.xy = r3.xy + -r2.xz;
  r0.xy = r4.yx / r3.yx;
  r1.z = r0.x;
  r3.xy = r2.xz / r3.xy;
  r2.x = r2.y ? r2.x : r2.z;
  r4.xyz = r2.xxx / r3.zzz;
  r0.x = r3.x;
  r1.y = r3.y;
  r0.xyzw = r2.yyyy ? r0.xyzw : r1.xyzw;
  r4.w = 1;
  r1.xyzw = cb0[10].xxxx * r4.xyzw;
  r0.xyzw = r0.xyzw * cb0[10].yyyy + r1.xyzw;
  r0.xyzw = r0.xyzw * cb0[9].xxxx + cb0[9].yyyy;
  r1.xyzw = cb2[9].xyzw * cb0[10].wwww;
  r0.xyzw = r0.xyzw * cb0[10].zzzz + r1.xyzw;
  r1.x = 1 + -cb0[9].z;
  r2.xyzw = cb2[8].xyzw * cb0[9].zzzz;
  r0.xyzw = r0.xyzw * r1.xxxx + r2.xyzw;
  r1.xy = float2(0.100000001,0.100000001) * cb0[8].yz;
  r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  o0.xyzw = r1.xyzw * r0.xyzw;
  return;
}