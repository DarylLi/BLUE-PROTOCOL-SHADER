// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb5 : register(b5)
{
  float4 cb5[9];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[12];
}

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
  float4 cb1[143];
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
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD6,
  out float3 o5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r0.xyz = cb2[4].yyy * cb2[1].xyz;
  r0.xyz = cb0[1].zzz * r0.xyz;
  r0.xyz = cb0[1].yyy * r2.xyz + r0.xyz;
  r0.xyz = cb0[1].www * r1.xyz + r0.xyz;
  o1.xyz = r0.xyz;
  r0.w = (int)v1.x + asint(cb3[0].w);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.w << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.w = (int)r0.w * asint(cb3[0].y);
  r1.yz = t0.Load(r0.w).xy;
  o2.xy = r1.yz;
  r0.w = t1.Load(r1.x).w;
  o1.w = cb2[4].w * r0.w;
  o2.zw = float2(1,1);
  r0.w = cb4[4].x + cb4[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r1.x, r2.x);
  r3.x = -r1.x;
  r3.y = r2.x;
  r3.z = r1.x;
  r1.y = dot(cb4[3].yx, r3.yz);
  r1.x = dot(cb4[3].yx, r3.xy);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r1.xy = r1.xy / r0.ww;
  r1.zw = v0.xy * float2(1,-1) + float2(0.5,0.5);
  r1.zw = -cb1[66].wz + r1.zw;
  r1.zw = r1.zw / cb1[66].xy;
  r2.xy = cb1[49].xy * r1.ww;
  r1.zw = r1.zz * cb1[48].xy + r2.xy;
  r1.zw = cb1[50].xy + r1.zw;
  r1.zw = cb1[51].xy + r1.zw;
  r0.w = cmp(cb1[31].w < 1);
  r2.xy = r0.ww ? cb1[67].xy : r1.zw;
  r2.z = cb1[67].z;
  r1.z = dot(r0.xyz, r2.xyz);
  r1.z = cb2[3].z + -r1.z;
  r3.xy = cb0[1].xx * v0.xy;
  r3.xy = cb0[7].yx * r3.xy;
  r3.xzw = r3.xxx * cb0[4].xyz + cb0[3].xyz;
  r3.xyz = r3.yyy * cb0[5].xyz + r3.xzw;
  r3.xyz = r0.www ? -r3.xyz : -cb0[3].xyz;
  r0.x = dot(r0.xyz, r3.xyz);
  r0.x = r1.z / r0.x;
  r4.xyz = r3.xyz * r0.xxx + r2.xyz;
  r0.x = cmp(r0.x < 0);
  r0.y = dot(r3.xy, r3.xy);
  r0.y = rsqrt(r0.y);
  r3.w = cb0[2].x;
  r3.xyz = r3.xyw * r0.yyy;
  r5.x = cb0[2].x;
  r5.z = 0;
  r2.w = cb2[3].z;
  r2.xyz = -r3.xyz * r5.xxz + r2.xyw;
  r0.xyz = r0.xxx ? r4.xyz : r2.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r1.z = cmp(cb1[67].z >= cb2[3].z);
  r2.xyz = cb1[70].xyz;
  r0.xyz = r1.zzz ? r0.xyz : r2.xyz;
  r1.zw = -cb1[70].xy + r0.xy;
  r2.x = dot(r1.zw, r1.xy);
  r2.yzw = cb4[4].yzw * cb4[0].yzw;
  r2.y = 6.28318405 / r2.y;
  r3.x = cb4[1].x * cb1[142].z;
  r2.x = r2.x * r2.y + r3.x;
  r2.x = 1.00000024 * r2.x;
  sincos(r2.x, r2.x, r4.x);
  r2.y = r4.x * r2.w;
  r4.z = r2.x * r2.z;
  r2.x = r2.y * r2.z;
  r4.xy = r2.xx * r1.xy;
  r1.x = cb4[5].x + cb4[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r2.x);
  r5.x = -r1.x;
  r5.y = r2.x;
  r5.z = r1.x;
  r1.y = dot(cb4[3].yx, r5.yz);
  r1.x = dot(cb4[3].yx, r5.xy);
  r2.x = dot(r1.xy, r1.xy);
  r2.x = sqrt(r2.x);
  r1.xy = r1.xy / r2.xx;
  r2.x = dot(r1.zw, r1.xy);
  r2.yzw = cb4[5].yzw * cb4[0].yzw;
  r2.y = 6.28318405 / r2.y;
  r2.x = r2.x * r2.y + r3.x;
  r2.x = 1.00000024 * r2.x;
  sincos(r2.x, r2.x, r5.x);
  r2.y = r5.x * r2.w;
  r5.z = r2.x * r2.z;
  r2.x = r2.y * r2.z;
  r5.xy = r2.xx * r1.xy;
  r2.xyz = r5.xyz + r4.xyz;
  r1.x = cb4[6].x + cb4[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r4.x);
  r5.x = -r1.x;
  r5.y = r4.x;
  r5.z = r1.x;
  r1.y = dot(cb4[3].yx, r5.yz);
  r1.x = dot(cb4[3].yx, r5.xy);
  r2.w = dot(r1.xy, r1.xy);
  r2.w = sqrt(r2.w);
  r1.xy = r1.xy / r2.ww;
  r2.w = dot(r1.zw, r1.xy);
  r3.yzw = cb4[6].yzw * cb4[0].yzw;
  r3.y = 6.28318405 / r3.y;
  r2.w = r2.w * r3.y + r3.x;
  r2.w = 1.00000024 * r2.w;
  sincos(r2.w, r4.x, r5.x);
  r2.w = r5.x * r3.w;
  r4.z = r4.x * r3.z;
  r2.w = r2.w * r3.z;
  r4.xy = r2.ww * r1.xy;
  r1.x = cb4[7].x + cb4[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r5.x);
  r6.x = -r1.x;
  r6.y = r5.x;
  r6.z = r1.x;
  r1.y = dot(cb4[3].yx, r6.yz);
  r1.x = dot(cb4[3].yx, r6.xy);
  r2.w = dot(r1.xy, r1.xy);
  r2.w = sqrt(r2.w);
  r1.xy = r1.xy / r2.ww;
  r2.w = dot(r1.zw, r1.xy);
  r3.yzw = cb4[7].yzw * cb4[0].yzw;
  r3.y = 6.28318405 / r3.y;
  r2.w = r2.w * r3.y + r3.x;
  r2.w = 1.00000024 * r2.w;
  sincos(r2.w, r5.x, r6.x);
  r2.w = r6.x * r3.w;
  r5.z = r5.x * r3.z;
  r2.w = r2.w * r3.z;
  r5.xy = r2.ww * r1.xy;
  r3.yzw = r5.xyz + r4.xyz;
  r2.xyz = r3.yzw + r2.xyz;
  r1.x = cb4[8].x + cb4[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r4.x);
  r5.x = -r1.x;
  r5.y = r4.x;
  r5.z = r1.x;
  r1.y = dot(cb4[3].yx, r5.yz);
  r1.x = dot(cb4[3].yx, r5.xy);
  r2.w = dot(r1.xy, r1.xy);
  r2.w = sqrt(r2.w);
  r1.xy = r1.xy / r2.ww;
  r2.w = dot(r1.zw, r1.xy);
  r3.yzw = cb4[8].yzw * cb4[0].yzw;
  r3.y = 6.28318405 / r3.y;
  r2.w = r2.w * r3.y + r3.x;
  r2.w = 1.00000024 * r2.w;
  sincos(r2.w, r4.x, r5.x);
  r2.w = r5.x * r3.w;
  r4.z = r4.x * r3.z;
  r2.w = r2.w * r3.z;
  r4.xy = r2.ww * r1.xy;
  r1.x = cb4[9].x + cb4[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r5.x);
  r6.x = -r1.x;
  r6.y = r5.x;
  r6.z = r1.x;
  r1.y = dot(cb4[3].yx, r6.yz);
  r1.x = dot(cb4[3].yx, r6.xy);
  r2.w = dot(r1.xy, r1.xy);
  r2.w = sqrt(r2.w);
  r1.xy = r1.xy / r2.ww;
  r2.w = dot(r1.zw, r1.xy);
  r3.yzw = cb4[9].yzw * cb4[0].yzw;
  r3.y = 6.28318405 / r3.y;
  r2.w = r2.w * r3.y + r3.x;
  r2.w = 1.00000024 * r2.w;
  sincos(r2.w, r5.x, r6.x);
  r2.w = r6.x * r3.w;
  r5.z = r5.x * r3.z;
  r2.w = r2.w * r3.z;
  r5.xy = r2.ww * r1.xy;
  r3.yzw = r5.xyz + r4.xyz;
  r1.x = cb4[10].x + cb4[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r4.x);
  r5.x = -r1.x;
  r5.y = r4.x;
  r5.z = r1.x;
  r1.y = dot(cb4[3].yx, r5.yz);
  r1.x = dot(cb4[3].yx, r5.xy);
  r2.w = dot(r1.xy, r1.xy);
  r2.w = sqrt(r2.w);
  r1.xy = r1.xy / r2.ww;
  r2.w = dot(r1.zw, r1.xy);
  r4.xyz = cb4[10].yzw * cb4[0].yzw;
  r4.x = 6.28318405 / r4.x;
  r2.w = r2.w * r4.x + r3.x;
  r2.w = 1.00000024 * r2.w;
  sincos(r2.w, r4.x, r5.x);
  r2.w = r5.x * r4.z;
  r5.z = r4.x * r4.y;
  r2.w = r2.w * r4.y;
  r5.xy = r2.ww * r1.xy;
  r1.x = cb4[11].x + cb4[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r4.x);
  r6.x = -r1.x;
  r6.y = r4.x;
  r6.z = r1.x;
  r1.y = dot(cb4[3].yx, r6.yz);
  r1.x = dot(cb4[3].yx, r6.xy);
  r2.w = dot(r1.xy, r1.xy);
  r2.w = sqrt(r2.w);
  r1.xy = r1.xy / r2.ww;
  r1.z = dot(r1.zw, r1.xy);
  r4.xyz = cb4[11].yzw * cb4[0].yzw;
  r1.w = 6.28318405 / r4.x;
  r1.z = r1.z * r1.w + r3.x;
  r1.z = 1.00000024 * r1.z;
  sincos(r1.z, r3.x, r4.x);
  r1.z = r4.x * r4.z;
  r6.z = r3.x * r4.y;
  r1.z = r1.z * r4.y;
  r6.xy = r1.xy * r1.zz;
  r1.xyz = r6.xyz + r5.xyz;
  r1.xyz = r3.yzw + r1.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.xyz = float3(0.125,0.125,0.125) * r1.xyz;
  r2.xyz = -cb1[70].xyz + r0.xyz;
  r2.xyz = cb1[67].xyz + -r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r1.w = -cb5[7].w + r1.w;
  r1.w = saturate(r1.w / cb5[8].x);
  r1.w = 1 + -r1.w;
  r1.xyz = r1.xyz * r1.www;
  o3.xy = r1.zz;
  o3.zw = float2(0,0);
  r2.xy = cb1[1].wz * r0.yy;
  r2.xy = r0.xx * cb1[0].wz + r2.xy;
  r2.xy = r0.zz * cb1[2].wz + r2.xy;
  r2.xy = cb1[3].wz + r2.xy;
  r1.w = r2.y * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r2.y = r2.y * cb1[65].x + cb1[65].y;
  r1.w = r2.y + r1.w;
  r0.w = r0.w ? r2.x : r1.w;
  r0.w = saturate(0.00499999989 * r0.w);
  r1.xyz = r0.www * r1.xyz;
  r1.xyz = r1.xyz * cb4[2].xxx + r0.xyz;
  o5.xyz = r0.xyz;
  o4.xyz = r1.xyz;
  o4.w = 1;
  r0.xyzw = cb1[1].xyzw * r1.yyyy;
  r0.xyzw = r1.xxxx * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r1.zzzz * cb1[2].xyzw + r0.xyzw;
  o6.xyzw = cb1[3].xyzw + r0.xyzw;
  return;
}