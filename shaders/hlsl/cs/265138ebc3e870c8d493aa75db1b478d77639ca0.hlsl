// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[0].y));
  if (r0.x != 0) {
    uiDest.x = (uint)vThreadID.x / asuint(cb0[0].z);
    r1.x = (uint)vThreadID.x % asuint(cb0[0].z);
    r0.x = uiDest.x;
    r2.x = (uint)r1.x;
    r2.y = (uint)r0.x;
    r2.xy = (int2)r2.xy;
    r2.zw = float2(0,0);
    r2.xyzw = t0.Load(r2.xyz).xyzw;
    r1.yzw = r0.xxx;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyzw, r2.xyzw
  }
  return;
}