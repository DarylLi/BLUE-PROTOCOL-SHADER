// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u2
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u3
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = r0.xy * cb0[2].xy + cb0[2].zw;
  r0.xy = max(cb0[4].xy, r0.xy);
  r0.xy = min(cb0[4].zw, r0.xy);
  r1.xyzw = cb0[5].xyyy * r0.xyyy;
  r1.xyzw = (uint4)r1.xyzw;
  r0.zw = cmp((uint2)r1.xw < asuint(cb0[1].xy));
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r2.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyw;
    r3.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyw;
    r4.xyz = t2.SampleLevel(s0_s, r0.xy, 0).xyw;
    r0.xyz = t3.SampleLevel(s0_s, r0.xy, 0).xyw;
    r2.xz = r2.xz * r2.yy;
    r3.xz = r3.xz * r3.yy;
    r4.xz = r4.xz * r4.yy;
    r0.xz = r0.xz * r0.yy;
    r0.w = cmp(0 < r2.y);
    r2.xy = r2.xz / r2.yy;
    r2.x = r0.w ? r2.x : 1;
    r0.w = r0.w ? r2.y : r2.z;
    r2.x = abs(r2.x);
    r2.yw = abs(r0.ww);
    r2.z = 1;
    r2.xyzw = cb0[31].xxxx ? r2.xwxw : r2.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xwww, r2.xyzw
    r0.w = cmp(0 < r3.y);
    r2.xy = r3.xz / r3.yy;
    r2.x = r0.w ? r2.x : 1;
    r0.w = r0.w ? r2.y : r3.z;
    r2.x = abs(r2.x);
    r2.yw = abs(r0.ww);
    r2.z = 1;
    r2.xyzw = cb0[32].xxxx ? r2.xwxw : r2.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xwww, r2.xyzw
    r0.w = cmp(0 < r4.y);
    r2.xy = r4.xz / r4.yy;
    r2.x = r0.w ? r2.x : 1;
    r0.w = r0.w ? r2.y : r4.z;
    r2.x = abs(r2.x);
    r2.yw = abs(r0.ww);
    r2.z = 1;
    r2.xyzw = cb0[33].xxxx ? r2.xwxw : r2.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r1.xwww, r2.xyzw
    r0.w = cmp(0 < r0.y);
    r0.xy = r0.xz / r0.yy;
    r0.x = r0.w ? r0.x : 1;
    r0.y = r0.w ? r0.y : r0.z;
    r2.xyw = abs(r0.xyy);
    r2.z = 1;
    r0.xyzw = cb0[34].xxxx ? r2.xwxw : r2.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r1.xyzw, r0.xyzw
  }
  return;
}