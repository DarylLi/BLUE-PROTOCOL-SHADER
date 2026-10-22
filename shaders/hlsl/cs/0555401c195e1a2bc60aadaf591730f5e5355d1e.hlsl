// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct u0_t {
  float val[4];
};
RWStructuredBuffer<u0_t> u0 : register(u0);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u1
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1, 1, 1
  r0.x = t0[0].val[8/4];
  r0.x = min(asint(cb0[1].x), (int)r0.x);
  r0.x = (int)r0.x + 63;
  r0.x = (uint)r0.x >> 6;
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, l(0,0,0,0), r0.xxxx
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, l(1,1,1,1), l(1,1,1,1)
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, l(2,2,2,2), l(1,1,1,1)
  u0[0].val[8/4] = 0;
  return;
}