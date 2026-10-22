// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  uint v3 : PRIMITIVE_ID0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb0[45].xyw * v4.yyy;
  r0.xyz = v4.xxx * cb0[44].xyw + r0.xyz;
  r0.xyz = v4.zzz * cb0[46].xyw + r0.xyz;
  r0.xyz = cb0[47].xyw + r0.xyz;
  r0.xy = r0.xy / r0.zz;
  r0.xy = -cb0[70].xy + r0.xy;
  r0.xy = r0.xy / cb1[5].xx;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb0[143].y).x;
  r0.x = cb1[5].y + r0.x;
  r0.y = cb1[5].z + -cb1[5].w;
  r0.x = saturate(r0.x * r0.y + cb1[5].w);
  r1.x = cb1[4].y * v2.x;
  r1.y = v2.y;
  r1.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[143].y).xyzw;
  r0.x = r1.w * r0.x;
  o2.xyz = saturate(cb1[3].xyz * r1.xyz);
  r0.y = 0.49000001 + v2.x;
  r0.y = saturate(r0.y * 51 + -25);
  r0.z = 1.49000001 + -v2.x;
  r0.z = saturate(r0.z * 51 + -25);
  r0.y = r0.y * r0.z;
  r0.x = saturate(r0.x * r0.y);
  o0.w = r0.x;
  r0.yzw = cb1[4].xxx * cb1[1].xyz;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  o0.xyz = cb0[135].yyy * r0.yzw;
  o1.w = r0.x;
  o2.w = r0.x;
  r0.x = saturate(cb1[4].z);
  o1.z = r0.x * cb0[139].y + cb0[139].x;
  o1.xy = float2(0,0.5);
  return;
}