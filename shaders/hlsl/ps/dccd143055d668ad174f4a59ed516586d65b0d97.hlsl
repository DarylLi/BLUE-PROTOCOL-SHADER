// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t0.Sample(s0_s, v0.xy).xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.z = sqrt(r0.w);
  o0.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.w = 1;
  o1.xyzw = float4(0,0,0,0);
  return;
}