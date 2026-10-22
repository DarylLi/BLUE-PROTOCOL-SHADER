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
    r0.y = (int)vThreadID.x * 18;
    r1.xyzw = t1.Load(r0.y).xyzw;
    r0.y = (uint)r0.x << 2;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r1.xxxx
    bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
    bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
    bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.z = (((uint)r0.x << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xxxx, r1.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.yyyy, r1.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.zzzz, r1.wwww
    r0.x = (int)r0.x * 17;
    r0.y = mad((int)vThreadID.x, 18, 1);
    r1.xyzw = t1.Load(r0.y).xyzw;
    r0.z = (uint)r0.x << 2;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.zzzz, r1.xxxx
    bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
    bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
    bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.z = (((uint)r0.x << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xxxx, r1.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.yyyy, r1.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, r1.wwww
    r1.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r2.xyzw = t1.Load(r1.x).xyzw;
    r3.xyzw = (int4)r0.zzzz + int4(4,8,12,16);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.xxxx, r2.xxxx
    r4.xyzw = (int4)r3.xxyy + int4(1,3,1,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.xxxx, r2.yyyy
    r5.xyzw = (int4)r3.xyzw + int4(2,2,2,2);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.xxxx, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.yyyy, r2.wwww
    r2.xyzw = t1.Load(r1.y).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.yyyy, r2.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.zzzz, r2.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.yyyy, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.wwww, r2.wwww
    r2.xyzw = t1.Load(r1.z).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.zzzz, r2.xxxx
    r4.xyzw = (int4)r3.zzww + int4(1,3,1,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.xxxx, r2.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.zzzz, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.yyyy, r2.wwww
    r1.xyzw = t1.Load(r1.w).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.wwww, r1.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.zzzz, r1.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.wwww, r1.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.wwww, r1.wwww
    r1.xyzw = (int4)r0.yyyy + int4(5,6,7,8);
    r2.xyzw = t1.Load(r1.x).xyzw;
    r3.xyzw = (int4)r0.zzzz + int4(20,24,28,32);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.xxxx, r2.xxxx
    r4.xyzw = (int4)r3.xxyy + int4(1,3,1,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.xxxx, r2.yyyy
    r5.xyzw = (int4)r3.xyzw + int4(2,2,2,2);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.xxxx, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.yyyy, r2.wwww
    r2.xyzw = t1.Load(r1.y).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.yyyy, r2.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.zzzz, r2.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.yyyy, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.wwww, r2.wwww
    r2.xyzw = t1.Load(r1.z).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.zzzz, r2.xxxx
    r4.xyzw = (int4)r3.zzww + int4(1,3,1,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.xxxx, r2.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.zzzz, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.yyyy, r2.wwww
    r1.xyzw = t1.Load(r1.w).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.wwww, r1.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.zzzz, r1.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.wwww, r1.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.wwww, r1.wwww
    r1.xyzw = (int4)r0.yyyy + int4(9,10,11,12);
    r2.xyzw = t1.Load(r1.x).xyzw;
    r3.xyzw = (int4)r0.zzzz + int4(36,40,44,48);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.xxxx, r2.xxxx
    r4.xyzw = (int4)r3.xxyy + int4(1,3,1,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.xxxx, r2.yyyy
    r5.xyzw = (int4)r3.xyzw + int4(2,2,2,2);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.xxxx, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.yyyy, r2.wwww
    r2.xyzw = t1.Load(r1.y).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.yyyy, r2.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.zzzz, r2.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.yyyy, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.wwww, r2.wwww
    r2.xyzw = t1.Load(r1.z).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.zzzz, r2.xxxx
    r4.xyzw = (int4)r3.zzww + int4(1,3,1,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.xxxx, r2.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.zzzz, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.yyyy, r2.wwww
    r1.xyzw = t1.Load(r1.w).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.wwww, r1.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.zzzz, r1.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.wwww, r1.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.wwww, r1.wwww
    r1.xyzw = (int4)r0.yyyy + int4(13,14,15,16);
    r2.xyzw = t1.Load(r1.x).xyzw;
    r3.xyzw = (int4)r0.zzzz + int4(52,56,60,64);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.xxxx, r2.xxxx
    r4.xyzw = (int4)r3.xxyy + int4(1,3,1,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.xxxx, r2.yyyy
    r5.xyzw = (int4)r3.xyzw + int4(2,2,2,2);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.xxxx, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.yyyy, r2.wwww
    r2.xyzw = t1.Load(r1.y).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.yyyy, r2.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.zzzz, r2.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.yyyy, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.wwww, r2.wwww
    r2.xyzw = t1.Load(r1.z).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.zzzz, r2.xxxx
    r4.xyzw = (int4)r3.zzww + int4(1,3,1,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.xxxx, r2.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.zzzz, r2.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.yyyy, r2.wwww
    r1.xyzw = t1.Load(r1.w).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.wwww, r1.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.zzzz, r1.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r5.wwww, r1.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.wwww, r1.wwww
  }
  return;
}