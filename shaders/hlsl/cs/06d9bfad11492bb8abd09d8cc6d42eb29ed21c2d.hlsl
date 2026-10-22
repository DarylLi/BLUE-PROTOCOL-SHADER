// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u0
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.x = dot(r0.xy, float2(347.834503,3343.28369));
  r0.x = cos(r0.x);
  r0.x = 1000 * r0.x;
  r0.x = frac(r0.x);
  r0.y = 1 + cb0[0].x;
  r0.y = cmp(r0.x < r0.y);
  r0.x = cmp(cb0[0].x < r0.x);
  r0.z = cmp(cb0[0].x < 0);
  r0.x = r0.z ? r0.y : r0.x;
  r0.yz = asint(cb0[1].wz) & int2(255,255);
  r0.x = r0.x ? r0.z : r0.y;
  r0.z = cmp(0.00100000005 < abs(cb0[0].x));
  r0.x = r0.z ? r0.x : r0.y;
  r1.xyzw = (int4)vThreadID.xyyy + asint(cb0[1].xyyy);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzw, r0.xxxx
  return;
}