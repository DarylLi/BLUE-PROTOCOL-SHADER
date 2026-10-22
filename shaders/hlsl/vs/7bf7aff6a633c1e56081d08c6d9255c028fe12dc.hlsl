// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  out float4 o0 : TEXCOORD0,
  out float2 o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb1[1].xy + cb1[1].zw;
  r0.xy = cb1[2].zw * r0.xy;
  o0.xyzw = cb0[27].zwzw * float4(1,0,0,1) + r0.xyxy;
  o1.xy = r0.xy;
  r0.xy = v0.xy * cb1[0].xy + cb1[0].zw;
  r0.xy = cb1[2].xy * r0.xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  o2.xy = float2(1,-1) * r0.xy;
  o2.zw = v0.zw;
  return;
}