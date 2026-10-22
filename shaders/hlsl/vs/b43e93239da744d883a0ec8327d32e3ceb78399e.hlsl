// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[136];
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
  out uint o5 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(1 < asint(cb0[135].x));
  r0.y = (int)v1.x * 36;
  r0.zw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r0.z].val[0/4];
  r1.y = t0[r0.z].val[0/4+1];
  r1.z = t0[r0.z].val[0/4+2];
  r2.x = t0[r0.w].val[0/4];
  r2.y = t0[r0.w].val[0/4+1];
  r2.z = t0[r0.w].val[0/4+2];
  r2.xyz = cb0[70].xyz + r2.xyz;
  r3.xyz = v0.yyy * r1.xyz;
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r1.w = mad((int)v1.x, 36, 2);
  r4.x = t0[r1.w].val[0/4];
  r4.y = t0[r1.w].val[0/4+1];
  r4.z = t0[r1.w].val[0/4+2];
  r3.xyz = r0.yzw * v0.xxx + r3.xyz;
  r3.xyz = r4.xyz * v0.zzz + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xy = cb0[1].wz * r2.yy;
  r3.xy = r2.xx * cb0[0].wz + r3.xy;
  r3.xy = r2.zz * cb0[2].wz + r3.xy;
  r3.xy = cb0[3].wz + r3.xy;
  r1.w = r3.y * cb0[65].z + -cb0[65].w;
  r1.w = 1 / r1.w;
  r2.w = r3.y * cb0[65].x + cb0[65].y;
  r1.w = r2.w + r1.w;
  r2.w = cmp(cb0[31].w < 1);
  r1.w = r2.w ? r3.x : r1.w;
  r1.w = saturate(r1.w / cb2[6].y);
  r1.w = cb2[6].z * r1.w;
  r1.w = max(1, r1.w);
  r3.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,10,11,12));
  r5.x = t0[r3.x].val[0/4];
  r5.y = t0[r3.x].val[0/4+1];
  r5.z = t0[r3.x].val[0/4+2];
  r5.w = t0[r3.x].val[0/4+3];
  r4.xyz = r5.zzz * r4.xyz;
  r0.yzw = r5.xxx * r0.yzw;
  r1.xyz = r5.yyy * r1.xyz;
  r3.x = (int)v2.x + asint(cb1[0].w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.w = (((uint)r3.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r3.x = (uint)r3.x << 1;
  r5.xyz = t1.Load(r3.x).xyz;
  r6.xyzw = t1.Load(r4.w).xyzw;
  r7.xyz = r6.yyy * r1.xyz;
  r7.xyz = r6.xxx * r0.yzw + r7.xyz;
  r7.xyz = r6.zzz * r4.xyz + r7.xyz;
  r8.xyz = cb2[6].www * r7.xyz;
  o4.xyz = r7.xyz;
  r2.xyz = r1.www * r8.xyz + r2.xyz;
  r7.xyzw = cb0[1].xyzw * r2.yyyy;
  r7.xyzw = r2.xxxx * cb0[0].xyzw + r7.xyzw;
  r7.xyzw = r2.zzzz * cb0[2].xyzw + r7.xyzw;
  r7.xyzw = cb0[3].xyzw + r7.xyzw;
  r1.w = 0.00100000005 * r7.w;
  r0.x = r0.x ? r1.w : 0;
  o0.z = r7.z + r0.x;
  o0.xyw = r7.xyw;
  o1.xyzw = r7.xyzw;
  r0.x = mad((int)v1.x, 36, 13);
  r2.x = t0[r0.x].val[0/4];
  r2.y = t0[r0.x].val[0/4+1];
  r2.z = t0[r0.x].val[0/4+2];
  r2.xyz = cb0[113].xyz + r2.xyz;
  r7.w = r2.y;
  r9.x = t0[r3.y].val[0/4+2];
  r9.y = t0[r3.y].val[0/4];
  r9.z = t0[r3.y].val[0/4+1];
  r7.x = r9.z;
  r10.x = t0[r3.z].val[0/4+1];
  r10.y = t0[r3.z].val[0/4];
  r10.z = t0[r3.z].val[0/4+2];
  r3.x = t0[r3.w].val[0/4];
  r3.y = t0[r3.w].val[0/4+1];
  r3.z = t0[r3.w].val[0/4+2];
  r7.y = r10.x;
  r7.z = r3.y;
  r7.y = dot(v0.xyzw, r7.xyzw);
  r3.yw = cb0[1].wz * r7.yy;
  r10.w = r2.x;
  r9.w = r2.z;
  r10.x = r9.y;
  r9.y = r10.z;
  r10.z = r3.x;
  r9.z = r3.z;
  r7.z = dot(v0.xyzw, r9.xyzw);
  r7.x = dot(v0.xyzw, r10.xyzw);
  r2.xy = r7.xx * cb0[0].wz + r3.yw;
  r2.xy = r7.zz * cb0[2].wz + r2.xy;
  r2.xy = cb0[3].wz + r2.xy;
  r0.x = r2.y * cb0[65].z + -cb0[65].w;
  r0.x = 1 / r0.x;
  r1.w = r2.y * cb0[65].x + cb0[65].y;
  r0.x = r1.w + r0.x;
  r0.x = r2.w ? r2.x : r0.x;
  r0.x = saturate(r0.x / cb2[6].y);
  r0.x = cb2[6].z * r0.x;
  r0.x = max(1, r0.x);
  r2.xyz = r0.xxx * r8.xyz + r7.xyz;
  r3.xyzw = cb0[92].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb0[91].xyzw + r3.xyzw;
  r2.xyzw = r2.zzzz * cb0[93].xyzw + r3.xyzw;
  o2.xyzw = cb0[94].xyzw + r2.xyzw;
  r2.xyz = r6.yzx * r5.xyz;
  r2.xyz = r6.xyz * r5.yzx + -r2.xyz;
  r2.xyz = r2.xyz * r6.www;
  r3.xyz = r2.xyz * r6.yzx;
  r2.xyz = r2.zxy * r6.zxy + -r3.xyz;
  r2.xyz = r2.xyz * r6.www;
  o4.w = r6.w * r5.w;
  r1.xyz = r2.yyy * r1.xyz;
  r0.xyz = r2.xxx * r0.yzw + r1.xyz;
  o3.xyz = r2.zzz * r4.xyz + r0.xyz;
  o3.w = 0;
  o5.x = v1.x;
  return;
}