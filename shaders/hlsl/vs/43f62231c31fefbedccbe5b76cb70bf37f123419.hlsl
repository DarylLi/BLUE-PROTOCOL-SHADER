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

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD4,
  out uint o3 : PRIMITIVE_ID0,
  out uint p3 : LIGHTMAP_ID0,
  out float4 o4 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = mad(asint(cb1[0].y), (int)r0.x, asint(cb1[0].z));
  r1.yz = t2.Load(r0.x).xy;
  r2.xyzw = t3.Load(r1.x).xyzw;
  r3.xyz = r2.yzx * r0.yzw;
  r0.xyz = r2.xyz * r0.zwy + -r3.xyz;
  r0.xyz = r0.xyz * r2.www;
  r3.xyz = r0.xyz * r2.yzx;
  r0.xyz = r0.zxy * r2.zxy + -r3.xyz;
  r0.xyz = r0.xyz * r2.www;
  r0.w = (int)v1.x * 36;
  r1.xw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r1.x].val[0/4];
  r3.y = t0[r1.x].val[0/4+1];
  r3.z = t0[r1.x].val[0/4+2];
  r4.x = t0[r1.w].val[0/4];
  r4.y = t0[r1.w].val[0/4+1];
  r4.z = t0[r1.w].val[0/4+2];
  r4.xyz = cb0[70].xyz + r4.xyz;
  r1.xw = mad((int2)v1.xx, int2(36,36), int2(4,24));
  r5.x = t0[r1.x].val[0/4];
  r5.y = t0[r1.x].val[0/4+1];
  r5.z = t0[r1.x].val[0/4+2];
  r5.w = t0[r1.x].val[0/4+3];
  r1.x = t0[r1.w].val[12/4];
  r1.x = (int)r1.x + asint(cb1[1].y);
  r6.xyz = r5.yyy * r3.xyz;
  r3.xyz = v0.yyy * r3.xyz;
  r7.xyz = r6.xyz * r0.yyy;
  r6.xyz = r6.xyz * r2.yyy;
  r8.x = t0[r0.w].val[0/4];
  r8.y = t0[r0.w].val[0/4+1];
  r8.z = t0[r0.w].val[0/4+2];
  r0.y = mad((int)v1.x, 36, 2);
  r9.x = t0[r0.y].val[0/4];
  r9.y = t0[r0.y].val[0/4+1];
  r9.z = t0[r0.y].val[0/4+2];
  r10.xyz = r8.xyz * r5.xxx;
  r3.xyz = r8.xyz * v0.xxx + r3.xyz;
  r3.xyz = r9.xyz * v0.zzz + r3.xyz;
  r5.xyz = r9.xyz * r5.zzz;
  o1.w = r5.w * r2.w;
  r3.xyz = r3.xyz + r4.xyz;
  r0.xyw = r0.xxx * r10.xyz + r7.xyz;
  o0.xyz = r0.zzz * r5.xyz + r0.xyw;
  r0.xyz = r2.xxx * r10.xyz + r6.xyz;
  o1.xyz = r2.zzz * r5.xyz + r0.xyz;
  r0.xy = mad((int2)r1.xx, int2(15,15), int2(2,3));
  p3.x = r1.x;
  r2.x = t1[r0.x].val[0/4];
  r2.y = t1[r0.x].val[0/4+1];
  r2.z = t1[r0.x].val[0/4+2];
  r2.w = t1[r0.x].val[0/4+3];
  r0.x = t1[r0.y].val[0/4];
  r0.y = t1[r0.y].val[0/4+1];
  r0.z = t1[r0.y].val[0/4+2];
  r0.w = t1[r0.y].val[0/4+3];
  o2.zw = r1.yz * r0.xy + r0.zw;
  o2.xy = r1.yz * r2.xy + r2.zw;
  o3.x = v1.x;
  r0.xyzw = cb0[1].xyzw * r3.yyyy;
  r0.xyzw = r3.xxxx * cb0[0].xyzw + r0.xyzw;
  r0.xyzw = r3.zzzz * cb0[2].xyzw + r0.xyzw;
  o4.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}