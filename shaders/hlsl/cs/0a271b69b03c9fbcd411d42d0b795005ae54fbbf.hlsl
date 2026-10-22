// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct u0_t {
  float val[8];
};
RWStructuredBuffer<u0_t> u0 : register(u0);

struct t0_t {
  float val[8];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1024, 1, 1
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[2].x));
  if (r0.x != 0) {
    r0.x = t0[vThreadID.x].val[0/4];
    r0.y = t0[vThreadID.x].val[0/4+1];
    r0.z = t0[vThreadID.x].val[0/4+2];
    r0.w = t0[vThreadID.x].val[0/4+3];
    r1.x = t0[vThreadID.x].val[16/4];
    r1.y = t0[vThreadID.x].val[16/4+1];
    r1.z = t0[vThreadID.x].val[16/4+2];
    r1.w = t0[vThreadID.x].val[16/4+3];
    u0[vThreadID.x].val[0/4] = r0.x;
    u0[vThreadID.x].val[0/4+1] = r0.y;
    u0[vThreadID.x].val[0/4+2] = r0.z;
    u0[vThreadID.x].val[0/4+3] = r0.w;
    u0[vThreadID.x].val[16/4] = r1.x;
    u0[vThreadID.x].val[16/4+1] = r1.y;
    u0[vThreadID.x].val[16/4+2] = r1.z;
    u0[vThreadID.x].val[16/4+3] = r1.w;
  }
  return;
}