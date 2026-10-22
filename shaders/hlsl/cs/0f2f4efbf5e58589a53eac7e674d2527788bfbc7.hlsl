// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
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
// unknown dcl_: dcl_thread_group 1, 1, 1
  r0.xyzw = t0.SampleLevel(s0_s, cb0[0].zw, 0).xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, l(0,0,0,0), r0.xyzw
  r0.xy = cb0[0].xy;
  r0.zw = float2(0,0);
  r0.z = t1.Load(r0.xyz).x;
  r1.xy = t1.Load(float4(0,0,0,0)).xz;
  r0.xyw = r1.xyy;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, l(1,0,0,0), r0.xyzw
  return;
}