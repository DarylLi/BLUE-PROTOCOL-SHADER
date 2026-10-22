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
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4;
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
  r2.xyz = t1.SampleLevel(s0_s, r0.zw, 0).xyz;
  r3.xyzw = cb0[0].zwzw * float4(1,-1,-1,1) + r0.xyxy;
  r0.xy = cb0[0].zw + r0.xy;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r1.xyzw = r4.xyzx + r1.xyzx;
  r4.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r1.xyzw = r4.xyzx + r1.xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r1.xyzw = r4.xyzx + r1.xyzw;
  r1.xyzw = r1.xyzw * float4(0.25,0.25,0.25,0.25) + float4(0.00100000005,0.00100000005,0.00100000005,0.00100000005);
  r1.xyzw = max(float4(0.00100000005,0.00100000005,0.00100000005,0.00100000005), r1.xyzw);
  r1.xyzw = min(float4(50,50,50,50), r1.xyzw);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyzw
  r1.xyz = t1.SampleLevel(s0_s, r3.xy, 0).xyz;
  r3.xyz = t1.SampleLevel(s0_s, r3.zw, 0).xyz;
  r1.xyzw = r2.xyzx + r1.xyzx;
  r1.xyzw = r1.xyzw + r3.xyzx;
  r0.xyzw = r1.xyzw + r0.xyzx;
  r0.xyzw = r0.xyzw * float4(0.25,0.25,0.25,0.25) + float4(0.00100000005,0.00100000005,0.00100000005,0.00100000005);
  r0.xyzw = max(float4(0.00100000005,0.00100000005,0.00100000005,0.00100000005), r0.xyzw);
  r0.xyzw = min(float4(50,50,50,50), r0.xyzw);
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, vThreadID.xyyy, r0.xyzw
  return;
}