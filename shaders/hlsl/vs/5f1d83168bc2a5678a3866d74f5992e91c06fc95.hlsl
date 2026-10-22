// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v0.x >> 1;
  r0.zw = (uint2)r0.xx;
  r1.xyzw = cb0[8].xyzw * r0.wwww;
  r2.x = (int)v0.x & 1;
  r0.xy = (uint2)r2.xx;
  r1.xyzw = r0.yyyy * cb0[7].xyzw + r1.xyzw;
  r0.xyzw = cb0[5].xzyw * r0.xyzw;
  r0.xy = r0.xy + r0.zw;
  o1.xy = cb0[6].xy + r0.xy;
  o0.xyzw = cb0[9].xyzw + r1.xyzw;
  o1.zw = float2(0,1);
  return;
}