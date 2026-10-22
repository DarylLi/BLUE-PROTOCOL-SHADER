// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v0.xyz * cb2[1].xyz + cb2[0].xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r1.xyz = cb1[0].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * r0.zzz + r1.xyz;
  r2.xyz = cb1[3].xyz + cb0[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = cb0[1].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[0].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb0[2].xyzw + r2.xyzw;
  r1.xyzw = cb0[3].xyzw + r1.xyzw;
  r0.w = 0.00100000005 * r1.w;
  r2.x = cmp(1 < asint(cb0[135].x));
  r0.w = r2.x ? r0.w : 0;
  o0.z = r1.z + r0.w;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  r1.xyz = v4.xyz * cb2[3].xyz + cb2[2].xyz;
  r0.xyz = r0.xyz * cb2[3].www + r1.xyz;
  r1.x = cb1[10].y;
  r1.y = cb1[11].y;
  r1.z = cb1[12].y;
  r2.xyw = cb1[13].xyz + cb0[113].xyz;
  r1.w = r2.y;
  r0.w = 1;
  r1.x = dot(r0.xyzw, r1.xyzw);
  r1.xyzw = cb0[92].xyzw * r1.xxxx;
  r3.w = r2.x;
  r3.x = cb1[10].x;
  r3.y = cb1[11].x;
  r3.z = cb1[12].x;
  r3.x = dot(r0.xyzw, r3.xyzw);
  r1.xyzw = r3.xxxx * cb0[91].xyzw + r1.xyzw;
  r2.x = cb1[10].z;
  r2.y = cb1[11].z;
  r2.z = cb1[12].z;
  r0.x = dot(r0.xyzw, r2.xyzw);
  r0.xyzw = r0.xxxx * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
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
  o3.xyz = r0.zzz * r2.xyz + r0.xyw;
  o4.xyz = v2.zzz * r2.xyz + r1.xyz;
  o3.w = 0;
  o4.w = cb1[4].w * v2.w;
  return;
}