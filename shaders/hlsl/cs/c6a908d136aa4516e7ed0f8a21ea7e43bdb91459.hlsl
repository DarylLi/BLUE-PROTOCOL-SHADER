// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = (uint)vThreadIDInGroup.x >> 3;
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.y = (((uint)vThreadIDInGroup.x << 0) & bitmask.y) | ((uint)r0.x & ~bitmask.y);
  if (3 == 0) r0.x = 0; else if (3+1 < 32) {   r0.x = (uint)vThreadIDInGroup.x << (32-(3 + 1)); r0.x = (uint)r0.x >> (32-3);  } else r0.x = (uint)vThreadIDInGroup.x >> 1;
  r0.xz = mad((int2)vThreadGroupID.xy, int2(16,16), (int2)r0.xy);
  r0.yw = float2(0,0);
  r1.xyzw = t0.Load(r0.xzy).xyzw;
  r2.x = max(r1.y, r1.z);
  r2.x = max(r2.x, r1.x);
  r2.x = 1 + r2.x;
  r2.x = rcp(r2.x);
  r2.xyz = r2.xxx * r1.xyz;
  r1.xyz = sqrt(r2.xyz);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xzzz, r1.xyzw
  r0.xy = (int2)r0.xz + int2(8,8);
  r1.xyzw = t0.Load(r0.xzw).xyzw;
  r2.x = max(r1.y, r1.z);
  r2.x = max(r2.x, r1.x);
  r2.x = 1 + r2.x;
  r2.x = rcp(r2.x);
  r2.xyz = r2.xxx * r1.xyz;
  r1.xyz = sqrt(r2.xyz);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xzzz, r1.xyzw
  r1.xyzw = t0.Load(r0.xyw).xyzw;
  r2.yzw = r0.yww;
  r0.z = max(r1.y, r1.z);
  r0.z = max(r1.x, r0.z);
  r0.z = 1 + r0.z;
  r0.z = rcp(r0.z);
  r3.xyz = r1.xyz * r0.zzz;
  r1.xyz = sqrt(r3.xyz);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyyy, r1.xyzw
  r2.x = (int)r0.x + -8;
  r0.xyzw = t0.Load(r2.xyz).xyzw;
  r1.x = max(r0.y, r0.z);
  r1.x = max(r1.x, r0.x);
  r1.x = 1 + r1.x;
  r1.x = rcp(r1.x);
  r1.xyz = r1.xxx * r0.xyz;
  r0.xyz = sqrt(r1.xyz);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r2.xyyy, r0.xyzw
  return;
}