// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[133];
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
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.xy = (uint2)vThreadID.xy << int2(1,1);
  r0.xy = (uint2)r0.xy;
  r0.xy = cb0[129].xy + r0.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xy = cb0[132].zw * r0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.xyw = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.xyw = r0.xyw * float3(2,2,2) + float3(-1,-1,-1);
  r1.x = r0.z * cb0[65].z + -cb0[65].w;
  r0.z = r0.z * cb0[65].x + cb0[65].y;
  r1.x = 1 / r1.x;
  r1.w = r1.x + r0.z;
  r0.z = dot(r0.xyw, r0.xyw);
  r0.z = rsqrt(r0.z);
  r1.xyz = r0.xyw * r0.zzz;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyzw
  return;
}