// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[41];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective sample float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyzw = float4(0,0,0,0);
  r0.xy = -cb1[152].zw * cb0[34].zw + v0.xy;
  r0.xy = max(cb0[40].xy, r0.xy);
  r0.xy = min(cb0[40].zw, r0.xy);
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  oDepth = r0.x;
  return;
}