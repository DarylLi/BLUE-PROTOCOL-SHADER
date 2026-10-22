// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[16];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
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
  uint v2 : PRIMITIVE_ID0,
  float4 v3 : TEXCOORD6,
  float3 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb1[129].xy + v5.xy;
  r0.zw = cb1[152].xx + r0.xy;
  r0.xy = float2(0.015625,0.015625) * r0.xy;
  r0.x = t0.SampleBias(s0_s, r0.xy, cb1[143].y).x;
  r0.yz = (uint2)r0.zw;
  r0.z = (uint)r0.z << 1;
  r0.y = (int)r0.z + (int)r0.y;
  r0.y = (uint)r0.y % 5;
  r0.y = (uint)r0.y;
  r0.x = r0.y + r0.x;
  r0.x = cb2[14].y * r0.x;
  r0.x = 0.166666672 * r0.x;
  r0.y = cmp(cb1[31].w < 1);
  r1.x = v5.z;
  r1.y = 1;
  r0.zw = v5.ww * r1.xy;
  r1.x = r0.z * cb1[65].z + -cb1[65].w;
  r1.x = 1 / r1.x;
  r1.y = r0.z * cb1[65].x + cb1[65].y;
  r1.x = r1.y + r1.x;
  r0.y = r0.y ? r0.w : r1.x;
  r0.y = r0.y / cb2[14].z;
  r1.x = log2(r0.y);
  r0.y = cmp(0 >= r0.y);
  r1.x = cb2[14].w * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb2[15].x * r1.x;
  r1.x = max(1, r1.x);
  r0.y = r0.y ? 1 : r1.x;
  r0.x = r0.x * r0.y + r0.w;
  r0.x = r0.z / r0.x;
  oDepthLE = min(v5.z, r0.x);
  o0.xyzw = cb0[1].xyzw;
  return;
}