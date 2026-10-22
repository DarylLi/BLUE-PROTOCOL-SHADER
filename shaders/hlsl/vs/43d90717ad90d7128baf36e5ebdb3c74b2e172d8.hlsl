// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  out float4 o0 : SV_POSITION0)
{
  o0.xy = v0.xy * float2(2,-2) + float2(-1,1);
  o0.zw = float2(0,1);
  return;
}