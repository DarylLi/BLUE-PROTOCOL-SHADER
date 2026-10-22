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
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 32, 1, 1
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[1].x));
  if (r0.x != 0) {
    r0.x = (int)vThreadID.x & 3;
    r0.y = -(int)r0.x;
    r1.xyz = cmp((uint3)r0.xxx < int3(1,2,3));
    r2.y = r1.y ? r0.y : 0;
    r0.x = (int)r0.x + -3;
    r2.z = r1.y ? 0 : r0.x;
    r2.w = cmp((int)r1.z == 0);
    r2.x = r1.x;
    r0.xyzw = r2.xyzw ? cb0[0].xyzw : 0;
    r0.xy = (int2)r0.yw | (int2)r0.xz;
    r0.x = (int)r0.y | (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xxxx, r0.xxxx
  }
  return;
}