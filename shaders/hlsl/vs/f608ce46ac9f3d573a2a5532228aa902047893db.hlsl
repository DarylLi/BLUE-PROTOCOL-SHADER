// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  out float2 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  o0.xy = float2(0,0);
  o1.x = (uint)v0.x;
  o1.yzw = float3(0,0,0);
  return;
}