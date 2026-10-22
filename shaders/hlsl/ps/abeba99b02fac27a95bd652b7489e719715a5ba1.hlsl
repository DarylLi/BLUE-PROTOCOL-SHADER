// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[77];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  linear noperspective float4 v1 : TEXCOORD1,
  linear noperspective float4 v2 : TEXCOORD2,
  linear noperspective float4 v3 : TEXCOORD3,
  linear noperspective float4 v4 : TEXCOORD4,
  linear noperspective float4 v5 : TEXCOORD5,
  linear noperspective float4 v6 : TEXCOORD6,
  linear noperspective float4 v7 : TEXCOORD7,
  linear noperspective float4 v8 : TEXCOORD8,
  linear noperspective float4 v9 : TEXCOORD9,
  linear noperspective float4 v10 : TEXCOORD10,
  linear noperspective float4 v11 : TEXCOORD11,
  linear noperspective float4 v12 : TEXCOORD12,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.SampleLevel(s0_s, v1.zw, 0).xyzw;
  r0.xyzw = cb0[54].xyzw * r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v1.xy, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[53].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v2.xy, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[55].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v2.zw, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[56].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v3.xy, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[57].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v3.zw, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[58].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v4.xy, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[59].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v4.zw, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[60].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v5.xy, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[61].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v5.zw, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[62].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v6.xy, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[63].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v6.zw, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[64].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v7.xy, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[65].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v7.zw, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[66].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v8.xy, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[67].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v8.zw, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[68].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v9.xy, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[69].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v9.zw, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[70].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v10.xy, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[71].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v10.zw, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[72].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v11.xy, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[73].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v11.zw, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[74].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v12.xy, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[75].xyzw + r0.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, v12.zw, 0).xyzw;
  r0.xyzw = r1.xyzw * cb0[76].xyzw + r0.xyzw;
  r1.xyzw = t1.SampleLevel(s1_s, v0.xy, 0).xyzw;
  o0.xyzw = r1.xyzw + r0.xyzw;
  return;
}