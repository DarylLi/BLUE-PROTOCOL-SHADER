// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[57];
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
  r0.xy = (uint2)cb0[51].zw;
  r0.xy = cmp((uint2)vThreadID.xy >= (uint2)r0.xy);
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x != 0) {
    return;
  }
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[50].zwww);
  r1.xy = (uint2)r0.xw;
  r1.xy = cb0[49].xy * r1.xy;
  r1.xy = r1.xy * cb0[55].zw + cb0[56].xy;
  r1.z = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r1.w = t0.SampleLevel(s0_s, r1.xy, 0, int2(2, 0)).x;
  r1.z = r1.z + r1.w;
  r1.w = t0.SampleLevel(s0_s, r1.xy, 0, int2(0, 2)).x;
  r1.z = r1.z + r1.w;
  r1.x = t0.SampleLevel(s0_s, r1.xy, 0, int2(2, 2)).x;
  r1.x = r1.z + r1.x;
  r1.x = 0.25 * r1.x;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xxxx
  return;
}