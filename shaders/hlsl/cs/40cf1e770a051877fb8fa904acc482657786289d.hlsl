// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_raw u0
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = (uint)vThreadID.x << 2;
  r0.y = (int)r0.x + asint(cb0[1].y);
  r0.z = mad((int)vThreadID.x, 4, 3);
  r0.z = cmp((uint)r0.z < asuint(cb0[0].y));
  if (r0.z != 0) {
    r0.z = (uint)r0.y << 2;
  // No code for instruction (needs manual fix):
    store_raw u0.xyzw, r0.z, cb0[0].xxxx
  } else {
    r0.z = mad((int)vThreadID.x, 4, 2);
    r0.z = cmp((uint)r0.z < asuint(cb0[0].y));
    if (r0.z != 0) {
      r0.z = (uint)r0.y << 2;
    // No code for instruction (needs manual fix):
        store_raw u0.xyz, r0.z, cb0[0].xxxx
    } else {
      r0.z = mad((int)vThreadID.x, 4, 1);
      r0.z = cmp((uint)r0.z < asuint(cb0[0].y));
      if (r0.z != 0) {
        r0.z = (uint)r0.y << 2;
      // No code for instruction (needs manual fix):
            store_raw u0.xy, r0.z, cb0[0].xxxx
      } else {
        r0.x = cmp((uint)r0.x < asuint(cb0[0].y));
        if (r0.x != 0) {
          r0.x = (uint)r0.y << 2;
        // No code for instruction (needs manual fix):
                store_raw u0.x, r0.x, cb0[0].x
        }
      }
    }
  }
  return;
}