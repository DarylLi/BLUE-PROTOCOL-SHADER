// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  uint v2 : SV_InstanceID0,
  out float2 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0,
  out uint o2 : TEXCOORD1)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  o0.xy = v1.xy * cb0[1].xy + cb0[1].zw;
  o1.xy = v0.xy;
  o1.zw = float2(0,1);
  o2.x = (int)v2.x + asint(cb0[0].x);
  return;
}