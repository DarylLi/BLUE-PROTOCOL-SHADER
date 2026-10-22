// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[30];
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
  r0.w = dot(r0.xyz, float3(0.333333343,0.333333343,0.333333343));
  o0.xyz = r0.xyz;
  r0.x = max(cb0[29].z, r0.w);
  r0.x = log2(r0.x);
  r0.x = max(-10, r0.x);
  r0.x = min(20, r0.x);
  o0.w = cb0[29].x * r0.x + cb0[29].y;
  return;
}