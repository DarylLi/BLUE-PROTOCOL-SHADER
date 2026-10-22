// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

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
  out float4 o3 : COLOR0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r0.y].val[0/4];
  r1.y = t0[r0.y].val[0/4+1];
  r1.z = t0[r0.y].val[0/4+2];
  r0.y = t0[r0.z].val[0/4];
  r0.z = t0[r0.z].val[0/4+1];
  r0.w = t0[r0.z].val[0/4+2];
  r0.yzw = cb0[70].xyz + r0.yzw;
  r1.xyz = v0.yyy * r1.xyz;
  r2.x = t0[r0.x].val[0/4];
  r2.y = t0[r0.x].val[0/4+1];
  r2.z = t0[r0.x].val[0/4+2];
  r0.x = mad((int)v1.x, 36, 2);
  r3.x = t0[r0.x].val[0/4];
  r3.y = t0[r0.x].val[0/4+1];
  r3.z = t0[r0.x].val[0/4+2];
  r1.xyz = r2.xyz * v0.xxx + r1.xyz;
  r1.xyz = r3.xyz * v0.zzz + r1.xyz;
  r0.xyz = r1.xyz + r0.yzw;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = 0.00100000005 * r0.w;
  r1.y = cmp(1 < asint(cb0[135].x));
  r1.x = r1.y ? r1.x : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  r0.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(10,11,12,13));
  r1.x = t0[r0.w].val[0/4];
  r1.y = t0[r0.w].val[0/4+1];
  r1.z = t0[r0.w].val[0/4+2];
  r1.xyz = cb0[113].xyz + r1.xyz;
  r2.w = r1.y;
  r3.x = t0[r0.x].val[0/4+2];
  r3.y = t0[r0.x].val[0/4];
  r3.z = t0[r0.x].val[0/4+1];
  r2.x = r3.z;
  r4.x = t0[r0.y].val[0/4+1];
  r4.y = t0[r0.y].val[0/4];
  r4.z = t0[r0.y].val[0/4+2];
  r0.x = t0[r0.z].val[0/4];
  r0.y = t0[r0.z].val[0/4+1];
  r0.z = t0[r0.z].val[0/4+2];
  r2.y = r4.x;
  r2.z = r0.y;
  r0.y = dot(v0.xyzw, r2.xyzw);
  r2.xyzw = cb0[92].xyzw * r0.yyyy;
  r4.w = r1.x;
  r3.w = r1.z;
  r4.x = r3.y;
  r3.y = r4.z;
  r4.z = r0.x;
  r3.z = r0.z;
  r0.x = dot(v0.xyzw, r3.xyzw);
  r0.y = dot(v0.xyzw, r4.xyzw);
  r1.xyzw = r0.yyyy * cb0[91].xyzw + r2.xyzw;
  r0.xyzw = r0.xxxx * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.x = (int)r0.x & asint(cb1[0].x);
  r0.xyzw = t1.Load(r0.x).xyzw;
  o3.xyzw = r0.zyxw;
  return;
}