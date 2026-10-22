// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[128];
Buffer<sint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (sint,sint,sint,sint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (sint,sint,sint,sint) u1
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = mad((int)vThreadGroupID.x, 64, (int)vThreadIDInGroup.x);
  if (vThreadIDInGroup.x != 0) {
    r0.y = (int)r0.x + -1;
    r0.y = t0.Load(r0.y).x;
    r0.y = cmp((int)r0.y == -1);
    r0.y = r0.y ? 0.000000 : 0;
    g0[vThreadIDInGroup.x].val[0/4] = r0.y;
  } else {
    g0[0].val[0/4] = 0;
  }
  GroupMemoryBarrierWithGroupSync();
  r1.xyzw = cmp((uint4)vThreadIDInGroup.xxxx >= int4(1,2,4,8));
  if (r1.x != 0) {
    r0.yz = (int2)vThreadIDInGroup.xx + int2(64,-1);
    r0.z = g0[r0.z].val[0/4];
    r0.w = g0[vThreadIDInGroup.x].val[0/4];
    r0.z = (int)r0.w + (int)r0.z;
    g0[r0.y].val[0/4] = r0.z;
  } else {
    r0.y = g0[0].val[0/4];
    g0[64].val[0/4] = r0.y;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.y != 0) {
    r0.y = (int)vThreadIDInGroup.x + 64;
    r0.z = (int)r0.y + -2;
    r0.z = g0[r0.z].val[0/4];
    r0.y = g0[r0.y].val[0/4];
    r0.y = (int)r0.y + (int)r0.z;
  } else {
    r0.z = (int)vThreadIDInGroup.x + 64;
    r0.y = g0[r0.z].val[0/4];
  }
  g0[vThreadIDInGroup.x].val[0/4] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  if (r1.z != 0) {
    r0.y = (int)vThreadIDInGroup.x + -4;
    r0.y = g0[r0.y].val[0/4];
    r0.z = g0[vThreadIDInGroup.x].val[0/4];
    r0.y = (int)r0.z + (int)r0.y;
  } else {
    r0.y = g0[vThreadIDInGroup.x].val[0/4];
  }
  r0.z = (int)vThreadIDInGroup.x + 64;
  g0[r0.z].val[0/4] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  if (r1.w != 0) {
    r0.y = (int)r0.z + -8;
    r0.y = g0[r0.y].val[0/4];
    r0.w = g0[r0.z].val[0/4];
    r0.y = (int)r0.w + (int)r0.y;
  } else {
    r0.y = g0[r0.z].val[0/4];
  }
  g0[vThreadIDInGroup.x].val[0/4] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  r0.yw = cmp((uint2)vThreadIDInGroup.xx >= int2(16,32));
  if (r0.y != 0) {
    r0.y = (int)vThreadIDInGroup.x + -16;
    r0.y = g0[r0.y].val[0/4];
    r1.x = g0[vThreadIDInGroup.x].val[0/4];
    r0.y = (int)r0.y + (int)r1.x;
  } else {
    r0.y = g0[vThreadIDInGroup.x].val[0/4];
  }
  g0[r0.z].val[0/4] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  if (r0.w != 0) {
    r0.y = (int)r0.z + -32;
    r0.y = g0[r0.y].val[0/4];
    r0.w = g0[r0.z].val[0/4];
    r0.y = (int)r0.w + (int)r0.y;
  } else {
    r0.y = g0[r0.z].val[0/4];
  }
  g0[vThreadIDInGroup.x].val[0/4] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  if (vThreadIDInGroup.x == 0) {
    r0.y = mad((int)vThreadGroupID.x, 64, 63);
    r0.y = t0.Load(r0.y).x;
    r0.y = cmp((int)r0.y == -1);
    r0.y = r0.y ? 0.000000 : 0;
    r0.z = g0[63].val[0/4];
    r0.y = (int)r0.y + (int)r0.z;
    // Needs manual fix for instruction:
    imm_atomic_iadd r1.x, u1, cb0[0].x, r0.y
    InterlockedAdd(dest, imm_value, orig_value);
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), r1.x
  }
  GroupMemoryBarrierWithGroupSync();
  r0.y = t0.Load(r0.x).x;
  r0.y = cmp((int)r0.y == -1);
  if (r0.y != 0) {
  // No code for instruction (needs manual fix):
    ld_raw r0.y, l(0), g1.xxxx
    r0.z = g0[vThreadIDInGroup.x].val[0/4];
    r0.y = (int)r0.z + (int)r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r0.xxxx
  }
  return;
}