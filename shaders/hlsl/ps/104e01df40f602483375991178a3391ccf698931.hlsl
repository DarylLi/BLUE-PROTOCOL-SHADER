// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  out float4 o0 : SV_Target0)
{
  o0.xyzw = cb0[0].xyzw;
  return;
}