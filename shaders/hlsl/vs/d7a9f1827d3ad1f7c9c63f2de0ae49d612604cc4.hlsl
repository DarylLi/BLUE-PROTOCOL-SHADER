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
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD4,
  out uint o4 : PRIMITIVE_ID0,
  out uint p4 : LIGHTMAP_ID0,
  out float3 o5 : TEXCOORD9,
  out float4 o6 : SV_POSITION0)
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
  o2.zw = float2(0,0);
  r0.y = mad((int)r3.w, 15, 2);
  p4.x = r3.w;
  r1.x = t1[r0.y].val[0/4];
  r1.y = t1[r0.y].val[0/4+1];
  r1.z = t1[r0.y].val[0/4+2];
  r1.w = t1[r0.y].val[0/4+3];
  o3.xy = r0.xz * r1.xy + r1.zw;
  o3.zw = float2(0,0);
  o4.x = v1.x;
  o5.xyz = r2.xyz;
  r0.xyzw = cb0[1].xyzw * r2.yyyy;
  r0.xyzw = r2.xxxx * cb0[0].xyzw + r0.xyzw;
  r0.xyzw = r2.zzzz * cb0[2].xyzw + r0.xyzw;
  o6.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}