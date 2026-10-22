// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[133];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[130].xy + cb0[129].xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r0.xy = cb0[132].zw * r0.xy;
  r0.xy = min(v0.xy, r0.xy);
  r0.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
  o0.xyzw = r0.xyzw * float4(1,1,1,-1) + float4(0,0,0,1);
  return;
}