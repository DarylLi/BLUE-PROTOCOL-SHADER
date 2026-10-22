// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DArray<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyz = cmp((uint3)vThreadID.xyz < asuint(cb0[2].xyz));
  r0.x = r0.y ? r0.x : 0;
  r0.x = r0.z ? r0.x : 0;
  if (r0.x != 0) {
    r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[0].xyyy);
    r1.xyz = (int3)vThreadID.xyz + asint(cb0[1].xyz);
    r1.w = 0;
    r1.xyzw = t0.Load(r1.xyzw).xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  }
  return;
}