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
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u1
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  if (1 == 0) r0.x = 0; else if (1+1 < 32) {   r0.x = (uint)vThreadIDInGroupFlattened.x << (32-(1 + 1)); r0.x = (uint)r0.x >> (32-1);  } else r0.x = (uint)vThreadIDInGroupFlattened.x >> 1;
  r1.xyzw = (uint4)vThreadIDInGroupFlattened.xxxx >> int4(2,3,4,5);
  bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.y = (((uint)r1.x << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
  bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.z = (((uint)r1.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
  bitmask.w = ((~(-1 << 1)) << 2) & 0xffffffff;  r0.w = (((uint)r1.z << 2) & bitmask.w) | ((uint)0 & ~bitmask.w);
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.y = (((uint)vThreadIDInGroupFlattened.x << 0) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
  r0.x = (int)r0.z + (int)r0.x;
  r2.x = (int)r0.w + (int)r0.y;
  r2.yzw = mad((int3)r1.www, int3(4,4,4), (int3)r0.xxx);
  r0.xyzw = mad((int4)vThreadGroupID.xyyy, int4(8,8,8,8), (int4)r2.xyzw);
  r0.xyzw = (int4)r0.xyzw + asint(cb0[2].xyyy);
  r1.xy = cmp((uint2)r0.xw < asuint(cb0[2].zw));
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xwww, l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xyzw, l(0,0,0,0)
  }
  return;
}