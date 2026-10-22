// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : HIT_PROXY_ID0,
  float4 v5 : TEXCOORD6,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = floor(v6.xy);
  r0.x = dot(r0.xy, float2(347.834503,3343.28369));
  r0.x = cos(r0.x);
  r0.x = 1000 * r0.x;
  r0.x = frac(r0.x);
  r0.y = cmp(v2.w < r0.x);
  r0.zw = float2(1,-0.333299994) + v2.wy;
  r0.x = cmp(r0.x < r0.z);
  r0.z = cmp(r0.w < 0);
  if (r0.z != 0) discard;
  r0.z = cmp(v2.w < 0);
  r0.x = r0.z ? r0.x : r0.y;
  r0.x = cmp((int)r0.x == 0);
  r0.y = cmp(0.00100000005 < abs(v2.w));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) discard;
  o0.xyzw = cb0[9].xyzw + v4.xyzw;
  return;
}