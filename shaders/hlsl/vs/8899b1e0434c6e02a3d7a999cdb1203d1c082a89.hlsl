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
  out float4 o3 : COLOR0,
  out float4 o4 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r3.xyz = -cb2[48].xyz + r1.xyz;
  r0.w = dot(r2.xzw, r3.xyz);
  r4.xyz = r2.xzw * r0.www + cb2[48].xyz;
  r5.xyz = -r4.xyz + r1.xyz;
  r6.xyz = r5.yzx * r2.wxz;
  r2.xyz = r2.zwx * r5.zxy + -r6.xyz;
  r6.xyz = cb2[48].xyz + -r1.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r0.w = r0.w / cb2[89].z;
  r0.w = cb2[89].w * r0.w;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(6,7,8,10));
  r7.x = t0[r6.x].val[8/4];
  r7.y = t0[r6.y].val[8/4];
  r7.z = t0[r6.z].val[8/4];
  r6.x = t0[r6.w].val[0/4+1];
  r6.y = t0[r6.w].val[0/4];
  r6.z = t0[r6.w].val[0/4+2];
  r1.w = saturate(dot(r3.xyz, r7.xyz));
  r1.w = ceil(r1.w);
  r0.w = r1.w * r0.w;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r3.x, r7.x);
  r2.xyz = r3.xxx * r2.xyz;
  r2.xyz = r5.xyz * r7.xxx + r2.xyz;
  r2.xyz = r4.xyz + r2.xyz;
  r1.xyz = r2.xyz + -r1.xyz;
  r0.xyz = r1.xyz * cb2[90].xxx + r0.xyz;
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
  r0.x = r6.y;
  r1.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(11,12,13,14));
  r2.x = t0[r1.z].val[0/4];
  r2.y = t0[r1.z].val[0/4+1];
  r2.z = t0[r1.z].val[0/4+2];
  r2.xyz = cb0[113].xyz + r2.xyz;
  r0.w = r2.x;
  r3.x = t0[r1.y].val[0/4];
  r3.y = t0[r1.y].val[0/4+1];
  r3.z = t0[r1.y].val[0/4+2];
  r0.z = r3.x;
  r1.x = t0[r1.x].val[0/4];
  r1.y = t0[r1.x].val[0/4+1];
  r1.z = t0[r1.x].val[0/4+2];
  r4.x = t0[r1.w].val[8/4];
  r0.y = r1.x;
  r0.x = dot(v0.xyzw, r0.xyzw);
  r6.w = r2.y;
  r3.w = r2.z;
  r3.x = r6.z;
  r6.z = r3.y;
  r6.y = r1.y;
  r0.y = dot(v0.xyzw, r6.xyzw);
  r3.y = r1.z;
  r0.z = dot(v0.xyzw, r3.xyzw);
  r2.xyz = -cb0[113].xyz + r0.xyz;
  r3.xyz = -cb2[48].xyz + r2.xyz;
  r5.xy = mad((int2)v1.xx, int2(36,36), int2(15,16));
  r4.y = t0[r5.x].val[8/4];
  r4.z = t0[r5.y].val[8/4];
  r0.w = saturate(dot(r3.xyz, r4.xyz));
  r1.w = dot(r1.xyz, r3.xyz);
  r3.xyz = r1.xyz * r1.www + cb2[48].xyz;
  r0.w = ceil(r0.w);
  r4.xyz = cb2[48].xyz + -r2.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb2[89].z;
  r1.w = cb2[89].w * r1.w;
  r0.w = r1.w * r0.w;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r4.x, r5.x);
  r4.yzw = -r3.xyz + r2.xyz;
  r5.yzw = r4.zwy * r1.zxy;
  r1.xyz = r1.yzx * r4.wyz + -r5.yzw;
  r1.xyz = r1.xyz * r4.xxx;
  r1.xyz = r4.yzw * r5.xxx + r1.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r1.xyz = r1.xyz + -r2.xyz;
  r0.xyz = r1.xyz * cb2[90].xxx + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t2.Load(r0.y).xyzw;
  o3.xyzw = r1.zyxw;
  r0.y = asint(cb1[0].y) + -1;
  r0.y = min(1, (uint)r0.y);
  r0.y = mad(asint(cb1[0].y), (int)r0.x, (int)r0.y);
  r0.x = (int)r0.x * asint(cb1[0].y);
  r0.xz = t1.Load(r0.x).xy;
  o4.xy = cb2[51].xy + r0.xz;
  r0.xy = t1.Load(r0.y).xy;
  o4.zw = r0.xy;
  return;
}