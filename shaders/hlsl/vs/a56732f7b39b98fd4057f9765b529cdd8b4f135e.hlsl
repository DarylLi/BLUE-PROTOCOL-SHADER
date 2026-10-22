// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, instance_id
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v0.x & 31;
  r0.y = (uint)r0.x;
  o1.x = (uint)r0.x;
  o0.y = r0.y * 0.0645161271 + -1;
  o0.xzw = float3(0,0,1);
  r0.x = (uint)v0.x >> 5;
  o1.y = (uint)r0.x;
  o1.zw = float2(0,0);
  return;
}