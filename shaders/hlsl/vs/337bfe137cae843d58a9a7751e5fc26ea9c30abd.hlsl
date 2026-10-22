// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  out float2 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  o0.xy = v1.xy;
  o1.xyzw = v0.xyzw;
  return;
}