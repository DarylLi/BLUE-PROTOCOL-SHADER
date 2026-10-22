// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u0
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.zw = -cb0[1].xy + r0.xy;
  r0.xy = -cb0[0].zw + r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.y = dot(r0.zw, r0.zw);
  r0.y = min(r0.x, r0.y);
  r0.xy = r0.xy / cb0[1].zz;
  r0.zw = asint(cb0[2].zz) & int2(4,2);
  r0.x = r0.w ? r0.y : r0.x;
  r0.y = cmp(cb0[1].w < r0.x);
  r0.x = cmp(cb0[2].x >= r0.x);
  r0.y = r0.y ? 0.000000 : 0;
  r0.x = r0.x ? r0.y : 10;
  r0.x = r0.z ? r0.x : 0;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xxxx
  return;
}