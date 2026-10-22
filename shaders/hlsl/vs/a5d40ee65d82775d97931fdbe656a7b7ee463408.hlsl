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
  float4 cb2[14];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0,
  out float4 o6 : TEXCOORD1)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[2].x;
  r0.z = 0;
  r1.w = cb2[3].z;
  r2.w = cb0[2].x;
  r0.yw = cb0[1].xx * v0.xy;
  r0.yw = cb0[7].yx * r0.yw;
  r3.xyz = r0.yyy * cb0[4].xyz + cb0[3].xyz;
  r3.xyz = r0.www * cb0[5].xyz + r3.xyz;
  r0.y = cmp(cb1[31].w < 1);
  r2.xyz = r0.yyy ? -r3.xyz : -cb0[3].xyz;
  r0.w = dot(r2.xy, r2.xy);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyw * r0.www;
  r4.xy = v0.xy * float2(1,-1) + float2(0.5,0.5);
  r4.xy = -cb1[66].wz + r4.xy;
  r4.xy = r4.xy / cb1[66].xy;
  r4.yz = cb1[49].xy * r4.yy;
  r4.xy = r4.xx * cb1[48].xy + r4.yz;
  r4.xy = cb1[50].xy + r4.xy;
  r4.xy = cb1[51].xy + r4.xy;
  r1.xy = r0.yy ? cb1[67].xy : r4.xy;
  r0.xzw = -r3.xyz * r0.xxz + r1.xyw;
  r3.xyz = cb2[4].yyy * cb2[1].xyz;
  r3.xyz = cb0[1].zzz * r3.xyz;
  r4.xyz = cb2[4].xxx * cb2[0].xyz;
  r3.xyz = cb0[1].yyy * r4.xyz + r3.xyz;
  r5.xyz = cb2[4].zzz * cb2[2].xyz;
  r3.xyz = cb0[1].www * r5.xyz + r3.xyz;
  r1.z = cb1[67].z;
  r1.w = dot(r3.xyz, r1.xyz);
  r1.w = cb2[3].z + -r1.w;
  r2.w = dot(r3.xyz, r2.xyz);
  o4.xyz = r3.xyz;
  r1.w = r1.w / r2.w;
  r1.xyz = r2.xyz * r1.www + r1.xyz;
  r1.w = cmp(r1.w < 0);
  r0.xzw = r1.www ? r1.xyz : r0.xzw;
  r0.xzw = cb1[70].xyz + r0.xzw;
  r1.x = cmp(cb1[67].z >= cb2[3].z);
  r0.xzw = r1.xxx ? r0.xzw : cb1[70].xyz;
  r1.xy = cb1[1].wz * r0.zz;
  r1.xy = r0.xx * cb1[0].wz + r1.xy;
  r1.xy = r0.ww * cb1[2].wz + r1.xy;
  r1.xy = cb1[3].wz + r1.xy;
  r1.z = r1.y * cb1[65].z + -cb1[65].w;
  r1.z = 1 / r1.z;
  r1.y = r1.y * cb1[65].x + cb1[65].y;
  r1.y = r1.y + r1.z;
  r1.x = r0.y ? r1.x : r1.y;
  r1.x = saturate(0.00499999989 * r1.x);
  r1.yzw = -cb1[70].xyz + r0.xzw;
  r1.yzw = cb1[67].xyz + -r1.yzw;
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = sqrt(r1.y);
  r1.y = -cb5[7].w + r1.y;
  r1.y = saturate(r1.y / cb5[8].x);
  r1.y = 1 + -r1.y;
  r1.z = cb4[4].x + cb4[0].x;
  r1.z = 6.28318548 * r1.z;
  sincos(r1.z, r2.x, r3.x);
  r6.x = -r2.x;
  r6.y = r3.x;
  r6.z = r2.x;
  r2.y = dot(cb4[3].yx, r6.yz);
  r2.x = dot(cb4[3].yx, r6.xy);
  r1.z = dot(r2.xy, r2.xy);
  r1.z = sqrt(r1.z);
  r1.zw = r2.xy / r1.zz;
  r2.xy = -cb1[70].xy + r0.xz;
  r2.z = dot(r2.xy, r1.zw);
  r3.xyz = cb4[4].yzw * cb4[0].yzw;
  r2.w = 6.28318405 / r3.x;
  r3.x = cb4[1].x * cb1[142].z;
  r2.z = r2.z * r2.w + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r6.x, r7.x);
  r2.z = r7.x * r3.z;
  r6.z = r6.x * r3.y;
  r2.z = r2.z * r3.y;
  r6.xy = r2.zz * r1.zw;
  r2.z = cb4[5].x + cb4[0].x;
  r2.z = 6.28318548 * r2.z;
  sincos(r2.z, r7.x, r8.x);
  r9.x = -r7.x;
  r9.y = r8.x;
  r9.z = r7.x;
  r7.y = dot(cb4[3].yx, r9.yz);
  r7.x = dot(cb4[3].yx, r9.xy);
  r2.z = dot(r7.xy, r7.xy);
  r2.z = sqrt(r2.z);
  r7.xy = r7.xy / r2.zz;
  r2.z = dot(r2.xy, r7.xy);
  r8.xyz = cb4[5].yzw * cb4[0].yzw;
  r3.w = 6.28318405 / r8.x;
  r2.z = r2.z * r3.w + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r8.x, r9.x);
  r2.z = r9.x * r8.z;
  r9.z = r8.x * r8.y;
  r2.z = r2.z * r8.y;
  r9.xy = r7.xy * r2.zz;
  r6.xyz = r9.xyz + r6.xyz;
  r2.z = cb4[6].x + cb4[0].x;
  r2.z = 6.28318548 * r2.z;
  sincos(r2.z, r8.x, r9.x);
  r10.x = -r8.x;
  r10.y = r9.x;
  r10.z = r8.x;
  r9.y = dot(cb4[3].yx, r10.yz);
  r9.x = dot(cb4[3].yx, r10.xy);
  r2.z = dot(r9.xy, r9.xy);
  r2.z = sqrt(r2.z);
  r7.zw = r9.xy / r2.zz;
  r2.z = dot(r2.xy, r7.zw);
  r9.xyz = cb4[6].yzw * cb4[0].yzw;
  r4.w = 6.28318405 / r9.x;
  r2.z = r2.z * r4.w + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r8.x, r9.x);
  r2.z = r9.x * r9.z;
  r10.z = r8.x * r9.y;
  r2.z = r2.z * r9.y;
  r10.xy = r7.zw * r2.zz;
  r2.z = cb4[7].x + cb4[0].x;
  r2.z = 6.28318548 * r2.z;
  sincos(r2.z, r8.x, r9.x);
  r11.x = -r8.x;
  r11.y = r9.x;
  r11.z = r8.x;
  r12.y = dot(cb4[3].yx, r11.yz);
  r12.x = dot(cb4[3].yx, r11.xy);
  r2.z = dot(r12.xy, r12.xy);
  r2.z = sqrt(r2.z);
  r8.xw = r12.xy / r2.zz;
  r2.z = dot(r2.xy, r8.xw);
  r11.xyz = cb4[7].yzw * cb4[0].yzw;
  r5.w = 6.28318405 / r11.x;
  r2.z = r2.z * r5.w + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r9.x, r11.x);
  r2.z = r11.x * r11.z;
  r12.z = r9.x * r11.y;
  r2.z = r2.z * r11.y;
  r12.xy = r8.xw * r2.zz;
  r10.xyz = r12.xyz + r10.xyz;
  r6.xyz = r10.xyz + r6.xyz;
  r2.z = cb4[8].x + cb4[0].x;
  r2.z = 6.28318548 * r2.z;
  sincos(r2.z, r9.x, r10.x);
  r12.x = -r9.x;
  r12.y = r10.x;
  r12.z = r9.x;
  r10.y = dot(cb4[3].yx, r12.yz);
  r10.x = dot(cb4[3].yx, r12.xy);
  r2.z = dot(r10.xy, r10.xy);
  r2.z = sqrt(r2.z);
  r9.xw = r10.xy / r2.zz;
  r2.z = dot(r2.xy, r9.xw);
  r10.xyz = cb4[8].yzw * cb4[0].yzw;
  r6.w = 6.28318405 / r10.x;
  r2.z = r2.z * r6.w + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r10.x, r11.x);
  r2.z = r11.x * r10.z;
  r12.z = r10.x * r10.y;
  r2.z = r2.z * r10.y;
  r12.xy = r9.xw * r2.zz;
  r2.z = cb4[9].x + cb4[0].x;
  r2.z = 6.28318548 * r2.z;
  sincos(r2.z, r10.x, r11.x);
  r13.x = -r10.x;
  r13.y = r11.x;
  r13.z = r10.x;
  r14.y = dot(cb4[3].yx, r13.yz);
  r14.x = dot(cb4[3].yx, r13.xy);
  r2.z = dot(r14.xy, r14.xy);
  r2.z = sqrt(r2.z);
  r10.xw = r14.xy / r2.zz;
  r2.z = dot(r2.xy, r10.xw);
  r13.xyz = cb4[9].yzw * cb4[0].yzw;
  r11.x = 6.28318405 / r13.x;
  r2.z = r2.z * r11.x + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r13.x, r14.x);
  r2.z = r14.x * r13.z;
  r14.z = r13.x * r13.y;
  r2.z = r2.z * r13.y;
  r14.xy = r10.xw * r2.zz;
  r12.xyz = r14.xyz + r12.xyz;
  r2.z = cb4[10].x + cb4[0].x;
  r2.z = 6.28318548 * r2.z;
  sincos(r2.z, r13.x, r14.x);
  r15.x = -r13.x;
  r15.y = r14.x;
  r15.z = r13.x;
  r14.y = dot(cb4[3].yx, r15.yz);
  r14.x = dot(cb4[3].yx, r15.xy);
  r2.z = dot(r14.xy, r14.xy);
  r2.z = sqrt(r2.z);
  r13.xw = r14.xy / r2.zz;
  r2.z = dot(r2.xy, r13.xw);
  r14.xyz = cb4[10].yzw * cb4[0].yzw;
  r11.w = 6.28318405 / r14.x;
  r2.z = r2.z * r11.w + r3.x;
  r2.z = 1.00000024 * r2.z;
  sincos(r2.z, r14.x, r15.x);
  r2.z = r15.x * r14.z;
  r15.z = r14.x * r14.y;
  r2.z = r2.z * r14.y;
  r15.xy = r13.xw * r2.zz;
  r2.z = cb4[11].x + cb4[0].x;
  r2.z = 6.28318548 * r2.z;
  sincos(r2.z, r14.x, r16.x);
  r17.x = -r14.x;
  r17.y = r16.x;
  r17.z = r14.x;
  r16.y = dot(cb4[3].yx, r17.yz);
  r16.x = dot(cb4[3].yx, r17.xy);
  r2.z = dot(r16.xy, r16.xy);
  r2.z = sqrt(r2.z);
  r14.xw = r16.xy / r2.zz;
  r2.x = dot(r2.xy, r14.xw);
  r16.xyz = cb4[11].yzw * cb4[0].yzw;
  r2.y = 6.28318405 / r16.x;
  r2.x = r2.x * r2.y + r3.x;
  r2.x = 1.00000024 * r2.x;
  sincos(r2.x, r2.x, r3.x);
  r2.z = r3.x * r16.z;
  r17.z = r2.x * r16.y;
  r2.x = r2.z * r16.y;
  r17.xy = r14.xw * r2.xx;
  r15.xyz = r17.xyz + r15.xyz;
  r12.xyz = r15.xyz + r12.xyz;
  r6.xyz = r12.xyz + r6.xyz;
  r6.xyz = float3(0.125,0.125,0.125) * r6.xyz;
  r6.xyz = r6.xyz * r1.yyy;
  r12.xyz = r6.xyz * r1.xxx;
  o6.xy = r6.zz;
  r0.xzw = r12.xyz * cb4[2].xxx + r0.xzw;
  r12.xyzw = cb1[1].xyzw * r0.zzzz;
  r12.xyzw = r0.xxxx * cb1[0].xyzw + r12.xyzw;
  r12.xyzw = r0.wwww * cb1[2].xyzw + r12.xyzw;
  r12.xyzw = cb1[3].xyzw + r12.xyzw;
  r0.x = 0.00100000005 * r12.w;
  r0.z = cmp(1 < asint(cb1[135].x));
  r0.x = r0.z ? r0.x : 0;
  o0.z = r12.z + r0.x;
  o0.xyw = r12.xyw;
  o1.xyzw = r12.xyzw;
  r12.x = cb2[10].x;
  r12.y = cb2[11].x;
  r12.z = cb2[12].x;
  r15.xyw = cb2[13].xyz + cb1[113].xyz;
  r12.w = r15.x;
  r6.x = dot(v0.xyzw, r12.xyzw);
  r12.w = r15.y;
  r12.x = cb2[10].y;
  r12.y = cb2[11].y;
  r12.z = cb2[12].y;
  r6.y = dot(v0.xyzw, r12.xyzw);
  r0.xz = -cb1[113].xy + r6.xy;
  r0.w = dot(r0.xz, r1.zw);
  r1.x = cb4[1].x * cb1[139].z;
  r0.w = r0.w * r2.w + r1.x;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r2.x, r3.x);
  r0.w = r3.x * r3.z;
  r12.z = r2.x * r3.y;
  r0.w = r0.w * r3.y;
  r12.xy = r1.zw * r0.ww;
  r0.w = dot(r0.xz, r7.xy);
  r0.w = r0.w * r3.w + r1.x;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r2.x, r3.x);
  r0.w = r3.x * r8.z;
  r3.z = r2.x * r8.y;
  r0.w = r0.w * r8.y;
  r3.xy = r7.xy * r0.ww;
  r1.yzw = r12.xyz + r3.xyz;
  r0.w = dot(r0.xz, r7.zw);
  r0.w = r0.w * r4.w + r1.x;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r2.x, r3.x);
  r0.w = r3.x * r9.z;
  r3.z = r2.x * r9.y;
  r0.w = r0.w * r9.y;
  r3.xy = r7.zw * r0.ww;
  r0.w = dot(r0.xz, r8.xw);
  r0.w = r0.w * r5.w + r1.x;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r2.x, r7.x);
  r0.w = r7.x * r11.z;
  r7.z = r2.x * r11.y;
  r0.w = r0.w * r11.y;
  r7.xy = r8.xw * r0.ww;
  r2.xzw = r7.xyz + r3.xyz;
  r1.yzw = r2.xzw + r1.yzw;
  r0.w = dot(r0.xz, r9.xw);
  r0.w = r0.w * r6.w + r1.x;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r2.x, r3.x);
  r0.w = r3.x * r10.z;
  r3.z = r2.x * r10.y;
  r0.w = r0.w * r10.y;
  r3.xy = r9.xw * r0.ww;
  r0.w = dot(r0.xz, r10.xw);
  r0.w = r0.w * r11.x + r1.x;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r2.x, r7.x);
  r0.w = r7.x * r13.z;
  r7.z = r2.x * r13.y;
  r0.w = r0.w * r13.y;
  r7.xy = r10.xw * r0.ww;
  r2.xzw = r7.xyz + r3.xyz;
  r0.w = dot(r0.xz, r13.xw);
  r0.x = dot(r0.xz, r14.xw);
  r0.x = r0.x * r2.y + r1.x;
  r0.z = r0.w * r11.w + r1.x;
  r0.xz = float2(1.00000024,1.00000024) * r0.xz;
  sincos(r0.z, r1.x, r3.x);
  sincos(r0.x, r0.x, r7.x);
  r0.z = r3.x * r14.z;
  r3.z = r1.x * r14.y;
  r0.z = r0.z * r14.y;
  r3.xy = r13.xw * r0.zz;
  r0.z = r7.x * r16.z;
  r7.z = r0.x * r16.y;
  r0.x = r0.z * r16.y;
  r7.xy = r14.xw * r0.xx;
  r0.xzw = r7.xyz + r3.xyz;
  r0.xzw = r2.xzw + r0.xzw;
  r0.xzw = r1.yzw + r0.xzw;
  r0.xzw = float3(0.125,0.125,0.125) * r0.xzw;
  r15.x = cb2[10].z;
  r15.y = cb2[11].z;
  r15.z = cb2[12].z;
  r6.z = dot(v0.xyzw, r15.xyzw);
  r1.xyz = -cb1[113].xyz + r6.xyz;
  r1.xyz = cb1[111].xyz + -r1.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = -cb5[7].w + r1.x;
  r1.x = saturate(r1.x / cb5[8].x);
  r1.x = 1 + -r1.x;
  r0.xzw = r1.xxx * r0.xzw;
  r1.xy = cb1[1].wz * r6.yy;
  r1.xy = r6.xx * cb1[0].wz + r1.xy;
  r1.xy = r6.zz * cb1[2].wz + r1.xy;
  r1.xy = cb1[3].wz + r1.xy;
  r1.z = r1.y * cb1[65].z + -cb1[65].w;
  r1.z = 1 / r1.z;
  r1.y = r1.y * cb1[65].x + cb1[65].y;
  r1.y = r1.y + r1.z;
  r0.y = r0.y ? r1.x : r1.y;
  r0.y = saturate(0.00499999989 * r0.y);
  r0.xyz = r0.yyy * r0.xzw;
  r0.xyz = r0.xyz * cb4[2].xxx + r6.xyz;
  r1.xyzw = cb1[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  r0.xy = float2(1,-1) * cb0[1].wy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  r0.yzw = r0.yyy * r5.xyz;
  o3.xyz = r0.xxx * r4.xyz + r0.yzw;
  o3.w = 0;
  r0.x = (int)v1.x + asint(cb3[0].w);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)r0.x << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r0.x = (int)r0.x * asint(cb3[0].y);
  r0.xz = t0.Load(r0.x).xy;
  o5.xy = r0.xz;
  r0.x = t1.Load(r0.y).w;
  o4.w = cb2[4].w * r0.x;
  o5.zw = float2(1,1);
  o6.zw = float2(0,0);
  return;
}