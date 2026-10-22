// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
// unknown dcl_: dcl_thread_group 512, 1, 1
  r0.x = (int)vThreadID.x + asint(cb0[1].x);
  r0.y = cmp((uint)r0.x < asuint(cb0[2].x));
  if (r0.y != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, cb0[0].xyzw
  }
  return;
}