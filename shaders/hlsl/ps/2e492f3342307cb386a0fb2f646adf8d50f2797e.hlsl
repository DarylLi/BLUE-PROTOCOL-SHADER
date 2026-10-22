// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
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
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD10,
  float4 v2 : TEXCOORD11,
  float4 v3 : COLOR0,
  float4 v4 : TEXCOORD0,
  float4 v5 : TEXCOORD6,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb0[129].xy + v0.xy;
  r0.zw = cb0[152].xx + r0.xy;
  r0.xy = float2(0.015625,0.015625) * r0.xy;
  r0.x = t0.SampleBias(s0_s, r0.xy, cb0[143].y).x;
  r0.yz = (uint2)r0.zw;
  r0.z = (uint)r0.z << 1;
  r0.y = (int)r0.z + (int)r0.y;
  r0.y = (uint)r0.y % 5;
  r0.y = (uint)r0.y;
  r0.x = r0.y + r0.x;
  r0.y = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r0.z = r0.x * 0.166666672 + r0.y;
  r0.x = 0.166666672 * r0.x;
  r0.x = cb2[5].w * r0.y + r0.x;
  r0.xy = float2(-0.5,-0.5) + r0.xz;
  r0.z = cb2[6].x + v3.w;
  r0.z = -cb2[6].y + r0.z;
  r0.y = r0.z * r0.y;
  r0.y = saturate(ceil(r0.y));
  r0.x = r0.x * r0.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}