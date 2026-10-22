// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[39];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[37].xy);
  r0.xy = v0.xy + -r0.xy;
  r0.xy = cb0[38].zw * r0.xy;
  r0.zw = r0.xy * cb0[19].xy + cb0[18].xy;
  r0.xy = r0.xy * cb0[5].xy + cb0[4].xy;
  r0.xy = max(cb0[6].xy, r0.xy);
  r0.xy = min(cb0[6].zw, r0.xy);
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = max(cb0[20].xy, r0.zw);
  r0.xy = min(cb0[20].zw, r0.xy);
  r0.xyz = t1.Sample(s0_s, r0.xy).xyz;
  r1.xyz = cb1[135].zzz * r1.xyz;
  o0.w = saturate(r1.w);
  r0.xyz = cb2[2].xxx * r0.xyz + r1.xyz;
  r1.xyz = cb2[1].xyz + -r0.xyz;
  r0.xyz = cb2[2].yyy * r1.xyz + r0.xyz;
  o0.xyz = max(float3(0,0,0), r0.xyz);
  return;
}