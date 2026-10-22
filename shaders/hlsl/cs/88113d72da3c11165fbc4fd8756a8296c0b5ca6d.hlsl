// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t1 : register(t1);

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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.xy = cmp((uint2)vThreadID.xx < asuint(cb0[0].yw));
  if (r0.x != 0) {
    r0.x = (int)vThreadID.x * 5;
    r0.z = (int)vThreadID.x + asint(cb0[0].x);
    r0.w = (uint)r0.z << 2;
    bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.x = (((uint)r0.z << 2) & bitmask.x) | ((uint)3 & ~bitmask.x);
    bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.y = (((uint)r0.z << 2) & bitmask.y) | ((uint)1 & ~bitmask.y);
    bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.z = (((uint)r0.z << 2) & bitmask.z) | ((uint)2 & ~bitmask.z);
    r0.z = t0.Load(r1.x).x;
    r1.xw = (int2)r0.zz & int2(1,2);
    if (r1.x != 0) {
      r0.z = t0.Load(r0.w).x;
      r0.z = t1.Load(r0.z).x;
    } else {
      r0.w = t0.Load(r0.w).x;
    // No code for instruction (needs manual fix):
        ld_uav_typed_indexable(buffer)(uint,uint,uint,uint) r0.z, r0.wwww, u0.yzxw
    }
    r0.w = (uint)r0.z << 1;
    r0.z = r1.w ? r0.w : r0.z;
    r0.w = t0.Load(r1.y).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xxxx, r0.wwww
    r2.xyzw = mad(int4(5,5,5,5), (int4)vThreadID.xxxx, int4(1,2,3,4));
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xxxx, r0.zzzz
    r0.z = t0.Load(r1.z).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.yyyy, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.wwww, l(0,0,0,0)
  }
  r0.x = cmp((uint)vThreadID.x >= asuint(cb0[0].y));
  r0.x = r0.x ? r0.y : 0;
  if (r0.x != 0) {
    r0.x = asint(cb0[0].y) + asint(cb0[0].x);
    r0.x = (uint)r0.x << 2;
    r0.y = (int)vThreadID.x + asint(-cb0[0].y);
    r0.x = (int)r0.y + (int)r0.x;
    r0.x = t0.Load(r0.x).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, l(0,0,0,0)
  }
  return;
}