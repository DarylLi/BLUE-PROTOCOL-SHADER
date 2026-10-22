// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u2
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u3
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xyzw = mad((int4)vThreadGroupID.xyzz, int4(4,4,4,4), (int4)vThreadIDInGroup.xyzz);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyww, l(0,0,0,0)
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r0.xyww, l(0,0,0,0)
// No code for instruction (needs manual fix):
store_uav_typed u2.xyzw, r0.xyww, l(0,0,0,0)
// No code for instruction (needs manual fix):
store_uav_typed u3.xyzw, r0.xyzw, l(0,0,0,0)
  return;
}