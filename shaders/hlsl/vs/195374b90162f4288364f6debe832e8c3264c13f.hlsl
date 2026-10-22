// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[91];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float4 o2 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.y = mad((int)v1.x, 36, 2);
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r1.x = t0[r0.x].val[0/4];
  r1.y = t0[r0.x].val[0/4+1];
  r1.z = t0[r0.x].val[0/4+2];
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r3.xyz = cb0[70].xyz + r3.xyz;
  r4.xyz = v0.yyy * r2.xzw;
  r1.xyz = r1.xyz * v0.xxx + r4.xyz;
  r0.xyz = r0.yzw * v0.zzz + r1.xyz;
  r0.xyz = r0.xyz + r3.xyz;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r3.xyz = cb2[48].xyz + -r1.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r0.w = r0.w / cb2[89].z;
  r0.w = cb2[89].w * r0.w;
  r3.xyz = -cb2[48].xyz + r1.xyz;
  r4.xyz = mad((int3)v1.xxx, int3(36,36,36), int3(6,7,8));
  r5.x = t0[r4.x].val[8/4];
  r5.y = t0[r4.y].val[8/4];
  r5.z = t0[r4.z].val[8/4];
  r1.w = saturate(dot(r3.xyz, r5.xyz));
  r2.y = dot(r2.xzw, r3.xyz);
  r3.xyz = r2.xzw * r2.yyy + cb2[48].xyz;
  r1.w = ceil(r1.w);
  r0.w = r1.w * r0.w;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r4.x, r5.x);
  r4.yzw = -r3.xyz + r1.xyz;
  r5.yzw = r4.zwy * r2.wxz;
  r2.xyz = r2.zwx * r4.wyz + -r5.yzw;
  r2.xyz = r2.xyz * r4.xxx;
  r2.xyz = r4.yzw * r5.xxx + r2.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r1.xyz = r2.xyz + -r1.xyz;
  r0.xyz = r1.xyz * cb2[90].xxx + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t2.Load(r0.y).xyzw;
  o1.xyzw = r1.zyxw;
  r0.y = asint(cb1[0].y) + -1;
  r0.y = min(1, (uint)r0.y);
  r0.y = mad(asint(cb1[0].y), (int)r0.x, (int)r0.y);
  r0.x = (int)r0.x * asint(cb1[0].y);
  r0.xz = t1.Load(r0.x).xy;
  o2.xy = cb2[51].xy + r0.xz;
  r0.xy = t1.Load(r0.y).xy;
  o2.zw = r0.xy;
  return;
}