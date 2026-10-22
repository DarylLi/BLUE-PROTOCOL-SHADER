// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[5];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[66];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  uint v4 : PRIMITIVE_ID0,
  float4 v5 : TEXCOORD6,
  float4 v6 : TEXCOORD7,
  float4 v7 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1000000 + cb1[65].w;
  r0.x = cb1[65].z * r0.x;
  r0.x = 1 / r0.x;
  r0.y = cmp(cb1[31].w < 1);
  r0.z = cb1[30].z * 1000000 + cb1[31].z;
  r0.x = r0.y ? r0.x : r0.z;
  r0.y = cb3[4].w + -r0.x;
  r0.x = cmp(cb3[4].w >= r0.x);
  r0.x = r0.x ? 1.000000 : 0;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r0.x = r0.y ? r0.x : 1;
  r0.y = t0.Sample(s0_s, v3.xy).w;
  r0.y = v2.w * r0.y;
  r0.x = saturate(r0.y * r0.x);
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