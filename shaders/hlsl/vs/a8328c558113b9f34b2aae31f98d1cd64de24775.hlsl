// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : ATTRIBUTE0,
  out float4 o0 : SV_POSITION0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v0.x;
  r1.xyzw = icb[r0.x+0].xxyy * cb0[4].xyzw;
  r0.yz = r1.zw + r1.xy;
  r0.yz = icb[r0.x+0].zz * cb0[5].xy + r0.yz;
  r0.xy = icb[r0.x+0].ww * cb0[5].zw + r0.yz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r0.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}