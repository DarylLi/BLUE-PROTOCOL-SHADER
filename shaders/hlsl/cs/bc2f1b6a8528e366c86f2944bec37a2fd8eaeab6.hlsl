// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<sint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (sint,sint,sint,sint) u0
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = cmp((uint2)vThreadID.xy < asuint(cb0[1].zw));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[1].xyyy);
    r1.xy = (int2)vThreadID.xy * asint(cb0[0].yx);
    r1.x = (int)r1.y + (int)r1.x;
    r2.x = t0.Load(r1.x).x;
    r1.xyz = (int3)r1.xxx + int3(1,2,3);
    r2.y = t0.Load(r1.x).x;
    r2.z = t0.Load(r1.y).x;
    r2.w = t0.Load(r1.z).x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r2.xyzw
  }
  return;
}