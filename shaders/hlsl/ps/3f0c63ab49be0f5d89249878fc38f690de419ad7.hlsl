// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t0.Sample(s0_s, v0.xy).xyz;
  r0.xyz = max(float3(6.10351999e-005,6.10351999e-005,6.10351999e-005), r0.xyz);
  r1.xyz = r0.xyz * float3(0.947867274,0.947867274,0.947867274) + float3(0.0521326996,0.0521326996,0.0521326996);
  r1.xyz = log2(r1.xyz);
  r1.xyz = float3(2.4000001,2.4000001,2.4000001) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r2.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) < r0.xyz);
  r0.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r0.xyz;
  r0.xyz = r2.xyz ? r1.xyz : r0.xyz;
  r0.xyz = cb0[10].www * r0.xyz;
  r1.x = dot(float3(0.412456393,0.357576102,0.180437505), r0.xyz);
  r1.y = dot(float3(0.212672904,0.715152204,0.0721750036), r0.xyz);
  r1.z = dot(float3(0.0193339009,0.119191997,0.950304091), r0.xyz);
  r0.x = dot(float3(1.71660841,-0.355662107,-0.253360093), r1.xyz);
  r0.y = dot(float3(-0.666682899,1.61647761,0.0157685), r1.xyz);
  r0.z = dot(float3(0.0176422,-0.0427763015,0.942228675), r1.xyz);
  r0.xyz = float3(9.99999975e-005,9.99999975e-005,9.99999975e-005) * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(0.159301758,0.159301758,0.159301758) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xyz = r0.xyz * float3(18.6875,18.6875,18.6875) + float3(1,1,1);
  r0.xyz = r0.xyz * float3(18.8515625,18.8515625,18.8515625) + float3(0.8359375,0.8359375,0.8359375);
  r1.xyz = rcp(r1.xyz);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(78.84375,78.84375,78.84375) * r0.xyz;
  o0.xyz = exp2(r0.xyz);
  o0.w = 0;
  return;
}