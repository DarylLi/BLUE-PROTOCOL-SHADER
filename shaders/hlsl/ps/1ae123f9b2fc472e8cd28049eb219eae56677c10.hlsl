// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t1.Sample(s1_s, v0.zw).x;
  r0.xyzw = cb0[1].xyzw * r0.xxxx;
  r1.x = t0.Sample(s0_s, v0.xy).x;
  r0.xyzw = r1.xxxx * cb0[4].xyzw + r0.xyzw;
  r1.x = t2.Sample(s2_s, v0.zw).x;
  r0.xyzw = r1.xxxx * cb0[2].xyzw + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r0.xyzw = cb0[0].xyzw * r0.xyzw;
  r1.xyz = r0.xyz * float3(0.305306017,0.305306017,0.305306017) + float3(0.682171106,0.682171106,0.682171106);
  r1.xyz = r0.xyz * r1.xyz + float3(0.0125228781,0.0125228781,0.0125228781);
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = r0.w;
  return;
}