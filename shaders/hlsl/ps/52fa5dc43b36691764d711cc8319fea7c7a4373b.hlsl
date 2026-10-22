// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

  r0.x = cb0[1].x + v4.x;
  r0.xyz = float3(6.28318548,12.566371,18.849556) * r0.xxx;
  sincos(r0.xyz, r0.xyz, r1.xyz);
  o0.yzw = float3(1.38629436,1.38629436,1.38629436) * r1.xyz;
  o1.yzw = float3(1.38629436,1.38629436,1.38629436) * r0.xyz;
  o0.x = 1.38629436;
  o1.x = 0;
  return;
}