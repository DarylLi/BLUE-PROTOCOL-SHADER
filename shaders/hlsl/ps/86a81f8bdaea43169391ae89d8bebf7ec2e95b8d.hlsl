// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  nointerpolation float4 v0 : TEXCOORD0,
  nointerpolation float4 v1 : TEXCOORD1,
  nointerpolation float4 v2 : TEXCOORD2,
  nointerpolation float4 v3 : TEXCOORD3,
  nointerpolation float4 v4 : TEXCOORD4,
  nointerpolation float4 v5 : TEXCOORD5,
  nointerpolation float4 v6 : TEXCOORD6,
  float4 v7 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz;
  r0.w = 0;
  r1.xyz = v2.xyz;
  r1.w = 0;
  r2.xy = v7.xy + -v0.xy;
  r3.xyzw = -cb0[0].xxxx * float4(1,0,0,1) + r2.xyxy;
  r2.z = dot(r3.xy, r3.xy);
  r2.w = dot(r3.zw, r3.zw);
  r2.w = saturate(r2.w * v6.x + v6.y);
  r2.z = saturate(r2.z * v5.z + v5.w);
  r1.xyzw = r2.zzzz * r1.xyzw;
  r2.z = dot(r2.xy, r2.xy);
  r2.xy = -cb0[0].xx + r2.xy;
  r2.x = dot(r2.xy, r2.xy);
  r2.x = saturate(r2.x * v6.z + v6.w);
  r2.y = saturate(r2.z * v5.x + v5.y);
  r0.xyzw = r0.xyzw * r2.yyyy + r1.xyzw;
  r1.xyz = v3.xyz;
  r1.w = 0;
  r0.xyzw = r1.xyzw * r2.wwww + r0.xyzw;
  r1.xyz = v4.xyz;
  r1.w = 0;
  o0.xyzw = r1.xyzw * r2.xxxx + r0.xyzw;
  return;
}