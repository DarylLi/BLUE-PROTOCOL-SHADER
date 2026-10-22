// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cmp((int2)v0.xx == int2(1,2));
  r0.xz = r0.xx ? float2(-1,3) : float2(-1,-1);
  o0.xy = r0.yy ? float2(3,-1) : r0.xz;
  o0.z = cb0[0].w;
  o0.w = 1;
  return;
}