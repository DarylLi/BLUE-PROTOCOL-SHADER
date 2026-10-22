// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb3 : register(b3)
{
  float4 cb3[29];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float4 v1 : ATTRIBUTE2,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float o2 : TEXCOORD6,
  out float3 p2 : TEXCOORD7,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyzw = float4(0,0,0,0);
  o1.xyzw = float4(0,0,0,0);
  r0.w = cb0[2].x;
  r1.xy = cb0[1].xx * v0.xy;
  r1.xy = cb0[7].yx * r1.xy;
  r1.xzw = r1.xxx * cb0[4].xyz + cb0[3].xyz;
  r1.xyz = r1.yyy * cb0[5].xyz + r1.xzw;
  r1.w = cmp(cb1[31].w < 1);
  r0.xyz = r1.www ? -r1.xyz : -cb0[3].xyz;
  r1.x = dot(r0.xy, r0.xy);
  r1.x = rsqrt(r1.x);
  r1.xyz = r1.xxx * r0.xyw;
  r2.xy = v0.xy * float2(1,-1) + float2(0.5,0.5);
  r2.xy = -cb1[66].wz + r2.xy;
  r2.xy = r2.xy / cb1[66].xy;
  r2.yz = cb1[49].xy * r2.yy;
  r2.xy = r2.xx * cb1[48].xy + r2.yz;
  r2.xy = cb1[50].xy + r2.xy;
  r2.xy = cb1[51].xy + r2.xy;
  r2.xy = r1.ww ? cb1[67].xy : r2.xy;
  r3.x = cb0[2].x;
  r3.z = 0;
  r2.w = cb2[3].z;
  r1.xyz = -r1.xyz * r3.xxz + r2.xyw;
  r3.xyz = cb2[4].yyy * cb2[1].xyz;
  r3.xyz = cb0[1].zzz * r3.xyz;
  r4.xyz = cb2[4].xxx * cb2[0].xyz;
  r3.xyz = r4.xyz * cb0[1].yyy + r3.xyz;
  r4.xyz = cb2[4].zzz * cb2[2].xyz;
  r3.xyz = r4.xyz * cb0[1].www + r3.xyz;
  r2.z = cb1[67].z;
  r0.w = dot(r3.xyz, r2.xyz);
  r0.w = cb2[3].z + -r0.w;
  r1.w = dot(r3.xyz, r0.xyz);
  r0.w = r0.w / r1.w;
  r0.xyz = r0.xyz * r0.www + r2.xyz;
  r0.w = cmp(r0.w < 0);
  r0.xyz = r0.www ? r0.xyz : r1.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r0.w = cmp(cb1[67].z >= cb2[3].z);
  r0.xyz = r0.www ? r0.xyz : cb1[70].xyz;
  p2.xyz = r0.xyz;
  o2.x = 0;
  r1.x = cb3[23].z;
  r1.y = cb3[24].z;
  r1.z = cb3[25].z;
  r0.w = dot(r1.xyz, r3.xyz);
  r1.x = -abs(r0.w) * abs(r0.w) + 1;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / abs(r0.w);
  r0.w = cmp(0 < abs(r0.w));
  r0.w = r0.w ? r1.x : cb3[27].z;
  r0.w = max(0, r0.w);
  r0.w = min(cb3[27].z, r0.w);
  r0.w = cb3[27].y * r0.w + cb3[27].x;
  r1.xyzw = cb3[20].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb3[19].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb3[21].xyzw + r1.xyzw;
  r1.xyzw = cb3[22].xyzw + r1.xyzw;
  r0.x = cmp(r1.z < 0);
  r0.y = cmp(0 < cb3[28].x);
  r0.x = r0.x ? r0.y : 0;
  r0.xy = r0.xx ? float2(9.99999997e-007,1) : r1.zw;
  o3.xy = r1.xy;
  r0.x = r0.x * cb3[27].w + r0.w;
  o3.z = r0.x * r0.y;
  o3.w = r0.y;
  return;
}