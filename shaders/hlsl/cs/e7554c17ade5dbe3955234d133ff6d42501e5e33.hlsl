// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct u0_t {
  float val[4];
};
RWStructuredBuffer<u0_t> u0 : register(u0);

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[0].y));
  if (r0.x != 0) {
    r0.x = (int)vThreadID.x + asint(cb0[1].y);
    u0[r0.x].val[0/4] = cb0[0].x;
    u0[r0.x].val[0/4+1] = cb0[0].x;
    u0[r0.x].val[0/4+2] = cb0[0].x;
    u0[r0.x].val[0/4+3] = cb0[0].x;
  }
  return;
}