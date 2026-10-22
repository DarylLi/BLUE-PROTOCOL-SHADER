// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[46];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  linear noperspective float4 v1 : TEXCOORD1,
  linear noperspective float4 v2 : TEXCOORD2,
  linear noperspective float4 v3 : TEXCOORD3,
  linear noperspective float4 v4 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t0.SampleLevel(s0_s, v1.zw, 0).xyz;
  r0.xyz = cb0[39].xyz * r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v1.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[38].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v2.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[40].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v2.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[41].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v3.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[42].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v3.zw, 0).xyz;
  r0.xyz = r1.xyz * cb0[43].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v4.xy, 0).xyz;
  r0.xyz = r1.xyz * cb0[44].xyz + r0.xyz;
  r1.xyz = t0.SampleLevel(s0_s, v4.zw, 0).xyz;
  o0.xyz = r1.xyz * cb0[45].xyz + r0.xyz;
  r0.x = t0.SampleLevel(s0_s, v0.xy, 0).w;
  o0.w = r0.x;
  return;
}