// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[18];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  out float4 o0 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[15].xyzw * v0.yyyy;
  r0.xyzw = v0.xxxx * cb0[14].xyzw + r0.xyzw;
  r0.xyzw = v0.zzzz * cb0[16].xyzw + r0.xyzw;
  o0.xyzw = v0.wwww * cb0[17].xyzw + r0.xyzw;
  return;
}