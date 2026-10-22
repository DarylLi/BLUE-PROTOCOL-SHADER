// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : ATTRIBUTE0,
  uint v1 : SV_VertexID0,
  uint v2 : SV_InstanceID0,
  out float2 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v2.x << 3;
  r0.y = (uint)v1.x >> 2;
  r0.x = (int)r0.y + (int)r0.x;
  r0.xy = t0.Load(r0.x).xy;
  r0.xy = v0.xy * cb0[0].xy + r0.xy;
  o0.xy = r0.xy;
  o1.xy = r0.xy * float2(2,-2) + float2(-1,1);
  o1.zw = float2(0,1);
  return;
}