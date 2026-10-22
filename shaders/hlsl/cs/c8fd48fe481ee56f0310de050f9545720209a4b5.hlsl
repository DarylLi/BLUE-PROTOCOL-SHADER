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
  float4 cb0[35];
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
  r0.zw = asuint(cb0[29].xy);
  r0.xy = r0.xy + r0.zw;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.zw = cb0[27].zw * r0.xy;
  r0.xy = r0.xy * cb0[27].zw + float2(-0.5,-0.5);
  r0.x = max(abs(r0.x), abs(r0.y));
  r0.x = cmp(r0.x >= 0.5);
  if (r0.x != 0) {
    return;
  }
  r0.x = t0.Load(float4(0,0,0,0)).x;
  r0.yzw = t1.SampleLevel(s0_s, r0.zw, 0).xyz;
  r0.yzw = cb1[135].zzz * r0.yzw;
  r0.yzw = min(float3(65536,65536,65536), r0.yzw);
  r1.x = dot(r0.yzw, float3(0.300000012,0.589999974,0.109999999));
  r0.x = r1.x * r0.x + -cb0[34].x;
  r0.x = saturate(0.5 * r0.x);
  r0.xyz = r0.xxx * r0.yzw;
  r0.xyz = cb1[135].yyy * r0.xyz;
  r0.w = 0;
  r1.xyzw = (int4)vThreadID.xyyy + asint(cb0[29].xyyy);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzw, r0.xyzw
  return;
}