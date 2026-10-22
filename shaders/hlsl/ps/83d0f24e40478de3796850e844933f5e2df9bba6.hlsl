// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
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
  nointerpolation float4 v3 : COLOR2,
  float4 v4 : TEXCOORD6,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z * cb3[9].z + v2.x;
  r0.x = r0.x * cb3[10].y + v3.w;
  r0.z = cb1[142].z * cb3[10].z + v2.y;
  r0.y = r0.z * cb3[10].w + v3.w;
  r0.x = t0.SampleBias(s0_s, r0.xy, cb1[143].y).x;
  r0.yz = float2(0.5,0.5) + -v2.xy;
  r0.w = dot(r0.yz, r0.yz);
  r0.w = sqrt(r0.w);
  r0.yz = r0.yz / r0.ww;
  r0.xy = r0.yz * r0.xx;
  r0.xy = r0.xy * cb3[11].yy + v2.xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = -r0.x * 2 + 1;
  r0.y = cb3[11].z * r0.x;
  r0.y = r0.y * r0.y;
  r0.y = 1.44269514 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = 1 / r0.y;
  r0.z = cmp(r0.x >= 0);
  r0.x = cmp(9.99999975e-006 < abs(r0.x));
  r0.y = r0.z ? -r0.y : -1;
  r0.x = r0.x ? r0.y : -1;
  r0.xy = float2(1,0.996078432) + r0.xx;
  r0.y = cmp(r0.y < 0);
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
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