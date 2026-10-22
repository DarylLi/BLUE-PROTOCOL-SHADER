// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 v1 : ATTRIBUTE1,
  out float4 o0 : TEXCOORD6,
  out float3 o1 : TEXCOORD8,
  out float4 o2 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v0.yyy;
  r0.xyz = cb1[0].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v0.zzz + r0.xyz;
  r1.xyz = cb1[3].xyz + cb0[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o0.xyz = r0.xyz;
  o2.xyz = r0.xyz;
  o0.w = 1;
  r0.xyz = cb1[4].yyy * cb1[1].xyz;
  r0.xyz = v1.yyy * r0.xyz;
  r1.xyz = cb1[4].xxx * cb1[0].xyz;
  r0.xyz = r1.xyz * v1.xxx + r0.xyz;
  r1.xyz = cb1[4].zzz * cb1[2].xyz;
  o1.xyz = r1.xyz * v1.zzz + r0.xyz;
  o2.w = 1;
  return;
}