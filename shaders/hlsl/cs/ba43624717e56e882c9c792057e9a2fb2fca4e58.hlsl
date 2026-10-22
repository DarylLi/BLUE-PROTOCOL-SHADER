// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t1 : register(t1);

Buffer<uint4> t0 : register(t0);




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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = t0.Load(float4(1,1,1,1)).x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = t1.Load(vThreadID.x).x;
    r0.y = (int)r0.x + 3;
    r0.z = (uint)r0.y >> 2;
    // Needs manual fix for instruction:
    imm_atomic_iadd r1.x, u2, l(0), r0.z
    InterlockedAdd(dest, imm_value, orig_value);
    r0.z = (uint)r1.x << 2;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xxxx, r0.zzzz
    r0.y = (int)r0.y & -4;
    r0.w = r0.x;
    while (true) {
      r1.x = cmp((uint)r0.w >= (uint)r0.y);
      if (r1.x != 0) break;
      r1.x = (int)r0.w + (int)r0.z;
      r1.y = (uint)r1.x << 1;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r1.yyyy, l(0x0000ffff,0x0000ffff,0x0000ffff,0x0000ffff)
      bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r1.xxxx, vThreadID.xxxx
      r0.w = (int)r0.w + 1;
    }
  }
  if (vThreadID.x == 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, l(1,1,1,1), l(1,1,1,1)
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, l(2,2,2,2), l(1,1,1,1)
  }
  return;
}