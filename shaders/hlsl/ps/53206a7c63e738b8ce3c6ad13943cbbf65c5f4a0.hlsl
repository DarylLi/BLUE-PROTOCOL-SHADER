// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2)
{
  o0.xyzw = cb0[0].xyzw;
  o1.xyzw = cb0[1].xyzw;
  o2.xyzw = cb0[2].xyzw;
  return;
}