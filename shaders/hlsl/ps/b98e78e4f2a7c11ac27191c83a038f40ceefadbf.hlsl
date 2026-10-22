// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[131];
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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[37].xy);
  r0.xy = v0.xy + -r0.xy;
  r0.xy = cb0[38].zw * r0.xy;
  r0.zw = cb1[130].zw * cb1[130].xy + -r0.xy;
  r1.xy = float2(100,100) * cb1[130].zw;
  r0.zw = saturate(r0.zw / r1.xy);
  r1.xy = saturate(r0.xy / r1.xy);
  r1.x = min(r1.x, r1.y);
  r0.z = min(r0.z, r0.w);
  r0.z = min(r0.z, r1.x);
  r1.xy = r0.xy * cb0[5].xy + cb0[4].xy;
  r1.xyz = t1.Sample(s1_s, r1.xy).xyz;
  r2.xy = cb1[130].zw * cb1[130].xy;
  r0.xy = r0.xy / r2.xy;
  r0.xyw = t0.Sample(s0_s, r0.xy).xyz;
  r1.xyz = r1.xyz + -r0.xyw;
  r0.xyz = r0.zzz * r1.xyz + r0.xyw;
  r1.xyz = cb2[1].xyz + -r0.xyz;
  r0.xyz = cb2[2].xxx * r1.xyz + r0.xyz;
  o0.xyz = max(float3(0,0,0), r0.xyz);
  o0.w = 1;
  return;
}