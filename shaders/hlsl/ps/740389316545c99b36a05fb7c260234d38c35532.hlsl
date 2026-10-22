// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t0.SampleBias(s0_s, v2.xy, cb0[143].y).xyz;
  r1.xyz = cb1[1].xyz + -r0.yxz;
  r0.xyz = cb1[2].xxx * r1.xyz + r0.yxz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 1;
  o1.z = cb0[139].y * 0.5 + cb0[139].x;
  o1.xyw = float3(0,0.5,1);
  o2.xyzw = float4(0,0,0,1);
  return;
}