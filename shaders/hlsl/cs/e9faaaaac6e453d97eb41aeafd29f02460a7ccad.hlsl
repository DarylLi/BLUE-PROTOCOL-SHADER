// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u2
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u3
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (uint4)vThreadID.xyyy;
  r0.xyzw = r0.xyzw * cb0[2].xyyy + cb0[2].zwww;
  r0.xyzw = max(cb0[4].xyyy, r0.xyzw);
  r0.xyzw = min(cb0[4].zwww, r0.xyzw);
  r0.xyzw = cb0[5].xyyy * r0.xyzw;
  r0.xyzw = (uint4)r0.xyzw;
  r1.xy = cmp((uint2)r0.xw < asuint(cb0[1].xy));
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xwww, l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xwww, l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r0.xwww, l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r0.xyzw, l(0,0,0,0)
  }
  return;
}