// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t1_t {
  float val[2];
};
StructuredBuffer<t1_t> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1, 1, 1
  r0.x = t1[vThreadGroupID.x].val[0/4];
  r0.y = t1[vThreadGroupID.x].val[0/4+1];
  r0.zw = t0.SampleLevel(s0_s, r0.xy, 0).xy;
  r0.xyzw = r0.xyxx + r0.zwzz;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadGroupID.xxxx, r0.xyzw
  return;
}