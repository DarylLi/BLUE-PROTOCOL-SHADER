// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[54];
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
  r0.xy = (uint2)vThreadID.xy;
  r0.zw = asuint(cb0[53].zw);
  r0.xy = r0.xy + r0.zw;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.zw = cb0[52].xy * r0.xy;
  r0.xy = r0.xy * cb0[52].xy + float2(-0.5,-0.5);
  r0.x = max(abs(r0.x), abs(r0.y));
  r0.x = cmp(r0.x >= 0.5);
  if (r0.x != 0) {
    return;
  }
  r0.x = t0.Load(float4(0,0,0,0)).x;
  r0.yzw = t1.SampleLevel(s0_s, r0.zw, 0).xyz;
  r0.yzw = cb1[135].zzz * r0.yzw;
  r0.xyz = r0.yzw * r0.xxx;
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb0[27].xxx * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xyzw = (int4)vThreadID.xyyy + asint(cb0[53].zwww);
  r0.w = 0;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzw, r0.xyzw
  return;
}