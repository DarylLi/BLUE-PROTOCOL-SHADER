// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
  const float4 icb[] = { { -1, -1, 0, 0},
                              { 0, -1, 0, 0},
                              { 1, -1, 0, 0},
                              { -1, 0, 0, 0},
                              { 0, 0, 0, 0},
                              { 1, 0, 0, 0},
                              { -1, 1, 0, 0},
                              { 0, 1, 0, 0},
                              { 1, 1, 0, 0} };
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = cmp((uint2)vThreadID.xy >= asuint(cb0[0].zw));
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x != 0) {
    return;
  }
  r0.xy = vThreadGroupID.xy;
  r0.zw = float2(0,0);
  r0.x = t1.Load(r0.xyz).x;
  r0.x = cmp(cb0[1].z >= -r0.x);
  if (r0.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyyy, l(0,0,0,0)
  } else {
    r0.xy = (uint2)vThreadID.xy;
    r0.xy = float2(0.5,0.5) + r0.xy;
    r0.xy = cb0[2].zw * r0.xy;
    r1.xyzw = cb0[2].xyyy * r0.xyyy;
    r1.xyzw = (uint4)r1.xyzw;
    r2.xyzw = float4(0,0,0,0);
    r0.z = 0;
    while (true) {
      r0.w = cmp((uint)r0.z >= 9);
      if (r0.w != 0) break;
      r3.xy = (int2)icb[r0.z+0].xy;
      r3.xy = r3.xy * cb0[2].zw + r0.xy;
      r3.xy = min(cb0[1].xy, r3.xy);
      r3.xy = min(cb0[1].xy, r3.xy);
      r3.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
      r4.xyzw = max(r3.xyzw, r2.xyzw);
      r2.xyzw = r0.zzzz ? r4.xyzw : r3.xyzw;
      r0.z = (int)r0.z + 1;
    }
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyzw, r2.xyzw
  }
  return;
}