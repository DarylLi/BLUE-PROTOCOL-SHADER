// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb0[2].y);
  r0.x = 0.5 + r0.x;
  r0.y = asuint(cb1[182].w);
  r0.z = r0.x / r0.y;
  r0.xy = v0.xy;
  r1.xyz = t0.Sample(s0_s, r0.xyz).xyz;
  r0.x = t1.Sample(s1_s, r0.xyz).x;
  o0.w = r0.x;
  o0.xyz = r1.xyz;
  return;
}