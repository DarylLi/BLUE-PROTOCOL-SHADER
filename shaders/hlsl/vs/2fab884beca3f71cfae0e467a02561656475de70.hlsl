// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : ATTRIBUTE0,
  out float2 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  o0.xy = v0.xy * float2(1,-1) + float2(0,1);
  o1.xy = v0.xy * cb0[0].xy + cb0[0].zw;
  o1.zw = float2(0,1);
  return;
}