// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_raw u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_raw u1
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xy = (uint2)vThreadID.zy << int2(10,5);
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x + (int)vThreadID.x;
  r0.x = (uint)r0.x << 2;
// No code for instruction (needs manual fix):
store_raw u0.x, r0.x, l(0)
// No code for instruction (needs manual fix):
store_raw u1.x, r0.x, l(0)
  return;
}