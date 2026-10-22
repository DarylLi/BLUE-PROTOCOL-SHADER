// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float4 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float2 v4 : ATTRIBUTE4,
  float2 v5 : ATTRIBUTE5,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyzw = v0.xyzw;
  o1.xyzw = v1.xyzw;
  o2.xyzw = v2.xyzw;
  o3.xyzw = v3.xyzw;
  r0.xy = v5.xy * cb0[0].xy + v4.xy;
  o4.xy = r0.xy * float2(2,-2) + float2(-1,1);
  o4.zw = float2(0,1);
  return;
}