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
  o0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  o0.z = cb0[0].x;
  o0.w = 1;
  return;
}