// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[22];
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
  uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD6,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 4 * cb4[20].x;
  r0.x = saturate(r0.x);
  r0.x = 0.200000003 + r0.x;
  r0.x = floor(r0.x);
  r0.y = cb3[2].x * cb1[142].z;
  r0.z = r0.y * cb4[17].w + v2.x;
  r1.x = cb4[18].x * r0.z;
  r0.z = r0.y * cb4[18].y + v2.y;
  r0.yw = r0.yy * cb4[16].yw + v2.xy;
  r1.y = cb4[18].z * r0.z;
  r0.z = t0.SampleBias(s0_s, r1.xy, cb1[143].y).x;
  r0.z = -0.5 + r0.z;
  r0.z = r0.z + r0.z;
  r1.xy = r0.zz * cb4[19].yw + cb4[13].xy;
  r2.x = r0.y * cb4[16].z + 4;
  r2.y = r0.w * cb4[17].x + 4;
  r0.yz = r2.xy + r1.xy;
  r1.xyzw = t1.SampleBias(s1_s, r0.yz, cb1[143].y).xyzw;
  r0.y = r1.y + -r1.x;
  r0.x = r0.x * r0.y + r1.x;
  r0.y = r1.z + -r0.x;
  r0.zw = saturate(cb4[20].xx * float2(4,4) + float2(-1,-2));
  r0.zw = float2(0.200000003,0.200000003) + r0.zw;
  r0.zw = floor(r0.zw);
  r0.x = r0.z * r0.y + r0.x;
  r0.y = r1.w + -r0.x;
  r0.x = r0.w * r0.y + r0.x;
  r0.x = saturate(cb4[20].z * r0.x);
  r1.x = v6.z;
  r1.y = 1;
  r0.yz = v6.ww * r1.xy;
  r0.w = r0.y * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.y = r0.y * cb1[65].x + cb1[65].y;
  r0.y = r0.y + r0.w;
  r0.w = cmp(cb1[31].w < 1);
  r0.y = r0.w ? r0.z : r0.y;
  r0.y = 1000000 + -r0.y;
  r0.y = saturate(r0.y / cb4[21].x);
  r0.x = r0.x * r0.y;
  r1.xyzw = cb1[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb1[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb1[46].xyzw + r1.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r0.yzw = r1.xyz / r1.www;
  r0.yzw = -cb1[70].xyz + r0.yzw;
  r0.yzw = -cb1[67].xyz + r0.yzw;
  r0.y = dot(r0.yzw, r0.yzw);
  r1.xyz = -cb2[2].xyz + cb1[67].xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.yz = sqrt(r0.yz);
  r0.w = max(cb2[2].x, cb2[2].y);
  r0.w = max(cb2[2].z, r0.w);
  r0.w = saturate(ceil(r0.w));
  r1.x = r0.w * r0.z;
  r0.z = r0.w * r0.z + cb4[21].y;
  r0.w = max(r0.z, r1.x);
  r0.z = min(r0.z, r1.x);
  r0.yz = r0.yz / r0.ww;
  r0.w = 1 + r0.z;
  r0.y = saturate(r0.y * r0.w + -r0.z);
  r0.y = r0.y * 3 + -1;
  r0.y = max(cb4[21].z, r0.y);
  r0.y = min(1, r0.y);
  r0.z = 1 + -r0.y;
  r0.w = saturate(ceil(cb3[2].y));
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
  r0.y = cb0[1].x + v4.x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}