// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.SampleLevel(s0_s, v0.xy, 0).w;
  r0.x = 255 * r0.x;
  r0.x = round(r0.x);
  r0.x = (uint)r0.x;
  r0.x = (int)r0.x & 15;
  r0.y = cmp(0 < (uint)r0.x);
  r0.x = cmp((int)r0.x != 14);
  r0.x = r0.x ? r0.y : 0;
  r0.y = cmp(cb0[0].x < 1);
  r0.y = r0.y ? 0.400000006 : 0.0399999991;
  o0.xyz = r0.xxx ? r0.yyy : 0;
  o0.w = 0;
  return;
}