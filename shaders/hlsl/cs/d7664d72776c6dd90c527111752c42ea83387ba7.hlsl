// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g2[64];
struct u2_t {
  float val[4];
};
RWStructuredBuffer<u2_t> u2 : register(u2);

struct u1_t {
  float val[4];
};
RWStructuredBuffer<u1_t> u1 : register(u1);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[25];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  if (vThreadIDInGroup.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[0].w));
  if (r0.x != 0) {
    r0.x = (uint)vThreadID.x << 2;
    r0.x = t0.Load(r0.x).x;
    r1.xyz = mad((int3)vThreadID.xxx, int3(4,4,4), int3(1,2,3));
    r0.y = t0.Load(r1.x).x;
    r0.z = t0.Load(r1.y).x;
    r0.w = t0.Load(r1.z).x;
    r0.xyz = cb0[23].xyz + -r0.xyz;
    r0.x = dot(r0.xyz, r0.xyz);
    r0.x = sqrt(r0.x);
    r0.y = mad((int)vThreadID.x, 68, 12);
    r0.y = (int)r0.y + 3;
    r0.y = t1.Load(r0.y).x;
    r0.y = (uint)r0.y;
    r0.z = cb0[23].w + r0.w;
    r0.z = cb0[22].w + r0.z;
    r0.x = cmp(r0.x < r0.z);
    r0.z = cmp(asint(cb0[24].x) == 2);
    r0.y = cmp((int)r0.y == asint(cb0[24].x));
    r0.y = (int)r0.y | (int)r0.z;
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      // Needs manual fix for instruction:
        imm_atomic_iadd r0.x, g0, l(0), l(1)
      InterlockedAdd(dest, imm_value, orig_value);
      g2[r0.x].val[0/4] = vThreadID.x;
    }
  }
  GroupMemoryBarrierWithGroupSync();
  if (vThreadIDInGroup.x == 0) {
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g0.xxxx
    // Needs manual fix for instruction:
    imm_atomic_iadd r0.x, u0, l(1), r0.x
    InterlockedAdd(dest, imm_value, orig_value);
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), r0.x
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r0.x, l(0), g0.xxxx
  r0.x = cmp((uint)vThreadIDInGroup.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = g2[vThreadIDInGroup.x].val[0/4];
  // No code for instruction (needs manual fix):
    ld_raw r0.y, l(0), g1.xxxx
    r0.y = (int)r0.y + (int)vThreadIDInGroup.x;
    r0.z = (uint)r0.x << 2;
    r1.x = t0.Load(r0.z).x;
    bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
    bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
    bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.z = (((uint)r0.x << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
    r1.y = t0.Load(r2.x).x;
    r1.z = t0.Load(r2.y).x;
    r1.w = t0.Load(r2.z).x;
    u1[r0.y].val[0/4] = r1.x;
    u1[r0.y].val[0/4+1] = r1.y;
    u1[r0.y].val[0/4+2] = r1.z;
    u1[r0.y].val[0/4+3] = r1.w;
    r0.x = (int)r0.x * 17;
    r0.z = (uint)r0.x << 2;
    r1.x = t1.Load(r0.z).x;
    bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
    bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
    bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.z = (((uint)r0.x << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
    r1.y = t1.Load(r2.x).x;
    r1.z = t1.Load(r2.y).x;
    r1.w = t1.Load(r2.z).x;
    r0.x = (int)r0.y * 17;
    u2[r0.x].val[0/4] = r1.x;
    u2[r0.x].val[0/4+1] = r1.y;
    u2[r0.x].val[0/4+2] = r1.z;
    u2[r0.x].val[0/4+3] = r1.w;
    r1.xyzw = (int4)r0.zzzz + int4(4,8,12,16);
    r2.x = t1.Load(r1.x).x;
    r3.xyzw = (int4)r1.xxyy + int4(1,3,1,3);
    r2.y = t1.Load(r3.x).x;
    r4.xyzw = (int4)r1.xyzw + int4(2,2,2,2);
    r2.z = t1.Load(r4.x).x;
    r2.w = t1.Load(r3.y).x;
    r5.xyzw = mad((int4)r0.yyyy, int4(17,17,17,17), int4(1,2,3,4));
    u2[r5.x].val[0/4] = r2.x;
    u2[r5.x].val[0/4+1] = r2.y;
    u2[r5.x].val[0/4+2] = r2.z;
    u2[r5.x].val[0/4+3] = r2.w;
    r2.x = t1.Load(r1.y).x;
    r2.y = t1.Load(r3.z).x;
    r2.z = t1.Load(r4.y).x;
    r2.w = t1.Load(r3.w).x;
    u2[r5.y].val[0/4] = r2.x;
    u2[r5.y].val[0/4+1] = r2.y;
    u2[r5.y].val[0/4+2] = r2.z;
    u2[r5.y].val[0/4+3] = r2.w;
    r2.x = t1.Load(r1.z).x;
    r3.xyzw = (int4)r1.zzww + int4(1,3,1,3);
    r2.y = t1.Load(r3.x).x;
    r2.z = t1.Load(r4.z).x;
    r2.w = t1.Load(r3.y).x;
    u2[r5.z].val[0/4] = r2.x;
    u2[r5.z].val[0/4+1] = r2.y;
    u2[r5.z].val[0/4+2] = r2.z;
    u2[r5.z].val[0/4+3] = r2.w;
    r1.x = t1.Load(r1.w).x;
    r1.y = t1.Load(r3.z).x;
    r1.z = t1.Load(r4.w).x;
    r1.w = t1.Load(r3.w).x;
    u2[r5.w].val[0/4] = r1.x;
    u2[r5.w].val[0/4+1] = r1.y;
    u2[r5.w].val[0/4+2] = r1.z;
    u2[r5.w].val[0/4+3] = r1.w;
    r1.xyzw = (int4)r0.zzzz + int4(20,24,28,32);
    r2.x = t1.Load(r1.x).x;
    r3.xyzw = (int4)r1.xxyy + int4(1,3,1,3);
    r2.y = t1.Load(r3.x).x;
    r4.xyzw = (int4)r1.xyzw + int4(2,2,2,2);
    r2.z = t1.Load(r4.x).x;
    r2.w = t1.Load(r3.y).x;
    r5.xyzw = mad((int4)r0.yyyy, int4(17,17,17,17), int4(5,6,7,8));
    u2[r5.x].val[0/4] = r2.x;
    u2[r5.x].val[0/4+1] = r2.y;
    u2[r5.x].val[0/4+2] = r2.z;
    u2[r5.x].val[0/4+3] = r2.w;
    r2.x = t1.Load(r1.y).x;
    r2.y = t1.Load(r3.z).x;
    r2.z = t1.Load(r4.y).x;
    r2.w = t1.Load(r3.w).x;
    u2[r5.y].val[0/4] = r2.x;
    u2[r5.y].val[0/4+1] = r2.y;
    u2[r5.y].val[0/4+2] = r2.z;
    u2[r5.y].val[0/4+3] = r2.w;
    r2.x = t1.Load(r1.z).x;
    r3.xyzw = (int4)r1.zzww + int4(1,3,1,3);
    r2.y = t1.Load(r3.x).x;
    r2.z = t1.Load(r4.z).x;
    r2.w = t1.Load(r3.y).x;
    u2[r5.z].val[0/4] = r2.x;
    u2[r5.z].val[0/4+1] = r2.y;
    u2[r5.z].val[0/4+2] = r2.z;
    u2[r5.z].val[0/4+3] = r2.w;
    r1.x = t1.Load(r1.w).x;
    r1.y = t1.Load(r3.z).x;
    r1.z = t1.Load(r4.w).x;
    r1.w = t1.Load(r3.w).x;
    u2[r5.w].val[0/4] = r1.x;
    u2[r5.w].val[0/4+1] = r1.y;
    u2[r5.w].val[0/4+2] = r1.z;
    u2[r5.w].val[0/4+3] = r1.w;
    r1.xyzw = (int4)r0.zzzz + int4(36,40,44,48);
    r2.x = t1.Load(r1.x).x;
    r3.xyzw = (int4)r1.xxyy + int4(1,3,1,3);
    r2.y = t1.Load(r3.x).x;
    r4.xyzw = (int4)r1.xyzw + int4(2,2,2,2);
    r2.z = t1.Load(r4.x).x;
    r2.w = t1.Load(r3.y).x;
    r5.xyzw = mad((int4)r0.yyyy, int4(17,17,17,17), int4(9,10,11,12));
    u2[r5.x].val[0/4] = r2.x;
    u2[r5.x].val[0/4+1] = r2.y;
    u2[r5.x].val[0/4+2] = r2.z;
    u2[r5.x].val[0/4+3] = r2.w;
    r2.x = t1.Load(r1.y).x;
    r2.y = t1.Load(r3.z).x;
    r2.z = t1.Load(r4.y).x;
    r2.w = t1.Load(r3.w).x;
    u2[r5.y].val[0/4] = r2.x;
    u2[r5.y].val[0/4+1] = r2.y;
    u2[r5.y].val[0/4+2] = r2.z;
    u2[r5.y].val[0/4+3] = r2.w;
    r2.x = t1.Load(r1.z).x;
    r3.xyzw = (int4)r1.zzww + int4(1,3,1,3);
    r2.y = t1.Load(r3.x).x;
    r2.z = t1.Load(r4.z).x;
    r2.w = t1.Load(r3.y).x;
    u2[r5.z].val[0/4] = r2.x;
    u2[r5.z].val[0/4+1] = r2.y;
    u2[r5.z].val[0/4+2] = r2.z;
    u2[r5.z].val[0/4+3] = r2.w;
    r1.x = t1.Load(r1.w).x;
    r1.y = t1.Load(r3.z).x;
    r1.z = t1.Load(r4.w).x;
    r1.w = t1.Load(r3.w).x;
    u2[r5.w].val[0/4] = r1.x;
    u2[r5.w].val[0/4+1] = r1.y;
    u2[r5.w].val[0/4+2] = r1.z;
    u2[r5.w].val[0/4+3] = r1.w;
    r1.xyzw = (int4)r0.zzzz + int4(52,56,60,64);
    r2.x = t1.Load(r1.x).x;
    r3.xyzw = (int4)r1.xxyy + int4(1,3,1,3);
    r2.y = t1.Load(r3.x).x;
    r4.xyzw = (int4)r1.xyzw + int4(2,2,2,2);
    r2.z = t1.Load(r4.x).x;
    r2.w = t1.Load(r3.y).x;
    r5.xyzw = mad((int4)r0.yyyy, int4(17,17,17,17), int4(13,14,15,16));
    u2[r5.x].val[0/4] = r2.x;
    u2[r5.x].val[0/4+1] = r2.y;
    u2[r5.x].val[0/4+2] = r2.z;
    u2[r5.x].val[0/4+3] = r2.w;
    r2.x = t1.Load(r1.y).x;
    r2.y = t1.Load(r3.z).x;
    r2.z = t1.Load(r4.y).x;
    r2.w = t1.Load(r3.w).x;
    u2[r5.y].val[0/4] = r2.x;
    u2[r5.y].val[0/4+1] = r2.y;
    u2[r5.y].val[0/4+2] = r2.z;
    u2[r5.y].val[0/4+3] = r2.w;
    r2.x = t1.Load(r1.z).x;
    r3.xyzw = (int4)r1.zzww + int4(1,3,1,3);
    r2.y = t1.Load(r3.x).x;
    r2.z = t1.Load(r4.z).x;
    r2.w = t1.Load(r3.y).x;
    u2[r5.z].val[0/4] = r2.x;
    u2[r5.z].val[0/4+1] = r2.y;
    u2[r5.z].val[0/4+2] = r2.z;
    u2[r5.z].val[0/4+3] = r2.w;
    r1.x = t1.Load(r1.w).x;
    r1.y = t1.Load(r3.z).x;
    r1.z = t1.Load(r4.w).x;
    r1.w = t1.Load(r3.w).x;
    u2[r5.w].val[0/4] = r1.x;
    u2[r5.w].val[0/4+1] = r1.y;
    u2[r5.w].val[0/4+2] = r1.z;
    u2[r5.w].val[0/4+3] = r1.w;
  }
  return;
}