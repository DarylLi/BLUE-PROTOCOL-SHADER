// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[56];
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
  r0.xyzw = cb0[51].xyzw * r0.xyzw;
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.xyzw = cb0[50].xyzw * r1.xyzw + r0.xyzw;
  r1.xyzw = t2.Sample(s2_s, v0.xy).xyzw;
  r0.xyzw = cb0[52].xyzw * r1.xyzw + r0.xyzw;
  r1.xyzw = t3.Sample(s3_s, v0.xy).xyzw;
  r0.xyzw = cb0[53].xyzw * r1.xyzw + r0.xyzw;
  r1.xyzw = t4.Sample(s4_s, v0.xy).xyzw;
  r0.xyzw = cb0[54].xyzw * r1.xyzw + r0.xyzw;
  r1.xyzw = t5.Sample(s5_s, v0.xy).xyzw;
  o0.xyzw = cb0[55].xyzw * r1.xyzw + r0.xyzw;
  return;
}