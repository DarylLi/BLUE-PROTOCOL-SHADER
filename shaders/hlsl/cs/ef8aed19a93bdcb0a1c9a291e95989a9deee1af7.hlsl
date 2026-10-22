// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = (int)vThreadIDInGroupFlattened.x & 7;
  r0.yzw = (uint3)vThreadIDInGroupFlattened.xxx >> int3(3,3,3);
  r0.xyzw = mad((int4)vThreadGroupID.xyyy, int4(8,8,8,8), (int4)r0.xyzw);
  r1.xy = (uint2)r0.xw;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xy = r1.xy * cb0[1].xy + cb0[1].zw;
  r1.xy = cb0[2].xy * float2(-0.25,-0.25) + r1.xy;
  r1.zw = cb0[2].zw + -cb0[2].xy;
  r1.xy = min(r1.xy, r1.zw);
  r1.xyzw = t0.Gather(s0_s, r1.xy).xyzw;
  r2.xy = min(r1.xz, r1.yw);
  r1.xy = max(r1.xz, r1.yw);
  r1.x = max(r1.x, r1.y);
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r0.xyzw, r1.xxxx
  r0.y = min(r2.x, r2.y);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xwww, r0.yyyy
  return;
}