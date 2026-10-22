// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t0 : register(t0);




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.w = 0;
  r1.xy = (uint2)vThreadID.zy << int2(10,5);
  r1.x = (int)r1.y + (int)r1.x;
  r1.x = (int)r1.x + (int)vThreadID.x;
  r0.x = (int)r1.x & 31;
  if (5 == 0) r0.y = 0; else if (5+5 < 32) {   r0.y = (uint)r1.x << (32-(5 + 5)); r0.y = (uint)r0.y >> (32-5);  } else r0.y = (uint)r1.x >> 5;
  r0.z = (uint)r1.x >> 10;
  r0.x = t0.Load(r0.xyzw).w;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xxxx
  return;
}