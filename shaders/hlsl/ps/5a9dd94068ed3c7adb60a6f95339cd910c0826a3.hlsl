// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[133];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[132].zw * v1.xy;
  r1.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r0.z = cmp(r1.w < 0.00999999978);
  if (r0.z != 0) discard;
  r0.x = t1.SampleLevel(s1_s, r0.xy, 0).x;
  o0.xyzw = r1.xyzw;
  oDepth = r0.x;
  return;
}