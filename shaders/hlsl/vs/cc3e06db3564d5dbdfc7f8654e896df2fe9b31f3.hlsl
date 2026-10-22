// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[17];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : ATTRIBUTE0,
  uint v1 : SV_VertexID0,
  uint v2 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v1.x >> 2;
  r0.x = (int)r0.x + (int)v2.x;
  uiDest.y = (uint)v2.x / asuint(cb0[16].x);
  r0.y = uiDest.y;
  r0.z = mad((int)-r0.y, asint(cb0[16].x), (int)r0.x);
  r0.x = t0.Load(r0.x).x;
  r1.xy = (uint2)r0.zy;
  r0.yz = v0.xy + r1.xy;
  r1.xy = asuint(cb0[13].xy);
  r0.yz = r0.yz * cb0[16].zw + r1.xy;
  r0.yz = r0.yz * cb1[132].zw + -cb1[66].wz;
  r0.yz = r0.yz / cb1[66].xy;
  o0.xy = r0.xx ? r0.yz : float2(0,0);
  o0.zw = float2(0,1);
  return;
}