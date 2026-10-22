// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  out float4 o0 : SV_POSITION0)
{
  o0.xyz = v0.xyz;
  o0.w = 1;
  return;
}