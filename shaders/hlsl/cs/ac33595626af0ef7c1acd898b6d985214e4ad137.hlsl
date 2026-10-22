// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

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
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (unorm,unorm,unorm,unorm) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (unorm,unorm,unorm,unorm) u2
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 5, 5, 5
  r0.xy = (int2)vThreadGroupID.xx + asint(cb0[0].zw);
  r1.xy = (int2)r0.xy & int2(255,255);
  r2.z = r1.y;
  r0.zw = (uint2)r0.xy >> int2(16,16);
  if (8 == 0) r2.x = 0; else if (8+8 < 32) {   r2.x = (uint)r0.x << (32-(8 + 8)); r2.x = (uint)r2.x >> (32-8);  } else r2.x = (uint)r0.x >> 8;
  if (8 == 0) r2.y = 0; else if (8+8 < 32) {   r2.y = (uint)r0.y << (32-(8 + 8)); r2.y = (uint)r2.y >> (32-8);  } else r2.y = (uint)r0.y >> 8;
  r2.w = r0.w;
  r1.w = r0.z;
  r0.xyzw = mad((int4)r2.zyww, int4(5,5,5,5), (int4)vThreadIDInGroup.xyzz);
  r1.z = r2.x;
  r1.xyz = mad((int3)r1.xzw, int3(5,5,5), (int3)vThreadIDInGroup.xyz);
  r1.w = 0;
  r2.xyz = t0.Load(r1.xyzw).xyz;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyww, r2.xyzx
  r2.xyzw = t1.Load(r1.xyzw).xyzw;
  r1.x = t2.Load(r1.xyzw).x;
// No code for instruction (needs manual fix):
store_uav_typed u2.xyzw, r0.xyzw, r1.xxxx
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r0.xyww, r2.xyzw
  return;
}