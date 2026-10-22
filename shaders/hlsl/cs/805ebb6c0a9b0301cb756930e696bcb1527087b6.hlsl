// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t1 : register(t1);

Buffer<uint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xyz = cmp((uint3)vThreadID.xyz < asuint(cb0[1].xyz));
  r0.x = r0.y ? r0.x : 0;
  r0.x = r0.z ? r0.x : 0;
  r0.y = mad((int)vThreadID.z, asint(cb0[1].y), (int)vThreadID.y);
  r0.y = mad((int)r0.y, asint(cb0[1].x), (int)vThreadID.x);
  if (r0.x != 0) {
    r0.z = t0.Load(r0.y).x;
    r0.w = 0;
    r1.x = r0.z;
    while (true) {
      r1.y = cmp((int)r1.x != -1);
      r1.z = cmp((uint)r0.w < asuint(cb0[0].x));
      r1.y = r1.z ? r1.y : 0;
      if (r1.y == 0) break;
      r0.w = (int)r0.w + 1;
      bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.y = (((uint)r1.x << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
      r1.x = t1.Load(r1.y).x;
    }
  } else {
    r0.zw = float2(0,0);
  }
  // Needs manual fix for instruction:
imm_atomic_iadd r1.x, u2, l(0), r0.w
  InterlockedAdd(dest, imm_value, orig_value);
  if (r0.x != 0) {
    r1.y = (uint)r0.y << 1;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r0.wwww
    bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.z = (((uint)r0.y << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r1.xxxx
    r1.x = (int)r0.w + (int)r1.x;
    r1.y = r0.z;
    r1.z = 0;
    while (true) {
      r1.w = cmp((int)r1.y != -1);
      r2.x = cmp((uint)r1.z < (uint)r0.w);
      r1.w = r1.w ? r2.x : 0;
      if (r1.w == 0) break;
      r1.w = (int)-r1.z + (int)r1.x;
      r1.w = (int)r1.w + -1;
      r2.x = (uint)r1.y << 1;
      r2.x = t1.Load(r2.x).x;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r1.wwww, r2.xxxx
      r1.z = (int)r1.z + 1;
      bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r1.y << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
      r1.y = t1.Load(r1.w).x;
    }
  }
  r0.y = (int)r0.y + asint(cb0[0].w);
  if (r0.x != 0) {
    r0.z = t0.Load(r0.y).x;
    r0.w = 0;
    r1.x = r0.z;
    while (true) {
      r1.y = cmp((int)r1.x != -1);
      r1.z = cmp((uint)r0.w < asuint(cb0[0].y));
      r1.y = r1.z ? r1.y : 0;
      if (r1.y == 0) break;
      r0.w = (int)r0.w + 1;
      bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.y = (((uint)r1.x << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
      r1.x = t1.Load(r1.y).x;
    }
  } else {
    r0.zw = float2(0,0);
  }
  // Needs manual fix for instruction:
imm_atomic_iadd r1.x, u2, l(0), r0.w
  InterlockedAdd(dest, imm_value, orig_value);
  if (r0.x != 0) {
    r0.x = (uint)r0.y << 1;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r0.wwww
    bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)r0.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r1.xxxx
    r0.x = (int)r0.w + (int)r1.x;
    r0.y = r0.z;
    r1.x = 0;
    while (true) {
      r1.y = cmp((int)r0.y != -1);
      r1.z = cmp((uint)r1.x < (uint)r0.w);
      r1.y = r1.z ? r1.y : 0;
      if (r1.y == 0) break;
      r1.y = (int)r0.x + (int)-r1.x;
      r1.y = (int)r1.y + -1;
      r1.z = (uint)r0.y << 1;
      r1.z = t1.Load(r1.z).x;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r1.yyyy, r1.zzzz
      r1.x = (int)r1.x + 1;
      bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.y = (((uint)r0.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
      r0.y = t1.Load(r1.y).x;
    }
  }
  return;
}