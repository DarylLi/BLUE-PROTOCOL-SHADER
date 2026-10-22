// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (unorm,unorm,unorm,unorm) u0
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 5, 5, 5
  r0.xy = (int2)vThreadGroupID.xx + asint(cb0[0].zw);
  if (8 == 0) r1.x = 0; else if (8+8 < 32) {   r1.x = (uint)r0.x << (32-(8 + 8)); r1.x = (uint)r1.x >> (32-8);  } else r1.x = (uint)r0.x >> 8;
  if (8 == 0) r1.y = 0; else if (8+8 < 32) {   r1.y = (uint)r0.y << (32-(8 + 8)); r1.y = (uint)r1.y >> (32-8);  } else r1.y = (uint)r0.y >> 8;
  r2.z = r1.x;
  r1.xw = (uint2)r0.xy >> int2(16,16);
  r2.xy = (int2)r0.xy & int2(255,255);
  r2.w = r1.x;
  r0.xyz = mad((int3)r2.xzw, int3(5,5,5), (int3)vThreadIDInGroup.xyz);
  r1.z = r2.y;
  r1.xyzw = mad((int4)r1.zyww, int4(5,5,5,5), (int4)vThreadIDInGroup.xyzz);
  r0.w = 0;
  r0.xyzw = t0.Load(r0.xyzw).xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzw, r0.xyzw
  return;
}