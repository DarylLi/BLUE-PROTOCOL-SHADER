// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float4 v4 : ATTRIBUTE4,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD6,
  out float3 o4 : TEXCOORD8,
  out float4 o5 : SV_POSITION0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v2.yzx * v1.xyz;
  r0.xyz = v2.xyz * v1.yzx + -r0.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = v2.yzx * r0.xyz;
  r0.xyz = r0.zxy * v2.zxy + -r1.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = cb1[4].yyy * cb1[1].xyz;
  r2.xyz = r1.xyz * r0.yyy;
  r1.xyz = v2.yyy * r1.xyz;
  r3.xyz = cb1[4].xxx * cb1[0].xyz;
  r0.xyw = r0.xxx * r3.xyz + r2.xyz;
  r1.xyz = v2.xxx * r3.xyz + r1.xyz;
  r2.xyz = cb1[4].zzz * cb1[2].xyz;
  o0.xyz = r0.zzz * r2.xyz + r0.xyw;
  r0.xyz = v2.zzz * r2.xyz + r1.xyz;
  o0.w = 0;
  o1.xyz = r0.xyz;
  o4.xyz = r0.xyz;
  o1.w = cb1[4].w * v2.w;
  r0.xyz = v0.xyz * cb2[1].xyz + cb2[0].xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r0.xyw = cb1[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb1[2].xyz * r0.zzz + r0.xyw;
  r1.xyz = cb1[3].xyz + cb0[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o2.xyz = r0.xyz;
  o3.xyz = r0.xyz;
  o5.xyz = r0.xyz;
  o3.w = 1;
  o5.w = 1;
  return;
}