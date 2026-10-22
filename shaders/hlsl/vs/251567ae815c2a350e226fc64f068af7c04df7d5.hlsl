// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float4 v4 : ATTRIBUTE4,
  out float4 o0 : TEXCOORD6,
  out float3 o1 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v0.xyz * cb2[1].xyz + cb2[0].xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r0.xyw = cb1[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb1[2].xyz * r0.zzz + r0.xyw;
  r1.xyz = cb1[3].xyz + cb0[70].xyz;
  o0.xyz = r1.xyz + r0.xyz;
  o0.w = 1;
  r0.xyz = cb1[4].yyy * cb1[1].xyz;
  r0.xyz = v2.yyy * r0.xyz;
  r1.xyz = cb1[4].xxx * cb1[0].xyz;
  r0.xyz = v2.xxx * r1.xyz + r0.xyz;
  r1.xyz = cb1[4].zzz * cb1[2].xyz;
  o1.xyz = v2.zzz * r1.xyz + r0.xyz;
  return;
}