// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
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
// unknown dcl_: dcl_thread_group 32, 1, 1
  r0.x = mad((int)vThreadGroupID.x, 32, (int)vThreadIDInGroup.x);
  r0.y = vThreadGroupID.y;
  r0.xy = (int2)r0.xy + asint(cb0[0].xy);
  r1.x = cmp((uint)r0.x >= asuint(cb0[0].z));
  if (r1.x != 0) {
    return;
  }
  r1.x = cmp((uint)r0.y >= asuint(cb0[0].w));
  if (r1.x != 0) {
    return;
  }
  r1.xy = asint(cb0[1].zw) + int2(1,1);
  r1.xy = cmp((uint2)r0.xy < (uint2)r1.xy);
  r1.x = r1.y ? r1.x : 0;
  r1.yz = cmp((uint2)r0.xy >= asuint(cb0[1].xy));
  r1.x = r1.y ? r1.x : 0;
  r1.x = r1.z ? r1.x : 0;
  if (r1.x != 0) {
    r0.zw = float2(0,0);
    r1.xyzw = t0.Load(r0.xyz).xyzw;
  } else {
    r1.xyzw = float4(0,0,0,0);
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyyy, r1.xyzw
  return;
}