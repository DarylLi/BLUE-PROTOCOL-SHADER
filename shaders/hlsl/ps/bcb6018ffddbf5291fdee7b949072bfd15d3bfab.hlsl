// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[36];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  linear noperspective float4 v1 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = max(cb0[33].xy, v1.xy);
  r0.xy = min(cb0[33].zw, r0.xy);
  r0.zw = -v1.xy + r0.xy;
  r1.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.xy = saturate(-abs(r0.zw) * cb0[27].xy + float2(1,1));
  r0.x = r0.x * r0.y;
  r0.xyz = r0.xxx * r1.xyz;
  o0.xyz = cb0[35].xyz * r0.xyz;
  r0.xy = max(cb0[33].xy, v0.xy);
  r0.xy = min(cb0[33].zw, r0.xy);
  r0.zw = -v0.xy + r0.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).w;
  r0.yz = saturate(-abs(r0.zw) * cb0[27].xy + float2(1,1));
  r0.y = r0.y * r0.z;
  o0.w = r0.y * r0.x;
  return;
}