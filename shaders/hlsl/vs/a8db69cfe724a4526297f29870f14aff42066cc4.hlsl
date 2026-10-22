// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[15];
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
  out float4 o4 : TEXCOORD11)
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
  r3.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,10,11,12));
  r5.x = t0[r3.x].val[0/4];
  r5.y = t0[r3.x].val[0/4+1];
  r5.z = t0[r3.x].val[0/4+2];
  r5.w = t0[r3.x].val[0/4+3];
  r4.xyz = r5.zzz * r4.xyz;
  r0.yzw = r5.xxx * r0.yzw;
  r1.xyz = r5.yyy * r1.xyz;
  r1.w = (int)v2.x + asint(cb1[0].w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r1.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r1.w = (uint)r1.w << 1;
  r5.xyz = t1.Load(r1.w).xyz;
  r6.xyzw = t1.Load(r2.w).xyzw;
  r7.xyz = r6.yyy * r1.xyz;
  r7.xyz = r6.xxx * r0.yzw + r7.xyz;
  r7.xyz = r6.zzz * r4.xyz + r7.xyz;
  r2.xyz = r7.xyz * cb2[14].www + r2.xyz;
  r8.xyzw = cb0[1].xyzw * r2.yyyy;
  r8.xyzw = r2.xxxx * cb0[0].xyzw + r8.xyzw;
  r2.xyzw = r2.zzzz * cb0[2].xyzw + r8.xyzw;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  r1.w = 0.00100000005 * r2.w;
  r0.x = r0.x ? r1.w : 0;
  o0.z = r2.z + r0.x;
  o0.xyw = r2.xyw;
  o1.xyzw = r2.xyzw;
  r0.x = mad((int)v1.x, 36, 13);
  r2.x = t0[r0.x].val[0/4];
  r2.y = t0[r0.x].val[0/4+1];
  r2.z = t0[r0.x].val[0/4+2];
  r2.xyz = cb0[113].xyz + r2.xyz;
  r8.w = r2.x;
  r9.x = t0[r3.y].val[0/4+1];
  r9.y = t0[r3.y].val[0/4];
  r9.z = t0[r3.y].val[0/4+2];
  r8.x = r9.y;
  r10.x = t0[r3.z].val[0/4];
  r10.y = t0[r3.z].val[0/4+2];
  r10.z = t0[r3.z].val[0/4+1];
  r3.x = t0[r3.w].val[0/4];
  r3.y = t0[r3.w].val[0/4+1];
  r3.z = t0[r3.w].val[0/4+2];
  r8.y = r10.x;
  r8.z = r3.x;
  r8.x = dot(v0.xyzw, r8.xyzw);
  r9.w = r2.y;
  r10.w = r2.z;
  r10.x = r9.z;
  r9.y = r10.z;
  r9.z = r3.y;
  r10.z = r3.z;
  r8.z = dot(v0.xyzw, r10.xyzw);
  r8.y = dot(v0.xyzw, r9.xyzw);
  r2.xyz = r7.xyz * cb2[14].www + r8.xyz;
  o4.xyz = r7.xyz;
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
  return;
}