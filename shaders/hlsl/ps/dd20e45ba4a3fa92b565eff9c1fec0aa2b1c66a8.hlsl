// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DMS<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = trunc(v0.xy);
  r0.xy = (int2)r0.xy;
  r0.zw = float2(0,0);
  o0.xyzw = t0.Load(r0.xy, cb0[0].x).xyzw;
  return;
}