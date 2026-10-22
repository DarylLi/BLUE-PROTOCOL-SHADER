// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = floor(v5.xy);
  r0.x = dot(r0.xy, float2(347.834503,3343.28369));
  r0.x = cos(r0.x);
  r0.x = 1000 * r0.x;
  r0.x = frac(r0.x);
  r0.y = 1 + cb1[0].x;
  r0.y = cmp(r0.x < r0.y);
  r0.x = cmp(cb1[0].x < r0.x);
  r0.z = cmp(cb1[0].x < 0);
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = cmp((int)r0.x == 0);
  r0.y = cmp(cb1[0].x != 0.000000);
  r0.z = cmp(0.00100000005 < abs(cb1[0].x));
  r0.y = r0.z ? r0.y : 0;
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) discard;
  o0.xyzw = cb0[1].xyzw;
  return;
}