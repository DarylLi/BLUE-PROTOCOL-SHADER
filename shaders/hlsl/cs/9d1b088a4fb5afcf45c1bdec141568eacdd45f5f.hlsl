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
// unknown dcl_: dcl_resource_raw t0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_raw u0
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = (uint)vThreadID.x << 2;
  r0.yz = (int2)r0.xx + asint(cb0[1].xy);
  r0.w = mad((int)vThreadID.x, 4, 3);
  r0.w = cmp((uint)r0.w < asuint(cb0[0].y));
  if (r0.w != 0) {
    r1.xy = (uint2)r0.yz << int2(2,2);
  // No code for instruction (needs manual fix):
    ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, t0.xyzw
  // No code for instruction (needs manual fix):
    store_raw u0.xyzw, r1.y, r2.xyzw
  } else {
    r0.w = mad((int)vThreadID.x, 4, 2);
    r0.w = cmp((uint)r0.w < asuint(cb0[0].y));
    if (r0.w != 0) {
      r1.xy = (uint2)r0.yz << int2(2,2);
    // No code for instruction (needs manual fix):
        ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r1.xzw, r1.x, t0.xxyz
    // No code for instruction (needs manual fix):
        store_raw u0.xyz, r1.y, r1.xzwx
    } else {
      r0.w = mad((int)vThreadID.x, 4, 1);
      r0.w = cmp((uint)r0.w < asuint(cb0[0].y));
      if (r0.w != 0) {
        r1.xy = (uint2)r0.yz << int2(2,2);
      // No code for instruction (needs manual fix):
            ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r1.xz, r1.x, t0.xxyx
      // No code for instruction (needs manual fix):
            store_raw u0.xy, r1.y, r1.xzxx
      } else {
        r0.x = cmp((uint)r0.x < asuint(cb0[0].y));
        if (r0.x != 0) {
          r0.xy = (uint2)r0.yz << int2(2,2);
        // No code for instruction (needs manual fix):
                ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r0.x, r0.x, t0.xxxx
        // No code for instruction (needs manual fix):
                store_raw u0.x, r0.y, r0.x
        }
      }
    }
  }
  return;
}