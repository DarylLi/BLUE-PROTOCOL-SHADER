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
// unknown dcl_: dcl_resource_raw t1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_raw u0
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = (int)vThreadID.x + asint(cb0[1].x);
  uiDest.y = (uint)r0.x / asuint(cb0[0].y);
  r0.y = uiDest.y;
  r0.z = cmp((uint)r0.y < asuint(cb0[0].w));
  if (r0.z != 0) {
    r0.z = mad((int)-r0.y, asint(cb0[0].y), (int)r0.x);
    r0.xy = (uint2)r0.xy << int2(4,2);
  // No code for instruction (needs manual fix):
    ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r0.y, r0.y, t0.xxxx
    r0.y = mad((int)r0.y, asint(cb0[0].y), (int)r0.z);
  // No code for instruction (needs manual fix):
    ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, t1.xyzw
    r0.x = (uint)r0.y << 4;
  // No code for instruction (needs manual fix):
    store_raw u0.xyzw, r0.x, r1.xyzw
  }
  return;
}