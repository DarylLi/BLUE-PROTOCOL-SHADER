// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb1[129].xy + v0.xy;
  r0.xy = cb1[132].zw * r0.xy;
  r0.xy = cb1[132].xy * r0.xy;
  r0.xy = cb0[3].zw * r0.xy;
  r0.xy = cb0[4].yy * r0.xy;
  r0.xy = cb0[3].xy * r0.xy;
  r0.xy = (uint2)r0.xy;
  r0.xy = max(asuint(cb0[1].xy), (uint2)r0.xy);
  r0.xy = min(asuint(cb0[1].zw), (uint2)r0.xy);
  r0.zw = float2(0,0);
  o0.xyzw = t0.Load(r0.xyz).xyzw;
  return;
}