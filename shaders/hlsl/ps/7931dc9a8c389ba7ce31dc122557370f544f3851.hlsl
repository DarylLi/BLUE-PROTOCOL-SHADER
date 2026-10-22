// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[134];
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

  r0.xyzw = t1.Sample(s1_s, v0.xy).xyzw;
  r0.xy = r0.xy + -r0.zw;
  r0.xy = r0.xy * float2(0.25,0.25) + v0.xy;
  r0.zw = cmp(r0.xy < cb0[133].xy);
  r1.xy = cmp(cb0[133].zw < r0.xy);
  r0.z = (int)r0.z | (int)r1.x;
  r0.z = (int)r0.w | (int)r0.z;
  r0.z = (int)r1.y | (int)r0.z;
  r0.xy = r0.zz ? v0.xy : r0.xy;
  o0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  return;
}