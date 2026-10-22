// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb4 : register(b4)
{
  float4 cb4[2];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[53];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float4 v4 : ATTRIBUTE4,
  float2 v5 : ATTRIBUTE5,
  out float4 o0 : TEXCOORD6,
  out float3 o1 : TEXCOORD8,
  out uint o2 : SV_RenderTargetArrayIndex0,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v0.xyz * cb4[1].xyz + cb4[0].xyz;
  r1.xyz = cb2[1].xyz * r0.yyy;
  r0.xyw = cb2[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[2].xyz * r0.zzz + r0.xyw;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o0.xyz = r0.xyz;
  o0.w = 1;
  r1.xyz = cb2[4].yyy * cb2[1].xyz;
  r1.xyz = v2.yyy * r1.xyz;
  r2.xyz = cb2[4].xxx * cb2[0].xyz;
  r1.xyz = v2.xxx * r2.xyz + r1.xyz;
  r2.xyz = cb2[4].zzz * cb2[2].xyz;
  o1.xyz = v2.zzz * r2.xyz + r1.xyz;
  o2.x = cb0[5].x;
  r0.w = asuint(cb0[5].x) << 2;
  r1.xyzw = cb3[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb3[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb3[r0.w+31].xyzw + r1.xyzw;
  o3.xyzw = cb3[r0.w+32].xyzw + r1.xyzw;
  return;
}