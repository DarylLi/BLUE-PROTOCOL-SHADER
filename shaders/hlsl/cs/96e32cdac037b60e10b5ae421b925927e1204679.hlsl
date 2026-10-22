// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g1[97];
groupshared struct { float val[1]; } g0[2112];
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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 128, 1, 1
  r0.xy = cmp((uint2)vThreadIDInGroup.xx < int2(64,16));
  r0.zw = (uint2)vThreadIDInGroup.xx >> int2(5,2);
  r1.xy = (int2)vThreadIDInGroup.xx & int2(31,3);
  r0.w = mad((int)r0.w, 6, (int)r1.y);
  r0.w = (int)r0.w + 2;
  r0.w = r0.x ? r0.w : 96;
  r1.y = 0;
  while (true) {
    r1.z = cmp((uint)r1.y >= 16);
    if (r1.z != 0) break;
    r1.z = mad((int)r1.y, 4, (int)r0.z);
    r1.z = mad((int)r1.z, 33, (int)r1.x);
    g0[r1.z].val[0/4] = 0;
    r1.y = (int)r1.y + 1;
  }
  if (r0.x != 0) {
    r1.yz = (int2)r0.ww + int2(-1,-2);
    g1[r1.y].val[0/4] = 0;
    g1[r1.z].val[0/4] = 0;
  }
  r1.y = cmp((uint)vThreadGroupID.x < asuint(cb0[0].z));
  r2.y = asint(cb0[0].y) + 1;
  r2.x = (int)r2.y * (int)vThreadGroupID.x;
  r3.x = mad((int)vThreadGroupID.x, asint(cb0[0].y), asint(cb0[0].z));
  r3.y = cb0[0].y;
  r1.yz = r1.yy ? r2.xy : r3.xy;
  r1.w = asint(cb0[1].x) + -1;
  r1.w = cmp((int)r1.w == (int)vThreadGroupID.x);
  r1.w = r1.w ? cb0[0].w : 0;
  r1.yz = (uint2)r1.yz << int2(10,10);
  r1.z = (int)r1.z + (int)r1.y;
  GroupMemoryBarrierWithGroupSync();
  r2.x = r1.y;
  while (true) {
    r2.y = cmp((uint)r2.x >= (uint)r1.z);
    if (r2.y != 0) break;
    r2.y = (int)r2.x + (int)vThreadIDInGroup.x;
    r2.y = t0.Load(r2.y).x;
    r2.y = (uint)r2.y >> asuint(cb0[0].x);
    bitmask.y = ((~(-1 << 4)) << 2) & 0xffffffff;  r2.y = (((uint)r2.y << 2) & bitmask.y) | ((uint)0 & ~bitmask.y);
    r2.y = (int)r0.z + (int)r2.y;
    r2.y = mad((int)r2.y, 33, (int)r1.x);
    r2.z = g0[r2.y].val[0/4];
    r2.z = (int)r2.z + 1;
    g0[r2.y].val[0/4] = r2.z;
    r2.x = (int)r2.x + 128;
  }
  r1.y = (int)r1.w + (int)r1.z;
  r1.w = r1.z;
  while (true) {
    r2.x = cmp((uint)r1.w >= (uint)r1.y);
    if (r2.x != 0) break;
    r2.x = (int)r1.w + (int)vThreadIDInGroup.x;
    r2.y = cmp((uint)r2.x < (uint)r1.y);
    if (r2.y != 0) {
      r2.x = t0.Load(r2.x).x;
      r2.x = (uint)r2.x >> asuint(cb0[0].x);
      bitmask.x = ((~(-1 << 4)) << 2) & 0xffffffff;  r2.x = (((uint)r2.x << 2) & bitmask.x) | ((uint)0 & ~bitmask.x);
      r2.x = (int)r0.z + (int)r2.x;
      r2.x = mad((int)r2.x, 33, (int)r1.x);
      r2.y = g0[r2.x].val[0/4];
      r2.y = (int)r2.y + 1;
      g0[r2.x].val[0/4] = r2.y;
    }
    r1.w = (int)r1.w + 128;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.x != 0) {
    r0.x = (int)vThreadIDInGroup.x * 33;
    r0.x = g0[r0.x].val[0/4];
    r1.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(1,2,3,4));
    r0.z = g0[r1.x].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.y].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.z].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.w].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r1.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(5,6,7,8));
    r0.z = g0[r1.x].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.y].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.z].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.w].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r1.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(9,10,11,12));
    r0.z = g0[r1.x].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.y].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.z].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.w].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r1.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(13,14,15,16));
    r0.z = g0[r1.x].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.y].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.z].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.w].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r1.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(17,18,19,20));
    r0.z = g0[r1.x].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.y].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.z].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.w].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r1.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(21,22,23,24));
    r0.z = g0[r1.x].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.y].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.z].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.w].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r1.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(25,26,27,28));
    r0.z = g0[r1.x].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.y].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.z].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.w].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r1.xyz = mad((int3)vThreadIDInGroup.xxx, int3(33,33,33), int3(29,30,31));
    r0.z = g0[r1.x].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.y].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    r0.z = g0[r1.z].val[0/4];
    r0.x = (int)r0.z + (int)r0.x;
    g1[r0.w].val[0/4] = r0.x;
  } else {
    r0.x = 0;
  }
  r0.z = r0.x;
  r1.x = 1;
  while (true) {
    r1.y = cmp((uint)r1.x >= 4);
    if (r1.y != 0) break;
    Unknown sync instruction;
    r1.y = (int)r0.w + (int)-r1.x;
    r1.y = g1[r1.y].val[0/4];
    r0.z = (int)r0.z + (int)r1.y;
    g1[r0.w].val[0/4] = r0.z;
    r1.x = (uint)r1.x << 1;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.y != 0) {
    r0.x = (uint)vThreadGroupID.x << 4;
    r0.x = (int)r0.x + (int)vThreadIDInGroup.x;
    r0.y = (int)vThreadIDInGroup.x + 1;
    r0.y = mad(6, (int)r0.y, -1);
    r0.y = g1[r0.y].val[0/4];
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r0.yyyy
  }
  return;
}