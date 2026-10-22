// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u1
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = cmp((int2)vThreadIDInGroup.xy == int2(0,0));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  r0.yz = cmp((uint2)vThreadID.xy < asuint(cb0[8].xy));
  r0.y = r0.z ? r0.y : 0;
  r0.z = mad((int)vThreadID.y, asint(cb0[8].x), (int)vThreadID.x);
  if (r0.y != 0) {
    r0.w = t0.Load(r0.z).x;
    // Needs manual fix for instruction:
    imm_atomic_iadd r1.x, g0, l(0), r0.w
    InterlockedAdd(dest, imm_value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.x != 0) {
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g0.xxxx
    // Needs manual fix for instruction:
    imm_atomic_iadd r2.x, u0, l(0), r0.x
    InterlockedAdd(dest, imm_value, orig_value);
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), r2.x
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.y != 0) {
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g1.xxxx
    r0.x = (int)r0.x + (int)r1.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.zzzz, r0.xxxx
  }
  return;
}