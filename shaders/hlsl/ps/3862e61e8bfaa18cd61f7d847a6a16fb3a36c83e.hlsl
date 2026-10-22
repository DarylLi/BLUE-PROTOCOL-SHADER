// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t0.Sample(s0_s, v0.xy).xyz;
  r0.xyz = min(float3(65536,65536,65536), r0.xyz);
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = -cb0[34].x + r0.w;
  r0.w = saturate(0.5 * r0.w);
  o0.xyz = r0.www * r0.xyz;
  o0.w = 0;
  return;
}