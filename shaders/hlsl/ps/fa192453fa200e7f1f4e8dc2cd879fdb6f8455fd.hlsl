// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t1.Sample(s1_s, v0.xy).xyz;
  r0.xyz = float3(1,1,1) + -r0.xyz;
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r2.xyz = -r1.xyz * r1.xyz + float3(1,1,1);
  r0.xyz = -r2.xyz * r0.xyz + float3(1,1,1);
  o0.xyz = max(r1.xyz, r0.xyz);
  o0.w = r1.w;
  return;
}