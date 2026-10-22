// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g1[128];
groupshared struct { float val[1]; } g0[128];
Buffer<float4> t1 : register(t1);

Buffer<uint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[66];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (sint,sint,sint,sint) u1
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 2, 32, 1
  r0.x = cmp((uint)vThreadIDInGroupFlattened.x < 32);
  if (r0.x != 0) {
    r0.x = (uint)vThreadIDInGroupFlattened.x << 2;
    r0.y = 0;
    while (true) {
      r0.w = cmp((int)r0.y >= 4);
      if (r0.w != 0) break;
      r0.w = (int)r0.y + (int)r0.x;
      r1.x = vThreadIDInGroupFlattened.x;
      r1.y = dot(cb0[r1.x+32].xyzw, icb[r0.y+0].xyzw);
      g0[r0.w].val[0/4] = r1.y;
      r1.y = -(int)r0.y;
      r2.xyz = cmp((uint3)r0.yyy < int3(1,2,3));
      r3.y = r2.y ? r1.y : 0;
      r0.yz = (int2)r0.yy + int2(1,-3);
      r3.z = r2.y ? 0 : r0.z;
      r3.w = cmp((int)r2.z == 0);
      r3.x = r2.x;
      r1.xyzw = r3.xyzw ? cb0[r1.x+0].xyzw : 0;
      r1.xy = (int2)r1.yw | (int2)r1.xz;
      r0.z = (int)r1.y | (int)r1.x;
      g1[r0.w].val[0/4] = r0.z;
    }
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = g1[64].val[0/4];
  r0.x = cmp((uint)vThreadID.y < (uint)r0.x);
  r0.xy = r0.xx ? float2(0,4.48415509e-044) : float2(64,96);
  r0.y = g1[r0.y].val[0/4];
  r0.y = cmp((uint)vThreadID.y < (uint)r0.y);
  r0.y = r0.y ? 0 : 32;
  r0.x = (int)r0.x + (int)r0.y;
  r0.y = (int)r0.x + 16;
  r0.y = g1[r0.y].val[0/4];
  r0.y = cmp((uint)vThreadID.y < (uint)r0.y);
  r0.y = r0.y ? 0 : 16;
  r0.x = (int)r0.x + (int)r0.y;
  r0.y = (int)r0.x + 8;
  r0.y = g1[r0.y].val[0/4];
  r0.y = cmp((uint)vThreadID.y < (uint)r0.y);
  r0.y = r0.y ? 0 : 8;
  r0.x = (int)r0.x + (int)r0.y;
  r0.y = (int)r0.x + 4;
  r0.y = g1[r0.y].val[0/4];
  r0.y = cmp((uint)vThreadID.y < (uint)r0.y);
  r0.y = r0.y ? 0 : 4;
  r0.x = (int)r0.x + (int)r0.y;
  r0.y = (int)r0.x + 2;
  r0.y = g1[r0.y].val[0/4];
  r0.y = cmp((uint)vThreadID.y < (uint)r0.y);
  r0.y = r0.y ? 0 : 2;
  r0.x = (int)r0.x + (int)r0.y;
  r0.y = (int)r0.x + 1;
  r0.y = g1[r0.y].val[0/4];
  r0.y = cmp((uint)vThreadID.y < (uint)r0.y);
  r0.y = r0.y ? 0 : 1;
  r0.x = (int)r0.x + (int)r0.y;
  r0.y = asuint(cb0[65].y);
  r0.z = (int)r0.x + 1;
  r0.z = g1[r0.z].val[0/4];
  r1.y = (uint)r0.z;
  r1.x = 0;
  r0.yz = r1.xy + r0.yy;
  r0.yz = (uint2)r0.yz;
  r0.x = g0[r0.x].val[0/4];
  r0.y = (int)r0.y + (int)vThreadID.y;
  r0.z = cmp((uint)r0.y < (uint)r0.z);
  r0.w = cmp(r0.x != 0.000000);
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r0.z = t0.Load(r0.y).x;
    r0.w = 0;
    while (true) {
      r1.x = cmp((uint)r0.w >= 3);
      if (r1.x != 0) break;
      r1.x = mad(3, (int)vThreadIDInGroup.x, (int)r0.w);
      r1.y = mad(6, (int)r0.y, (int)r1.x);
      r1.y = t1.Load(r1.y).x;
      r1.y = r1.y * r0.x;
      r1.z = dot(cb0[64].xyzw, icb[r0.w+0].xyzw);
      r1.z = vThreadIDInGroup.x ? cb0[64].w : r1.z;
      r1.y = r1.y * r1.z;
      r1.y = round(r1.y);
      r1.y = (int)r1.y;
      r1.x = mad(6, (int)r0.z, (int)r1.x);
      // Needs manual fix for instruction:
        atomic_iadd u0, r1.x, r1.y
      InterlockedAdd(dest, value, orig_value);
      r0.w = (int)r0.w + 1;
    }
    if (vThreadIDInGroup.x == 0) {
      r0.x = cb0[65].x * r0.x;
      r0.x = round(r0.x);
      r0.x = (int)r0.x;
      // Needs manual fix for instruction:
        atomic_iadd u1, r0.y, r0.x
      InterlockedAdd(dest, value, orig_value);
    }
  }
  return;
}