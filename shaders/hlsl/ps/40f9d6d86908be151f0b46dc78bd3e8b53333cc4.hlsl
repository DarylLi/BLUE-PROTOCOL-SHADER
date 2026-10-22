// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[75];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD6,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z * cb4[56].y + v3.x;
  r0.z = cb1[142].z * cb4[57].y + v3.y;
  r0.xy = cb4[57].xz * r0.xz;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb1[143].y).x;
  r0.x = -0.5 + r0.x;
  r0.x = r0.x + r0.x;
  r0.xy = cb4[58].yw * r0.xx;
  r0.z = t2.SampleBias(s2_s, v3.xy, cb1[143].y).y;
  r0.z = r0.z * cb4[59].x + cb4[59].y;
  r0.xy = r0.xy * r0.zz + v3.xy;
  r0.x = t0.SampleBias(s0_s, r0.xy, cb1[143].y).x;
  r0.x = -1 + r0.x;
  r0.y = cb4[60].z + r0.x;
  r0.x = cb4[61].w + r0.x;
  r0.xy = saturate(ceil(r0.xy));
  r0.z = 1 + -r0.y;
  r0.y = cb4[73].y * r0.z + r0.y;
  r0.y = cb4[73].w * r0.y;
  r0.z = 1 + -r0.x;
  r0.x = cb4[74].x * r0.z + r0.x;
  r0.x = r0.y * r0.x;
  r0.y = saturate(cb1[142].w * cb2[0].x + cb2[0].y);
  r0.y = cb4[73].x * r0.y;
  r0.x = saturate(r0.y * r0.x);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = v4.x * cb3[11].y + cb0[1].z;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}