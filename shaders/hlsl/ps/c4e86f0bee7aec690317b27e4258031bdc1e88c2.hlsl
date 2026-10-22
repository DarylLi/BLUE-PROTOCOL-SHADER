// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v1.xy, cb0[1].xy);
  r0.y = dot(v1.xy, cb0[1].zw);
  r0.xy = cb0[2].xy + r0.xy;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = max(float3(6.10351999e-005,6.10351999e-005,6.10351999e-005), r0.xyz);
  o0.w = r0.w;
  r1.xyz = r0.xyz * float3(0.947867274,0.947867274,0.947867274) + float3(0.0521326996,0.0521326996,0.0521326996);
  r1.xyz = log2(r1.xyz);
  r1.xyz = float3(2.4000001,2.4000001,2.4000001) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r2.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) < r0.xyz);
  r0.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r0.xyz;
  o0.xyz = r2.xyz ? r1.xyz : r0.xyz;
  return;
}