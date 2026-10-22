// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



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
// unknown dcl_: dcl_thread_group 128, 1, 1
  r0.x = 0;
  while (true) {
    r0.y = cmp((uint)r0.x >= 8);
    if (r0.y != 0) break;
    r0.y = mad((int)r0.x, 128, (int)vThreadIDInGroup.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, l(0,0,0,0)
    r0.x = (int)r0.x + 1;
  }
  return;
}