// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  out float2 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v0.x >> 1;
  r0.x = (int)-r0.x + 1;
  r0.y = (uint)r0.x;
  r0.zw = cb0[1].zw + -cb0[1].xy;
  r1.x = (int)v0.x & 1;
  r0.x = (uint)r1.x;
  o0.xy = r0.xy * r0.zw + cb0[1].xy;
  r0.zw = cb0[0].zw + -cb0[0].xy;
  o1.xy = r0.xy * r0.zw + cb0[0].xy;
  o1.zw = float2(0,1);
  return;
}