// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[67];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : ATTRIBUTE0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xy = v0.xy * cb0[66].xy + cb0[66].wz;
  r0.xyz = cb0[53].xyz * v0.yyy;
  r0.xyz = v0.xxx * cb0[52].xyz + r0.xyz;
  o1.xyz = cb0[54].xyz + r0.xyz;
  o2.xy = v0.xy;
  o2.zw = float2(0,1);
  return;
}