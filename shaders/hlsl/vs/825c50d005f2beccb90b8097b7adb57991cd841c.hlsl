// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

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
  uint v1 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float o2 : TEXCOORD6,
  out float3 p2 : TEXCOORD7,
  out float4 o3 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, vertex_id
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(1,-1) * cb0[1].wy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  r1.xyz = cb2[4].zzz * cb2[2].xyz;
  r0.yzw = r1.xyz * r0.yyy;
  r2.xyz = cb2[4].xxx * cb2[0].xyz;
  o0.xyz = r0.xxx * r2.xyz + r0.yzw;
  o0.w = 0;
  r0.x = (int)v1.x + asint(cb4[0].w);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = t0.Load(r0.x).w;
  o1.w = cb2[4].w * r0.x;
  r0.xyz = cb2[4].yyy * cb2[1].xyz;
  r0.xyz = cb0[1].zzz * r0.xyz;
  r0.xyz = cb0[1].yyy * r2.xyz + r0.xyz;
  r0.xyz = cb0[1].www * r1.xyz + r0.xyz;
  o1.xyz = r0.xyz;
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
  r0.w = dot(r0.xyz, r3.xyz);
  r0.w = r2.x / r0.w;
  r2.xyz = r3.xyz * r0.www + r1.xyz;
  r0.w = cmp(r0.w < 0);
  r1.z = dot(r3.xy, r3.xy);
  r1.z = rsqrt(r1.z);
  r3.w = cb0[2].x;
  r3.xyz = r3.xyw * r1.zzz;
  r4.x = cb0[2].x;
  r4.z = 0;
  r1.w = cb2[3].z;
  r1.xyz = -r3.xyz * r4.xxz + r1.xyw;
  r1.xyz = r0.www ? r2.xyz : r1.xyz;
  r1.xyz = cb1[70].xyz + r1.xyz;
  r0.w = cmp(cb1[67].z >= cb2[3].z);
  r1.xyz = r0.www ? r1.xyz : cb1[70].xyz;
  p2.xyz = r1.xyz;
  o2.x = 0;
  r2.x = cb3[23].z;
  r2.y = cb3[24].z;
  r2.z = cb3[25].z;
  r0.x = dot(r2.xyz, r0.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb3[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb3[27].z, r0.x);
  r0.x = cb3[27].y * r0.x + cb3[27].x;
  r2.xyzw = cb3[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb3[19].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb3[21].xyzw + r2.xyzw;
  r1.xyzw = cb3[22].xyzw + r1.xyzw;
  r0.y = cmp(r1.z < 0);
  r0.z = cmp(0 < cb3[28].x);
  r0.y = r0.y ? r0.z : 0;
  r0.yz = r0.yy ? float2(9.99999997e-007,1) : r1.zw;
  o3.xy = r1.xy;
  r0.x = r0.y * cb3[27].w + r0.x;
  o3.z = r0.x * r0.z;
  o3.w = r0.z;
  return;
}