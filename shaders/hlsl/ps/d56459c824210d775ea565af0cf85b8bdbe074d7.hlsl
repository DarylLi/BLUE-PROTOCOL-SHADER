// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  linear noperspective float2 w0 : TEXCOORD3,
  linear noperspective float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float2 v3 : TEXCOORD4,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t0.Sample(s0_s, v0.xy).xyz;
  r0.xyz = cb1[135].zzz * r0.xyz;
  r0.xyz = v1.xxx * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb0[27].xxx * r0.xyz;
  o0.xyz = exp2(r0.xyz);
  o0.w = 0;
  return;
}