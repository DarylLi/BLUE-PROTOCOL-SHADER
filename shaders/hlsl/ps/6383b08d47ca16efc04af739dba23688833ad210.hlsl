// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb0[5].x) + -1;
  r0.x = (int)r0.x;
  r0.yzw = t0.SampleLevel(s0_s, float4(1,0,0,0), r0.x).xyz;
  r1.xyz = t0.SampleLevel(s0_s, float4(-1,0,0,0), r0.x).xyz;
  r0.yzw = r1.xyz + r0.yzw;
  r1.xyz = t0.SampleLevel(s0_s, float4(0,1,0,0), r0.x).xyz;
  r0.yzw = r1.xyz + r0.yzw;
  r1.xyz = t0.SampleLevel(s0_s, float4(0,-1,0,0), r0.x).xyz;
  r0.yzw = r1.xyz + r0.yzw;
  r1.xyz = t0.SampleLevel(s0_s, float4(0,0,1,0), r0.x).xyz;
  r2.xyz = t0.SampleLevel(s0_s, float4(0,0,-1,0), r0.x).xyz;
  r0.xyz = r1.xyz + r0.yzw;
  r0.xyz = r0.xyz + r2.xyz;
  r0.xyz = float3(0.166666672,0.166666672,0.166666672) * r0.xyz;
  o0.xyzw = dot(r0.xyz, float3(0.333299994,0.333299994,0.333299994));
  return;
}