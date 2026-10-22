// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<uint4> t1 : register(t1);

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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb1[31].w < 1);
  r0.yz = asuint(cb0[37].xy);
  r0.yz = v0.xy + -r0.yz;
  r0.yz = cb0[38].zw * r0.yz;
  r0.yz = r0.yz * cb1[130].xy + cb1[129].xy;
  r1.xy = cb1[132].zw * r0.yz;
  r0.w = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r1.z = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = r0.w * cb1[65].x + cb1[65].y;
  r1.z = 1 / r1.z;
  r0.w = r1.z + r0.w;
  r1.z = cb1[65].w + r0.w;
  r0.w = r0.w * cb1[30].z + cb1[31].z;
  r1.z = cb1[65].z * r1.z;
  r1.z = 1 / r1.z;
  r0.x = r0.x ? r1.z : r0.w;
  r2.xyz = cb1[123].xyw * r1.yyy;
  r2.xyz = r1.xxx * cb1[122].xyw + r2.xyz;
  r2.xyz = r0.xxx * cb1[124].xyw + r2.xyz;
  r2.xyz = cb1[125].xyw + r2.xyz;
  r0.xw = r2.xy / r2.zz;
  r0.xy = r0.yz * cb1[132].zw + -r0.xw;
  r0.zw = t2.Sample(s1_s, r1.xy).xy;
  r1.xy = cb1[132].xy * r1.xy;
  r1.xy = trunc(r1.xy);
  r1.xy = (int2)r1.xy;
  r2.x = cmp(0 < r0.z);
  r0.zw = r0.zw * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
  r0.xy = r2.xx ? r0.zw : r0.xy;
  r0.xy = r0.xy * float2(0.25,0.25) + float2(0.5,0.5);
  r1.zw = float2(0,0);
  r0.w = t1.Load(r1.xyz).y;
  r0.z = (uint)r0.w;
  r1.xyz = cb2[1].xyz + -r0.xyz;
  r0.xyz = cb2[2].xxx * r1.xyz + r0.xyz;
  o0.xyz = max(float3(0,0,0), r0.xyz);
  o0.w = 1;
  return;
}