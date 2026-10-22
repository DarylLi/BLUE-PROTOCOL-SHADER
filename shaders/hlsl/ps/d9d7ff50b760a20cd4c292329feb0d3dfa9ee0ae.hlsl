// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[91];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD6,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb1[129].xy + v6.xy;
  r0.zw = cb1[152].xx + r0.xy;
  r0.xy = float2(0.015625,0.015625) * r0.xy;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb1[143].y).x;
  r0.yz = (uint2)r0.zw;
  r0.z = (uint)r0.z << 1;
  r0.y = (int)r0.z + (int)r0.y;
  r0.y = (uint)r0.y % 5;
  r0.y = (uint)r0.y;
  r0.x = r0.y + r0.x;
  r0.y = saturate(cb1[142].w * cb2[0].x + cb2[0].y);
  r0.z = r0.x * 0.166666672 + r0.y;
  r0.x = 0.166666672 * r0.x;
  r0.x = cb3[89].w * r0.y + r0.x;
  r0.xy = float2(-0.5,-0.5) + r0.xz;
  r0.z = -cb3[90].z + v2.w;
  r0.y = r0.z * r0.y;
  r0.z = t0.SampleBias(s0_s, v3.xy, cb1[143].y).x;
  r0.z = -1 + r0.z;
  r0.w = cb3[76].w + r0.z;
  r0.z = cb3[78].x + r0.z;
  r0.zw = saturate(ceil(r0.zw));
  r1.x = 1 + -r0.w;
  r0.w = cb3[90].x * r1.x + r0.w;
  r0.y = r0.w * r0.y;
  r0.w = 1 + -r0.z;
  r0.z = cb3[90].w * r0.w + r0.z;
  r0.y = r0.y * r0.z;
  r0.y = saturate(ceil(r0.y));
  r0.x = r0.x * r0.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = cb0[2].xyzw;
  return;
}