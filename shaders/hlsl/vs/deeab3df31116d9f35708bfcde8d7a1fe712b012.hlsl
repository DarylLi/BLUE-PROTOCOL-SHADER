// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
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
  out float4 o3 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.y = mad((int)v1.x, 36, 2);
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r1.z = r0.y;
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r0.x].val[0/4];
  r3.y = t0[r0.x].val[0/4+1];
  r3.z = t0[r0.x].val[0/4+2];
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+2];
  r2.w = t0[r2.x].val[0/4+1];
  r4.x = t0[r2.y].val[0/4];
  r4.y = t0[r2.y].val[0/4+1];
  r4.z = t0[r2.y].val[0/4+2];
  r1.y = r2.x;
  r1.x = r3.x;
  r1.y = dot(cb2[2].xyz, r1.xyz);
  r5.y = r2.w;
  r5.z = r0.z;
  r5.x = r3.y;
  r1.z = dot(cb2[2].xyz, r5.xyz);
  r5.xyz = v0.yyy * r2.xwz;
  r3.xyw = r3.xyz * v0.xxx + r5.xyz;
  r2.x = r3.z;
  r0.xyz = r0.yzw * v0.zzz + r3.xyw;
  r2.w = r0.w;
  r1.x = dot(cb2[2].xyz, r2.xzw);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r1.xyz = r1.xyz / r0.www;
  r2.xyz = cb0[70].xyz + r4.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyz = -cb0[70].xyz + r0.xyz;
  r3.xyz = r2.xyz + -r4.xyz;
  r0.w = dot(r1.yzx, r3.xyz);
  r3.xyz = r1.yzx * r0.www + r4.xyz;
  r4.xyz = -r3.xyz + r2.xyz;
  r5.xyz = r4.yzx * r1.xyz;
  r1.xyz = r1.zxy * r4.zxy + -r5.xyz;
  r0.w = (int)v2.x + asint(cb1[0].w);
  r1.w = (int)r0.w & asint(cb1[0].x);
  r0.w = (int)r0.w * asint(cb1[0].y);
  r5.xy = t1.Load(r0.w).xy;
  o3.xy = r5.xy;
  r5.xy = t2.Load(r1.w).zw;
  r0.w = cb0[142].z * cb2[8].x + r5.y;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(5,10,11,12));
  r7.x = t0[r6.x].val[0/4];
  r7.y = t0[r6.x].val[0/4+1];
  r7.z = t0[r6.x].val[0/4+2];
  r1.w = abs(r7.x) + abs(r7.y);
  r1.w = r1.w + abs(r7.z);
  r1.w = frac(r1.w);
  r0.w = r1.w * 0.5 + r0.w;
  r0.w = 6.28318548 * r0.w;
  r0.w = sin(r0.w);
  r2.w = cb2[8].z * r5.x;
  r3.w = cb0[139].z * cb2[8].x + r5.y;
  r1.w = r1.w * 0.5 + r3.w;
  r1.w = 6.28318548 * r1.w;
  r1.w = sin(r1.w);
  r1.w = r1.w * r2.w;
  r0.w = r2.w * r0.w;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r5.x, r6.x);
  r0.w = 6.28318548 * r1.w;
  sincos(r0.w, r7.x, r8.x);
  r1.xyz = r5.xxx * r1.xyz;
  r1.xyz = r4.xyz * r6.xxx + r1.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r1.xyz = r1.xyz + -r2.xyz;
  r0.xyz = r1.xyz + r0.xyz;
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
  r0.x = t0[r6.y].val[0/4+1];
  r0.y = t0[r6.y].val[0/4];
  r0.z = t0[r6.y].val[0/4+2];
  r1.x = r0.y;
  r2.x = t0[r6.z].val[0/4];
  r2.y = t0[r6.z].val[0/4+2];
  r2.z = t0[r6.z].val[0/4+1];
  r3.x = t0[r6.w].val[0/4];
  r3.y = t0[r6.w].val[0/4+1];
  r3.z = t0[r6.w].val[0/4+2];
  r1.y = r2.x;
  r1.z = r3.x;
  r4.y = dot(cb2[2].xyz, r1.xyz);
  r2.x = r0.z;
  r0.y = r2.z;
  r0.z = r3.y;
  r2.z = r3.z;
  r4.z = dot(cb2[2].xyz, r0.xyz);
  r4.x = dot(cb2[2].xyz, r2.xyz);
  r3.x = dot(r4.xyz, r4.xyz);
  r3.x = sqrt(r3.x);
  r3.xyz = r4.xyz / r3.xxx;
  r3.w = mad((int)v1.x, 36, 13);
  r4.x = t0[r3.w].val[0/4];
  r4.y = t0[r3.w].val[0/4+1];
  r4.z = t0[r3.w].val[0/4+2];
  r5.xyz = cb0[113].xyz + r4.xyz;
  r1.w = r5.x;
  r1.x = dot(v0.xyzw, r1.xyzw);
  r0.w = r5.y;
  r2.w = r5.z;
  r1.z = dot(v0.xyzw, r2.xyzw);
  r1.y = dot(v0.xyzw, r0.xyzw);
  r0.xyz = -cb0[113].xyz + r1.xyz;
  r2.xyz = r0.xyz + -r4.xyz;
  r0.w = dot(r3.yzx, r2.xyz);
  r2.xyz = r3.yzx * r0.www + r4.xyz;
  r4.xyz = -r2.xyz + r0.xyz;
  r5.xyz = r4.yzx * r3.xyz;
  r3.xyz = r3.zxy * r4.zxy + -r5.xyz;
  r3.xyz = r3.xyz * r7.xxx;
  r3.xyz = r4.xyz * r8.xxx + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r0.xyz = r2.xyz + -r0.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  o3.zw = float2(0,0);
  return;
}