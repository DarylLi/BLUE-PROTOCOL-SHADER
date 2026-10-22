// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[22].w));
  if (r0.x != 0) {
    r0.xy = t0.Load(vThreadID.x).xy;
    r0.zw = (uint2)r0.yx << int2(1,1);
    r1.xy = (uint2)r0.zw << int2(2,2);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r1.z, r1.xxxx, u0.yzxw
    r2.xyzw = (int4)r1.xxyy + int4(1,3,1,3);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r1.w, r2.xxxx, u0.yzwx
    bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.z = (((uint)r0.z << 2) & bitmask.z) | ((uint)2 & ~bitmask.z);
    bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.w = (((uint)r0.w << 2) & bitmask.w) | ((uint)2 & ~bitmask.w);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.z, r0.zzzz, u0.yzxw
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r2.x, r2.yyyy, u0.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r1.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.zzzz, r1.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.wwww, r2.xxxx
    r2.xyzw = (int4)r1.xxxy + int4(4,5,6,4);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.z, r2.xxxx, u0.yzxw
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.w, r2.yyyy, u0.yzwx
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r1.z, r2.zzzz, u0.yzxw
    r1.xw = (int2)r1.xy + int2(7,7);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r1.x, r1.xxxx, u0.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.wwww, r0.zzzz
    r2.xy = (int2)r1.yy + int2(5,6);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xxxx, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.yyyy, r1.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r1.xxxx
    r0.xy = (int2)r0.yx * int2(6,6);
    r1.xyzw = (uint4)r0.xyxy << int4(2,2,2,2);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.z, r1.zzzz, u1.yzxw
    r2.xyzw = (int4)r1.zzww + int4(1,3,1,3);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.w, r2.xxxx, u1.yzwx
    bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)2 & ~bitmask.x);
    bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.y = (((uint)r0.y << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.x, r0.xxxx, u1.xyzw
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r2.x, r2.yyyy, u1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.wwww, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.yyyy, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.wwww, r2.xxxx
    r0.xyzw = (int4)r1.zzzw + int4(4,5,6,4);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.x, r0.xxxx, u1.xyzw
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.y, r0.yyyy, u1.yxzw
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.z, r0.zzzz, u1.yzxw
    r2.xy = (int2)r1.zw + int2(7,7);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r2.x, r2.xxxx, u1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.wwww, r0.xxxx
    r0.xw = (int2)r1.ww + int2(5,6);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xxxx, r0.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.wwww, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.yyyy, r2.xxxx
    r0.xyzw = (int4)r1.zwzw + int4(8,8,12,12);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r2.x, r0.xxxx, u1.xyzw
    r3.xyzw = (int4)r0.xxyy + int4(1,3,1,3);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r2.y, r3.xxxx, u1.yxzw
    r4.xyzw = (int4)r0.xyzz | int4(2,2,5,6);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.x, r4.xxxx, u1.xyzw
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r2.z, r3.yyyy, u1.yzxw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.yyyy, r2.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.zzzz, r2.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.yyyy, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.wwww, r2.zzzz
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.x, r0.zzzz, u1.xyzw
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.y, r4.zzzz, u1.yxzw
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r2.x, r4.wwww, u1.xyzw
    r3.xyzw = (int4)r0.zwww | int4(7,5,6,7);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.z, r3.xxxx, u1.yzxw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.wwww, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.yyyy, r0.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.zzzz, r2.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.wwww, r0.zzzz
    r0.xyzw = (int4)r1.xyzw + int4(16,16,20,20);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r1.x, r0.xxxx, u1.xyzw
    r2.xyzw = (int4)r0.xxyy + int4(1,3,1,3);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r1.y, r2.xxxx, u1.yxzw
    r3.xyzw = (int4)r0.xyzz | int4(2,2,5,6);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.x, r3.xxxx, u1.xyzw
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r1.z, r2.yyyy, u1.yzxw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.yyyy, r1.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, r1.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.yyyy, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.wwww, r1.zzzz
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.x, r0.zzzz, u1.xyzw
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.y, r3.zzzz, u1.yxzw
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r1.x, r3.wwww, u1.xyzw
    r2.xyzw = (int4)r0.zwww | int4(7,5,6,7);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(float,float,float,float) r0.z, r2.xxxx, u1.yzxw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.wwww, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.yyyy, r0.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, r1.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.wwww, r0.zzzz
  }
  return;
}