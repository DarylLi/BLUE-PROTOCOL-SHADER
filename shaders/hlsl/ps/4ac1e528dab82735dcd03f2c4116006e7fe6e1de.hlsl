// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float oDepth : SV_DEPTH)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyzw = t0.SampleLevel(s0_s, v0.xy, 0).xyzw;
  r0.xyz = t2.SampleLevel(s2_s, v0.xy, 0).xyz;
  o1.xyz = r0.xyz;
  r0.x = t1.SampleLevel(s1_s, v0.xy, 0).w;
  o1.w = r0.x;
  r0.x = t3.SampleLevel(s3_s, v0.xy, 0).x;
  oDepth = r0.x;
  return;
}