// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<sint4> t0 : register(t0);

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
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = cmp((uint2)vThreadID.xy >= asuint(cb0[1].xy));
  r0.x = r0.y ? r0.x : 0;
  r0.yz = cmp((uint2)vThreadID.xy < asuint(cb0[1].zw));
  r0.y = r0.z ? r0.y : 0;
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xy = vThreadID.xy;
    r0.zw = float2(0,0);
    r0.xyzw = t0.Load(r0.xyz).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xyzw
  }
  return;
}