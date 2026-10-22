// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[6];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[144];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD6,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[45].xyw * v6.yyy;
  r0.xyz = v6.xxx * cb1[44].xyw + r0.xyz;
  r0.xyz = v6.zzz * cb1[46].xyw + r0.xyz;
  r0.xyz = cb1[47].xyw + r0.xyz;
  r0.xy = r0.xy / r0.zz;
  r0.xy = -cb1[70].xy + r0.xy;
  r0.xy = r0.xy / cb3[5].xx;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb1[143].y).x;
  r0.x = cb3[5].y + r0.x;
  r0.y = cb3[5].z + -cb3[5].w;
  r0.x = saturate(r0.x * r0.y + cb3[5].w);
  r1.x = cb3[4].y * v2.x;
  r1.y = v2.y;
  r0.y = t0.SampleBias(s0_s, r1.xy, cb1[143].y).w;
  r0.x = r0.x * r0.y;
  r0.y = 0.49000001 + v2.x;
  r0.y = saturate(r0.y * 51 + -25);
  r0.z = 1.49000001 + -v2.x;
  r0.z = saturate(r0.z * 51 + -25);
  r0.y = r0.y * r0.z;
  r0.x = saturate(r0.x * r0.y);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = v4.x * cb2[11].y + cb0[1].x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}