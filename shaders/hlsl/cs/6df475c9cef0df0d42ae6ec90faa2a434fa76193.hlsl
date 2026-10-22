// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[6];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
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
// unknown dcl_: dcl_uav_typed_texture2darray (unorm,unorm,unorm,unorm) u0
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.xy = cmp((uint2)vThreadID.xy < asuint(cb0[0].xx));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.x = t0[vThreadID.z].val[0/4];
    r0.y = t0[vThreadID.z].val[0/4+1];
    r0.z = t0[vThreadID.z].val[0/4+2];
    r0.w = t0[vThreadID.z].val[0/4+3];
    r1.x = t0[vThreadID.z].val[16/4];
    r1.y = t0[vThreadID.z].val[16/4+1];
    r2.xy = (int2)r0.xy + (int2)vThreadID.xy;
    r2.zw = float2(0,0);
    r2.xyzw = t1.Load(r2.xyz).xyzw;
    r1.xy = (int2)r1.xy + (int2)vThreadID.xy;
    r0.x = dot(r2.xyzw, icb[r0.w+0].xyzw);
    r1.zw = r0.zz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyzw, r0.xxxx
  }
  return;
}