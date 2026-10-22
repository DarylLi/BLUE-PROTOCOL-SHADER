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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[0].y));
  if (r0.x != 0) {
    r0.xy = (int2)vThreadID.xx + asint(cb0[1].yx);
    r1.x = t0[r0.y].val[0/4];
    r1.y = t0[r0.y].val[0/4+1];
    r1.z = t0[r0.y].val[0/4+2];
    r1.w = t0[r0.y].val[0/4+3];
    u0[r0.x].val[0/4] = r1.x;
    u0[r0.x].val[0/4+1] = r1.y;
    u0[r0.x].val[0/4+2] = r1.z;
    u0[r0.x].val[0/4+3] = r1.w;
  }
  return;
}