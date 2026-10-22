// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[13];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 0.5 + v0.x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r1.x);
  r0.y = 3.14159274 * v0.y;
  sincos(r0.y, r2.x, r3.x);
  r0.x = r2.x * r0.x;
  r0.y = -r2.x * r1.x;
  r0.z = r3.x;
  r0.xyzw = t0.SampleLevel(s0_s, r0.xyz, cb0[8].x).xyzw;
  r1.x = dot(r0.xyzw, cb0[9].xyzw);
  r1.y = dot(r0.xyzw, cb0[10].xyzw);
  r1.z = dot(r0.xyzw, cb0[11].xyzw);
  r1.w = dot(r0.xyzw, cb0[12].xyzw);
  r0.xyzw = v1.xyzw * r1.xyzw;
  o0.xyz = max(float3(0,0,0), r0.xyz);
  o0.w = r0.w;
  o1.xyzw = float4(0,0,0,0);
  return;
}