// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * cb0[0].xy + cb0[0].zw;
  r0.xy = cb0[2].xy * r0.xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  o0.xy = float2(1,-1) * r0.xy;
  o0.zw = v0.zw;
  o1.xy = v0.xy;
  o1.zw = float2(0,0);
  return;
}