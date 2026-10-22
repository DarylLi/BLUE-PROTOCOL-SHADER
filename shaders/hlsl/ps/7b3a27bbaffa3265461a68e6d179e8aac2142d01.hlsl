// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t1.SampleLevel(s1_s, v0.xy, 0).x;
  r0.y = 1 + -r0.x;
  r0.y = 1 / r0.y;
  r1.xyz = t0.Sample(s0_s, v0.xy).xyz;
  r0.yzw = r1.xyz * r0.yyy;
  r1.w = cmp(r0.x < 1);
  o0.w = r0.x;
  o0.xyz = r1.www ? r0.yzw : r1.xyz;
  return;
}