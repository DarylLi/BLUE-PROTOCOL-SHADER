// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v4.x * cb1[11].y + cb0[1].x;
  r0.xyz = float3(6.28318548,12.566371,18.849556) * r0.xxx;
  sincos(r0.xyz, r0.xyz, r1.xyz);
  r0.w = saturate(cb2[4].y);
  r0.w = -r0.w * 0.5 + 1;
  r0.w = log2(r0.w);
  r0.w = -1.38629436 * r0.w;
  o0.yzw = r0.www * r1.xyz;
  o1.yzw = r0.www * r0.xyz;
  o0.x = r0.w;
  o1.x = 0;
  return;
}