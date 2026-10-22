// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[16];
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
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD6,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 6.28318548 * cb1[142].z;
  r0.x = sin(r0.x);
  r0.x = 1 + r0.x;
  r0.x = cb3[14].z * r0.x;
  r0.x = r0.x * 0.5 + cb3[14].y;
  r0.y = cb1[142].z * cb3[8].w + v2.x;
  r1.x = cb3[9].z * r0.y;
  r0.y = cb1[142].z * cb3[9].w + v2.y;
  r1.y = cb3[10].x * r0.y;
  r0.y = t0.SampleBias(s0_s, r1.xy, cb1[143].y).x;
  r0.y = -0.5 + r0.y;
  r0.y = r0.y + r0.y;
  r1.x = r0.y * r0.x;
  r0.xy = r0.yy * cb3[10].zw + v2.xy;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb1[143].y).x;
  r0.x = r0.x * cb3[11].y + -cb3[11].y;
  r0.x = saturate(cb3[11].z + r0.x);
  r0.y = cb1[142].z * cb3[12].z + v2.x;
  r2.x = cb3[13].y * r0.y;
  r0.y = cb1[142].z * cb3[13].z + v2.y;
  r2.y = cb3[13].w * r0.y;
  r1.y = 0;
  r0.yz = r2.xy + r1.xy;
  r0.y = t1.SampleBias(s1_s, r0.yz, cb1[143].y).y;
  r0.y = r0.y * cb3[14].w + -cb3[14].w;
  r0.y = saturate(cb3[15].x + r0.y);
  r0.z = saturate(v2.x * cb3[15].y + -cb3[11].w);
  r0.z = 1 + -r0.z;
  r0.y = r0.y * r0.z;
  r0.z = 1 + -v2.x;
  r0.z = saturate(-cb3[11].w + r0.z);
  r0.z = 1 + -r0.z;
  r0.x = r0.z * r0.y + r0.x;
  r0.x = min(1, r0.x);
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