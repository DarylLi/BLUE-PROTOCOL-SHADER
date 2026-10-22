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
// unknown dcl_: dcl_uav_typed_texture2darray (sint,sint,sint,sint) u0
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (int4)vThreadID.xyzz + asint(cb0[1].xyzz);
  r1.xyz = cmp((uint3)r0.xyw < asuint(cb0[2].xyz));
  r1.x = r1.y ? r1.x : 0;
  r1.x = r1.z ? r1.x : 0;
  if (r1.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, cb0[0].xyzw
  }
  return;
}