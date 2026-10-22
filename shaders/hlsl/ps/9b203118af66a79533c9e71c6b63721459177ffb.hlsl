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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[37].xy);
  r0.xy = v0.xy + -r0.xy;
  r0.xy = cb0[38].zw * r0.xy;
  r0.xy = r0.xy * cb1[130].xy + cb1[129].xy;
  r0.zw = cb1[132].zw * r0.xy;
  r1.x = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r1.y = r1.x * cb1[65].z + -cb1[65].w;
  r1.x = r1.x * cb1[65].x + cb1[65].y;
  r1.y = 1 / r1.y;
  r1.x = r1.x + r1.y;
  r1.y = cb1[65].w + r1.x;
  r1.x = r1.x * cb1[30].z + cb1[31].z;
  r1.y = cb1[65].z * r1.y;
  r1.y = 1 / r1.y;
  r1.z = cmp(cb1[31].w < 1);
  r1.x = r1.z ? r1.y : r1.x;
  r1.yzw = cb1[123].xyw * r0.www;
  r1.yzw = r0.zzz * cb1[122].xyw + r1.yzw;
  r0.zw = t1.Sample(s1_s, r0.zw).xy;
  r1.xyz = r1.xxx * cb1[124].xyw + r1.yzw;
  r1.xyz = cb1[125].xyw + r1.xyz;
  r1.xy = r1.xy / r1.zz;
  r0.xy = r0.xy * cb1[132].zw + -r1.xy;
  r1.x = cmp(0 < r0.z);
  r0.zw = r0.zw * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
  r0.xy = r1.xx ? r0.zw : r0.xy;
  r0.xy = r0.xy * float2(0.25,0.25) + float2(0.5,0.5);
  r0.z = 0;
  r1.xyz = cb2[1].xyz + -r0.xyz;
  r0.xyz = cb2[2].xxx * r1.xyz + r0.xyz;
  o0.xyz = max(float3(0,0,0), r0.xyz);
  o0.w = 0;
  return;
}