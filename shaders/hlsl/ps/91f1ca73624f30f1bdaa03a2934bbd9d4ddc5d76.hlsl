// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[39];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[37].xy);
  r0.xy = v0.xy + -r0.xy;
  r0.xy = cb0[38].zw * r0.xy;
  r1.x = dot(r0.xy, cb1[2].xy);
  r1.y = dot(r0.xy, cb1[2].zw);
  r0.xy = cb1[1].xy + r1.xy;
  r0.xyz = t0.Sample(s0_s, r0.xy).xyz;
  r1.xyz = cb1[3].xyz + -r0.xyz;
  r0.xyz = cb1[4].xxx * r1.xyz + r0.xyz;
  o0.xyz = max(float3(0,0,0), r0.xyz);
  o0.w = 1;
  return;
}