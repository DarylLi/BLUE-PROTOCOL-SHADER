// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[4].xxx * cb1[1].xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  o0.xyz = cb0[135].yyy * r0.xyz;
  r0.x = cb1[4].w * v2.x + cb1[5].x;
  r0.y = v2.y * cb1[5].y + cb1[5].z;
  r1.xyzw = t0.SampleBias(s0_s, r0.xy, cb0[143].y).xyzw;
  r0.xy = t1.SampleBias(s1_s, r0.xy, cb0[143].y).xy;
  r1.w = saturate(r1.w);
  o0.w = r1.w;
  r0.x = saturate(cb1[6].y + r0.x);
  o1.x = saturate(r0.y);
  o1.z = r0.x * cb0[139].y + cb0[139].x;
  o1.y = saturate(cb1[6].x);
  o1.w = r1.w;
  o2.w = r1.w;
  r0.x = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xxx + -r1.xyz;
  r0.xyz = cb1[5].www * r0.xyz + r1.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r0.xyz);
  r0.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r1.xyz = float3(0.577350259,0.577350259,0.577350259) * r0.zxy;
  r1.xyz = r0.zxy * float3(0.577350259,0.577350259,0.577350259) + -r1.zxy;
  sincos(cb1[4].z, r2.x, r3.x);
  r1.xyz = r2.xxx * r1.xyz;
  r0.xyz = r0.xyz * r3.xxx + r1.xyz;
  r0.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r0.xyz = cb1[3].xyz * r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  o2.xyz = min(float3(1,1,1), r0.xyz);
  return;
}