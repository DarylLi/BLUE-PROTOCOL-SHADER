// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
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
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[0].w));
  if (r0.x != 0) {
    r0.x = (uint)vThreadID.x << 2;
    r0.y = t0.Load(r0.x).x;
    r1.xyz = mad((int3)vThreadID.xxx, int3(4,4,4), int3(1,2,3));
    r0.z = t0.Load(r1.x).x;
    r0.w = t0.Load(r1.y).x;
    r1.w = t0.Load(r1.z).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r0.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r1.wwww
    r0.x = (int)vThreadID.x * 17;
    r0.y = (uint)r0.x << 2;
    r0.z = t1.Load(r0.y).x;
    r1.xyz = mad((int3)r0.xxx, int3(4,4,4), int3(1,2,3));
    r0.x = t1.Load(r1.x).x;
    r0.w = t1.Load(r1.y).x;
    r1.w = t1.Load(r1.z).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.yyyy, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xxxx, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.yyyy, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.zzzz, r1.wwww
    r1.xyzw = (int4)r0.yyyy + int4(4,8,12,16);
    r0.x = t1.Load(r1.x).x;
    r2.xyzw = (int4)r1.xxyy + int4(1,3,1,3);
    r0.z = t1.Load(r2.x).x;
    r3.xyzw = (int4)r1.xyzw + int4(2,2,2,2);
    r0.w = t1.Load(r3.x).x;
    r4.x = t1.Load(r2.y).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xxxx, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xxxx, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.xxxx, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.yyyy, r4.xxxx
    r0.x = t1.Load(r1.y).x;
    r0.z = t1.Load(r2.z).x;
    r0.w = t1.Load(r3.y).x;
    r1.x = t1.Load(r2.w).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.yyyy, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.yyyy, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.wwww, r1.xxxx
    r0.x = t1.Load(r1.z).x;
    r2.xyzw = (int4)r1.zzww + int4(1,3,1,3);
    r0.z = t1.Load(r2.x).x;
    r0.w = t1.Load(r3.z).x;
    r1.x = t1.Load(r2.y).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.zzzz, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xxxx, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.zzzz, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.yyyy, r1.xxxx
    r0.x = t1.Load(r1.w).x;
    r0.z = t1.Load(r2.z).x;
    r0.w = t1.Load(r3.w).x;
    r1.x = t1.Load(r2.w).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.wwww, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.wwww, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.wwww, r1.xxxx
    r1.xyzw = (int4)r0.yyyy + int4(20,24,28,32);
    r0.x = t1.Load(r1.x).x;
    r2.xyzw = (int4)r1.xxyy + int4(1,3,1,3);
    r0.z = t1.Load(r2.x).x;
    r3.xyzw = (int4)r1.xyzw + int4(2,2,2,2);
    r0.w = t1.Load(r3.x).x;
    r4.x = t1.Load(r2.y).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xxxx, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xxxx, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.xxxx, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.yyyy, r4.xxxx
    r0.x = t1.Load(r1.y).x;
    r0.z = t1.Load(r2.z).x;
    r0.w = t1.Load(r3.y).x;
    r1.x = t1.Load(r2.w).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.yyyy, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.yyyy, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.wwww, r1.xxxx
    r0.x = t1.Load(r1.z).x;
    r2.xyzw = (int4)r1.zzww + int4(1,3,1,3);
    r0.z = t1.Load(r2.x).x;
    r0.w = t1.Load(r3.z).x;
    r1.x = t1.Load(r2.y).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.zzzz, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xxxx, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.zzzz, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.yyyy, r1.xxxx
    r0.x = t1.Load(r1.w).x;
    r0.z = t1.Load(r2.z).x;
    r0.w = t1.Load(r3.w).x;
    r1.x = t1.Load(r2.w).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.wwww, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.wwww, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.wwww, r1.xxxx
    r1.xyzw = (int4)r0.yyyy + int4(36,40,44,48);
    r0.x = t1.Load(r1.x).x;
    r2.xyzw = (int4)r1.xxyy + int4(1,3,1,3);
    r0.z = t1.Load(r2.x).x;
    r3.xyzw = (int4)r1.xyzw + int4(2,2,2,2);
    r0.w = t1.Load(r3.x).x;
    r4.x = t1.Load(r2.y).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xxxx, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xxxx, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.xxxx, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.yyyy, r4.xxxx
    r0.x = t1.Load(r1.y).x;
    r0.z = t1.Load(r2.z).x;
    r0.w = t1.Load(r3.y).x;
    r1.x = t1.Load(r2.w).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.yyyy, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.yyyy, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.wwww, r1.xxxx
    r0.x = t1.Load(r1.z).x;
    r2.xyzw = (int4)r1.zzww + int4(1,3,1,3);
    r0.z = t1.Load(r2.x).x;
    r0.w = t1.Load(r3.z).x;
    r1.x = t1.Load(r2.y).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.zzzz, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xxxx, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.zzzz, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.yyyy, r1.xxxx
    r0.x = t1.Load(r1.w).x;
    r0.z = t1.Load(r2.z).x;
    r0.w = t1.Load(r3.w).x;
    r1.x = t1.Load(r2.w).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.wwww, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.wwww, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.wwww, r1.xxxx
    r1.xyzw = (int4)r0.yyyy + int4(52,56,60,64);
    r0.x = t1.Load(r1.x).x;
    r2.xyzw = (int4)r1.xxyy + int4(1,3,1,3);
    r0.z = t1.Load(r2.x).x;
    r3.xyzw = (int4)r1.xyzw + int4(2,2,2,2);
    r0.w = t1.Load(r3.x).x;
    r4.x = t1.Load(r2.y).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xxxx, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xxxx, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.xxxx, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.yyyy, r4.xxxx
    r0.x = t1.Load(r1.y).x;
    r0.z = t1.Load(r2.z).x;
    r0.w = t1.Load(r3.y).x;
    r1.x = t1.Load(r2.w).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.yyyy, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.yyyy, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.wwww, r1.xxxx
    r0.x = t1.Load(r1.z).x;
    r2.xyzw = (int4)r1.zzww + int4(1,3,1,3);
    r0.z = t1.Load(r2.x).x;
    r0.w = t1.Load(r3.z).x;
    r1.x = t1.Load(r2.y).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.zzzz, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xxxx, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.zzzz, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.yyyy, r1.xxxx
    r0.x = t1.Load(r1.w).x;
    r0.z = t1.Load(r2.z).x;
    r0.w = t1.Load(r3.w).x;
    r1.x = t1.Load(r2.w).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.wwww, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.zzzz, r0.zzzz
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r3.wwww, r0.wwww
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.wwww, r1.xxxx
  }
  return;
}