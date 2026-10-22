// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g3[16];
groupshared struct { float val[1]; } g2[136];
groupshared struct { float val[1]; } g1[97];
groupshared struct { float val[1]; } g0[2112];
Buffer<uint4> t2 : register(t2);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 128, 1, 1
  r0.x = (int)vThreadIDInGroup.x * 33;
  r0.yzw = cmp((uint3)vThreadIDInGroup.xxx < int3(64,16,8));
  r1.xy = (uint2)vThreadIDInGroup.xx >> int2(2,5);
  r1.zw = (int2)vThreadIDInGroup.xx & int2(3,31);
  r1.z = mad((int)r1.x, 6, (int)r1.z);
  r1.xz = (int2)r1.xz + int2(7,2);
  r1.xz = r0.yy ? r1.xz : float2(23,96);
  if (r0.y != 0) {
    r2.xy = (int2)r1.zz + int2(-1,-2);
    g1[r2.x].val[0/4] = 0;
    g1[r2.y].val[0/4] = 0;
  }
  if (r0.z != 0) {
    r2.x = (uint)vThreadGroupID.x << 4;
    r2.x = (int)r2.x + (int)vThreadIDInGroup.x;
    r2.x = t2.Load(r2.x).x;
    g3[vThreadIDInGroup.x].val[0/4] = r2.x;
  }
  if (r0.w != 0) {
    g2[vThreadIDInGroup.x].val[0/4] = 0;
  }
  r0.w = cmp((uint)vThreadGroupID.x < asuint(cb0[0].z));
  r2.y = asint(cb0[0].y) + 1;
  r2.x = (int)r2.y * (int)vThreadGroupID.x;
  r3.x = mad((int)vThreadGroupID.x, asint(cb0[0].y), asint(cb0[0].z));
  r3.y = cb0[0].y;
  r2.xy = r0.ww ? r2.xy : r3.xy;
  r2.xy = (uint2)r2.xy << int2(10,10);
  r0.w = (int)r2.y + (int)r2.x;
  r2.y = (uint)vThreadIDInGroup.x << 3;
  r3.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(1,2,3,4));
  r4.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(5,6,7,8));
  r5.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(9,10,11,12));
  r6.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(13,14,15,16));
  r7.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(17,18,19,20));
  r8.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(21,22,23,24));
  r9.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(25,26,27,28));
  r10.xyz = mad((int3)vThreadIDInGroup.xxx, int3(33,33,33), int3(29,30,31));
  r2.zw = (int2)r1.zz + int2(-1,-2);
  r11.xyzw = (int4)vThreadIDInGroup.xxxx + int4(8,1,7,6);
  r10.w = mad(6, (int)r11.y, -1);
  r11.y = (int)vThreadIDInGroup.x + 4;
  r12.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(8,8,8,8), int4(1,2,3,4));
  r13.xyz = mad((int3)vThreadIDInGroup.xxx, int3(8,8,8), int3(5,6,7));
  r13.w = r2.x;
  while (true) {
    r14.x = cmp((uint)r13.w >= (uint)r0.w);
    if (r14.x != 0) break;
    r14.x = (int)r2.y + (int)r13.w;
    r14.y = t0.Load(r14.x).x;
    r15.xyzw = (int4)r14.xxxx + int4(1,2,3,4);
    r14.z = t0.Load(r15.x).x;
    r14.w = t0.Load(r15.y).x;
    r16.x = t0.Load(r15.z).x;
    r16.y = t0.Load(r15.w).x;
    r17.xyz = (int3)r14.xxx + int3(5,6,7);
    r16.z = t0.Load(r17.x).x;
    r16.w = t0.Load(r17.y).x;
    r17.w = t0.Load(r17.z).x;
    r18.xyz = (uint3)r14.yzw >> asuint(cb0[0].xxx);
    r18.w = (uint)r16.x >> asuint(cb0[0].x);
    r19.xyz = (uint3)r16.yzw >> asuint(cb0[0].xxx);
    r19.w = (uint)r17.w >> asuint(cb0[0].x);
    r20.x = 0;
    while (true) {
      r20.y = cmp((uint)r20.x >= 16);
      if (r20.y != 0) break;
      r20.y = mad((int)r20.x, 4, (int)r1.y);
      r20.y = mad((int)r20.y, 33, (int)r1.w);
      g0[r20.y].val[0/4] = 0;
      r20.x = (int)r20.x + 1;
    }
    bitmask.x = ((~(-1 << 4)) << 2) & 0xffffffff;  r18.x = (((uint)r18.x << 2) & bitmask.x) | ((uint)0 & ~bitmask.x);
    bitmask.y = ((~(-1 << 4)) << 2) & 0xffffffff;  r18.y = (((uint)r18.y << 2) & bitmask.y) | ((uint)0 & ~bitmask.y);
    bitmask.z = ((~(-1 << 4)) << 2) & 0xffffffff;  r18.z = (((uint)r18.z << 2) & bitmask.z) | ((uint)0 & ~bitmask.z);
    bitmask.w = ((~(-1 << 4)) << 2) & 0xffffffff;  r18.w = (((uint)r18.w << 2) & bitmask.w) | ((uint)0 & ~bitmask.w);
    r18.xyzw = (int4)r1.yyyy + (int4)r18.xyzw;
    r18.x = mad((int)r18.x, 33, (int)r1.w);
    r20.x = g0[r18.x].val[0/4];
    r20.x = (int)r20.x + 1;
    g0[r18.x].val[0/4] = r20.x;
    r18.y = mad((int)r18.y, 33, (int)r1.w);
    r20.x = g0[r18.y].val[0/4];
    r20.x = (int)r20.x + 1;
    g0[r18.y].val[0/4] = r20.x;
    r18.z = mad((int)r18.z, 33, (int)r1.w);
    r20.x = g0[r18.z].val[0/4];
    r20.x = (int)r20.x + 1;
    g0[r18.z].val[0/4] = r20.x;
    r18.w = mad((int)r18.w, 33, (int)r1.w);
    r20.x = g0[r18.w].val[0/4];
    r20.x = (int)r20.x + 1;
    g0[r18.w].val[0/4] = r20.x;
    bitmask.x = ((~(-1 << 4)) << 2) & 0xffffffff;  r19.x = (((uint)r19.x << 2) & bitmask.x) | ((uint)0 & ~bitmask.x);
    bitmask.y = ((~(-1 << 4)) << 2) & 0xffffffff;  r19.y = (((uint)r19.y << 2) & bitmask.y) | ((uint)0 & ~bitmask.y);
    bitmask.z = ((~(-1 << 4)) << 2) & 0xffffffff;  r19.z = (((uint)r19.z << 2) & bitmask.z) | ((uint)0 & ~bitmask.z);
    bitmask.w = ((~(-1 << 4)) << 2) & 0xffffffff;  r19.w = (((uint)r19.w << 2) & bitmask.w) | ((uint)0 & ~bitmask.w);
    r19.xyzw = (int4)r1.yyyy + (int4)r19.xyzw;
    r19.x = mad((int)r19.x, 33, (int)r1.w);
    r20.x = g0[r19.x].val[0/4];
    r20.x = (int)r20.x + 1;
    g0[r19.x].val[0/4] = r20.x;
    r19.y = mad((int)r19.y, 33, (int)r1.w);
    r20.x = g0[r19.y].val[0/4];
    r20.x = (int)r20.x + 1;
    g0[r19.y].val[0/4] = r20.x;
    r19.z = mad((int)r19.z, 33, (int)r1.w);
    r20.x = g0[r19.z].val[0/4];
    r20.x = (int)r20.x + 1;
    g0[r19.z].val[0/4] = r20.x;
    r19.w = mad((int)r19.w, 33, (int)r1.w);
    r20.x = g0[r19.w].val[0/4];
    r20.x = (int)r20.x + 1;
    g0[r19.w].val[0/4] = r20.x;
    GroupMemoryBarrierWithGroupSync();
    if (r0.y != 0) {
      r20.x = g0[r0.x].val[0/4];
      r20.y = g0[r3.x].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r3.y].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r3.z].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r3.w].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r4.x].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r4.y].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r4.z].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r4.w].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r5.x].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r5.y].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r5.z].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r5.w].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r6.x].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r6.y].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r6.z].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r6.w].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r7.x].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r7.y].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r7.z].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r7.w].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r8.x].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r8.y].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r8.z].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r8.w].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r9.x].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r9.y].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r9.z].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r9.w].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r10.x].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r10.y].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      r20.y = g0[r10.z].val[0/4];
      r20.x = (int)r20.y + (int)r20.x;
      g1[r1.z].val[0/4] = r20.x;
    } else {
      r20.x = 0;
    }
    Unknown sync instruction;
    r20.y = g1[r2.z].val[0/4];
    r20.x = (int)r20.y + (int)r20.x;
    g1[r1.z].val[0/4] = r20.x;
    Unknown sync instruction;
    r20.y = g1[r2.w].val[0/4];
    r20.x = (int)r20.y + (int)r20.x;
    g1[r1.z].val[0/4] = r20.x;
    GroupMemoryBarrierWithGroupSync();
    if (r0.y != 0) {
      r20.x = g1[r10.w].val[0/4];
    } else {
      r20.x = 0;
    }
    g2[r11.x].val[0/4] = r20.x;
    Unknown sync instruction;
    r20.y = g2[r11.z].val[0/4];
    r20.y = (int)r20.y + (int)r20.x;
    GroupMemoryBarrierWithGroupSync();
    g2[r11.x].val[0/4] = r20.y;
    Unknown sync instruction;
    r20.z = g2[r11.w].val[0/4];
    r20.y = (int)r20.z + (int)r20.y;
    GroupMemoryBarrierWithGroupSync();
    g2[r11.x].val[0/4] = r20.y;
    Unknown sync instruction;
    r20.z = g2[r11.y].val[0/4];
    r20.y = (int)r20.z + (int)r20.y;
    GroupMemoryBarrierWithGroupSync();
    g2[r11.x].val[0/4] = r20.y;
    Unknown sync instruction;
    r20.z = g2[vThreadIDInGroup.x].val[0/4];
    r20.y = (int)r20.z + (int)r20.y;
    GroupMemoryBarrierWithGroupSync();
    g2[r11.x].val[0/4] = r20.y;
    GroupMemoryBarrierWithGroupSync();
    if (r0.y != 0) {
      r20.y = g2[r1.x].val[0/4];
      r20.z = g1[r2.z].val[0/4];
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r0.x].val[0/4];
      g0[r0.x].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r3.x].val[0/4];
      g0[r3.x].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r3.y].val[0/4];
      g0[r3.y].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r3.z].val[0/4];
      g0[r3.z].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r3.w].val[0/4];
      g0[r3.w].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r4.x].val[0/4];
      g0[r4.x].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r4.y].val[0/4];
      g0[r4.y].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r4.z].val[0/4];
      g0[r4.z].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r4.w].val[0/4];
      g0[r4.w].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r5.x].val[0/4];
      g0[r5.x].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r5.y].val[0/4];
      g0[r5.y].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r5.z].val[0/4];
      g0[r5.z].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r5.w].val[0/4];
      g0[r5.w].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r6.x].val[0/4];
      g0[r6.x].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r6.y].val[0/4];
      g0[r6.y].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r6.z].val[0/4];
      g0[r6.z].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r6.w].val[0/4];
      g0[r6.w].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r7.x].val[0/4];
      g0[r7.x].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r7.y].val[0/4];
      g0[r7.y].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r7.z].val[0/4];
      g0[r7.z].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r7.w].val[0/4];
      g0[r7.w].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r8.x].val[0/4];
      g0[r8.x].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r8.y].val[0/4];
      g0[r8.y].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r8.z].val[0/4];
      g0[r8.z].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r8.w].val[0/4];
      g0[r8.w].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r9.x].val[0/4];
      g0[r9.x].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r9.y].val[0/4];
      g0[r9.y].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r9.z].val[0/4];
      g0[r9.z].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r9.w].val[0/4];
      g0[r9.w].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r10.x].val[0/4];
      g0[r10.x].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      r20.z = g0[r10.y].val[0/4];
      g0[r10.y].val[0/4] = r20.y;
      r20.y = (int)r20.z + (int)r20.y;
      g0[r10.z].val[0/4] = r20.y;
    }
    GroupMemoryBarrierWithGroupSync();
    r20.y = g0[r18.x].val[0/4];
    r20.z = (int)r20.y + 1;
    g0[r18.x].val[0/4] = r20.z;
    r18.x = g0[r18.y].val[0/4];
    r20.z = (int)r18.x + 1;
    g0[r18.y].val[0/4] = r20.z;
    r18.y = g0[r18.z].val[0/4];
    r20.z = (int)r18.y + 1;
    g0[r18.z].val[0/4] = r20.z;
    r18.z = g0[r18.w].val[0/4];
    r20.z = (int)r18.z + 1;
    g0[r18.w].val[0/4] = r20.z;
    r18.w = g0[r19.x].val[0/4];
    r20.z = (int)r18.w + 1;
    g0[r19.x].val[0/4] = r20.z;
    r19.x = g0[r19.y].val[0/4];
    r20.z = (int)r19.x + 1;
    g0[r19.y].val[0/4] = r20.z;
    r19.y = g0[r19.z].val[0/4];
    r20.z = (int)r19.y + 1;
    g0[r19.z].val[0/4] = r20.z;
    r19.z = g0[r19.w].val[0/4];
    r20.z = (int)r19.z + 1;
    g0[r19.w].val[0/4] = r20.z;
    GroupMemoryBarrierWithGroupSync();
    g0[r20.y].val[0/4] = r14.y;
    g0[r18.x].val[0/4] = r14.z;
    g0[r18.y].val[0/4] = r14.w;
    g0[r18.z].val[0/4] = r16.x;
    g0[r18.w].val[0/4] = r16.y;
    g0[r19.x].val[0/4] = r16.z;
    g0[r19.y].val[0/4] = r16.w;
    g0[r19.z].val[0/4] = r17.w;
    GroupMemoryBarrierWithGroupSync();
    r14.y = g0[r2.y].val[0/4];
    r14.z = g0[r12.x].val[0/4];
    r14.w = g0[r12.y].val[0/4];
    r16.x = g0[r12.z].val[0/4];
    r16.y = g0[r12.w].val[0/4];
    r16.z = g0[r13.x].val[0/4];
    r16.w = g0[r13.y].val[0/4];
    r17.w = g0[r13.z].val[0/4];
    r19.w = (uint)r14.y >> asuint(cb0[0].x);
    r19.w = (int)r19.w & 15;
    r20.zw = (uint2)r14.zw >> asuint(cb0[0].xx);
    r20.zw = (int2)r20.zw & int2(15,15);
    r21.xyzw = (uint4)r16.xyzw >> asuint(cb0[0].xxxx);
    r21.xyzw = (int4)r21.xyzw & int4(15,15,15,15);
    r22.x = (uint)r17.w >> asuint(cb0[0].x);
    r22.x = (int)r22.x & 15;
    r22.y = g3[r19.w].val[0/4];
    r22.y = (int)r2.y + (int)r22.y;
    r22.z = (int)r19.w + 7;
    r22.w = g2[r22.z].val[0/4];
    r22.y = (int)-r22.w + (int)r22.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r22.yyyy, r14.yyyy
    r14.y = g3[r20.z].val[0/4];
    r14.y = (int)r2.y + (int)r14.y;
    r14.y = (int)r14.y + 1;
    r22.y = (int)r20.z + 7;
    r22.w = g2[r22.y].val[0/4];
    r14.y = (int)r14.y + (int)-r22.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r14.yyyy, r14.zzzz
    r14.y = g3[r20.w].val[0/4];
    r14.y = (int)r2.y + (int)r14.y;
    r14.y = (int)r14.y + 2;
    r14.z = (int)r20.w + 7;
    r22.w = g2[r14.z].val[0/4];
    r14.y = (int)r14.y + (int)-r22.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r14.yyyy, r14.wwww
    r14.y = g3[r21.x].val[0/4];
    r14.y = (int)r2.y + (int)r14.y;
    r14.y = (int)r14.y + 3;
    r14.w = (int)r21.x + 7;
    r22.w = g2[r14.w].val[0/4];
    r14.y = (int)r14.y + (int)-r22.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r14.yyyy, r16.xxxx
    r14.y = g3[r21.y].val[0/4];
    r14.y = (int)r2.y + (int)r14.y;
    r14.y = (int)r14.y + 4;
    r16.x = (int)r21.y + 7;
    r22.w = g2[r16.x].val[0/4];
    r14.y = (int)r14.y + (int)-r22.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r14.yyyy, r16.yyyy
    r14.y = g3[r21.z].val[0/4];
    r14.y = (int)r2.y + (int)r14.y;
    r14.y = (int)r14.y + 5;
    r16.y = (int)r21.z + 7;
    r22.w = g2[r16.y].val[0/4];
    r14.y = (int)r14.y + (int)-r22.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r14.yyyy, r16.zzzz
    r14.y = g3[r21.w].val[0/4];
    r14.y = (int)r2.y + (int)r14.y;
    r14.y = (int)r14.y + 6;
    r16.z = (int)r21.w + 7;
    r22.w = g2[r16.z].val[0/4];
    r14.y = (int)r14.y + (int)-r22.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r14.yyyy, r16.wwww
    r14.y = g3[r22.x].val[0/4];
    r14.y = (int)r2.y + (int)r14.y;
    r14.y = (int)r14.y + 7;
    r16.w = (int)r22.x + 7;
    r22.w = g2[r16.w].val[0/4];
    r14.y = (int)r14.y + (int)-r22.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r14.yyyy, r17.wwww
    r14.x = t1.Load(r14.x).x;
    r14.y = t1.Load(r15.x).x;
    r15.x = t1.Load(r15.y).x;
    r15.y = t1.Load(r15.z).x;
    r15.z = t1.Load(r15.w).x;
    r15.w = t1.Load(r17.x).x;
    r17.x = t1.Load(r17.y).x;
    r17.y = t1.Load(r17.z).x;
    GroupMemoryBarrierWithGroupSync();
    g0[r20.y].val[0/4] = r14.x;
    g0[r18.x].val[0/4] = r14.y;
    g0[r18.y].val[0/4] = r15.x;
    g0[r18.z].val[0/4] = r15.y;
    g0[r18.w].val[0/4] = r15.z;
    g0[r19.x].val[0/4] = r15.w;
    g0[r19.y].val[0/4] = r17.x;
    g0[r19.z].val[0/4] = r17.y;
    GroupMemoryBarrierWithGroupSync();
    r14.x = g0[r2.y].val[0/4];
    r14.y = g0[r12.x].val[0/4];
    r15.x = g0[r12.y].val[0/4];
    r15.y = g0[r12.z].val[0/4];
    r15.z = g0[r12.w].val[0/4];
    r15.w = g0[r13.x].val[0/4];
    r17.x = g0[r13.y].val[0/4];
    r17.y = g0[r13.z].val[0/4];
    r17.z = g3[r19.w].val[0/4];
    r17.z = (int)r2.y + (int)r17.z;
    r17.w = g2[r22.z].val[0/4];
    r17.z = (int)-r17.w + (int)r17.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r17.zzzz, r14.xxxx
    r14.x = g3[r20.z].val[0/4];
    r14.x = (int)r2.y + (int)r14.x;
    r14.x = (int)r14.x + 1;
    r17.z = g2[r22.y].val[0/4];
    r14.x = (int)r14.x + (int)-r17.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r14.xxxx, r14.yyyy
    r14.x = g3[r20.w].val[0/4];
    r14.x = (int)r2.y + (int)r14.x;
    r14.x = (int)r14.x + 2;
    r14.y = g2[r14.z].val[0/4];
    r14.x = (int)-r14.y + (int)r14.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r14.xxxx, r15.xxxx
    r14.x = g3[r21.x].val[0/4];
    r14.x = (int)r2.y + (int)r14.x;
    r14.x = (int)r14.x + 3;
    r14.y = g2[r14.w].val[0/4];
    r14.x = (int)-r14.y + (int)r14.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r14.xxxx, r15.yyyy
    r14.x = g3[r21.y].val[0/4];
    r14.x = (int)r2.y + (int)r14.x;
    r14.x = (int)r14.x + 4;
    r14.y = g2[r16.x].val[0/4];
    r14.x = (int)-r14.y + (int)r14.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r14.xxxx, r15.zzzz
    r14.x = g3[r21.z].val[0/4];
    r14.x = (int)r2.y + (int)r14.x;
    r14.x = (int)r14.x + 5;
    r14.y = g2[r16.y].val[0/4];
    r14.x = (int)-r14.y + (int)r14.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r14.xxxx, r15.wwww
    r14.x = g3[r21.w].val[0/4];
    r14.x = (int)r2.y + (int)r14.x;
    r14.x = (int)r14.x + 6;
    r14.y = g2[r16.z].val[0/4];
    r14.x = (int)-r14.y + (int)r14.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r14.xxxx, r17.xxxx
    r14.x = g3[r22.x].val[0/4];
    r14.x = (int)r2.y + (int)r14.x;
    r14.x = (int)r14.x + 7;
    r14.y = g2[r16.w].val[0/4];
    r14.x = (int)-r14.y + (int)r14.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r14.xxxx, r17.yyyy
    GroupMemoryBarrierWithGroupSync();
    if (r0.z != 0) {
      r14.x = g3[vThreadIDInGroup.x].val[0/4];
      r14.x = (int)r20.x + (int)r14.x;
      g3[vThreadIDInGroup.x].val[0/4] = r14.x;
    }
    r13.w = (int)r13.w + 1024;
  }
  r0.z = asint(cb0[1].x) + -1;
  r0.z = cmp((int)r0.z == (int)vThreadGroupID.x);
  r0.w = cmp(0 < asuint(cb0[0].w));
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r0.z = cmp((uint)r2.y < asuint(cb0[0].w));
    if (r0.z != 0) {
      r0.w = (int)r2.y + (int)r13.w;
      r0.w = t0.Load(r0.w).x;
    } else {
      r0.w = -1;
    }
    r14.xyzw = cmp((uint4)r12.xyzw < asuint(cb0[0].wwww));
    if (r14.x != 0) {
      r2.x = (int)r2.y + (int)r13.w;
      r2.x = (int)r2.x + 1;
      r2.x = t0.Load(r2.x).x;
    } else {
      r2.x = -1;
    }
    if (r14.y != 0) {
      r15.x = (int)r2.y + (int)r13.w;
      r15.x = (int)r15.x + 2;
      r15.x = t0.Load(r15.x).x;
    } else {
      r15.x = -1;
    }
    if (r14.z != 0) {
      r15.y = (int)r2.y + (int)r13.w;
      r15.y = (int)r15.y + 3;
      r15.y = t0.Load(r15.y).x;
    } else {
      r15.y = -1;
    }
    if (r14.w != 0) {
      r15.z = (int)r2.y + (int)r13.w;
      r15.z = (int)r15.z + 4;
      r15.z = t0.Load(r15.z).x;
    } else {
      r15.z = -1;
    }
    r16.xyz = cmp((uint3)r13.xyz < asuint(cb0[0].www));
    if (r16.x != 0) {
      r15.w = (int)r2.y + (int)r13.w;
      r15.w = (int)r15.w + 5;
      r15.w = t0.Load(r15.w).x;
    } else {
      r15.w = -1;
    }
    if (r16.y != 0) {
      r16.w = (int)r2.y + (int)r13.w;
      r16.w = (int)r16.w + 6;
      r16.w = t0.Load(r16.w).x;
    } else {
      r16.w = -1;
    }
    if (r16.z != 0) {
      r17.x = (int)r2.y + (int)r13.w;
      r17.x = (int)r17.x + 7;
      r17.x = t0.Load(r17.x).x;
    } else {
      r17.x = -1;
    }
    r17.y = (uint)r0.w >> asuint(cb0[0].x);
    r17.z = (uint)r2.x >> asuint(cb0[0].x);
    r17.w = (uint)r15.x >> asuint(cb0[0].x);
    r18.xyz = (uint3)r15.yzw >> asuint(cb0[0].xxx);
    r18.w = (uint)r16.w >> asuint(cb0[0].x);
    r19.x = (uint)r17.x >> asuint(cb0[0].x);
    r19.y = 0;
    while (true) {
      r19.z = cmp((uint)r19.y >= 16);
      if (r19.z != 0) break;
      r19.z = mad((int)r19.y, 4, (int)r1.y);
      r19.z = mad((int)r19.z, 33, (int)r1.w);
      g0[r19.z].val[0/4] = 0;
      r19.y = (int)r19.y + 1;
    }
    bitmask.y = ((~(-1 << 4)) << 2) & 0xffffffff;  r17.y = (((uint)r17.y << 2) & bitmask.y) | ((uint)0 & ~bitmask.y);
    bitmask.z = ((~(-1 << 4)) << 2) & 0xffffffff;  r17.z = (((uint)r17.z << 2) & bitmask.z) | ((uint)0 & ~bitmask.z);
    bitmask.w = ((~(-1 << 4)) << 2) & 0xffffffff;  r17.w = (((uint)r17.w << 2) & bitmask.w) | ((uint)0 & ~bitmask.w);
    r17.yzw = (int3)r1.yyy + (int3)r17.yzw;
    r17.y = mad((int)r17.y, 33, (int)r1.w);
    r19.y = g0[r17.y].val[0/4];
    r19.y = (int)r19.y + 1;
    g0[r17.y].val[0/4] = r19.y;
    r17.z = mad((int)r17.z, 33, (int)r1.w);
    r19.y = g0[r17.z].val[0/4];
    r19.y = (int)r19.y + 1;
    g0[r17.z].val[0/4] = r19.y;
    r17.w = mad((int)r17.w, 33, (int)r1.w);
    r19.y = g0[r17.w].val[0/4];
    r19.y = (int)r19.y + 1;
    g0[r17.w].val[0/4] = r19.y;
    bitmask.x = ((~(-1 << 4)) << 2) & 0xffffffff;  r18.x = (((uint)r18.x << 2) & bitmask.x) | ((uint)0 & ~bitmask.x);
    bitmask.y = ((~(-1 << 4)) << 2) & 0xffffffff;  r18.y = (((uint)r18.y << 2) & bitmask.y) | ((uint)0 & ~bitmask.y);
    bitmask.z = ((~(-1 << 4)) << 2) & 0xffffffff;  r18.z = (((uint)r18.z << 2) & bitmask.z) | ((uint)0 & ~bitmask.z);
    bitmask.w = ((~(-1 << 4)) << 2) & 0xffffffff;  r18.w = (((uint)r18.w << 2) & bitmask.w) | ((uint)0 & ~bitmask.w);
    r18.xyzw = (int4)r1.yyyy + (int4)r18.xyzw;
    r18.x = mad((int)r18.x, 33, (int)r1.w);
    r19.y = g0[r18.x].val[0/4];
    r19.y = (int)r19.y + 1;
    g0[r18.x].val[0/4] = r19.y;
    r18.y = mad((int)r18.y, 33, (int)r1.w);
    r19.y = g0[r18.y].val[0/4];
    r19.y = (int)r19.y + 1;
    g0[r18.y].val[0/4] = r19.y;
    r18.z = mad((int)r18.z, 33, (int)r1.w);
    r19.y = g0[r18.z].val[0/4];
    r19.y = (int)r19.y + 1;
    g0[r18.z].val[0/4] = r19.y;
    r18.w = mad((int)r18.w, 33, (int)r1.w);
    r19.y = g0[r18.w].val[0/4];
    r19.y = (int)r19.y + 1;
    g0[r18.w].val[0/4] = r19.y;
    bitmask.x = ((~(-1 << 4)) << 2) & 0xffffffff;  r19.x = (((uint)r19.x << 2) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r1.y = (int)r1.y + (int)r19.x;
    r1.y = mad((int)r1.y, 33, (int)r1.w);
    r1.w = g0[r1.y].val[0/4];
    r1.w = (int)r1.w + 1;
    g0[r1.y].val[0/4] = r1.w;
    GroupMemoryBarrierWithGroupSync();
    if (r0.y != 0) {
      r1.w = g0[r0.x].val[0/4];
      r19.x = g0[r3.x].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r3.y].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r3.z].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r3.w].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r4.x].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r4.y].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r4.z].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r4.w].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r5.x].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r5.y].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r5.z].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r5.w].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r6.x].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r6.y].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r6.z].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r6.w].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r7.x].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r7.y].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r7.z].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r7.w].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r8.x].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r8.y].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r8.z].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r8.w].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r9.x].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r9.y].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r9.z].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r9.w].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r10.x].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r10.y].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      r19.x = g0[r10.z].val[0/4];
      r1.w = (int)r1.w + (int)r19.x;
      g1[r1.z].val[0/4] = r1.w;
    } else {
      r1.w = 0;
    }
    Unknown sync instruction;
    r19.x = g1[r2.z].val[0/4];
    r1.w = (int)r1.w + (int)r19.x;
    g1[r1.z].val[0/4] = r1.w;
    Unknown sync instruction;
    r2.w = g1[r2.w].val[0/4];
    r1.w = (int)r1.w + (int)r2.w;
    g1[r1.z].val[0/4] = r1.w;
    GroupMemoryBarrierWithGroupSync();
    if (r0.y != 0) {
      r1.z = g1[r10.w].val[0/4];
    } else {
      r1.z = 0;
    }
    g2[r11.x].val[0/4] = r1.z;
    Unknown sync instruction;
    r1.w = g2[r11.z].val[0/4];
    r1.z = (int)r1.w + (int)r1.z;
    GroupMemoryBarrierWithGroupSync();
    g2[r11.x].val[0/4] = r1.z;
    Unknown sync instruction;
    r1.w = g2[r11.w].val[0/4];
    r1.z = (int)r1.w + (int)r1.z;
    GroupMemoryBarrierWithGroupSync();
    g2[r11.x].val[0/4] = r1.z;
    Unknown sync instruction;
    r1.w = g2[r11.y].val[0/4];
    r1.z = (int)r1.w + (int)r1.z;
    GroupMemoryBarrierWithGroupSync();
    g2[r11.x].val[0/4] = r1.z;
    Unknown sync instruction;
    r1.w = g2[vThreadIDInGroup.x].val[0/4];
    r1.z = (int)r1.w + (int)r1.z;
    GroupMemoryBarrierWithGroupSync();
    g2[r11.x].val[0/4] = r1.z;
    GroupMemoryBarrierWithGroupSync();
    if (r0.y != 0) {
      r0.y = g2[r1.x].val[0/4];
      r1.x = g1[r2.z].val[0/4];
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r0.x].val[0/4];
      g0[r0.x].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r3.x].val[0/4];
      g0[r3.x].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r3.y].val[0/4];
      g0[r3.y].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r3.z].val[0/4];
      g0[r3.z].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r3.w].val[0/4];
      g0[r3.w].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r4.x].val[0/4];
      g0[r4.x].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r4.y].val[0/4];
      g0[r4.y].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r4.z].val[0/4];
      g0[r4.z].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r4.w].val[0/4];
      g0[r4.w].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r5.x].val[0/4];
      g0[r5.x].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r5.y].val[0/4];
      g0[r5.y].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r5.z].val[0/4];
      g0[r5.z].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r5.w].val[0/4];
      g0[r5.w].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r6.x].val[0/4];
      g0[r6.x].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r6.y].val[0/4];
      g0[r6.y].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r6.z].val[0/4];
      g0[r6.z].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r6.w].val[0/4];
      g0[r6.w].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r7.x].val[0/4];
      g0[r7.x].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r7.y].val[0/4];
      g0[r7.y].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r7.z].val[0/4];
      g0[r7.z].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r7.w].val[0/4];
      g0[r7.w].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r8.x].val[0/4];
      g0[r8.x].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r8.y].val[0/4];
      g0[r8.y].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r8.z].val[0/4];
      g0[r8.z].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r8.w].val[0/4];
      g0[r8.w].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r9.x].val[0/4];
      g0[r9.x].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r9.y].val[0/4];
      g0[r9.y].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r9.z].val[0/4];
      g0[r9.z].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r9.w].val[0/4];
      g0[r9.w].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r10.x].val[0/4];
      g0[r10.x].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      r1.x = g0[r10.y].val[0/4];
      g0[r10.y].val[0/4] = r0.y;
      r0.y = (int)r0.y + (int)r1.x;
      g0[r10.z].val[0/4] = r0.y;
    }
    GroupMemoryBarrierWithGroupSync();
    r0.x = g0[r17.y].val[0/4];
    r0.y = (int)r0.x + 1;
    g0[r17.y].val[0/4] = r0.y;
    r0.y = g0[r17.z].val[0/4];
    r1.x = (int)r0.y + 1;
    g0[r17.z].val[0/4] = r1.x;
    r1.x = g0[r17.w].val[0/4];
    r1.z = (int)r1.x + 1;
    g0[r17.w].val[0/4] = r1.z;
    r1.z = g0[r18.x].val[0/4];
    r1.w = (int)r1.z + 1;
    g0[r18.x].val[0/4] = r1.w;
    r1.w = g0[r18.y].val[0/4];
    r2.z = (int)r1.w + 1;
    g0[r18.y].val[0/4] = r2.z;
    r2.z = g0[r18.z].val[0/4];
    r2.w = (int)r2.z + 1;
    g0[r18.z].val[0/4] = r2.w;
    r2.w = g0[r18.w].val[0/4];
    r3.x = (int)r2.w + 1;
    g0[r18.w].val[0/4] = r3.x;
    r3.x = g0[r1.y].val[0/4];
    r3.y = (int)r3.x + 1;
    g0[r1.y].val[0/4] = r3.y;
    GroupMemoryBarrierWithGroupSync();
    g0[r0.x].val[0/4] = r0.w;
    g0[r0.y].val[0/4] = r2.x;
    g0[r1.x].val[0/4] = r15.x;
    g0[r1.z].val[0/4] = r15.y;
    g0[r1.w].val[0/4] = r15.z;
    g0[r2.z].val[0/4] = r15.w;
    g0[r2.w].val[0/4] = r16.w;
    g0[r3.x].val[0/4] = r17.x;
    GroupMemoryBarrierWithGroupSync();
    r0.w = g0[r2.y].val[0/4];
    r1.y = g0[r12.x].val[0/4];
    r2.x = g0[r12.y].val[0/4];
    r3.y = g0[r12.z].val[0/4];
    r3.z = g0[r12.w].val[0/4];
    r3.w = g0[r13.x].val[0/4];
    r4.x = g0[r13.y].val[0/4];
    r4.y = g0[r13.z].val[0/4];
    r4.z = (uint)r0.w >> asuint(cb0[0].x);
    r4.w = (uint)r1.y >> asuint(cb0[0].x);
    r4.zw = (int2)r4.zw & int2(15,15);
    r5.x = (uint)r2.x >> asuint(cb0[0].x);
    r5.yzw = (uint3)r3.yzw >> asuint(cb0[0].xxx);
    r5.xyzw = (int4)r5.xyzw & int4(15,15,15,15);
    r6.xy = (uint2)r4.xy >> asuint(cb0[0].xx);
    r6.xy = (int2)r6.xy & int2(15,15);
    if (r0.z != 0) {
      r6.z = g3[r4.z].val[0/4];
      r6.z = (int)r2.y + (int)r6.z;
      r6.w = (int)r4.z + 7;
      r6.w = g2[r6.w].val[0/4];
      r6.z = (int)-r6.w + (int)r6.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r6.zzzz, r0.wwww
    }
    if (r14.x != 0) {
      r0.w = g3[r4.w].val[0/4];
      r0.w = (int)r2.y + (int)r0.w;
      r0.w = (int)r0.w + 1;
      r6.z = (int)r4.w + 7;
      r6.z = g2[r6.z].val[0/4];
      r0.w = (int)r0.w + (int)-r6.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.wwww, r1.yyyy
    }
    if (r14.y != 0) {
      r0.w = g3[r5.x].val[0/4];
      r0.w = (int)r2.y + (int)r0.w;
      r0.w = (int)r0.w + 2;
      r1.y = (int)r5.x + 7;
      r1.y = g2[r1.y].val[0/4];
      r0.w = (int)r0.w + (int)-r1.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.wwww, r2.xxxx
    }
    if (r14.z != 0) {
      r0.w = g3[r5.y].val[0/4];
      r0.w = (int)r2.y + (int)r0.w;
      r0.w = (int)r0.w + 3;
      r1.y = (int)r5.y + 7;
      r1.y = g2[r1.y].val[0/4];
      r0.w = (int)r0.w + (int)-r1.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.wwww, r3.yyyy
    }
    if (r14.w != 0) {
      r0.w = g3[r5.z].val[0/4];
      r0.w = (int)r2.y + (int)r0.w;
      r0.w = (int)r0.w + 4;
      r1.y = (int)r5.z + 7;
      r1.y = g2[r1.y].val[0/4];
      r0.w = (int)r0.w + (int)-r1.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.wwww, r3.zzzz
    }
    if (r16.x != 0) {
      r0.w = g3[r5.w].val[0/4];
      r0.w = (int)r2.y + (int)r0.w;
      r0.w = (int)r0.w + 5;
      r1.y = (int)r5.w + 7;
      r1.y = g2[r1.y].val[0/4];
      r0.w = (int)r0.w + (int)-r1.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.wwww, r3.wwww
    }
    if (r16.y != 0) {
      r0.w = g3[r6.x].val[0/4];
      r0.w = (int)r2.y + (int)r0.w;
      r0.w = (int)r0.w + 6;
      r1.y = (int)r6.x + 7;
      r1.y = g2[r1.y].val[0/4];
      r0.w = (int)r0.w + (int)-r1.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.wwww, r4.xxxx
    }
    if (r16.z != 0) {
      r0.w = g3[r6.y].val[0/4];
      r0.w = (int)r2.y + (int)r0.w;
      r0.w = (int)r0.w + 7;
      r1.y = (int)r6.y + 7;
      r1.y = g2[r1.y].val[0/4];
      r0.w = (int)r0.w + (int)-r1.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.wwww, r4.yyyy
    }
    if (r0.z != 0) {
      r0.w = (int)r2.y + (int)r13.w;
      r0.w = t1.Load(r0.w).x;
    } else {
      r0.w = 6.69983643e-032;
    }
    if (r14.x != 0) {
      r1.y = (int)r2.y + (int)r13.w;
      r1.y = (int)r1.y + 1;
      r1.y = t1.Load(r1.y).x;
    } else {
      r1.y = 6.69983643e-032;
    }
    if (r14.y != 0) {
      r2.x = (int)r2.y + (int)r13.w;
      r2.x = (int)r2.x + 2;
      r2.x = t1.Load(r2.x).x;
    } else {
      r2.x = 6.69983643e-032;
    }
    if (r14.z != 0) {
      r3.y = (int)r2.y + (int)r13.w;
      r3.y = (int)r3.y + 3;
      r3.y = t1.Load(r3.y).x;
    } else {
      r3.y = 6.69983643e-032;
    }
    if (r14.w != 0) {
      r3.z = (int)r2.y + (int)r13.w;
      r3.z = (int)r3.z + 4;
      r3.z = t1.Load(r3.z).x;
    } else {
      r3.z = 6.69983643e-032;
    }
    if (r16.x != 0) {
      r3.w = (int)r2.y + (int)r13.w;
      r3.w = (int)r3.w + 5;
      r3.w = t1.Load(r3.w).x;
    } else {
      r3.w = 6.69983643e-032;
    }
    if (r16.y != 0) {
      r4.x = (int)r2.y + (int)r13.w;
      r4.x = (int)r4.x + 6;
      r4.x = t1.Load(r4.x).x;
    } else {
      r4.x = 6.69983643e-032;
    }
    if (r16.z != 0) {
      r4.y = (int)r2.y + (int)r13.w;
      r4.y = (int)r4.y + 7;
      r4.y = t1.Load(r4.y).x;
    } else {
      r4.y = 6.69983643e-032;
    }
    GroupMemoryBarrierWithGroupSync();
    g0[r0.x].val[0/4] = r0.w;
    g0[r0.y].val[0/4] = r1.y;
    g0[r1.x].val[0/4] = r2.x;
    g0[r1.z].val[0/4] = r3.y;
    g0[r1.w].val[0/4] = r3.z;
    g0[r2.z].val[0/4] = r3.w;
    g0[r2.w].val[0/4] = r4.x;
    g0[r3.x].val[0/4] = r4.y;
    GroupMemoryBarrierWithGroupSync();
    if (r0.z != 0) {
      r0.x = g0[r2.y].val[0/4];
      r0.y = g3[r4.z].val[0/4];
      r0.y = (int)r2.y + (int)r0.y;
      r0.z = (int)r4.z + 7;
      r0.z = g2[r0.z].val[0/4];
      r0.y = (int)-r0.z + (int)r0.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.yyyy, r0.xxxx
    }
    if (r14.x != 0) {
      r0.x = g0[r12.x].val[0/4];
      r0.y = g3[r4.w].val[0/4];
      r0.y = (int)r2.y + (int)r0.y;
      r0.y = (int)r0.y + 1;
      r0.z = (int)r4.w + 7;
      r0.z = g2[r0.z].val[0/4];
      r0.y = (int)-r0.z + (int)r0.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.yyyy, r0.xxxx
    }
    if (r14.y != 0) {
      r0.x = g0[r12.y].val[0/4];
      r0.y = g3[r5.x].val[0/4];
      r0.y = (int)r2.y + (int)r0.y;
      r0.y = (int)r0.y + 2;
      r0.z = (int)r5.x + 7;
      r0.z = g2[r0.z].val[0/4];
      r0.y = (int)-r0.z + (int)r0.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.yyyy, r0.xxxx
    }
    if (r14.z != 0) {
      r0.x = g0[r12.z].val[0/4];
      r0.y = g3[r5.y].val[0/4];
      r0.y = (int)r2.y + (int)r0.y;
      r0.y = (int)r0.y + 3;
      r0.z = (int)r5.y + 7;
      r0.z = g2[r0.z].val[0/4];
      r0.y = (int)-r0.z + (int)r0.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.yyyy, r0.xxxx
    }
    if (r14.w != 0) {
      r0.x = g0[r12.w].val[0/4];
      r0.y = g3[r5.z].val[0/4];
      r0.y = (int)r2.y + (int)r0.y;
      r0.y = (int)r0.y + 4;
      r0.z = (int)r5.z + 7;
      r0.z = g2[r0.z].val[0/4];
      r0.y = (int)-r0.z + (int)r0.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.yyyy, r0.xxxx
    }
    if (r16.x != 0) {
      r0.x = g0[r13.x].val[0/4];
      r0.y = g3[r5.w].val[0/4];
      r0.y = (int)r2.y + (int)r0.y;
      r0.y = (int)r0.y + 5;
      r0.z = (int)r5.w + 7;
      r0.z = g2[r0.z].val[0/4];
      r0.y = (int)-r0.z + (int)r0.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.yyyy, r0.xxxx
    }
    if (r16.y != 0) {
      r0.x = g0[r13.y].val[0/4];
      r0.y = g3[r6.x].val[0/4];
      r0.y = (int)r2.y + (int)r0.y;
      r0.y = (int)r0.y + 6;
      r0.z = (int)r6.x + 7;
      r0.z = g2[r0.z].val[0/4];
      r0.y = (int)-r0.z + (int)r0.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.yyyy, r0.xxxx
    }
    if (r16.z != 0) {
      r0.x = g0[r13.z].val[0/4];
      r0.y = g3[r6.y].val[0/4];
      r0.y = (int)r2.y + (int)r0.y;
      r0.y = (int)r0.y + 7;
      r0.z = (int)r6.y + 7;
      r0.z = g2[r0.z].val[0/4];
      r0.y = (int)-r0.z + (int)r0.y;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.yyyy, r0.xxxx
    }
  }
  return;
}