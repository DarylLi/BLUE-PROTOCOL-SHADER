// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[83];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[28];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float v4 : TEXCOORD6,
  float w4 : TEXCOORD8,
  float3 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[142].z * cb3[65].x + v3.x;
  r0.x = cb3[65].w * r0.x;
  r0.z = cb0[142].z * cb3[66].x + v3.y;
  r0.y = cb3[66].y * r0.z;
  r0.x = t2.SampleBias(s2_s, r0.xy, cb0[143].y).x;
  r0.x = -0.5 + r0.x;
  r0.x = r0.x + r0.x;
  r0.xy = cb3[67].xz * r0.xx;
  r0.z = t3.SampleBias(s3_s, v3.xy, cb0[143].y).y;
  r0.z = r0.z * cb3[67].w + cb3[68].x;
  r0.xy = r0.xy * r0.zz + v3.xy;
  r0.x = t0.SampleBias(s0_s, r0.xy, cb0[143].y).x;
  r0.x = -1 + r0.x;
  r0.y = cb3[69].y + r0.x;
  r0.x = cb3[70].z + r0.x;
  r0.xy = saturate(ceil(r0.xy));
  r0.z = 1 + -r0.y;
  r0.y = cb3[81].w * r0.z + r0.y;
  r0.z = t1.SampleBias(s1_s, v3.xy, cb0[143].y).w;
  r0.z = cmp(r0.z >= cb3[82].x);
  r0.z = r0.z ? 1.000000 : 0;
  r0.w = -cb3[82].z + v2.w;
  r0.z = r0.z * r0.w;
  r0.y = r0.y * r0.z;
  r0.z = 1 + -r0.x;
  r0.x = cb3[82].w * r0.z + r0.x;
  r0.x = r0.y * r0.x;
  r0.x = saturate(ceil(r0.x));
  r0.yz = -cb0[129].xy + v6.xy;
  r1.xy = cb0[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t4.SampleBias(s4_s, r0.yz, cb0[143].y).x;
  r0.zw = (uint2)r1.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.y = 0.166666672 * r0.y;
  r0.z = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r0.y = cb3[81].z * r0.z + r0.y;
  r0.y = -0.5 + r0.y;
  r0.x = r0.y * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  oDepth = saturate(v4.x * cb2[27].w + w4.x);
  return;
}