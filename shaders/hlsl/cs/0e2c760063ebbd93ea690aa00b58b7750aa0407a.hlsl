// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = cmp((uint2)vThreadID.xy < asuint(cb0[0].zw));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xy = (uint2)vThreadID.xy;
    r0.xy = r0.xy * cb0[1].xy + cb0[1].zw;
    r1.xyzw = (int4)vThreadID.xyyy + asint(cb0[0].xyyy);
    r0.z = asuint(cb0[2].x);
    r0.xyzw = t0.SampleLevel(s0_s, r0.xy, r0.z).xyzw;
    r0.x = dot(r0.xyzw, cb0[3].xyzw);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyzw, r0.xxxx
  }
  return;
}