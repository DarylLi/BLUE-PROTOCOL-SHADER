// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyzz, cb0[0].xyzw
  return;
}