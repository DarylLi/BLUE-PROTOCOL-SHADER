// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t0 : register(t0);

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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cmp((uint)vThreadID.x >= asuint(cb0[0].x));
  if (r0.x != 0) {
    return;
  }
  r0.x = (int)vThreadID.x + asint(cb0[0].w);
  r1.x = (int)r0.x & 255;
  if (8 == 0) r1.y = 0; else if (8+8 < 32) {   r1.y = (uint)r0.x << (32-(8 + 8)); r1.y = (uint)r1.y >> (32-8);  } else r1.y = (uint)r0.x >> 8;
  r1.z = (uint)r0.x >> 16;
  r0.x = (int)vThreadID.x * 3;
  r0.x = t0.Load(r0.x).x;
  r2.xy = mad((int2)vThreadID.xx, int2(3,3), int2(1,2));
  r0.y = t0.Load(r2.x).x;
  r2.x = t0.Load(r2.y).x;
  r0.zw = r2.xx;
  r1.w = 1;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}