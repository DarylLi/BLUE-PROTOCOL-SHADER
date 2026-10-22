// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  float2 v2 : ATTRIBUTE2,
  float2 v3 : ATTRIBUTE3,
  float v4 : ATTRIBUTE4,
  float v5 : ATTRIBUTE5,
  out float4 o0 : SV_Position0,
  out float4 o1 : COLOR0,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD2)
{
  o0.xy = v0.xy;
  o0.zw = float2(0.5,1);
  o1.xyzw = v4.xxxx;
  o2.xy = v1.xy * cb0[0].xy + cb0[0].zw;
  o2.zw = v1.xy;
  o3.xy = v2.xy * cb0[0].xy + cb0[0].zw;
  o3.zw = v2.xy;
  o4.xy = v3.xy * cb0[0].xy + cb0[0].zw;
  o4.zw = v3.xy;
  return;
}