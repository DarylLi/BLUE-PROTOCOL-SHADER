// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[1];
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
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = (int)vThreadID.x + asint(cb0[1].x);
  uiDest.y = (uint)r0.x / asuint(cb0[0].y);
  r0.y = uiDest.y;
  r0.z = cmp((uint)r0.y < asuint(cb0[0].w));
  if (r0.z != 0) {
    r0.z = mad((int)-r0.y, asint(cb0[0].y), (int)r0.x);
    r0.y = t0[r0.y].val[0/4];
    r0.y = mad((int)r0.y, asint(cb0[0].y), (int)r0.z);
    uiDest.x = (uint)r0.y / asuint(cb0[0].z);
    r2.x = (uint)r0.y % asuint(cb0[0].z);
    r1.x = uiDest.x;
    r0.x = t1[r0.x].val[0/4];
    r0.y = t1[r0.x].val[0/4+1];
    r0.z = t1[r0.x].val[0/4+2];
    r0.w = t1[r0.x].val[0/4+3];
    r2.yzw = r1.xxx;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xyzw, r0.xyzw
  }
  return;
}