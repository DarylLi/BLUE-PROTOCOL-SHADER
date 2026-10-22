// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

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
  float4 cb1[1];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0,
  out float4 o6 : TEXCOORD1,
  out uint o7 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb2[4].x + cb2[0].x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r1.x);
  r2.x = -r0.x;
  r2.y = r1.x;
  r2.z = r0.x;
  r0.y = dot(cb2[3].yx, r2.yz);
  r0.x = dot(cb2[3].yx, r2.xy);
  r0.z = dot(r0.xy, r0.xy);
  r0.z = sqrt(r0.z);
  r0.xy = r0.xy / r0.zz;
  r0.z = (int)v1.x * 36;
  r1.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r1.x].val[0/4];
  r1.z = t0[r1.x].val[0/4+1];
  r1.w = t0[r1.x].val[0/4+2];
  r2.x = t0[r1.y].val[0/4];
  r2.y = t0[r1.y].val[0/4+1];
  r2.z = t0[r1.y].val[0/4+2];
  r2.xyz = cb0[70].xyz + r2.xyz;
  r3.xyz = v0.yyy * r1.xzw;
  r4.x = t0[r0.z].val[0/4];
  r4.y = t0[r0.z].val[0/4+1];
  r4.z = t0[r0.z].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r5.x = t0[r0.z].val[0/4];
  r5.y = t0[r0.z].val[0/4+1];
  r5.z = t0[r0.z].val[0/4+2];
  r3.xyz = r4.xyz * v0.xxx + r3.xyz;
  r3.xyz = r5.xyz * v0.zzz + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r0.zw = -cb0[70].xy + r2.xy;
  r1.y = dot(r0.zw, r0.xy);
  r3.xyz = cb2[4].yzw * cb2[0].yzw;
  r2.w = 6.28318405 / r3.x;
  r3.x = cb2[1].x * cb0[142].z;
  r1.y = r1.y * r2.w + r3.x;
  r1.y = 1.00000024 * r1.y;
  sincos(r1.y, r6.x, r7.x);
  r1.y = r7.x * r3.z;
  r6.z = r6.x * r3.y;
  r1.y = r1.y * r3.y;
  r6.xy = r1.yy * r0.xy;
  r1.y = cb2[5].x + cb2[0].x;
  r1.y = 6.28318548 * r1.y;
  sincos(r1.y, r7.x, r8.x);
  r9.x = -r7.x;
  r9.y = r8.x;
  r9.z = r7.x;
  r7.y = dot(cb2[3].yx, r9.yz);
  r7.x = dot(cb2[3].yx, r9.xy);
  r1.y = dot(r7.xy, r7.xy);
  r1.y = sqrt(r1.y);
  r7.xy = r7.xy / r1.yy;
  r1.y = dot(r0.zw, r7.xy);
  r8.xyz = cb2[5].yzw * cb2[0].yzw;
  r3.w = 6.28318405 / r8.x;
  r1.y = r1.y * r3.w + r3.x;
  r1.y = 1.00000024 * r1.y;
  sincos(r1.y, r8.x, r9.x);
  r1.y = r9.x * r8.z;
  r9.z = r8.x * r8.y;
  r1.y = r1.y * r8.y;
  r9.xy = r7.xy * r1.yy;
  r6.xyz = r9.xyz + r6.xyz;
  r1.y = cb2[6].x + cb2[0].x;
  r1.y = 6.28318548 * r1.y;
  sincos(r1.y, r8.x, r9.x);
  r10.x = -r8.x;
  r10.y = r9.x;
  r10.z = r8.x;
  r9.y = dot(cb2[3].yx, r10.yz);
  r9.x = dot(cb2[3].yx, r10.xy);
  r1.y = dot(r9.xy, r9.xy);
  r1.y = sqrt(r1.y);
  r7.zw = r9.xy / r1.yy;
  r1.y = dot(r0.zw, r7.zw);
  r9.xyz = cb2[6].yzw * cb2[0].yzw;
  r4.w = 6.28318405 / r9.x;
  r1.y = r1.y * r4.w + r3.x;
  r1.y = 1.00000024 * r1.y;
  sincos(r1.y, r8.x, r9.x);
  r1.y = r9.x * r9.z;
  r10.z = r8.x * r9.y;
  r1.y = r1.y * r9.y;
  r10.xy = r7.zw * r1.yy;
  r1.y = cb2[7].x + cb2[0].x;
  r1.y = 6.28318548 * r1.y;
  sincos(r1.y, r8.x, r9.x);
  r11.x = -r8.x;
  r11.y = r9.x;
  r11.z = r8.x;
  r12.y = dot(cb2[3].yx, r11.yz);
  r12.x = dot(cb2[3].yx, r11.xy);
  r1.y = dot(r12.xy, r12.xy);
  r1.y = sqrt(r1.y);
  r8.xw = r12.xy / r1.yy;
  r1.y = dot(r0.zw, r8.xw);
  r11.xyz = cb2[7].yzw * cb2[0].yzw;
  r5.w = 6.28318405 / r11.x;
  r1.y = r1.y * r5.w + r3.x;
  r1.y = 1.00000024 * r1.y;
  sincos(r1.y, r9.x, r11.x);
  r1.y = r11.x * r11.z;
  r12.z = r9.x * r11.y;
  r1.y = r1.y * r11.y;
  r12.xy = r8.xw * r1.yy;
  r10.xyz = r12.xyz + r10.xyz;
  r6.xyz = r10.xyz + r6.xyz;
  r1.y = cb2[8].x + cb2[0].x;
  r1.y = 6.28318548 * r1.y;
  sincos(r1.y, r9.x, r10.x);
  r12.x = -r9.x;
  r12.y = r10.x;
  r12.z = r9.x;
  r10.y = dot(cb2[3].yx, r12.yz);
  r10.x = dot(cb2[3].yx, r12.xy);
  r1.y = dot(r10.xy, r10.xy);
  r1.y = sqrt(r1.y);
  r9.xw = r10.xy / r1.yy;
  r1.y = dot(r0.zw, r9.xw);
  r10.xyz = cb2[8].yzw * cb2[0].yzw;
  r6.w = 6.28318405 / r10.x;
  r1.y = r1.y * r6.w + r3.x;
  r1.y = 1.00000024 * r1.y;
  sincos(r1.y, r10.x, r11.x);
  r1.y = r11.x * r10.z;
  r12.z = r10.x * r10.y;
  r1.y = r1.y * r10.y;
  r12.xy = r9.xw * r1.yy;
  r1.y = cb2[9].x + cb2[0].x;
  r1.y = 6.28318548 * r1.y;
  sincos(r1.y, r10.x, r11.x);
  r13.x = -r10.x;
  r13.y = r11.x;
  r13.z = r10.x;
  r14.y = dot(cb2[3].yx, r13.yz);
  r14.x = dot(cb2[3].yx, r13.xy);
  r1.y = dot(r14.xy, r14.xy);
  r1.y = sqrt(r1.y);
  r10.xw = r14.xy / r1.yy;
  r1.y = dot(r0.zw, r10.xw);
  r13.xyz = cb2[9].yzw * cb2[0].yzw;
  r11.x = 6.28318405 / r13.x;
  r1.y = r1.y * r11.x + r3.x;
  r1.y = 1.00000024 * r1.y;
  sincos(r1.y, r13.x, r14.x);
  r1.y = r14.x * r13.z;
  r14.z = r13.x * r13.y;
  r1.y = r1.y * r13.y;
  r14.xy = r10.xw * r1.yy;
  r12.xyz = r14.xyz + r12.xyz;
  r1.y = cb2[10].x + cb2[0].x;
  r1.y = 6.28318548 * r1.y;
  sincos(r1.y, r13.x, r14.x);
  r15.x = -r13.x;
  r15.y = r14.x;
  r15.z = r13.x;
  r14.y = dot(cb2[3].yx, r15.yz);
  r14.x = dot(cb2[3].yx, r15.xy);
  r1.y = dot(r14.xy, r14.xy);
  r1.y = sqrt(r1.y);
  r13.xw = r14.xy / r1.yy;
  r1.y = dot(r0.zw, r13.xw);
  r14.xyz = cb2[10].yzw * cb2[0].yzw;
  r11.w = 6.28318405 / r14.x;
  r1.y = r1.y * r11.w + r3.x;
  r1.y = 1.00000024 * r1.y;
  sincos(r1.y, r14.x, r15.x);
  r1.y = r15.x * r14.z;
  r15.z = r14.x * r14.y;
  r1.y = r1.y * r14.y;
  r15.xy = r13.xw * r1.yy;
  r1.y = cb2[11].x + cb2[0].x;
  r1.y = 6.28318548 * r1.y;
  sincos(r1.y, r14.x, r16.x);
  r17.x = -r14.x;
  r17.y = r16.x;
  r17.z = r14.x;
  r16.y = dot(cb2[3].yx, r17.yz);
  r16.x = dot(cb2[3].yx, r17.xy);
  r1.y = dot(r16.xy, r16.xy);
  r1.y = sqrt(r1.y);
  r14.xw = r16.xy / r1.yy;
  r0.z = dot(r0.zw, r14.xw);
  r16.xyz = cb2[11].yzw * cb2[0].yzw;
  r0.w = 6.28318405 / r16.x;
  r0.z = r0.z * r0.w + r3.x;
  r0.z = 1.00000024 * r0.z;
  sincos(r0.z, r3.x, r16.x);
  r0.z = r16.x * r16.z;
  r17.z = r3.x * r16.y;
  r0.z = r0.z * r16.y;
  r17.xy = r14.xw * r0.zz;
  r15.xyz = r17.xyz + r15.xyz;
  r12.xyz = r15.xyz + r12.xyz;
  r6.xyz = r12.xyz + r6.xyz;
  r6.xyz = float3(0.125,0.125,0.125) * r6.xyz;
  r12.xyz = -cb0[70].xyz + r2.xyz;
  r12.xyz = cb0[67].xyz + -r12.xyz;
  r0.z = dot(r12.xyz, r12.xyz);
  r0.z = sqrt(r0.z);
  r0.z = -cb3[7].w + r0.z;
  r0.z = saturate(r0.z / cb3[8].x);
  r0.z = 1 + -r0.z;
  r6.xyz = r6.xyz * r0.zzz;
  r12.xy = cb0[1].wz * r2.yy;
  r12.xy = r2.xx * cb0[0].wz + r12.xy;
  r12.xy = r2.zz * cb0[2].wz + r12.xy;
  r12.xy = cb0[3].wz + r12.xy;
  r0.z = r12.y * cb0[65].z + -cb0[65].w;
  r0.z = 1 / r0.z;
  r1.y = r12.y * cb0[65].x + cb0[65].y;
  r0.z = r1.y + r0.z;
  r1.y = cmp(cb0[31].w < 1);
  r0.z = r1.y ? r12.x : r0.z;
  r0.z = saturate(0.00499999989 * r0.z);
  r12.xyz = r0.zzz * r6.xyz;
  o6.xy = r6.zz;
  r2.xyz = r12.xyz * cb2[2].xxx + r2.xyz;
  r12.xyzw = cb0[1].xyzw * r2.yyyy;
  r12.xyzw = r2.xxxx * cb0[0].xyzw + r12.xyzw;
  r12.xyzw = r2.zzzz * cb0[2].xyzw + r12.xyzw;
  r12.xyzw = cb0[3].xyzw + r12.xyzw;
  r0.z = 0.00100000005 * r12.w;
  r2.x = cmp(1 < asint(cb0[135].x));
  r0.z = r2.x ? r0.z : 0;
  o0.z = r12.z + r0.z;
  o0.xyw = r12.xyw;
  o1.xyzw = r12.xyzw;
  r0.z = mad((int)v1.x, 36, 13);
  r2.x = t0[r0.z].val[0/4];
  r2.y = t0[r0.z].val[0/4+1];
  r2.z = t0[r0.z].val[0/4+2];
  r2.xyz = cb0[113].xyz + r2.xyz;
  r12.w = r2.x;
  r15.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,10,11,12));
  r17.x = t0[r15.y].val[0/4+1];
  r17.y = t0[r15.y].val[0/4];
  r17.z = t0[r15.y].val[0/4+2];
  r12.x = r17.y;
  r18.x = t0[r15.z].val[0/4];
  r18.y = t0[r15.z].val[0/4+2];
  r18.z = t0[r15.z].val[0/4+1];
  r12.y = r18.x;
  r6.x = t0[r15.w].val[0/4];
  r6.y = t0[r15.w].val[0/4+1];
  r6.z = t0[r15.w].val[0/4+2];
  r15.x = t0[r15.x].val[0/4];
  r15.y = t0[r15.x].val[0/4+1];
  r15.z = t0[r15.x].val[0/4+2];
  r15.w = t0[r15.x].val[0/4+3];
  r12.z = r6.x;
  r12.x = dot(v0.xyzw, r12.xyzw);
  r17.w = r2.y;
  r18.w = r2.z;
  r18.x = r17.z;
  r17.y = r18.z;
  r17.z = r6.y;
  r18.z = r6.z;
  r12.z = dot(v0.xyzw, r18.xyzw);
  r12.y = dot(v0.xyzw, r17.xyzw);
  r2.xy = -cb0[113].xy + r12.xy;
  r0.z = dot(r2.xy, r0.xy);
  r2.z = cb2[1].x * cb0[139].z;
  r0.z = r0.z * r2.w + r2.z;
  r0.z = 1.00000024 * r0.z;
  sincos(r0.z, r3.x, r6.x);
  r0.z = r6.x * r3.z;
  r6.z = r3.x * r3.y;
  r0.z = r0.z * r3.y;
  r6.xy = r0.xy * r0.zz;
  r0.x = dot(r2.xy, r7.xy);
  r0.x = r0.x * r3.w + r2.z;
  r0.x = 1.00000024 * r0.x;
  sincos(r0.x, r0.x, r3.x);
  r0.y = r3.x * r8.z;
  r3.z = r0.x * r8.y;
  r0.x = r0.y * r8.y;
  r3.xy = r7.xy * r0.xx;
  r0.xyz = r6.xyz + r3.xyz;
  r2.w = dot(r2.xy, r7.zw);
  r2.w = r2.w * r4.w + r2.z;
  r2.w = 1.00000024 * r2.w;
  sincos(r2.w, r3.x, r6.x);
  r2.w = r6.x * r9.z;
  r3.z = r3.x * r9.y;
  r2.w = r2.w * r9.y;
  r3.xy = r7.zw * r2.ww;
  r2.w = dot(r2.xy, r8.xw);
  r2.w = r2.w * r5.w + r2.z;
  r2.w = 1.00000024 * r2.w;
  sincos(r2.w, r6.x, r7.x);
  r2.w = r7.x * r11.z;
  r6.z = r6.x * r11.y;
  r2.w = r2.w * r11.y;
  r6.xy = r8.xw * r2.ww;
  r3.xyz = r6.xyz + r3.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r2.w = dot(r2.xy, r9.xw);
  r2.w = r2.w * r6.w + r2.z;
  r2.w = 1.00000024 * r2.w;
  sincos(r2.w, r3.x, r6.x);
  r2.w = r6.x * r10.z;
  r3.z = r3.x * r10.y;
  r2.w = r2.w * r10.y;
  r3.xy = r9.xw * r2.ww;
  r2.w = dot(r2.xy, r10.xw);
  r2.w = r2.w * r11.x + r2.z;
  r2.w = 1.00000024 * r2.w;
  sincos(r2.w, r6.x, r7.x);
  r2.w = r7.x * r13.z;
  r6.z = r6.x * r13.y;
  r2.w = r2.w * r13.y;
  r6.xy = r10.xw * r2.ww;
  r3.xyz = r6.xyz + r3.xyz;
  r2.w = dot(r2.xy, r13.xw);
  r2.x = dot(r2.xy, r14.xw);
  r0.w = r2.x * r0.w + r2.z;
  r2.x = r2.w * r11.w + r2.z;
  r2.x = 1.00000024 * r2.x;
  sincos(r2.x, r2.x, r6.x);
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r7.x, r8.x);
  r0.w = r6.x * r14.z;
  r2.z = r2.x * r14.y;
  r0.w = r0.w * r14.y;
  r2.xy = r13.xw * r0.ww;
  r0.w = r8.x * r16.z;
  r6.z = r7.x * r16.y;
  r0.w = r0.w * r16.y;
  r6.xy = r14.xw * r0.ww;
  r2.xyz = r6.xyz + r2.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r0.xyz = float3(0.125,0.125,0.125) * r0.xyz;
  r2.xyz = -cb0[113].xyz + r12.xyz;
  r2.xyz = cb0[111].xyz + -r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = -cb3[7].w + r0.w;
  r0.w = saturate(r0.w / cb3[8].x);
  r0.w = 1 + -r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xy = cb0[1].wz * r12.yy;
  r2.xy = r12.xx * cb0[0].wz + r2.xy;
  r2.xy = r12.zz * cb0[2].wz + r2.xy;
  r2.xy = cb0[3].wz + r2.xy;
  r0.w = r2.y * cb0[65].z + -cb0[65].w;
  r0.w = 1 / r0.w;
  r2.y = r2.y * cb0[65].x + cb0[65].y;
  r0.w = r2.y + r0.w;
  r0.w = r1.y ? r2.x : r0.w;
  r0.w = saturate(0.00499999989 * r0.w);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = r0.xyz * cb2[2].xxx + r12.xyz;
  r2.xyzw = cb0[92].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[91].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.xyz = r15.xxx * r4.xyz;
  r1.xyz = r15.yyy * r1.xzw;
  r0.w = (int)v2.x + asint(cb1[0].w);
  r1.w = (uint)r0.w << 1;
  r2.xyz = t2.Load(r1.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = (int)r0.w * asint(cb1[0].y);
  r3.xy = t1.Load(r0.w).xy;
  o5.xy = r3.xy;
  r3.xyzw = t2.Load(r1.w).xyzw;
  r4.xyz = r3.yzx * r2.xyz;
  r2.xyz = r3.xyz * r2.yzx + -r4.xyz;
  r2.xyz = r2.xyz * r3.www;
  r4.xyz = r2.xyz * r3.yzx;
  r2.xyz = r2.zxy * r3.zxy + -r4.xyz;
  r2.xyz = r2.xyz * r3.www;
  r4.xyz = r2.yyy * r1.xyz;
  r1.xyz = r3.yyy * r1.xyz;
  r1.xyz = r3.xxx * r0.xyz + r1.xyz;
  r0.xyz = r2.xxx * r0.xyz + r4.xyz;
  r2.xyw = r15.zzz * r5.xyz;
  o4.w = r3.w * r15.w;
  o4.xyz = r3.zzz * r2.xyw + r1.xyz;
  o3.xyz = r2.zzz * r2.xyw + r0.xyz;
  o3.w = 0;
  o5.zw = float2(1,1);
  o6.zw = float2(0,0);
  o7.x = v1.x;
  return;
}