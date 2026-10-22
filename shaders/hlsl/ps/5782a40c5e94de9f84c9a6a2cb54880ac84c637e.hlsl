// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  linear noperspective float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t0.SampleLevel(s0_s, v1.xy, 0).xyz;
  o0.xyz = r0.xyz;
  r0.xy = t1.SampleLevel(s1_s, v1.xy, 0).xy;
  o0.w = r0.x;
  o1.w = r0.y;
  r0.xyz = t2.SampleLevel(s2_s, v1.xy, 0).xyz;
  o1.z = round(r0.z);
  o1.xy = r0.xy;
  return;
}