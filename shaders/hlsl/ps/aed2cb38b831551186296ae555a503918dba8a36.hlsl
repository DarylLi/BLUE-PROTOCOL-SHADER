// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[12];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  float4 v5 : TEXCOORD6,
  float4 v6 : TEXCOORD7,
  float4 v7 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = floor(v7.xy);
  r0.x = dot(r0.xy, float2(347.834503,3343.28369));
  r0.x = cos(r0.x);
  r0.x = 1000 * r0.x;
  r0.x = frac(r0.x);
  r0.y = 1 + v3.w;
  r0.y = cmp(r0.x < r0.y);
  r0.x = cmp(v3.w < r0.x);
  r0.z = cmp(v3.w < 0);
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = cmp((int)r0.x == 0);
  r0.y = cmp(0.00100000005 < abs(v3.w));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) discard;
  r0.x = v5.x * cb1[11].y + cb0[8].y;
  r0.xyz = float3(6.28318548,12.566371,18.849556) * r0.xxx;
  sincos(r0.xyz, r0.xyz, r1.xyz);
  o0.yzw = float3(1.38629436,1.38629436,1.38629436) * r1.xyz;
  o1.yzw = float3(1.38629436,1.38629436,1.38629436) * r0.xyz;
  o0.x = 1.38629436;
  o1.x = 0;
  return;
}