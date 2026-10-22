// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  out float2 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  const float4 icb[] = { { -1.000000, 1.000000, 0, 0},
                              { 1.000000, 1.000000, 1.000000, 0},
                              { 1.000000, -1.000000, 1.000000, 1.000000},
                              { -1.000000, -1.000000, 0, 1.000000},
                              { 1.000000, -1.000000, 1.000000, 1.000000},
                              { -1.000000, 1.000000, 0, 0} };
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v0.x;
  o0.xy = icb[r0.x+0].zw;
  o1.xy = icb[r0.x+0].xy;
  o1.zw = float2(0,1);
  return;
}