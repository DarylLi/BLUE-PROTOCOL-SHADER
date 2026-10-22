// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[9];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[24];
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
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = min(asuint(cb0[23].xy), (uint2)vThreadID.xy);
  r0.zw = (uint2)r0.xy << int2(2,2);
  r0.zw = (uint2)r0.zw;
  r0.zw = cb0[13].xy + r0.zw;
  r0.zw = float2(0.5,0.5) + r0.zw;
  r0.zw = cb0[11].xy * r0.zw;
  r0.zw = min(cb0[23].zw, r0.zw);
  r1.xyzw = t0.SampleLevel(s0_s, r0.zw, 0).xyzw;
  r0.z = cmp(abs(r1.z) < 0.999000013);
  r2.xyz = r0.zzz ? float3(1,0,0) : float3(0,1,0);
  r3.xyz = r2.xyz * r1.yzx;
  r2.xyz = r2.zxy * r1.zxy + -r3.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r3.xyz = r2.yzx * r1.zxy;
  r3.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r0.x = mad((int)r0.y, asint(cb0[12].z), (int)r0.x);
  r0.yzw = float3(0,0,0);
  r2.w = 0;
  while (true) {
    r3.w = cmp((uint)r2.w >= 9);
    if (r3.w != 0) break;
    r3.w = (int)r2.w * asint(cb0[12].z);
    r3.w = mad((int)r3.w, asint(cb0[12].w), (int)r0.x);
    r3.w = t1.Load(r3.w).x;
    r4.xyz = cb1[r2.w+0].yyy * r3.xyz;
    r4.xyz = cb1[r2.w+0].xxx * r2.xyz + r4.xyz;
    r4.xyz = cb1[r2.w+0].zzz * r1.xyz + r4.xyz;
    r0.yzw = r3.www * r4.xyz + r0.yzw;
    r2.w = (int)r2.w + 1;
  }
  r0.x = 0.111111112 * cb0[11].z;
  r1.xyz = r0.yzw * r0.xxx;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyzw
  return;
}