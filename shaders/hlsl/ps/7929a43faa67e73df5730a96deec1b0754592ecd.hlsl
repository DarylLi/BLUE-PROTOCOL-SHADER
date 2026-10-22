// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * float2(1,-1) + float2(0,1);
  r0.xy = cb0[0].zw * r0.xy;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r1.xyz = max(float3(6.10351999e-005,6.10351999e-005,6.10351999e-005), r0.xyz);
  r2.xyz = r1.xyz * float3(0.947867274,0.947867274,0.947867274) + float3(0.0521326996,0.0521326996,0.0521326996);
  r2.xyz = log2(r2.xyz);
  r2.xyz = float3(2.4000001,2.4000001,2.4000001) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r3.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) < r1.xyz);
  r1.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r1.xyz;
  r1.xyz = r3.xyz ? r2.xyz : r1.xyz;
  r1.w = cmp(asint(cb0[0].x) == 1);
  o0.xyz = r1.www ? r1.xyz : r0.xyz;
  o0.w = r0.w;
  return;
}