// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.SampleLevel(s0_s, v0.xy, 0).x;
  r0.x = 1 + -r0.x;
  r0.xyzw = float4(1,255,65025,16581375) * r0.xxxx;
  r0.xyzw = frac(r0.xyzw);
  o0.xyz = -r0.yzw * float3(0.00392156886,0.00392156886,0.00392156886) + r0.xyz;
  o0.w = 1;
  return;
}