// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<uint4> t0 : register(t0);

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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xyz = uiDest.xyz;
// Unknown use of GetDimensions for resinfo_ from missing reflection info, need manual fix.
// resinfo_indexable(texture3d)(uint,uint,uint,uint)_uint r0.xyz, l(0), u0.xyzw
// Example for texture2d type, uint return:
tx.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
rx = uiDest;
 state=0, constZero.eType=4, returnType=2, texture.eType=7, afImmediates[0]=0.000000
  r0.xyz = cmp((uint3)vThreadID.xyz >= (uint3)r0.xyz);
  r0.x = (int)r0.y | (int)r0.x;
  r0.x = (int)r0.z | (int)r0.x;
  if (r0.x != 0) {
    return;
  }
  r0.xyz = vThreadID.xyz;
  r0.w = 0;
  r0.xyzw = t0.Load(r0.xyzw).xyzw;
  r1.xy = (uint2)r0.yz << int2(8,16);
  r1.x = (int)r0.x + (int)r1.x;
  r1.x = (int)r1.y + (int)r1.x;
  r1.y = cmp((uint)r1.x >= asuint(cb0[0].z));
  r1.z = asint(cb0[0].x) + asint(cb0[0].z);
  r1.z = cmp((uint)r1.x < (uint)r1.z);
  r1.y = r1.z ? r1.y : 0;
  if (r1.y != 0) {
    r1.x = (int)r1.x + asint(-cb0[0].z);
    r1.x = (int)r1.x + asint(cb0[0].w);
    r0.x = (int)r1.x & 255;
    if (8 == 0) r0.y = 0; else if (8+8 < 32) {     r0.y = (uint)r1.x << (32-(8 + 8)); r0.y = (uint)r0.y >> (32-8);    } else r0.y = (uint)r1.x >> 8;
    r0.z = (uint)r1.x >> 16;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
  } else {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
  }
  return;
}