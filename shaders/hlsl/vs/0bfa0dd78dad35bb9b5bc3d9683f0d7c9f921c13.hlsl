// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v0.x + 1;
  uiDest.x = (uint)r0.x / 3;
  r0.x = uiDest.x;
  r0.x = (int)r0.x & 1;
  r0.w = (int)v0.x & 1;
  r0.xy = (uint2)r0.xw;
  r0.z = 1 + -r0.y;
  o1.xy = r0.xy;
  o0.xy = r0.xz * float2(2,2) + float2(-1,-1);
  o0.zw = float2(0,1);
  return;
}