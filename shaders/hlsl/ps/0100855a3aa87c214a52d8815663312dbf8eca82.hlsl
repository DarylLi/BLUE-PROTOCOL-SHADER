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
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asuint(cb0[5].y);
  r1.xyzw = t0.SampleLevel(s0_s, float4(1,0,0,0), r0.x).xyzw;
  r2.xyzw = t0.SampleLevel(s0_s, float4(-1,0,0,0), r0.x).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r2.xyzw = t0.SampleLevel(s0_s, float4(0,1,0,0), r0.x).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r2.xyzw = t0.SampleLevel(s0_s, float4(0,-1,0,0), r0.x).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r2.xyzw = t0.SampleLevel(s0_s, float4(0,0,1,0), r0.x).xyzw;
  r0.xyzw = t0.SampleLevel(s0_s, float4(0,0,-1,0), r0.x).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r0.xyz = float3(12.566371,12.566371,12.566371) * r0.xyz;
  r0.w = max(9.99999975e-006, r0.w);
  o0.xyz = r0.xyz / r0.www;
  o0.w = 0;
  return;
}