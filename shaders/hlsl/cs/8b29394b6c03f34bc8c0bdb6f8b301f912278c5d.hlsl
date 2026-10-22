// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u2
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u3
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (int4)vThreadID.xyyy | int4(1,1,1,1);
  r0.xyzw = (uint4)r0.xyzw;
  r0.xyzw = r0.xyzw * cb0[2].xyyy + cb0[2].zwww;
  bitmask.x = ((~(-1 << 1)) << 1) & 0xffffffff;  r1.x = (((uint)vThreadID.y << 1) & bitmask.x) | ((uint)0 & ~bitmask.x);
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r2.x = (((uint)vThreadID.x << 0) & bitmask.x) | ((uint)r1.x & ~bitmask.x);
  r0.xyzw = cb0[5].xyyy * r0.xyzw;
  r0.xyzw = (uint4)r0.xyzw;
  r2.yzw = (uint3)r1.xxx >> int3(1,1,1);
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.x = (((uint)r2.x << 0) & bitmask.x) | ((uint)r0.x & ~bitmask.x);
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.y = (((uint)r2.y << 0) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
  bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.z = (((uint)r2.z << 0) & bitmask.z) | ((uint)r0.z & ~bitmask.z);
  bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.w = (((uint)r2.w << 0) & bitmask.w) | ((uint)r0.w & ~bitmask.w);
  r1.xy = cmp((uint2)r0.xw < asuint(cb0[1].xy));
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xwww, l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xwww, l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r0.xwww, l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r0.xyzw, l(0,0,0,0)
  }
  return;
}