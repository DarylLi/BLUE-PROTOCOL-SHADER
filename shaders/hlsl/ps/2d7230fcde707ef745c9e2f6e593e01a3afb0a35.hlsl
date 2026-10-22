// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
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

  r0.x = t0.Sample(s0_s, v1.xy).x;
  r0.yz = t1.Sample(s1_s, v1.xy).xy;
  r0.w = 1;
  r1.x = dot(cb0[0].xyzw, r0.xyzw);
  r1.y = dot(cb0[1].xyzw, r0.xyzw);
  r1.z = dot(cb0[2].xyzw, r0.xyzw);
  r1.w = dot(cb0[3].xyzw, r0.xyzw);
  r0.xyz = max(float3(6.10351999e-005,6.10351999e-005,6.10351999e-005), r1.xyz);
  r2.xyz = r0.xyz * float3(0.947867274,0.947867274,0.947867274) + float3(0.0521326996,0.0521326996,0.0521326996);
  r2.xyz = log2(r2.xyz);
  r2.xyz = float3(2.4000001,2.4000001,2.4000001) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r3.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) < r0.xyz);
  r0.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r0.xyz;
  r0.xyz = r3.xyz ? r2.xyz : r0.xyz;
  r0.w = 1;
  o0.xyzw = cb0[4].xxxx ? r0.xyzw : r1.xyzw;
  return;
}