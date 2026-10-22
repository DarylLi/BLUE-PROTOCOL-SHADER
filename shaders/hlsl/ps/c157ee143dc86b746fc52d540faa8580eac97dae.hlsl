// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[183];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : TEXCOORD1,
  uint w2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb0[2].y);
  r0.x = 0.5 + r0.x;
  r0.y = asuint(cb1[182].w);
  r0.z = r0.x / r0.y;
  r0.xy = v0.xy;
  r0.xyz = t0.Sample(s0_s, r0.xyz).xyz;
  r0.w = v0.x * 256 + -0.5;
  r0.w = 0.03125 * r0.w;
  r0.w = floor(r0.w);
  r0.w = r0.w * 0.285714298 + -1;
  r0.w = r0.w * r0.w + 1;
  r0.w = 0.0596831031 * r0.w;
  o0.xyz = r0.xyz / r0.www;
  o0.w = 0;
  return;
}