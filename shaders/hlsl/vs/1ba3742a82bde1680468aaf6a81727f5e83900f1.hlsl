// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0)
{
  o0.xyzw = v0.xyzw;
  o1.xy = v1.xy;
  return;
}