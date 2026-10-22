// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  uint v2 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyzw = v0.xyzw;
  r0.x = (uint)v2.x;
  r1.yz = v1.xy * cb0[0].xy + cb0[0].zw;
  r1.x = r0.x * cb0[0].x + r1.y;
  o1.xy = r1.xz * float2(2,-2) + float2(-1,1);
  o1.zw = float2(0,1);
  return;
}