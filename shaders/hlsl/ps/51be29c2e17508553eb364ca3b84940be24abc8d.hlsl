// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[14];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD6,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v4.z;
  r0.y = 1;
  r0.xy = v4.ww * r0.xy;
  r0.z = r0.x * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r0.x = r0.x * cb1[65].x + cb1[65].y;
  r0.x = r0.x + r0.z;
  r0.z = cmp(cb1[31].w < 1);
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = r0.x / cb4[13].x;
  r0.yzw = -cb1[129].xxy + v4.xxy;
  r1.xy = cb1[152].xx + r0.zw;
  r1.xy = (uint2)r1.xy;
  r1.y = (uint)r1.y << 1;
  r1.x = (int)r1.y + (int)r1.x;
  r1.x = (uint)r1.x % 5;
  r1.x = (uint)r1.x;
  r0.y = r0.y * cb1[130].z + -0.469999999;
  r0.yzw = float3(4.93230057,0.015625,0.015625) * r0.yzw;
  r0.y = cos(r0.y);
  r0.y = 0.899999976 + r0.y;
  r0.y = saturate(0.555555582 * r0.y);
  r0.y = cb4[13].z + -r0.y;
  r0.z = t1.SampleBias(s1_s, r0.zw, cb1[143].y).x;
  r0.z = r1.x + r0.z;
  r0.z = 0.166666672 * r0.z;
  r0.x = r0.x * r0.y + r0.z;
  r0.x = saturate(-0.5 + r0.x);
  r0.y = cb2[18].x + cb2[18].y;
  r0.y = cb2[18].z + r0.y;
  r0.y = frac(r0.y);
  r0.y = cb1[142].z + r0.y;
  r0.y = cb3[2].x * r0.y;
  r0.y = cb4[7].x * r0.y;
  r1.x = cb4[7].w * r0.y;
  r1.y = cb4[8].x * r0.y;
  r2.x = cb4[8].z * v2.x + cb4[8].w;
  r2.y = v2.y * cb4[9].x + cb4[9].y;
  r0.yz = float2(-0.5,-0.5) + r2.xy;
  r0.w = cb4[8].y * cb1[142].z;
  r0.w = 0.25 * r0.w;
  sincos(r0.w, r2.x, r3.x);
  r4.x = -r2.x;
  r4.y = r3.x;
  r4.z = r2.x;
  r2.y = dot(r4.zy, r0.yz);
  r2.x = dot(r4.yx, r0.yz);
  r0.yz = r2.xy + r1.xy;
  r0.yz = float2(0.5,0.5) + r0.yz;
  r0.y = t0.SampleBias(s0_s, r0.yz, cb1[143].y).w;
  r0.x = r0.y * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = cb0[11].xyzw;
  return;
}