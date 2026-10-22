// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 v1 : ATTRIBUTE1,
  out uint o0 : SV_RenderTargetArrayIndex0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : TEXCOORD7,
  out float4 o4 : TEXCOORD6,
  out float3 o5 : TEXCOORD8,
  out float4 o6 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.x = cb0[5].x;
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0);
  r0.xyz = cb2[1].xyz * v0.yyy;
  r0.xyz = cb2[0].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[2].xyz * v0.zzz + r0.xyz;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o3.xyz = r0.xyz;
  r0.w = asuint(cb0[5].x) << 2;
  r1.xyzw = cb3[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb3[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb3[r0.w+31].xyzw + r1.xyzw;
  r0.xyzw = cb3[r0.w+32].xyzw + r1.xyzw;
  o4.xyzw = r0.xyzw;
  o6.xyzw = r0.xyzw;
  r0.xyz = cb2[4].yyy * cb2[1].xyz;
  r0.xyz = v1.yyy * r0.xyz;
  r1.xyz = cb2[4].xxx * cb2[0].xyz;
  r0.xyz = r1.xyz * v1.xxx + r0.xyz;
  r1.xyz = cb2[4].zzz * cb2[2].xyz;
  o5.xyz = r1.xyz * v1.zzz + r0.xyz;
  return;
}