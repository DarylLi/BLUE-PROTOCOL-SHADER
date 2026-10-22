// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  out float4 o0 : TEXCOORD0,
  out float o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb0[1].xy + cb0[1].zw;
  o0.xy = cb0[2].zw * r0.xy;
  r0.xy = v0.xy * cb0[0].xy + cb0[0].zw;
  r0.xy = cb0[2].xy * r0.xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = float2(1,-1) * r0.xy;
  o0.zw = r0.xy;
  o2.xy = r0.xy;
  r0.x = t0.Load(float4(0,0,0,0)).x;
  o1.x = r0.x;
  o2.zw = v0.zw;
  return;
}