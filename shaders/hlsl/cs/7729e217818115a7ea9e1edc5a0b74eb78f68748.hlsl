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
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u2
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = (int)vThreadID.x + asint(cb0[0].x);
  r0.y = cmp((uint)r0.x < asuint(cb0[0].y));
  if (r0.y != 0) {
    r0.y = t0.Load(r0.x).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r0.yyyy
  } else {
    r0.y = cmp((uint)r0.x < asuint(cb0[0].z));
    if (r0.y != 0) {
      r0.y = t0.Load(r0.x).x;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.xxxx, r0.yyyy
    } else {
      r0.y = cmp((uint)r0.x < asuint(cb0[0].w));
      if (r0.y != 0) {
        r0.y = t0.Load(r0.x).x;
      // No code for instruction (needs manual fix):
            store_uav_typed u2.xyzw, r0.xxxx, r0.yyyy
      }
    }
  }
  return;
}