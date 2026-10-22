// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[22];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[144];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : COLOR1,
  nointerpolation float4 v4 : COLOR2,
  float4 v5 : TEXCOORD6,
  float4 v6 : TEXCOORD7,
  float4 v7 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb5[20].x * v4.w;
  r0.x = saturate(r0.x);
  r0.x = 0.200000003 + r0.x;
  r0.x = floor(r0.x);
  r0.y = cb4[2].x * cb1[142].z;
  r0.z = r0.y * cb5[17].w + v2.x;
  r1.x = cb5[18].x * r0.z;
  r0.z = r0.y * cb5[18].y + v2.y;
  r0.yw = r0.yy * cb5[16].yw + v2.xy;
  r1.y = cb5[18].z * r0.z;
  r0.z = t0.SampleBias(s0_s, r1.xy, cb1[143].y).x;
  r0.z = -0.5 + r0.z;
  r0.z = r0.z + r0.z;
  r1.xy = r0.zz * cb5[19].yw + cb5[13].xy;
  r2.x = r0.y * cb5[16].z + v4.w;
  r2.y = r0.w * cb5[17].x + v4.w;
  r0.yz = r2.xy + r1.xy;
  r1.xyzw = t1.SampleBias(s1_s, r0.yz, cb1[143].y).xyzw;
  r0.y = r1.y + -r1.x;
  r0.x = r0.x * r0.y + r1.x;
  r0.y = r1.z + -r0.x;
  r0.zw = saturate(cb5[20].xx * v4.ww + float2(-1,-2));
  r0.zw = float2(0.200000003,0.200000003) + r0.zw;
  r0.zw = floor(r0.zw);
  r0.x = r0.z * r0.y + r0.x;
  r0.y = r1.w + -r0.x;
  r0.x = r0.w * r0.y + r0.x;
  r0.x = r0.x * cb5[20].z + -cb5[20].z;
  r0.x = saturate(cb5[20].z * v3.w + r0.x);
  r1.x = v7.z;
  r1.y = 1;
  r0.yz = v7.ww * r1.xy;
  r0.w = r0.y * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.y = r0.y * cb1[65].x + cb1[65].y;
  r0.y = r0.y + r0.w;
  r0.w = cmp(cb1[31].w < 1);
  r0.y = r0.w ? r0.z : r0.y;
  r0.y = 1000000 + -r0.y;
  r0.y = saturate(r0.y / cb5[21].x);
  r0.x = r0.x * r0.y;
  r1.xyzw = cb1[45].xyzw * v7.yyyy;
  r1.xyzw = v7.xxxx * cb1[44].xyzw + r1.xyzw;
  r1.xyzw = v7.zzzz * cb1[46].xyzw + r1.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r0.yzw = r1.xyz / r1.www;
  r0.yzw = -cb1[70].xyz + r0.yzw;
  r0.yzw = -cb1[67].xyz + r0.yzw;
  r0.y = dot(r0.yzw, r0.yzw);
  r1.xyz = -cb3[2].xyz + cb1[67].xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.yz = sqrt(r0.yz);
  r0.w = max(cb3[2].x, cb3[2].y);
  r0.w = max(cb3[2].z, r0.w);
  r0.w = saturate(ceil(r0.w));
  r1.x = r0.w * r0.z;
  r0.z = r0.w * r0.z + cb5[21].y;
  r0.w = max(r0.z, r1.x);
  r0.z = min(r0.z, r1.x);
  r0.yz = r0.yz / r0.ww;
  r0.w = 1 + r0.z;
  r0.y = saturate(r0.y * r0.w + -r0.z);
  r0.y = r0.y * 3 + -1;
  r0.y = max(cb5[21].z, r0.y);
  r0.y = min(1, r0.y);
  r0.z = 1 + -r0.y;
  r0.w = saturate(ceil(cb4[2].y));
  r0.y = r0.w * r0.z + r0.y;
  r0.x = r0.x * r0.y;
  r0.x = max(0, r0.x);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = v5.x * cb2[11].y + cb0[1].x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}