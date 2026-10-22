// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[25];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  uint v3 : PRIMITIVE_ID0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[17].yy + v2.xy;
  r0.xy = cb1[17].zw * r0.xy;
  r0.z = cb1[16].x * cb0[142].z;
  r1.x = cb1[16].w * r0.z;
  r1.y = cb1[17].x * r0.z;
  r0.xy = r0.xy * cb1[18].xx + r1.xy;
  r0.z = cb1[14].x * cb0[142].z;
  r1.x = cb1[14].w * r0.z;
  r1.y = cb1[15].x * r0.z;
  r0.zw = v2.xy * cb1[15].yy + r1.xy;
  r0.z = t0.SampleBias(s0_s, r0.zw, cb0[143].y).x;
  r0.z = cb1[15].z * r0.z;
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb1[15].w * r0.w;
  r0.w = exp2(r0.w);
  r0.z = r0.z ? 0 : r0.w;
  r0.xy = r0.zz + r0.xy;
  r1.xyzw = t1.SampleBias(s1_s, r0.xy, cb0[143].y).xyzw;
  r0.x = cb1[18].y * r1.w;
  r1.xyz = cb1[5].xyz * r1.xyz + -cb1[6].xyz;
  r0.xyw = r0.xxx * r1.xyz + cb1[6].xyz;
  r1.xy = cb1[19].ww + v2.xy;
  r1.xy = cb1[20].xy * r1.xy;
  r1.xy = cb1[18].xx * r1.xy;
  r1.z = cb1[18].z * cb0[142].z;
  r1.xy = r1.zz * cb1[19].yz + r1.xy;
  r1.xy = r1.xy + r0.zz;
  r1.xyzw = t1.SampleBias(s1_s, r1.xy, cb0[143].y).xyzw;
  r1.xyz = cb1[9].xyz * r1.xyz + -r0.xyw;
  r1.w = cb1[20].z * r1.w;
  r0.xyw = r1.www * r1.xyz + r0.xyw;
  r1.xy = cb1[22].xx + v2.xy;
  r1.xy = cb1[22].yz * r1.xy;
  r1.xy = cb1[18].xx * r1.xy;
  r1.z = cb1[20].w * cb0[142].z;
  r1.xy = r1.zz * cb1[21].zw + r1.xy;
  r1.xy = r1.xy + r0.zz;
  r1.xyzw = t1.SampleBias(s1_s, r1.xy, cb0[143].y).xyzw;
  r1.xyz = cb1[12].xyz * r1.xyz + -r0.xyw;
  r0.z = cb1[22].w * r1.w;
  r0.xyw = r0.zzz * r1.xyz + r0.xyw;
  r1.xyz = cb1[23].xxx * r0.xyw;
  r2.xyz = -r0.xyw * cb1[23].xxx + cb1[13].xyz;
  o2.xyz = saturate(r0.xyw);
  r0.xyw = cb1[23].yyy * r2.xyz + r1.xyz;
  r0.xyw = max(float3(0,0,0), r0.xyw);
  o0.xyz = cb0[135].yyy * r0.xyw;
  r0.x = t2.SampleBias(s2_s, v2.xy, cb0[143].y).x;
  r0.y = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.y = cb1[24].x * r0.y;
  r0.y = exp2(r0.y);
  r0.y = saturate(cb1[24].y * r0.y);
  r0.x = r0.x ? 0 : r0.y;
  o0.w = r0.x;
  r0.y = cb1[23].z + -cb1[23].w;
  r0.y = saturate(r0.z * r0.y + cb1[23].w);
  o1.z = r0.y * cb0[139].y + cb0[139].x;
  o1.w = r0.x;
  o2.w = r0.x;
  o1.xy = float2(0,0.5);
  return;
}