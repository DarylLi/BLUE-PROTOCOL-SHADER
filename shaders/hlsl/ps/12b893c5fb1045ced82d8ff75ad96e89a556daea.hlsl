// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
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

  r0.xy = float2(0.800000012,0.800000012) * v0.zw;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r0.y = dot(v0.zw, v0.zw);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r0.xy = r0.xy * r0.xy;
  r0.x = r0.y * r0.x;
  r0.yzw = t0.Sample(s0_s, v0.xy).xyz;
  r0.yzw = cb0[34].xyz * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}