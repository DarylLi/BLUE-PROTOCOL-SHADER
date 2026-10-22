// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb6 : register(b6)
{
  float4 cb6[9];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[12];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[4];
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
  out float4 o4 : TEXCOORD4,
  out float3 o5 : TEXCOORD9,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r1.x = t1.Load(r1.x).w;
  o1.w = cb2[4].w * r1.x;
  r1.x = (int)r0.w * asint(cb3[0].y);
  r0.w = mad(asint(cb3[0].y), (int)r0.w, asint(cb3[0].z));
  r1.yz = t0.Load(r0.w).xy;
  r1.xw = t0.Load(r1.x).xy;
  o2.xy = r1.xw;
  o2.zw = float2(1,1);
  r0.w = cb5[4].x + cb5[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r1.x, r2.x);
  r3.x = -r1.x;
  r3.y = r2.x;
  r3.z = r1.x;
  r2.y = dot(cb5[3].yx, r3.yz);
  r2.x = dot(cb5[3].yx, r3.xy);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = sqrt(r0.w);
  r1.xw = r2.xy / r0.ww;
  r2.xy = v0.xy * float2(1,-1) + float2(0.5,0.5);
  r2.xy = -cb1[66].wz + r2.xy;
  r2.xy = r2.xy / cb1[66].xy;
  r2.yz = cb1[49].xy * r2.yy;
  r2.xy = r2.xx * cb1[48].xy + r2.yz;
  r2.xy = cb1[50].xy + r2.xy;
  r2.xy = cb1[51].xy + r2.xy;
  r0.w = cmp(cb1[31].w < 1);
  r2.xy = r0.ww ? cb1[67].xy : r2.xy;
  r2.z = cb1[67].z;
  r3.x = dot(r0.xyz, r2.xyz);
  r3.x = cb2[3].z + -r3.x;
  r3.yz = cb0[1].xx * v0.xy;
  r3.yz = cb0[7].yx * r3.yz;
  r4.xyz = r3.yyy * cb0[4].xyz + cb0[3].xyz;
  r3.yzw = r3.zzz * cb0[5].xyz + r4.xyz;
  r4.xyz = r0.www ? -r3.yzw : -cb0[3].xyz;
  r0.x = dot(r0.xyz, r4.xyz);
  r0.x = r3.x / r0.x;
  r3.xyz = r4.xyz * r0.xxx + r2.xyz;
  r0.x = cmp(r0.x < 0);
  r0.y = dot(r4.xy, r4.xy);
  r0.y = rsqrt(r0.y);
  r4.w = cb0[2].x;
  r4.xyz = r4.xyw * r0.yyy;
  r5.x = cb0[2].x;
  r5.z = 0;
  r2.w = cb2[3].z;
  r2.xyz = -r4.xyz * r5.xxz + r2.xyw;
  r0.xyz = r0.xxx ? r3.xyz : r2.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r2.x = cmp(cb1[67].z >= cb2[3].z);
  r0.xyz = r2.xxx ? r0.xyz : cb1[70].xyz;
  r2.xy = -cb1[70].xy + r0.xy;
  r2.z = dot(r2.xy, r1.xw);
  r3.xyz = cb5[4].yzw * cb5[0].yzw;
  r2.w = 6.28318405 / r3.x;
  r3.x = cb5[1].x * cb1[142].z;
  r2.z = r2.z * r2.w + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r4.x, r5.x);
  r2.z = r5.x * r3.z;
  r4.z = r4.x * r3.y;
  r2.z = r2.z * r3.y;
  r4.xy = r2.zz * r1.xw;
  r1.x = cb5[5].x + cb5[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r5.x);
  r6.x = -r1.x;
  r6.y = r5.x;
  r6.z = r1.x;
  r5.y = dot(cb5[3].yx, r6.yz);
  r5.x = dot(cb5[3].yx, r6.xy);
  r1.x = dot(r5.xy, r5.xy);
  r1.x = sqrt(r1.x);
  r1.xw = r5.xy / r1.xx;
  r2.z = dot(r2.xy, r1.xw);
  r3.yzw = cb5[5].yzw * cb5[0].yzw;
  r2.w = 6.28318405 / r3.y;
  r2.z = r2.z * r2.w + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r5.x, r6.x);
  r2.z = r6.x * r3.w;
  r5.z = r5.x * r3.z;
  r2.z = r2.z * r3.z;
  r5.xy = r2.zz * r1.xw;
  r3.yzw = r5.xyz + r4.xyz;
  r1.x = cb5[6].x + cb5[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r4.x);
  r5.x = -r1.x;
  r5.y = r4.x;
  r5.z = r1.x;
  r4.y = dot(cb5[3].yx, r5.yz);
  r4.x = dot(cb5[3].yx, r5.xy);
  r1.x = dot(r4.xy, r4.xy);
  r1.x = sqrt(r1.x);
  r1.xw = r4.xy / r1.xx;
  r2.z = dot(r2.xy, r1.xw);
  r4.xyz = cb5[6].yzw * cb5[0].yzw;
  r2.w = 6.28318405 / r4.x;
  r2.z = r2.z * r2.w + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r4.x, r5.x);
  r2.z = r5.x * r4.z;
  r5.z = r4.x * r4.y;
  r2.z = r2.z * r4.y;
  r5.xy = r2.zz * r1.xw;
  r1.x = cb5[7].x + cb5[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r4.x);
  r6.x = -r1.x;
  r6.y = r4.x;
  r6.z = r1.x;
  r4.y = dot(cb5[3].yx, r6.yz);
  r4.x = dot(cb5[3].yx, r6.xy);
  r1.x = dot(r4.xy, r4.xy);
  r1.x = sqrt(r1.x);
  r1.xw = r4.xy / r1.xx;
  r2.z = dot(r2.xy, r1.xw);
  r4.xyz = cb5[7].yzw * cb5[0].yzw;
  r2.w = 6.28318405 / r4.x;
  r2.z = r2.z * r2.w + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r4.x, r6.x);
  r2.z = r6.x * r4.z;
  r6.z = r4.x * r4.y;
  r2.z = r2.z * r4.y;
  r6.xy = r2.zz * r1.xw;
  r4.xyz = r6.xyz + r5.xyz;
  r3.yzw = r4.xyz + r3.yzw;
  r1.x = cb5[8].x + cb5[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r4.x);
  r5.x = -r1.x;
  r5.y = r4.x;
  r5.z = r1.x;
  r4.y = dot(cb5[3].yx, r5.yz);
  r4.x = dot(cb5[3].yx, r5.xy);
  r1.x = dot(r4.xy, r4.xy);
  r1.x = sqrt(r1.x);
  r1.xw = r4.xy / r1.xx;
  r2.z = dot(r2.xy, r1.xw);
  r4.xyz = cb5[8].yzw * cb5[0].yzw;
  r2.w = 6.28318405 / r4.x;
  r2.z = r2.z * r2.w + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r4.x, r5.x);
  r2.z = r5.x * r4.z;
  r5.z = r4.x * r4.y;
  r2.z = r2.z * r4.y;
  r5.xy = r2.zz * r1.xw;
  r1.x = cb5[9].x + cb5[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r4.x);
  r6.x = -r1.x;
  r6.y = r4.x;
  r6.z = r1.x;
  r4.y = dot(cb5[3].yx, r6.yz);
  r4.x = dot(cb5[3].yx, r6.xy);
  r1.x = dot(r4.xy, r4.xy);
  r1.x = sqrt(r1.x);
  r1.xw = r4.xy / r1.xx;
  r2.z = dot(r2.xy, r1.xw);
  r4.xyz = cb5[9].yzw * cb5[0].yzw;
  r2.w = 6.28318405 / r4.x;
  r2.z = r2.z * r2.w + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r4.x, r6.x);
  r2.z = r6.x * r4.z;
  r6.z = r4.x * r4.y;
  r2.z = r2.z * r4.y;
  r6.xy = r2.zz * r1.xw;
  r4.xyz = r6.xyz + r5.xyz;
  r1.x = cb5[10].x + cb5[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r5.x);
  r6.x = -r1.x;
  r6.y = r5.x;
  r6.z = r1.x;
  r5.y = dot(cb5[3].yx, r6.yz);
  r5.x = dot(cb5[3].yx, r6.xy);
  r1.x = dot(r5.xy, r5.xy);
  r1.x = sqrt(r1.x);
  r1.xw = r5.xy / r1.xx;
  r2.z = dot(r2.xy, r1.xw);
  r5.xyz = cb5[10].yzw * cb5[0].yzw;
  r2.w = 6.28318405 / r5.x;
  r2.z = r2.z * r2.w + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r5.x, r6.x);
  r2.z = r6.x * r5.z;
  r6.z = r5.x * r5.y;
  r2.z = r2.z * r5.y;
  r6.xy = r2.zz * r1.xw;
  r1.x = cb5[11].x + cb5[0].x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r5.x);
  r7.x = -r1.x;
  r7.y = r5.x;
  r7.z = r1.x;
  r5.y = dot(cb5[3].yx, r7.yz);
  r5.x = dot(cb5[3].yx, r7.xy);
  r1.x = dot(r5.xy, r5.xy);
  r1.x = sqrt(r1.x);
  r1.xw = r5.xy / r1.xx;
  r2.x = dot(r2.xy, r1.xw);
  r2.yzw = cb5[11].yzw * cb5[0].yzw;
  r2.y = 6.28318405 / r2.y;
  r2.x = r2.x * r2.y + r3.x;
  r2.x = 1.00000024 * r2.x;
  sincos(r2.x, r2.x, r3.x);
  r2.y = r3.x * r2.w;
  r5.z = r2.x * r2.z;
  r2.x = r2.y * r2.z;
  r5.xy = r2.xx * r1.xw;
  r2.xyz = r6.xyz + r5.xyz;
  r2.xyz = r4.xyz + r2.xyz;
  r2.xyz = r3.yzw + r2.xyz;
  r2.xyz = float3(0.125,0.125,0.125) * r2.xyz;
  r3.xyz = -cb1[70].xyz + r0.xyz;
  r3.xyz = cb1[67].xyz + -r3.xyz;
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = sqrt(r1.x);
  r1.x = -cb6[7].w + r1.x;
  r1.x = saturate(r1.x / cb6[8].x);
  r1.x = 1 + -r1.x;
  r2.xyz = r2.xyz * r1.xxx;
  o3.xy = r2.zz;
  o3.zw = float2(0,0);
  o4.xy = r1.yz * cb4[2].xy + cb4[2].zw;
  o4.zw = r1.yz * cb4[3].xy + cb4[3].zw;
  o5.xyz = r0.xyz;
  r1.xy = cb1[1].wz * r0.yy;
  r1.xy = r0.xx * cb1[0].wz + r1.xy;
  r1.xy = r0.zz * cb1[2].wz + r1.xy;
  r1.xy = cb1[3].wz + r1.xy;
  r1.z = r1.y * cb1[65].z + -cb1[65].w;
  r1.z = 1 / r1.z;
  r1.y = r1.y * cb1[65].x + cb1[65].y;
  r1.y = r1.y + r1.z;
  r0.w = r0.w ? r1.x : r1.y;
  r0.w = saturate(0.00499999989 * r0.w);
  r1.xyz = r0.www * r2.xyz;
  r0.xyz = r1.xyz * cb5[2].xxx + r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  o6.xyzw = cb1[3].xyzw + r0.xyzw;
  return;
}