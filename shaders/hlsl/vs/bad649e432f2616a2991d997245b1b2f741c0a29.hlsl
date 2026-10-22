// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[365];
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
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

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
  r3.xyz = cb0[1].yyy * r4.xyz + r3.xyz;
  r5.xyz = cb2[4].zzz * cb2[2].xyz;
  r3.xyz = cb0[1].www * r5.xyz + r3.xyz;
  r2.z = cb1[67].z;
  r0.w = dot(r3.xyz, r2.xyz);
  r0.w = cb2[3].z + -r0.w;
  r1.w = dot(r3.xyz, r0.xyz);
  o2.xyz = r3.xyz;
  r0.w = r0.w / r1.w;
  r0.xyz = r0.xyz * r0.www + r2.xyz;
  r0.w = cmp(r0.w < 0);
  r0.xyz = r0.www ? r0.xyz : r1.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r0.w = cmp(cb1[67].z >= cb2[3].z);
  r1.xyz = cb1[70].xyz;
  r0.xyz = r0.www ? r0.xyz : r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  o3.xyz = r0.xyz;
  r0.xyzw = cb1[3].xyzw + r1.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  r0.xy = float2(1,-1) * cb0[1].wy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  r0.yzw = r0.yyy * r5.xyz;
  o1.xyz = r0.xxx * r4.xyz + r0.yzw;
  o1.w = 0;
  r0.x = (int)v1.x + asint(cb3[0].w);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = t0.Load(r0.x).w;
  o2.w = cb2[4].w * r0.x;
  o3.w = 1;
  return;
}