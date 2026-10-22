// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  float3 v2 : ATTRIBUTE2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float3 o2 : TEXCOORD1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = v0.xxxx * cb0[0].xyzw + r0.xyzw;
  r0.xyzw = v0.zzzz * cb0[2].xyzw + r0.xyzw;
  o0.xyzw = v0.wwww * cb0[3].xyzw + r0.xyzw;
  o1.xy = v1.xy;
  o2.xyz = v2.xyz;
  return;
}