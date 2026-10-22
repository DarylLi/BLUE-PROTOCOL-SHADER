// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb2 : register(b2)
{
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[4].yyy * cb2[1].xyz;
  r0.xyz = cb0[1].zzz * r0.xyz;
  r1.xyz = cb2[4].xxx * cb2[0].xyz;
  r0.xyz = r1.xyz * cb0[1].yyy + r0.xyz;
  r1.xyz = cb2[4].zzz * cb2[2].xyz;
  r0.xyz = r1.xyz * cb0[1].www + r0.xyz;
  r1.xy = v0.xy * float2(1,-1) + float2(0.5,0.5);
  r1.xy = -cb1[66].wz + r1.xy;
  r1.xy = r1.xy / cb1[66].xy;
  r1.yz = cb1[49].xy * r1.yy;
  r1.xy = r1.xx * cb1[48].xy + r1.yz;
  r1.xy = cb1[50].xy + r1.xy;
  r1.xy = cb1[51].xy + r1.xy;
  r0.w = cmp(cb1[31].w < 1);
  r1.xy = r0.ww ? cb1[67].xy : r1.xy;
  r1.z = cb1[67].z;
  r2.x = dot(r0.xyz, r1.xyz);
  r2.x = cb2[3].z + -r2.x;
  r2.yz = cb0[1].xx * v0.xy;
  r2.yz = cb0[7].yx * r2.yz;
  r3.xyz = r2.yyy * cb0[4].xyz + cb0[3].xyz;
  r2.yzw = r2.zzz * cb0[5].xyz + r3.xyz;
  r3.xyz = r0.www ? -r2.yzw : -cb0[3].xyz;
  r0.x = dot(r0.xyz, r3.xyz);
  r0.x = r2.x / r0.x;
  r0.yzw = r3.xyz * r0.xxx + r1.xyz;
  r0.x = cmp(r0.x < 0);
  r1.z = dot(r3.xy, r3.xy);
  r1.z = rsqrt(r1.z);
  r3.w = cb0[2].x;
  r2.xyz = r3.xyw * r1.zzz;
  r3.x = cb0[2].x;
  r3.z = 0;
  r1.w = cb2[3].z;
  r1.xyz = -r2.xyz * r3.xxz + r1.xyw;
  r0.xyz = r0.xxx ? r0.yzw : r1.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r0.w = cmp(cb1[67].z >= cb2[3].z);
  r0.xyz = r0.www ? r0.xyz : cb1[70].xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = 0.00100000005 * r0.w;
  r1.y = cmp(1 < asint(cb1[135].x));
  r1.x = r1.y ? r1.x : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  r0.x = cb2[10].y;
  r0.y = cb2[11].y;
  r0.z = cb2[12].y;
  r1.xyw = cb2[13].xyz + cb1[113].xyz;
  r0.w = r1.y;
  r0.x = dot(v0.xyzw, r0.xyzw);
  r0.xyzw = cb1[92].xyzw * r0.xxxx;
  r2.w = r1.x;
  r2.x = cb2[10].x;
  r2.y = cb2[11].x;
  r2.z = cb2[12].x;
  r2.x = dot(v0.xyzw, r2.xyzw);
  r0.xyzw = r2.xxxx * cb1[91].xyzw + r0.xyzw;
  r1.x = cb2[10].z;
  r1.y = cb2[11].z;
  r1.z = cb2[12].z;
  r1.x = dot(v0.xyzw, r1.xyzw);
  r0.xyzw = r1.xxxx * cb1[93].xyzw + r0.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  return;
}