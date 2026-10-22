// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



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

  r0.x = (uint)v0.x >> 1;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)r0.x + -1;
  o0.y = (int)r0.x;
  bitmask.x = ((~(-1 << 1)) << 2) & 0xffffffff;  r0.x = (((uint)v0.x << 2) & bitmask.x) | ((uint)0 & ~bitmask.x);
  r0.x = (int)r0.x + -1;
  o0.x = (int)r0.x;
  o0.zw = float2(0,1);
  return;
}