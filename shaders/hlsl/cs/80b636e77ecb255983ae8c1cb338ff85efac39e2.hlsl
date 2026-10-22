// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g2[136];
groupshared struct { float val[1]; } g1[49];
groupshared struct { float val[1]; } g0[1056];
Buffer<uint4> t0 : register(t0);




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
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = (int)vThreadIDInGroup.x * 33;
  r0.yz = cmp((uint2)vThreadIDInGroup.xx < int2(32,8));
  r1.xy = (uint2)vThreadIDInGroup.xx >> int2(5,1);
  r1.zw = (int2)vThreadIDInGroup.xx & int2(31,1);
  r0.w = mad((int)r1.y, 3, (int)r1.w);
  r0.w = (int)r0.w + 1;
  r0.w = r0.y ? r0.w : 48;
  r1.w = (uint)vThreadIDInGroup.x << 4;
  r2.x = 0;
  while (true) {
    r2.y = cmp((uint)r2.x >= 16);
    if (r2.y != 0) break;
    r2.y = mad((int)r2.x, 2, (int)r1.x);
    r2.y = mad((int)r2.y, 33, (int)r1.z);
    r2.z = (int)r1.w + (int)r2.x;
    r2.z = t0.Load(r2.z).x;
    g0[r2.y].val[0/4] = r2.z;
    r2.x = (int)r2.x + 1;
  }
  if (r0.y != 0) {
    r2.x = (int)r0.w + -1;
    g1[r2.x].val[0/4] = 0;
  }
  if (r0.z != 0) {
    g2[vThreadIDInGroup.x].val[0/4] = 0;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.y != 0) {
    r0.z = g0[r0.x].val[0/4];
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(1,2,3,4));
    r2.x = g0[r2.x].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.y].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.z].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.w].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(5,6,7,8));
    r2.x = g0[r2.x].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.y].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.z].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.w].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(9,10,11,12));
    r2.x = g0[r2.x].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.y].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.z].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.w].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(13,14,15,16));
    r2.x = g0[r2.x].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.y].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.z].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.w].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(17,18,19,20));
    r2.x = g0[r2.x].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.y].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.z].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.w].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(21,22,23,24));
    r2.x = g0[r2.x].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.y].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.z].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.w].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(25,26,27,28));
    r2.x = g0[r2.x].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.y].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.z].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.w].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.xyz = mad((int3)vThreadIDInGroup.xxx, int3(33,33,33), int3(29,30,31));
    r2.x = g0[r2.x].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.y].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    r2.x = g0[r2.z].val[0/4];
    r0.z = (int)r0.z + (int)r2.x;
    g1[r0.w].val[0/4] = r0.z;
  } else {
    r0.z = 0;
  }
  Unknown sync instruction;
  r2.x = (int)r0.w + -1;
  r2.y = g1[r2.x].val[0/4];
  r0.z = (int)r0.z + (int)r2.y;
  g1[r0.w].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  if (r0.y != 0) {
    r0.z = (int)vThreadIDInGroup.x + 1;
    r0.z = mad(3, (int)r0.z, -1);
    r0.z = g1[r0.z].val[0/4];
  } else {
    r0.z = 0;
  }
  r3.xyzw = (int4)vThreadIDInGroup.xxxx + int4(8,7,6,4);
  g2[r3.x].val[0/4] = r0.z;
  Unknown sync instruction;
  r0.w = g2[r3.y].val[0/4];
  r0.z = (int)r0.w + (int)r0.z;
  GroupMemoryBarrierWithGroupSync();
  g2[r3.x].val[0/4] = r0.z;
  Unknown sync instruction;
  r0.w = g2[r3.z].val[0/4];
  r0.z = (int)r0.w + (int)r0.z;
  GroupMemoryBarrierWithGroupSync();
  g2[r3.x].val[0/4] = r0.z;
  Unknown sync instruction;
  r0.w = g2[r3.w].val[0/4];
  r0.z = (int)r0.w + (int)r0.z;
  GroupMemoryBarrierWithGroupSync();
  g2[r3.x].val[0/4] = r0.z;
  Unknown sync instruction;
  r0.w = g2[vThreadIDInGroup.x].val[0/4];
  r0.z = (int)r0.w + (int)r0.z;
  GroupMemoryBarrierWithGroupSync();
  g2[r3.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  if (r0.y != 0) {
    r0.y = (int)r1.y + 7;
    r0.y = g2[r0.y].val[0/4];
    r0.z = g1[r2.x].val[0/4];
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r0.x].val[0/4];
    g0[r0.x].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(1,2,3,4));
    r0.z = g0[r2.x].val[0/4];
    g0[r2.x].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.y].val[0/4];
    g0[r2.y].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.z].val[0/4];
    g0[r2.z].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.w].val[0/4];
    g0[r2.w].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(5,6,7,8));
    r0.z = g0[r2.x].val[0/4];
    g0[r2.x].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.y].val[0/4];
    g0[r2.y].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.z].val[0/4];
    g0[r2.z].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.w].val[0/4];
    g0[r2.w].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(9,10,11,12));
    r0.z = g0[r2.x].val[0/4];
    g0[r2.x].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.y].val[0/4];
    g0[r2.y].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.z].val[0/4];
    g0[r2.z].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.w].val[0/4];
    g0[r2.w].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(13,14,15,16));
    r0.z = g0[r2.x].val[0/4];
    g0[r2.x].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.y].val[0/4];
    g0[r2.y].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.z].val[0/4];
    g0[r2.z].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.w].val[0/4];
    g0[r2.w].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(17,18,19,20));
    r0.z = g0[r2.x].val[0/4];
    g0[r2.x].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.y].val[0/4];
    g0[r2.y].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.z].val[0/4];
    g0[r2.z].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.w].val[0/4];
    g0[r2.w].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(21,22,23,24));
    r0.z = g0[r2.x].val[0/4];
    g0[r2.x].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.y].val[0/4];
    g0[r2.y].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.z].val[0/4];
    g0[r2.z].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.w].val[0/4];
    g0[r2.w].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r2.xyzw = mad((int4)vThreadIDInGroup.xxxx, int4(33,33,33,33), int4(25,26,27,28));
    r0.z = g0[r2.x].val[0/4];
    g0[r2.x].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.y].val[0/4];
    g0[r2.y].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.z].val[0/4];
    g0[r2.z].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.w].val[0/4];
    g0[r2.w].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r2.xyz = mad((int3)vThreadIDInGroup.xxx, int3(33,33,33), int3(29,30,31));
    r0.z = g0[r2.x].val[0/4];
    g0[r2.x].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = g0[r2.y].val[0/4];
    g0[r2.y].val[0/4] = r0.y;
    r0.y = (int)r0.z + (int)r0.y;
    g0[r2.z].val[0/4] = r0.y;
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = 0;
  while (true) {
    r0.y = cmp((uint)r0.x >= 16);
    if (r0.y != 0) break;
    r0.y = mad((int)r0.x, 2, (int)r1.x);
    r0.z = (int)r0.x + (int)r1.w;
    r0.y = mad((int)r0.y, 33, (int)r1.z);
    r0.y = g0[r0.y].val[0/4];
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r0.yyyy
    r0.x = (int)r0.x + 1;
  }
  return;
}