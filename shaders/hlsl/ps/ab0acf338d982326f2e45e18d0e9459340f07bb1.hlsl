// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -v0.xy * cb0[2].zw + cb0[0].xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = 0.200000003 * r0.x;
  r0.x = min(1, r0.x);
  r0.y = t0.Sample(s0_s, v0.xy).x;
  r0.y = r0.y * r0.y;
  r0.z = 1 + -cb0[3].w;
  r0.y = r0.y * r0.z + cb0[3].w;
  r0.z = 1 + -r0.y;
  o0.x = r0.x * r0.z + r0.y;
  o0.yzw = float3(1,1,1);
  return;
}