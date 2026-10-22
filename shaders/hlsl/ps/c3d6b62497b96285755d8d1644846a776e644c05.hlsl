// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.Sample(s0_s, v0.xy).w;
  o0.w = v1.w * r0.x;
  o0.xyz = v1.xyz;
  o1.xyzw = float4(0,0,0,0);
  return;
}