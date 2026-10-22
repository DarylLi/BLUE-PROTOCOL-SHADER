// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.zw = cmp(r0.xy < cb0[2].xy);
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r0.zw = cmp(r0.xy >= cb0[3].xy);
    r0.xy = cmp(cb0[3].zw >= r0.xy);
    r0.x = r0.x ? r0.z : 0;
    r0.x = r0.w ? r0.x : 0;
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, vThreadID.xyyy, cb0[1].xyzw
    }
  }
  return;
}