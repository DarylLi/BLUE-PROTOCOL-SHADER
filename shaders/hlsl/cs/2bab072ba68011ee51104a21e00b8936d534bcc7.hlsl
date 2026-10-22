// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 8
  r0.xyz = (uint3)vThreadID.xyz;
  r1.xyz = float3(0.5,0.5,0.5) * cb0[2].xyz;
  r0.xyz = r0.xyz * cb0[2].xyz + r1.xyz;
  r1.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = sqrt(r1.z);
  r1.z = rsqrt(r1.z);
  r1.xy = r1.xy * r1.zz;
  r2.x = min(1, r1.w);
  r2.y = 1 + -r0.z;
  r0.w = 1 + -r0.z;
  r1.zw = cb0[3].zz ? r2.xy : r0.yw;
  r0.xyz = t1.SampleLevel(s1_s, r0.xyz, 0).xyz;
  r2.xy = r1.zw * cb0[1].xy + cb0[1].zw;
  r1.zw = r1.zw * cb0[0].xy + cb0[0].zw;
  r3.xyzw = t0.SampleLevel(s0_s, r1.zw, 0).xyzw;
  r2.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
  r2.xyzw = r2.xyzw + -r3.xyzw;
  r2.xyzw = cb0[2].wwww * r2.xyzw + r3.xyzw;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyz = r2.xyz * r2.www;
  r3.xyz = float3(0,0,1) * r2.yyy;
  r4.z = 0;
  r4.xy = cb0[3].zz ? r1.xy : float2(0,1);
  r1.xyzw = float4(1,1,0,0) * r1.yxxy;
  r2.xyw = r2.xxx * r4.xyz + r3.xyz;
  r3.yz = r1.yw;
  r3.x = 0;
  r1.y = 0;
  r1.xyz = r1.xyz + -r3.xyz;
  r1.xyz = cb0[3].zzz ? r1.xyz : float3(1,0,0);
  r1.xyz = r2.zzz * r1.xyz + r2.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  r1.w = 0.00100000005 + r0.w;
  r0.w = cb0[3].x * r0.w;
  r0.w = min(cb0[3].y, r0.w);
  r0.xyz = r0.xyz / r1.www;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.w = 0;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
  return;
}