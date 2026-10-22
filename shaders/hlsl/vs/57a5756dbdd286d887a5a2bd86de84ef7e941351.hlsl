// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[136];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float4 v4 : ATTRIBUTE4,
  float4 v5 : ATTRIBUTE5,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(1 < asint(cb0[135].x));
  r0.yzw = cb1[1].xyz * v0.yyy;
  r0.yzw = cb1[0].xyz * v0.xxx + r0.yzw;
  r0.yzw = cb1[2].xyz * v0.zzz + r0.yzw;
  r1.xyz = cb1[3].xyz + cb0[70].xyz;
  r0.yzw = r1.xyz + r0.yzw;
  r1.xyzw = cb0[1].xyzw * r0.zzzz;
  r1.xyzw = r0.yyyy * cb0[0].xyzw + r1.xyzw;
  r1.xyzw = r0.wwww * cb0[2].xyzw + r1.xyzw;
  r1.xyzw = cb0[3].xyzw + r1.xyzw;
  r2.x = 0.00100000005 * r1.w;
  r0.x = r0.x ? r2.x : 0;
  o0.z = r1.z + r0.x;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  r1.xyzw = cb0[92].xyzw * r0.zzzz;
  r1.xyzw = r0.yyyy * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.wwww * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  o3.xyzw = v3.xyzw;
  o4.xyzw = v4.xyzw;
  o5.xyzw = v5.xyzw;
  return;
}