// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[9];
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
  r0.z = cb4[8].z + r0.x;
  r0.x = r0.x / cb4[8].z;
  r0.y = r0.z / r0.y;
  r0.z = cb4[8].y * cb3[1].w;
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
  r0.z = t0.SampleBias(s0_s, r0.zw, cb1[143].y).x;
  r0.z = r1.x + r0.z;
  r0.z = 0.166666672 * r0.z;
  r0.w = cmp(9.99999975e-006 < abs(cb4[8].y));
  r1.x = 1 + cb4[8].y;
  r0.w = r0.w ? r1.x : 1.39999998;
  r0.y = r0.w + -r0.y;
  r0.x = r0.x * r0.y + r0.z;
  r0.x = saturate(-0.5 + r0.x);
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  o0.x = r0.x;
  r0.y = v4.x * cb2[11].y + cb0[1].x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}