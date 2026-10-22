// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = mad((int)v1.x, 36, 5);
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.x = abs(r0.x) + abs(r0.y);
  r0.x = r0.x + abs(r0.z);
  r0.x = frac(r0.x);
  r0.y = (int)v2.x + asint(cb1[0].w);
  r0.y = (int)r0.y & asint(cb1[0].x);
  r0.yz = t1.Load(r0.y).zw;
  r0.z = cb0[142].z * cb2[8].x + r0.z;
  r0.y = cb2[8].z * r0.y;
  r0.x = r0.x * 0.5 + r0.z;
  r0.x = 6.28318548 * r0.x;
  r0.x = sin(r0.x);
  r0.x = r0.x * r0.y;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r1.x);
  r0.y = (int)v1.x * 36;
  r0.z = mad((int)v1.x, 36, 2);
  r1.y = t0[r0.z].val[0/4];
  r1.z = t0[r0.z].val[0/4+1];
  r1.w = t0[r0.z].val[0/4+2];
  r2.z = r1.y;
  r0.zw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r0.y].val[0/4];
  r3.y = t0[r0.y].val[0/4+1];
  r3.z = t0[r0.y].val[0/4+2];
  r4.x = t0[r0.z].val[0/4];
  r4.y = t0[r0.z].val[0/4+2];
  r4.z = t0[r0.z].val[0/4+1];
  r0.y = t0[r0.w].val[0/4];
  r0.z = t0[r0.w].val[0/4+1];
  r0.w = t0[r0.w].val[0/4+2];
  r2.y = r4.x;
  r2.x = r3.x;
  r2.y = dot(cb2[2].xyz, r2.xyz);
  r5.y = r4.z;
  r5.z = r1.z;
  r5.x = r3.y;
  r2.z = dot(cb2[2].xyz, r5.xyz);
  r5.xyz = v0.yyy * r4.xzy;
  r3.xyw = r3.xyz * v0.xxx + r5.xyz;
  r4.x = r3.z;
  r3.xyz = r1.yzw * v0.zzz + r3.xyw;
  r4.z = r1.w;
  r2.x = dot(cb2[2].xyz, r4.xyz);
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = sqrt(r1.y);
  r1.yzw = r2.xyz / r1.yyy;
  r2.xyz = cb0[70].xyz + r0.yzw;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = r3.xyz + -r0.yzw;
  r2.w = dot(r1.zwy, r4.xyz);
  r0.yzw = r1.zwy * r2.www + r0.yzw;
  r4.xyz = r3.xyz + -r0.yzw;
  r5.xyz = r4.yzx * r1.yzw;
  r1.yzw = r1.wyz * r4.zxy + -r5.xyz;
  r1.yzw = r1.yzw * r0.xxx;
  r1.xyz = r4.xyz * r1.xxx + r1.yzw;
  r0.xyz = r1.xyz + r0.yzw;
  r0.xyz = r0.xyz + -r3.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}