// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[20];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD10,
  float4 v2 : TEXCOORD11,
  float4 v3 : TEXCOORD0,
  uint v4 : PRIMITIVE_ID0,
  float4 v5 : TEXCOORD6,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.SampleBias(s0_s, v3.xy, cb0[143].y).x;
  r0.x = cb1[15].w + r0.x;
  r0.x = -1 + r0.x;
  r0.x = saturate(ceil(r0.x));
  r0.y = 1 + -r0.x;
  r0.x = cb1[19].x * r0.y + r0.x;
  r0.x = -0.333299994 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}