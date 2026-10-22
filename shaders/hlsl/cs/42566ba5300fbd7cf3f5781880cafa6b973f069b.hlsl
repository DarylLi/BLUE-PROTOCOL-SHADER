// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t0 : register(t0);




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
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, l(0,0,0,0), r0.xxxx
  r0.x = t0.Load(float4(1,1,1,1)).x;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, l(1,1,1,1), r0.xxxx
  r0.x = t0.Load(float4(2,2,2,2)).x;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, l(2,2,2,2), r0.xxxx
  r0.x = t0.Load(float4(3,3,3,3)).x;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, l(3,3,3,3), r0.xxxx
  return;
}