// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 2, 32, 1
// No code for instruction (needs manual fix):
ld_uav_typed_indexable(buffer)(sint,sint,sint,sint) r0.x, vThreadID.yyyy, u1.xyzw
  r0.y = (int)r0.x;
  r0.y = cb0[65].x * r0.y;
  r0.z = cmp((int)vThreadIDInGroup.x != 0);
  r0.w = cmp(1 < r0.y);
  r0.z = r0.w ? r0.z : 0;
  r0.w = 0;
  while (true) {
    r1.x = cmp((uint)r0.w >= 3);
    if (r1.x != 0) break;
    r1.x = mad(3, (int)vThreadIDInGroup.x, (int)r0.w);
    r1.x = mad(6, (int)vThreadID.y, (int)r1.x);
    r1.y = dot(cb0[64].xyzw, icb[r0.w+0].xyzw);
    r1.y = vThreadIDInGroup.x ? cb0[64].w : r1.y;
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(buffer)(uint,uint,uint,uint) r1.z, r1.xxxx, u0.yzxw
    r1.z = (int)r1.z;
    r1.y = r1.z * r1.y;
    r1.z = r1.y / r0.y;
    r1.y = r0.z ? r1.z : r1.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r1.yyyy
    r0.w = (int)r0.w + 1;
  }
  return;
}