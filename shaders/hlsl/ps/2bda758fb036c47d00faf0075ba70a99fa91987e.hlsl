// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TEXCOORD0,
  float3 v3 : TEXCOORD7,
  float4 v4 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[18].x + cb1[18].y;
  r0.x = cb1[18].z + r0.x;
  r0.x = frac(r0.x);
  r0.x = cb0[142].z + r0.x;
  r0.x = cb2[2].x * r0.x;
  r0.x = cb3[7].x * r0.x;
  r1.x = cb3[7].w * r0.x;
  r1.y = cb3[8].x * r0.x;
  r0.x = cb3[8].z * v2.x + cb3[8].w;
  r0.y = v2.y * cb3[9].x + cb3[9].y;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r0.z = cb3[8].y * cb0[142].z;
  r0.z = 0.25 * r0.z;
  sincos(r0.z, r2.x, r3.x);
  r4.x = -r2.x;
  r4.y = r3.x;
  r4.z = r2.x;
  r2.y = dot(r4.zy, r0.xy);
  r2.x = dot(r4.yx, r0.xy);
  r0.xy = r2.xy + r1.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.x = t0.SampleBias(s0_s, r0.xy, cb0[143].y).w;
  r0.yz = -cb0[129].xy + v4.xy;
  r1.xy = cb0[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t1.SampleBias(s1_s, r0.yz, cb0[143].y).x;
  r0.zw = (uint2)r1.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.y = saturate(r0.y * 0.166666672 + 0.5);
  r0.x = r0.x * r0.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}