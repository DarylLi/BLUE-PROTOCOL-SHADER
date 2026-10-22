// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1, 1, 1
  r0.x = t0.Load(float4(0,0,0,0)).x;
  r0.x = min(asuint(cb0[0].x), (uint)r0.x);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, l(0,0,0,0), r0.xxxx
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, l(1,1,1,1), l(1,1,1,1)
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, l(2,2,2,2), l(1,1,1,1)
  return;
}