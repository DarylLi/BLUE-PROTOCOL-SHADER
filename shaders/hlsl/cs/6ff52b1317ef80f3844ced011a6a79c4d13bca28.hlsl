// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Buffer<uint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[23];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[22].z));
  if (r0.x != 0) {
    r0.x = t0.Load(vThreadID.x).x;
    r0.y = (uint)r0.x << 1;
    r0.z = (uint)vThreadID.x << 3;
    r1.xyzw = t1.Load(r0.z).xyzw;
    r0.z = (uint)r0.y << 2;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xxxx
    r2.xyz = (int3)r0.zzz + int3(1,3,7);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xxxx, r1.yyyy
    bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.y = (((uint)r0.y << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r1.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.yyyy, r1.wwww
    r1.xyzw = mad((int4)vThreadID.xxxx, int4(8,8,8,8), int4(1,2,3,6));
    r3.xyzw = t1.Load(r1.x).xyzw;
    r2.xyw = (int3)r0.zzz + int3(4,5,6);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xxxx, r3.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.yyyy, r3.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.wwww, r3.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.zzzz, r3.wwww
    r0.x = (int)r0.x * 6;
    r2.xyzw = t1.Load(r1.y).xyzw;
    r0.y = (uint)r0.x << 2;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.yyyy, r2.xxxx
    r3.xyz = (int3)r0.yyy + int3(1,3,7);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.xxxx, r2.yyyy
    bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)2 & ~bitmask.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xxxx, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.yyyy, r2.wwww
    r2.xyzw = t1.Load(r1.z).xyzw;
    r0.xzw = (int3)r0.yyy + int3(4,5,6);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xxxx, r2.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.zzzz, r2.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.wwww, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.zzzz, r2.wwww
    r0.xz = (int2)r1.yy + int2(2,3);
    r2.xyzw = t1.Load(r0.x).xyzw;
    r3.xyzw = (int4)r0.yyyy + int4(8,12,16,20);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.xxxx, r2.xxxx
    r4.xyzw = (int4)r3.xxzz + int4(1,3,1,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.xxxx, r2.yyyy
    r5.xyzw = (int4)r3.xyyy | int4(2,5,6,7);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.xxxx, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.yyyy, r2.wwww
    r2.xyzw = t1.Load(r0.z).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.yyyy, r2.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.yyyy, r2.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.zzzz, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.wwww, r2.wwww
    r1.xyzw = t1.Load(r1.w).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.zzzz, r1.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.zzzz, r1.yyyy
    r2.xyzw = (int4)r3.zwww | int4(2,5,6,7);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xxxx, r1.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.wwww, r1.wwww
    r0.x = mad((int)vThreadID.x, 8, 7);
    r0.xyzw = t1.Load(r0.x).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.wwww, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.yyyy, r0.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.wwww, r0.wwww
  }
  return;
}