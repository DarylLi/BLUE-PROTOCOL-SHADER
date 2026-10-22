// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[37].xy);
  r0.xy = v0.xy + -r0.xy;
  r0.xy = cb0[38].zw * r0.xy;
  r0.zw = r0.xy * cb0[5].xy + cb0[4].xy;
  r0.xy = r0.xy * cb1[130].xy + cb1[129].xy;
  r0.xy = cb1[132].zw * r0.xy;
  r0.x = t4.Sample(s4_s, r0.xy).x;
  r0.yzw = t3.Sample(s3_s, r0.zw).xyz;
  r1.xyz = saturate(r0.yzw);
  r1.yzw = r1.xyz * float3(0.9375,0.9375,0.9375) + float3(0.03125,0.03125,0.03125);
  r1.w = r1.w * 16 + -0.5;
  r2.x = floor(r1.w);
  r1.w = -r2.x + r1.w;
  r1.y = r2.x + r1.y;
  r1.x = 0.0625 * r1.y;
  r2.xyz = t1.SampleLevel(s1_s, r1.xz, 0).xyz;
  r3.xy = float2(0.0625,0) + r1.xz;
  r4.xyz = t1.SampleLevel(s1_s, r3.xy, 0).xyz;
  r4.xyz = r4.xyz + -r2.xyz;
  r2.xyz = r1.www * r4.xyz + r2.xyz;
  r4.xyz = t0.SampleLevel(s0_s, r1.xz, 0).xyz;
  r1.xyz = t2.SampleLevel(s2_s, r1.xz, 0).xyz;
  r5.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r3.xyz = t2.SampleLevel(s2_s, r3.xy, 0).xyz;
  r3.xyz = r3.xyz + -r1.xyz;
  r1.xyz = r1.www * r3.xyz + r1.xyz;
  r3.xyz = r5.xyz + -r4.xyz;
  r3.xyz = r1.www * r3.xyz + r4.xyz;
  r2.xyz = -r3.xyz + r2.xyz;
  r2.xyz = cb2[2].xxx * r2.xyz + r3.xyz;
  r1.xyz = -r2.xyz + r1.xyz;
  r1.xyz = cb2[2].yyy * r1.xyz + r2.xyz;
  r1.xyz = r1.xyz + -r0.yzw;
  r0.xyz = r0.xxx * r1.xyz + r0.yzw;
  r1.xyz = cb2[1].xyz + -r0.xyz;
  r0.xyz = cb2[2].zzz * r1.xyz + r0.xyz;
  o0.xyz = max(float3(0,0,0), r0.xyz);
  o0.w = 1;
  return;
}