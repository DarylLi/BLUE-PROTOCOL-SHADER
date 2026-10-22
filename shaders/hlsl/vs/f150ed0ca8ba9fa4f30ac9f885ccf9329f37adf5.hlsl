// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_InstanceID0,
  uint v1 : SV_VertexID0,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, vertex_id
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cmp((int4)v1.xxxx == int4(1,2,4,5));
  r0.xy = (int2)r0.yz | (int2)r0.xy;
  r0.xy = (int2)r0.zw | (int2)r0.xy;
  r1.xyzw = t0.Load(v0.x).xyzw;
  r0.xy = r0.xy ? r1.zw : r1.xy;
  r0.xy = (uint2)r0.xy;
  r0.xy = cb0[0].xy * r0.xy;
  o0.xy = r0.xy * float2(2,-2) + float2(-1,1);
  o0.zw = float2(0,1);
  return;
}