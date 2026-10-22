// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float4 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float4 v4 : ATTRIBUTE4,
  out float2 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xy = float2(0,0);
  r0.xyzw = v1.xyzw + v0.xyzw;
  r0.xyzw = v2.xyzw + r0.xyzw;
  r0.xyzw = v3.xyzw + r0.xyzw;
  o1.xyzw = v4.xyzw + r0.xyzw;
  return;
}