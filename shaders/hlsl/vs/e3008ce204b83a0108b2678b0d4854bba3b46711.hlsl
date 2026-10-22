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
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r0.w = mad((int)v1.x, 36, 5);
  r5.x = t0[r0.w].val[0/4];
  r5.y = t0[r0.w].val[0/4+1];
  r5.z = t0[r0.w].val[0/4+2];
  r0.w = abs(r5.x) + abs(r5.y);
  r0.w = r0.w + abs(r5.z);
  r0.w = frac(r0.w);
  r1.w = (int)v2.x + asint(cb1[0].w);
  r2.w = (int)r1.w & asint(cb1[0].x);
  r1.w = (int)r1.w * asint(cb1[0].y);
  r5.xy = t1.Load(r1.w).xy;
  o1.xy = r5.xy;
  r5.xy = t2.Load(r2.w).zw;
  r1.w = cb0[142].z * cb2[8].x + r5.y;
  r2.w = cb2[8].z * r5.x;
  r0.w = r0.w * 0.5 + r1.w;
  r0.w = 6.28318548 * r0.w;
  r0.w = sin(r0.w);
  r0.w = r0.w * r2.w;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r5.x, r6.x);
  r1.xyz = r5.xxx * r1.xyz;
  r1.xyz = r4.xyz * r6.xxx + r1.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r1.xyz = r1.xyz + -r2.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  o1.zw = float2(0,0);
  return;
}