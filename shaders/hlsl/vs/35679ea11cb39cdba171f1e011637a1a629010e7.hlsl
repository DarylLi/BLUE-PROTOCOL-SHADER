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

  r0.x = (int)v0.x & 1;
  r0.z = (uint)v0.x >> 1;
  r0.xy = (uint2)r0.xz;
  r0.zw = cb0[0].zw + -cb0[0].xy;
  o0.xy = r0.xy * r0.zw + cb0[0].xy;
  o0.zw = float2(0,1);
  return;
}