// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[9];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[143];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD4,
  out uint o5 : PRIMITIVE_ID0,
  out uint p5 : LIGHTMAP_ID0,
  out float3 o6 : TEXCOORD9,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t3.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x * 36;
  r2.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r2.y = t0[r2.z].val[0/4];
  r2.z = t0[r2.z].val[0/4+1];
  r2.w = t0[r2.z].val[0/4+2];
  r2.yzw = cb0[70].xyz + r2.yzw;
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(4,24));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r5.w = t0[r4.x].val[0/4+3];
  r3.w = t0[r4.y].val[12/4];
  r3.w = (int)r3.w + asint(cb1[1].y);
  r4.xyz = r5.yyy * r3.xyz;
  r3.xyz = v0.yyy * r3.xyz;
  r6.xyz = r4.xyz * r0.zzz;
  r4.xyz = r4.xyz * r1.yyy;
  r7.x = t0[r2.x].val[0/4];
  r7.y = t0[r2.x].val[0/4+1];
  r7.z = t0[r2.x].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r8.x = t0[r0.z].val[0/4];
  r8.y = t0[r0.z].val[0/4+1];
  r8.z = t0[r0.z].val[0/4+2];
  r9.xyz = r7.xyz * r5.xxx;
  r3.xyz = r7.xyz * v0.xxx + r3.xyz;
  r3.xyz = r8.xyz * v0.zzz + r3.xyz;
  r5.xyz = r8.xyz * r5.zzz;
  o1.w = r5.w * r1.w;
  r2.xyz = r3.xyz + r2.yzw;
  r3.xyz = r0.yyy * r9.xyz + r6.xyz;
  o0.xyz = r0.www * r5.xyz + r3.xyz;
  r0.yzw = r1.xxx * r9.xyz + r4.xyz;
  o1.xyz = r1.zzz * r5.xyz + r0.yzw;
  r0.y = (int)r0.x * asint(cb1[0].y);
  r0.x = mad(asint(cb1[0].y), (int)r0.x, asint(cb1[0].z));
  r0.xz = t2.Load(r0.x).xy;
  r0.yw = t2.Load(r0.y).xy;
  o2.xy = r0.yw;
  o2.zw = float2(1,1);
  r0.y = cb2[4].x + cb2[0].x;
  r0.y = 6.28318548 * r0.y;
  sincos(r0.y, r1.x, r3.x);
  r4.x = -r1.x;
  r4.y = r3.x;
  r4.z = r1.x;
  r1.y = dot(cb2[3].yx, r4.yz);
  r1.x = dot(cb2[3].yx, r4.xy);
  r0.y = dot(r1.xy, r1.xy);
  r0.y = sqrt(r0.y);
  r0.yw = r1.xy / r0.yy;
  r1.xy = -cb0[70].xy + r2.xy;
  r1.z = dot(r1.xy, r0.yw);
  r3.xyz = cb2[4].yzw * cb2[0].yzw;
  r1.w = 6.28318405 / r3.x;
  r2.w = cb2[1].x * cb0[142].z;
  r1.z = r1.z * r1.w + r2.w;
  r1.z = 1.00000024 * r1.z;
  sincos(r1.z, r3.x, r4.x);
  r1.z = r4.x * r3.z;
  r4.z = r3.x * r3.y;
  r1.z = r1.z * r3.y;
  r4.xy = r1.zz * r0.yw;
  r0.y = cb2[5].x + cb2[0].x;
  r0.y = 6.28318548 * r0.y;
  sincos(r0.y, r3.x, r5.x);
  r6.x = -r3.x;
  r6.y = r5.x;
  r6.z = r3.x;
  r3.y = dot(cb2[3].yx, r6.yz);
  r3.x = dot(cb2[3].yx, r6.xy);
  r0.y = dot(r3.xy, r3.xy);
  r0.y = sqrt(r0.y);
  r0.yw = r3.xy / r0.yy;
  r1.z = dot(r1.xy, r0.yw);
  r3.xyz = cb2[5].yzw * cb2[0].yzw;
  r1.w = 6.28318405 / r3.x;
  r1.z = r1.z * r1.w + r2.w;
  r1.z = 1.00000024 * r1.z;
  sincos(r1.z, r3.x, r5.x);
  r1.z = r5.x * r3.z;
  r5.z = r3.x * r3.y;
  r1.z = r1.z * r3.y;
  r5.xy = r1.zz * r0.yw;
  r3.xyz = r5.xyz + r4.xyz;
  r0.y = cb2[6].x + cb2[0].x;
  r0.y = 6.28318548 * r0.y;
  sincos(r0.y, r4.x, r5.x);
  r6.x = -r4.x;
  r6.y = r5.x;
  r6.z = r4.x;
  r4.y = dot(cb2[3].yx, r6.yz);
  r4.x = dot(cb2[3].yx, r6.xy);
  r0.y = dot(r4.xy, r4.xy);
  r0.y = sqrt(r0.y);
  r0.yw = r4.xy / r0.yy;
  r1.z = dot(r1.xy, r0.yw);
  r4.xyz = cb2[6].yzw * cb2[0].yzw;
  r1.w = 6.28318405 / r4.x;
  r1.z = r1.z * r1.w + r2.w;
  r1.z = 1.00000024 * r1.z;
  sincos(r1.z, r4.x, r5.x);
  r1.z = r5.x * r4.z;
  r5.z = r4.x * r4.y;
  r1.z = r1.z * r4.y;
  r5.xy = r1.zz * r0.yw;
  r0.y = cb2[7].x + cb2[0].x;
  r0.y = 6.28318548 * r0.y;
  sincos(r0.y, r4.x, r6.x);
  r7.x = -r4.x;
  r7.y = r6.x;
  r7.z = r4.x;
  r4.y = dot(cb2[3].yx, r7.yz);
  r4.x = dot(cb2[3].yx, r7.xy);
  r0.y = dot(r4.xy, r4.xy);
  r0.y = sqrt(r0.y);
  r0.yw = r4.xy / r0.yy;
  r1.z = dot(r1.xy, r0.yw);
  r4.xyz = cb2[7].yzw * cb2[0].yzw;
  r1.w = 6.28318405 / r4.x;
  r1.z = r1.z * r1.w + r2.w;
  r1.z = 1.00000024 * r1.z;
  sincos(r1.z, r4.x, r6.x);
  r1.z = r6.x * r4.z;
  r6.z = r4.x * r4.y;
  r1.z = r1.z * r4.y;
  r6.xy = r1.zz * r0.yw;
  r4.xyz = r6.xyz + r5.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r0.y = cb2[8].x + cb2[0].x;
  r0.y = 6.28318548 * r0.y;
  sincos(r0.y, r4.x, r5.x);
  r6.x = -r4.x;
  r6.y = r5.x;
  r6.z = r4.x;
  r4.y = dot(cb2[3].yx, r6.yz);
  r4.x = dot(cb2[3].yx, r6.xy);
  r0.y = dot(r4.xy, r4.xy);
  r0.y = sqrt(r0.y);
  r0.yw = r4.xy / r0.yy;
  r1.z = dot(r1.xy, r0.yw);
  r4.xyz = cb2[8].yzw * cb2[0].yzw;
  r1.w = 6.28318405 / r4.x;
  r1.z = r1.z * r1.w + r2.w;
  r1.z = 1.00000024 * r1.z;
  sincos(r1.z, r4.x, r5.x);
  r1.z = r5.x * r4.z;
  r5.z = r4.x * r4.y;
  r1.z = r1.z * r4.y;
  r5.xy = r1.zz * r0.yw;
  r0.y = cb2[9].x + cb2[0].x;
  r0.y = 6.28318548 * r0.y;
  sincos(r0.y, r4.x, r6.x);
  r7.x = -r4.x;
  r7.y = r6.x;
  r7.z = r4.x;
  r4.y = dot(cb2[3].yx, r7.yz);
  r4.x = dot(cb2[3].yx, r7.xy);
  r0.y = dot(r4.xy, r4.xy);
  r0.y = sqrt(r0.y);
  r0.yw = r4.xy / r0.yy;
  r1.z = dot(r1.xy, r0.yw);
  r4.xyz = cb2[9].yzw * cb2[0].yzw;
  r1.w = 6.28318405 / r4.x;
  r1.z = r1.z * r1.w + r2.w;
  r1.z = 1.00000024 * r1.z;
  sincos(r1.z, r4.x, r6.x);
  r1.z = r6.x * r4.z;
  r6.z = r4.x * r4.y;
  r1.z = r1.z * r4.y;
  r6.xy = r1.zz * r0.yw;
  r4.xyz = r6.xyz + r5.xyz;
  r0.y = cb2[10].x + cb2[0].x;
  r0.y = 6.28318548 * r0.y;
  sincos(r0.y, r5.x, r6.x);
  r7.x = -r5.x;
  r7.y = r6.x;
  r7.z = r5.x;
  r5.y = dot(cb2[3].yx, r7.yz);
  r5.x = dot(cb2[3].yx, r7.xy);
  r0.y = dot(r5.xy, r5.xy);
  r0.y = sqrt(r0.y);
  r0.yw = r5.xy / r0.yy;
  r1.z = dot(r1.xy, r0.yw);
  r5.xyz = cb2[10].yzw * cb2[0].yzw;
  r1.w = 6.28318405 / r5.x;
  r1.z = r1.z * r1.w + r2.w;
  r1.z = 1.00000024 * r1.z;
  sincos(r1.z, r5.x, r6.x);
  r1.z = r6.x * r5.z;
  r6.z = r5.x * r5.y;
  r1.z = r1.z * r5.y;
  r6.xy = r1.zz * r0.yw;
  r0.y = cb2[11].x + cb2[0].x;
  r0.y = 6.28318548 * r0.y;
  sincos(r0.y, r5.x, r7.x);
  r8.x = -r5.x;
  r8.y = r7.x;
  r8.z = r5.x;
  r5.y = dot(cb2[3].yx, r8.yz);
  r5.x = dot(cb2[3].yx, r8.xy);
  r0.y = dot(r5.xy, r5.xy);
  r0.y = sqrt(r0.y);
  r0.yw = r5.xy / r0.yy;
  r1.x = dot(r1.xy, r0.yw);
  r1.yzw = cb2[11].yzw * cb2[0].yzw;
  r1.y = 6.28318405 / r1.y;
  r1.x = r1.x * r1.y + r2.w;
  r1.x = 1.00000024 * r1.x;
  sincos(r1.x, r1.x, r5.x);
  r1.y = r5.x * r1.w;
  r5.z = r1.x * r1.z;
  r1.x = r1.y * r1.z;
  r5.xy = r1.xx * r0.yw;
  r1.xyz = r6.xyz + r5.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r1.xyz = float3(0.125,0.125,0.125) * r1.xyz;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r3.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = sqrt(r0.y);
  r0.y = -cb3[7].w + r0.y;
  r0.y = saturate(r0.y / cb3[8].x);
  r0.y = 1 + -r0.y;
  r1.xyz = r1.xyz * r0.yyy;
  o3.xy = r1.zz;
  o3.zw = float2(0,0);
  r0.y = mad((int)r3.w, 15, 2);
  p5.x = r3.w;
  r3.x = t1[r0.y].val[0/4];
  r3.y = t1[r0.y].val[0/4+1];
  r3.z = t1[r0.y].val[0/4+2];
  r3.w = t1[r0.y].val[0/4+3];
  o4.xy = r0.xz * r3.xy + r3.zw;
  o4.zw = float2(0,0);
  o5.x = v1.x;
  o6.xyz = r2.xyz;
  r0.xy = cb0[1].wz * r2.yy;
  r0.xy = r2.xx * cb0[0].wz + r0.xy;
  r0.xy = r2.zz * cb0[2].wz + r0.xy;
  r0.xy = cb0[3].wz + r0.xy;
  r0.z = r0.y * cb0[65].z + -cb0[65].w;
  r0.z = 1 / r0.z;
  r0.y = r0.y * cb0[65].x + cb0[65].y;
  r0.y = r0.y + r0.z;
  r0.z = cmp(cb0[31].w < 1);
  r0.x = r0.z ? r0.x : r0.y;
  r0.x = saturate(0.00499999989 * r0.x);
  r0.xyz = r0.xxx * r1.xyz;
  r0.xyz = r0.xyz * cb2[2].xxx + r2.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o7.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}