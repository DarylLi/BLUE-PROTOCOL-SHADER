// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t0 : register(t0);




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = mad((int)vThreadGroupID.x, 128, (int)vThreadIDInGroup.x);
  r1.xyzw = t0.Load(r0.x).xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
  r0.x = mad((int)vThreadGroupID.x, 128, 64);
  r0.x = (int)r0.x + (int)vThreadIDInGroup.x;
  r1.xyzw = t0.Load(r0.x).xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
  return;
}