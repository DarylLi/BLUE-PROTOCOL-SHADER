// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[32];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[153];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float3 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = floor(v5.xy);
  r0.x = dot(r0.xy, float2(347.834503,3343.28369));
  r0.x = cos(r0.x);
  r0.x = 1000 * r0.x;
  r0.x = frac(r0.x);
  r0.y = 1 + v2.w;
  r0.y = cmp(r0.x < r0.y);
  r0.x = cmp(v2.w < r0.x);
  r0.z = cmp(v2.w < 0);
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = cmp((int)r0.x == 0);
  r0.y = cmp(0.00100000005 < abs(v2.w));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) discard;
  r0.xyz = -cb0[70].xyz + v4.xyz;
  r0.xyz = -cb0[67].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r0.x / cb1[30].y;
  r0.x = saturate(r0.x * cb1[31].x + -cb1[30].w);
  r0.yz = -cb0[129].xy + v5.xy;
  r1.xy = cb0[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t1.SampleBias(s1_s, r0.yz, cb0[143].y).x;
  r0.zw = (uint2)r1.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.z = 0.166666672 * r0.y;
  r0.y = saturate(r0.y * 0.166666672 + 0.5);
  r0.y = v2.y * r0.y;
  r0.x = r0.x * 3 + r0.z;
  r0.x = -1.5 + r0.x;
  r0.x = r0.y * r0.x;
  r0.y = cb0[142].z * cb1[25].z + v3.x;
  r1.x = cb1[26].y * r0.y;
  r0.y = cb0[142].z * cb1[26].z + v3.y;
  r1.y = cb1[26].w * r0.y;
  r0.y = t0.SampleBias(s0_s, r1.xy, cb0[143].y).x;
  r0.y = r0.y * cb1[27].y + -cb1[27].y;
  r0.y = saturate(cb1[28].x * cb1[27].w + r0.y);
  r0.x = r0.x * r0.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}