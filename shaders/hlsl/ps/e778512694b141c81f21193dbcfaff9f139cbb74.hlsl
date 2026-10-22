// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.xyz = log2(r0.xyz);
  o0.w = r0.w;
  r0.xyz = cb0[2].xxx * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(float3(1,1,1), r0.xyz);
  r1.xyz = cb0[0].xyz * r0.xyz;
  r0.xyz = -r0.xyz * cb0[0].xyz + cb0[1].xyz;
  o0.xyz = cb0[1].www * r0.xyz + r1.xyz;
  return;
}