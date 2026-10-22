// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[66];
}

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
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u2
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xy = cb0[1].xy * r0.xy;
  r0.xy = min(cb0[2].xy, r0.xy);
  r0.zw = -cb0[0].zw + r0.xy;
  r1.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
  r2.xyzw = cb0[0].zwzw * float4(1,-1,-1,1) + r0.xyxy;
  r3.xyz = t0.SampleLevel(s0_s, r2.xy, 0).xyz;
  r2.xyz = t0.SampleLevel(s0_s, r2.zw, 0).xyz;
  r1.xyzw = r3.xyzx + r1.xyzx;
  r1.xyzw = r1.xyzw + r2.xyzx;
  r0.zw = cb0[0].zw + r0.xy;
  r0.xy = cb0[3].zw * r0.xy;
  r2.xyzw = t1.Gather(s1_s, r0.xy).xyzw;
  r0.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
  r0.xyzw = r1.xyzw + r0.xyzx;
  r0.xyzw = r0.xyzw * float4(0.25,0.25,0.25,0.25) + float4(0.00100000005,0.00100000005,0.00100000005,0.00100000005);
  r0.xyzw = max(float4(0.00100000005,0.00100000005,0.00100000005,0.00100000005), r0.xyzw);
  r0.xyzw = min(float4(50,50,50,50), r0.xyzw);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.wyzw
  r1.x = min(r2.x, r2.y);
  r1.x = min(r1.x, r2.z);
  r1.x = min(r1.x, r2.w);
  r1.y = r1.x * cb1[65].x + cb1[65].y;
  r1.x = r1.x * cb1[65].z + -cb1[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.y + r1.x;
  r1.xy = float2(-1000,-7000) + r1.xx;
  r1.xy = saturate(float2(0.00200000009,0.00100000005) * r1.xy);
  r2.xyzw = r1.xxxx * r0.wyzw;
  r0.xyzw = r1.yyyy * r0.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u2.xyzw, vThreadID.xyyy, r0.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, vThreadID.xyyy, r2.xyzw
  return;
}