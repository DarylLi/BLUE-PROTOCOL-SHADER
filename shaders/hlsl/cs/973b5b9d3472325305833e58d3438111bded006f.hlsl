// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<sint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (sint,sint,sint,sint) u0
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[0].x));
  if (r0.x != 0) {
    r0.x = (int)vThreadID.x + asint(cb0[0].y);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xxxx, r0.xxxx
  } else {
    r0.x = (int)vThreadID.x + asint(-cb0[0].x);
    r0.x = t0.Load(r0.x).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xxxx, r0.xxxx
  }
  return;
}