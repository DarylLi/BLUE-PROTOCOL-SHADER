// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[55];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb1[1].xy + cb1[1].zw;
  o0.xy = cb1[2].zw * r0.xy;
  r0.xy = v0.xy * cb1[0].xy + cb1[0].zw;
  r0.xy = cb1[2].xy * r0.xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = float2(1,-1) * r0.xy;
  r1.xyz = cb0[53].xyz * r0.yyy;
  r1.xyz = r0.xxx * cb0[52].xyz + r1.xyz;
  o2.xy = r0.xy;
  o1.xyz = cb0[54].xyz + r1.xyz;
  o2.zw = float2(0,1);
  return;
}