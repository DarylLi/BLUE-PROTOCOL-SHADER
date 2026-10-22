// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[39];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  linear noperspective float4 v1 : TEXCOORD1,
  linear noperspective float4 v2 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t0.SampleLevel(s0_s, v1.zw, 0).xyz;
  r0.xyz = cb0[37].xyz * r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v1.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[36].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v2.xy, 0).xyz;
  o0.xyz = r1.xyz * cb0[38].xyz + r0.xyz;
  r0.x = t0.SampleLevel(s0_s, v0.xy, 0).w;
  o0.w = r0.x;
  return;
}