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
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.z = 0;
  r0.xyz = t0.SampleLevel(s0_s, v1.xy, 0).xyz;
  r0.w = r0.y * 2 + r0.x;
  r0.w = r0.w + r0.z;
  o0.w = 0.25 * r0.w;
  r0.w = r0.z + r0.z;
  r0.w = r0.x * 2 + -r0.w;
  o0.x = r0.w * 0.25 + 0.501960814;
  r0.x = r0.y * 2 + -r0.x;
  r0.x = r0.x + -r0.z;
  o0.y = r0.x * 0.25 + 0.501960814;
  o1.zw = float2(0,1);
  r0.xyz = t1.SampleLevel(s1_s, v1.xy, 0).xyz;
  o1.xy = r0.xy;
  o2.w = r0.z;
  r0.xyz = t2.SampleLevel(s2_s, v1.xy, 0).xyz;
  o2.z = round(r0.z);
  o2.xy = r0.xy;
  return;
}