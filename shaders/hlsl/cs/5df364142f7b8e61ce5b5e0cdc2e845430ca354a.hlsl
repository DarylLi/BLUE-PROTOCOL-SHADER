// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 32, 1, 1
  r0.x = mad((int)vThreadGroupID.x, 32, (int)vThreadIDInGroup.x);
  r0.y = vThreadGroupID.y;
  r1.xy = (int2)r0.xy + asint(cb0[2].xy);
  r0.y = cmp((uint)r1.x >= asuint(cb0[2].z));
  if (r0.y != 0) {
    return;
  }
  r0.yz = asint(-cb0[2].xy) + asint(cb0[2].zw);
  r0.x = (uint)r0.x;
  r0.yz = (uint2)r0.yz;
  r0.x = r0.x / r0.y;
  r0.w = (uint)vThreadGroupID.y;
  r0.y = r0.w / r0.z;
  r0.zw = asint(-cb0[0].xy) + asint(cb0[0].zw);
  r0.zw = (uint2)r0.zw;
  r2.xy = asuint(cb0[0].xy);
  r0.xy = r0.xy * r0.zw + r2.xy;
  r0.zw = asuint(cb0[1].xy);
  r0.zw = float2(1,1) / r0.zw;
  r0.xy = r0.xy * r0.zw;
  r1.zw = float2(0,0);
  r2.xyzw = t0.Load(r1.xyz).xyzw;
  r3.xyz = t2.Load(float4(0,0,0,0)).xyz;
  r4.xyz = t2.Load(float4(1,0,0,0)).xyz;
  r0.z = max(r4.y, r4.z);
  r0.z = max(r4.x, r0.z);
  r4.xyz = r4.xyz + r3.xyz;
  r0.w = max(r4.y, r4.z);
  r0.w = max(r4.x, r0.w);
  r4.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.xyz = r4.xyz * r0.zzz;
  r0.xyz = r3.xyz * r2.xyz + r0.xyz;
  r2.xyz = r0.xyz / r0.www;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzw
  return;
}