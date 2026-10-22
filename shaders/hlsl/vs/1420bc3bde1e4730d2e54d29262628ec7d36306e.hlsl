// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[9];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  out uint o4 : PRIMITIVE_ID0,
  out float4 o5 : TEXCOORD6,
  out float4 o6 : TEXCOORD7,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = (int)r0.x * asint(cb2[0].y);
  r1.yz = t1.Load(r0.x).xy;
  o2.xy = r1.yz;
  r1.xyzw = t2.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.xyz = r1.xyz * r0.zwy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r0.w = (int)v1.x * 36;
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r3.xyz = cb0[70].xyz + r3.xyz;
  r2.y = mad((int)v1.x, 36, 4);
  r4.x = t0[r2.y].val[0/4];
  r4.y = t0[r2.y].val[0/4+1];
  r4.z = t0[r2.y].val[0/4+2];
  r4.w = t0[r2.y].val[0/4+3];
  r5.xyz = r4.yyy * r2.xzw;
  r2.xyz = v0.yyy * r2.xzw;
  r6.xyz = r5.xyz * r0.yyy;
  r5.xyz = r5.xyz * r1.yyy;
  r7.x = t0[r0.w].val[0/4];
  r7.y = t0[r0.w].val[0/4+1];
  r7.z = t0[r0.w].val[0/4+2];
  r0.y = mad((int)v1.x, 36, 2);
  r8.x = t0[r0.y].val[0/4];
  r8.y = t0[r0.y].val[0/4+1];
  r8.z = t0[r0.y].val[0/4+2];
  r9.xyz = r7.xyz * r4.xxx;
  r2.xyz = r7.xyz * v0.xxx + r2.xyz;
  r2.xyz = r8.xyz * v0.zzz + r2.xyz;
  r4.xyz = r8.xyz * r4.zzz;
  o1.w = r4.w * r1.w;
  r2.xyz = r2.xyz + r3.xyz;
  r0.xyw = r0.xxx * r9.xyz + r6.xyz;
  o0.xyz = r0.zzz * r4.xyz + r0.xyw;
  r0.xyz = r1.xxx * r9.xyz + r5.xyz;
  o1.xyz = r1.zzz * r4.xyz + r0.xyz;
  o2.zw = float2(1,1);
  r0.x = cb3[4].x + cb3[0].x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r1.x);
  r3.x = -r0.x;
  r3.y = r1.x;
  r3.z = r0.x;
  r0.y = dot(cb3[3].yx, r3.yz);
  r0.x = dot(cb3[3].yx, r3.xy);
  r0.z = dot(r0.xy, r0.xy);
  r0.z = sqrt(r0.z);
  r0.xy = r0.xy / r0.zz;
  r0.zw = -cb0[70].xy + r2.xy;
  r1.x = dot(r0.zw, r0.xy);
  r1.yzw = cb3[4].yzw * cb3[0].yzw;
  r1.y = 6.28318405 / r1.y;
  r2.w = cb3[1].x * cb0[142].z;
  r1.x = r1.x * r1.y + r2.w;
  r1.x = 1.00000024 * r1.x;
  sincos(r1.x, r1.x, r3.x);
  r1.y = r3.x * r1.w;
  r3.z = r1.x * r1.z;
  r1.x = r1.y * r1.z;
  r3.xy = r1.xx * r0.xy;
  r0.x = cb3[5].x + cb3[0].x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r1.x);
  r4.x = -r0.x;
  r4.y = r1.x;
  r4.z = r0.x;
  r0.y = dot(cb3[3].yx, r4.yz);
  r0.x = dot(cb3[3].yx, r4.xy);
  r1.x = dot(r0.xy, r0.xy);
  r1.x = sqrt(r1.x);
  r0.xy = r0.xy / r1.xx;
  r1.x = dot(r0.zw, r0.xy);
  r1.yzw = cb3[5].yzw * cb3[0].yzw;
  r1.y = 6.28318405 / r1.y;
  r1.x = r1.x * r1.y + r2.w;
  r1.x = 1.00000024 * r1.x;
  sincos(r1.x, r1.x, r4.x);
  r1.y = r4.x * r1.w;
  r4.z = r1.x * r1.z;
  r1.x = r1.y * r1.z;
  r4.xy = r1.xx * r0.xy;
  r1.xyz = r4.xyz + r3.xyz;
  r0.x = cb3[6].x + cb3[0].x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r3.x);
  r4.x = -r0.x;
  r4.y = r3.x;
  r4.z = r0.x;
  r0.y = dot(cb3[3].yx, r4.yz);
  r0.x = dot(cb3[3].yx, r4.xy);
  r1.w = dot(r0.xy, r0.xy);
  r1.w = sqrt(r1.w);
  r0.xy = r0.xy / r1.ww;
  r1.w = dot(r0.zw, r0.xy);
  r3.xyz = cb3[6].yzw * cb3[0].yzw;
  r3.x = 6.28318405 / r3.x;
  r1.w = r1.w * r3.x + r2.w;
  r1.w = 1.00000024 * r1.w;
  sincos(r1.w, r3.x, r4.x);
  r1.w = r4.x * r3.z;
  r4.z = r3.x * r3.y;
  r1.w = r1.w * r3.y;
  r4.xy = r1.ww * r0.xy;
  r0.x = cb3[7].x + cb3[0].x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r3.x);
  r5.x = -r0.x;
  r5.y = r3.x;
  r5.z = r0.x;
  r0.y = dot(cb3[3].yx, r5.yz);
  r0.x = dot(cb3[3].yx, r5.xy);
  r1.w = dot(r0.xy, r0.xy);
  r1.w = sqrt(r1.w);
  r0.xy = r0.xy / r1.ww;
  r1.w = dot(r0.zw, r0.xy);
  r3.xyz = cb3[7].yzw * cb3[0].yzw;
  r3.x = 6.28318405 / r3.x;
  r1.w = r1.w * r3.x + r2.w;
  r1.w = 1.00000024 * r1.w;
  sincos(r1.w, r3.x, r5.x);
  r1.w = r5.x * r3.z;
  r5.z = r3.x * r3.y;
  r1.w = r1.w * r3.y;
  r5.xy = r1.ww * r0.xy;
  r3.xyz = r5.xyz + r4.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r0.x = cb3[8].x + cb3[0].x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r3.x);
  r4.x = -r0.x;
  r4.y = r3.x;
  r4.z = r0.x;
  r0.y = dot(cb3[3].yx, r4.yz);
  r0.x = dot(cb3[3].yx, r4.xy);
  r1.w = dot(r0.xy, r0.xy);
  r1.w = sqrt(r1.w);
  r0.xy = r0.xy / r1.ww;
  r1.w = dot(r0.zw, r0.xy);
  r3.xyz = cb3[8].yzw * cb3[0].yzw;
  r3.x = 6.28318405 / r3.x;
  r1.w = r1.w * r3.x + r2.w;
  r1.w = 1.00000024 * r1.w;
  sincos(r1.w, r3.x, r4.x);
  r1.w = r4.x * r3.z;
  r4.z = r3.x * r3.y;
  r1.w = r1.w * r3.y;
  r4.xy = r1.ww * r0.xy;
  r0.x = cb3[9].x + cb3[0].x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r3.x);
  r5.x = -r0.x;
  r5.y = r3.x;
  r5.z = r0.x;
  r0.y = dot(cb3[3].yx, r5.yz);
  r0.x = dot(cb3[3].yx, r5.xy);
  r1.w = dot(r0.xy, r0.xy);
  r1.w = sqrt(r1.w);
  r0.xy = r0.xy / r1.ww;
  r1.w = dot(r0.zw, r0.xy);
  r3.xyz = cb3[9].yzw * cb3[0].yzw;
  r3.x = 6.28318405 / r3.x;
  r1.w = r1.w * r3.x + r2.w;
  r1.w = 1.00000024 * r1.w;
  sincos(r1.w, r3.x, r5.x);
  r1.w = r5.x * r3.z;
  r5.z = r3.x * r3.y;
  r1.w = r1.w * r3.y;
  r5.xy = r1.ww * r0.xy;
  r3.xyz = r5.xyz + r4.xyz;
  r0.x = cb3[10].x + cb3[0].x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r4.x);
  r5.x = -r0.x;
  r5.y = r4.x;
  r5.z = r0.x;
  r0.y = dot(cb3[3].yx, r5.yz);
  r0.x = dot(cb3[3].yx, r5.xy);
  r1.w = dot(r0.xy, r0.xy);
  r1.w = sqrt(r1.w);
  r0.xy = r0.xy / r1.ww;
  r1.w = dot(r0.zw, r0.xy);
  r4.xyz = cb3[10].yzw * cb3[0].yzw;
  r3.w = 6.28318405 / r4.x;
  r1.w = r1.w * r3.w + r2.w;
  r1.w = 1.00000024 * r1.w;
  sincos(r1.w, r4.x, r5.x);
  r1.w = r5.x * r4.z;
  r5.z = r4.x * r4.y;
  r1.w = r1.w * r4.y;
  r5.xy = r1.ww * r0.xy;
  r0.x = cb3[11].x + cb3[0].x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r4.x);
  r6.x = -r0.x;
  r6.y = r4.x;
  r6.z = r0.x;
  r0.y = dot(cb3[3].yx, r6.yz);
  r0.x = dot(cb3[3].yx, r6.xy);
  r1.w = dot(r0.xy, r0.xy);
  r1.w = sqrt(r1.w);
  r0.xy = r0.xy / r1.ww;
  r0.z = dot(r0.zw, r0.xy);
  r4.xyz = cb3[11].yzw * cb3[0].yzw;
  r0.w = 6.28318405 / r4.x;
  r0.z = r0.z * r0.w + r2.w;
  r0.z = 1.00000024 * r0.z;
  sincos(r0.z, r4.x, r6.x);
  r0.z = r6.x * r4.z;
  r6.z = r4.x * r4.y;
  r0.z = r0.z * r4.y;
  r6.xy = r0.xy * r0.zz;
  r0.xyz = r6.xyz + r5.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r0.xyz = float3(0.125,0.125,0.125) * r0.xyz;
  r1.xyz = -cb0[70].xyz + r2.xyz;
  r1.xyz = cb0[67].xyz + -r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r0.w = -cb4[7].w + r0.w;
  r0.w = saturate(r0.w / cb4[8].x);
  r0.w = 1 + -r0.w;
  r0.xyz = r0.xyz * r0.www;
  o3.xy = r0.zz;
  o3.zw = float2(0,0);
  o4.x = v1.x;
  r1.xy = cb0[1].wz * r2.yy;
  r1.xy = r2.xx * cb0[0].wz + r1.xy;
  r1.xy = r2.zz * cb0[2].wz + r1.xy;
  r1.xy = cb0[3].wz + r1.xy;
  r0.w = r1.y * cb0[65].z + -cb0[65].w;
  r0.w = 1 / r0.w;
  r1.y = r1.y * cb0[65].x + cb0[65].y;
  r0.w = r1.y + r0.w;
  r1.y = cmp(cb0[31].w < 1);
  r0.w = r1.y ? r1.x : r0.w;
  r0.w = saturate(0.00499999989 * r0.w);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = r0.xyz * cb3[2].xxx + r2.xyz;
  r1.xyzw = cb1[8].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[7].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[9].xyzw + r1.xyzw;
  o6.xyz = r0.xyz;
  r0.xyzw = cb1[10].xyzw + r1.xyzw;
  r1.x = cmp(r0.z < 0);
  r1.y = cmp(0 != cb1[11].x);
  r1.x = r1.x ? r1.y : 0;
  r0.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o5.x = r0.z;
  o7.xyzw = r0.xyzw;
  o6.w = 1;
  return;
}