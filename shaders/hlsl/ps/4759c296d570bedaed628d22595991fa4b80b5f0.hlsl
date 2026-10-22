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
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb0[0].x);
  r0.xyzw = t0.SampleLevel(s0_s, v0.xy, r0.x).xyzw;
  r0.xyz = log2(r0.xyz);
  o0.w = r0.w;
  r0.xyz = float3(0.454545468,0.454545468,0.454545468) * r0.xyz;
  o0.xyz = exp2(r0.xyz);
  return;
}