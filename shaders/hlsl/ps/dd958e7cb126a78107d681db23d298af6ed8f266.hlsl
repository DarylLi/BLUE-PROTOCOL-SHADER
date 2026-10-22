// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v2.x;
  r0.x = 0.5 + r0.x;
  r0.z = cb0[2].y * r0.x;
  r0.xy = v0.xy;
  r1.xyz = cb0[2].yyy * float3(0.5,0.5,0.5) + r0.xyz;
  r2.xyzw = t0.Sample(s0_s, r1.xyz).xyzw;
  r1.xyzw = t1.Sample(s1_s, r1.xyz).xyzw;
  r3.xyz = cb0[2].yyy * float3(-0.5,0.5,0.5) + r0.xyz;
  r4.xyzw = t0.Sample(s0_s, r3.xyz).xyzw;
  r3.xyzw = t1.Sample(s1_s, r3.xyz).xyzw;
  r1.xyzw = r3.xyzw + r1.xyzw;
  r2.xyzw = r4.xyzw + r2.xyzw;
  r3.xyz = cb0[2].yyy * float3(0.5,-0.5,0.5) + r0.xyz;
  r4.xyzw = t0.Sample(s0_s, r3.xyz).xyzw;
  r3.xyzw = t1.Sample(s1_s, r3.xyz).xyzw;
  r1.xyzw = r3.xyzw + r1.xyzw;
  r2.xyzw = r4.xyzw + r2.xyzw;
  r3.xyz = cb0[2].yyy * float3(-0.5,-0.5,0.5) + r0.xyz;
  r4.xyzw = t0.Sample(s0_s, r3.xyz).xyzw;
  r3.xyzw = t1.Sample(s1_s, r3.xyz).xyzw;
  r1.xyzw = r3.xyzw + r1.xyzw;
  r2.xyzw = r4.xyzw + r2.xyzw;
  r3.xyz = cb0[2].yyy * float3(0.5,0.5,-0.5) + r0.xyz;
  r4.xyzw = t0.Sample(s0_s, r3.xyz).xyzw;
  r3.xyzw = t1.Sample(s1_s, r3.xyz).xyzw;
  r1.xyzw = r3.xyzw + r1.xyzw;
  r2.xyzw = r4.xyzw + r2.xyzw;
  r3.xyz = cb0[2].yyy * float3(-0.5,0.5,-0.5) + r0.xyz;
  r4.xyzw = t0.Sample(s0_s, r3.xyz).xyzw;
  r3.xyzw = t1.Sample(s1_s, r3.xyz).xyzw;
  r1.xyzw = r3.xyzw + r1.xyzw;
  r2.xyzw = r4.xyzw + r2.xyzw;
  r3.xyz = cb0[2].yyy * float3(0.5,-0.5,-0.5) + r0.xyz;
  r0.xyz = cb0[2].yyy * float3(-0.5,-0.5,-0.5) + r0.xyz;
  r4.xyzw = t0.Sample(s0_s, r3.xyz).xyzw;
  r3.xyzw = t1.Sample(s1_s, r3.xyz).xyzw;
  r1.xyzw = r3.xyzw + r1.xyzw;
  r2.xyzw = r4.xyzw + r2.xyzw;
  r3.xyzw = t0.Sample(s0_s, r0.xyz).xyzw;
  r0.xyzw = t1.Sample(s1_s, r0.xyz).xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  o1.xyzw = float4(0.125,0.125,0.125,0.125) * r0.xyzw;
  r0.xyzw = r3.xyzw + r2.xyzw;
  o0.xyzw = float4(0.125,0.125,0.125,0.125) * r0.xyzw;
  return;
}