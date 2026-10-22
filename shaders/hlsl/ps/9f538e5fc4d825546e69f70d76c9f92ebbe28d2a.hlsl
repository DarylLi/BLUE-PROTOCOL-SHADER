// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[79];
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
  linear noperspective float4 v13 : TEXCOORD13,
  linear noperspective float4 v14 : TEXCOORD14,
  linear noperspective float4 v15 : TEXCOORD15,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t0.SampleLevel(s0_s, v1.zw, 0).xyz;
  r0.xyz = cb0[50].xyz * r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v1.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[49].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v2.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[51].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v2.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[52].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v3.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[53].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v3.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[54].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v4.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[55].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v4.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[56].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v5.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[57].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v5.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[58].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v6.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[59].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v6.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[60].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v7.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[61].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v7.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[62].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v8.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[63].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v8.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[64].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v9.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[65].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v9.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[66].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v10.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[67].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v10.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[68].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v11.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[69].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v11.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[70].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v12.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[71].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v12.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[72].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v13.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[73].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v13.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[74].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v14.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[75].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v14.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[76].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v15.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[77].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v15.zw, 0).xyz;
  o0.xyz = r1.xyz * cb0[78].xyz + r0.xyz;
  r0.x = t0.SampleLevel(s0_s, v0.xy, 0).w;
  o0.w = r0.x;
  return;
}