// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xy = v1.xy;
  o1.xyzw = v2.xyzw;
  o2.xyzw = v3.xyzw;
  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = v0.xxxx * cb0[0].xyzw + r0.xyzw;
  r0.xyzw = v0.zzzz * cb0[2].xyzw + r0.xyzw;
  r0.xyzw = v0.wwww * cb0[3].xyzw + r0.xyzw;
  o3.y = cb0[4].x * r0.y;
  o3.xzw = r0.xzw;
  return;
}