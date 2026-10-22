// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct u2_t {
  float val[4];
};
RWStructuredBuffer<u2_t> u2 : register(u2);

struct u1_t {
  float val[4];
};
RWStructuredBuffer<u1_t> u1 : register(u1);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1, 16, 1
  r0.x = cmp((uint)vThreadIDInGroupFlattened.x < 1);
  if (r0.x != 0) {
    r0.x = (int)vThreadGroupID.x * 5;
    r0.y = mad(5, (int)vThreadGroupID.x, 1);
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(uint,uint,uint,uint) r0.z, r0.yyyy, u0.yzxw
    r0.z = min(asuint(cb0[0].x), (uint)r0.z);
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), r0.z
    r0.z = (int)r0.z + 15;
    r0.z = (uint)r0.z >> 4;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, l(96,96,96,96)
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r0.zzzz
  }
  GroupMemoryBarrierWithGroupSync();
  if (vThreadGroupID.x == 0) {
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g0.xxxx
    r0.x = mad((int)r0.x, 5, (int)vThreadIDInGroupFlattened.x);
    r0.y = 0;
    while (true) {
      r0.z = cmp((uint)r0.y >= 5);
      if (r0.z != 0) break;
      r0.z = (uint)r0.y << 4;
      r0.z = (int)r0.z + (int)r0.x;
      u1[r0.z].val[0/4] = 0;
      u1[r0.z].val[0/4+1] = 0;
      u1[r0.z].val[0/4+2] = 0;
      u1[r0.z].val[0/4+3] = 0;
      r0.y = (int)r0.y + 1;
    }
  } else {
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g0.xxxx
    r0.x = mad((int)r0.x, 5, (int)vThreadIDInGroupFlattened.x);
    r0.y = 0;
    while (true) {
      r0.z = cmp((uint)r0.y >= 5);
      if (r0.z != 0) break;
      r0.z = (uint)r0.y << 4;
      r0.z = (int)r0.z + (int)r0.x;
      u2[r0.z].val[0/4] = 0;
      u2[r0.z].val[0/4+1] = 0;
      u2[r0.z].val[0/4+2] = 0;
      u2[r0.z].val[0/4+3] = 0;
      r0.y = (int)r0.y + 1;
    }
  }
  return;
}