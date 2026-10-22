// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[136];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.x = t2.Load(r0.x).x;
  r0.y = (uint)r0.x << 2;
  bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.z = (((uint)r0.x << 2) & bitmask.z) | ((uint)2 & ~bitmask.z);
  bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.w = (((uint)r0.x << 2) & bitmask.w) | ((uint)3 & ~bitmask.w);
  r1.xyz = t0.Load(r0.y).zxy;
  r2.xyz = t1.Load(r0.y).yxz;
  r3.x = r1.z;
  r4.xyz = t0.Load(r0.x).yxz;
  r3.y = r4.x;
  r5.xyz = t0.Load(r0.z).xyz;
  r3.z = r5.y;
  r6.xyz = t0.Load(r0.w).xyz;
  r3.w = r6.y;
  r0.y = dot(v0.xyzw, r3.xyzw);
  r3.xyz = cb1[1].xyz * r0.yyy;
  r4.x = r1.y;
  r1.y = r4.z;
  r4.z = r5.x;
  r1.z = r5.z;
  r4.w = r6.x;
  r1.w = r6.z;
  r0.y = dot(v0.xyzw, r1.xyzw);
  r1.x = dot(v0.xyzw, r4.xyzw);
  r1.xyz = cb1[0].xyz * r1.xxx + r3.xyz;
  r1.xyz = cb1[2].xyz * r0.yyy + r1.xyz;
  r3.xyz = cb1[3].xyz + cb0[70].xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r3.xyzw = cb0[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb0[0].xyzw + r3.xyzw;
  r1.xyzw = r1.zzzz * cb0[2].xyzw + r3.xyzw;
  r1.xyzw = cb0[3].xyzw + r1.xyzw;
  r0.y = 0.00100000005 * r1.w;
  r3.x = cmp(1 < asint(cb0[135].x));
  r0.y = r3.x ? r0.y : 0;
  o0.z = r1.z + r0.y;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  r1.x = r2.y;
  r3.xyz = t1.Load(r0.x).xzy;
  r1.y = r3.x;
  r0.xyz = t1.Load(r0.z).xyz;
  r4.xyz = t1.Load(r0.w).xyz;
  r1.z = r0.x;
  r1.w = r4.x;
  r1.x = dot(v0.xyzw, r1.xyzw);
  r3.x = r2.z;
  r2.y = r3.z;
  r2.z = r0.y;
  r3.z = r0.z;
  r2.w = r4.y;
  r3.w = r4.z;
  r1.z = dot(v0.xyzw, r3.xyzw);
  r1.y = dot(v0.xyzw, r2.xyzw);
  r0.x = cb1[10].y;
  r0.y = cb1[11].y;
  r0.z = cb1[12].y;
  r2.xyw = cb1[13].xyz + cb0[113].xyz;
  r0.w = r2.y;
  r1.w = v0.w;
  r0.x = dot(r1.xyzw, r0.xyzw);
  r0.xyzw = cb0[92].xyzw * r0.xxxx;
  r3.w = r2.x;
  r3.x = cb1[10].x;
  r3.y = cb1[11].x;
  r3.z = cb1[12].x;
  r3.x = dot(r1.xyzw, r3.xyzw);
  r0.xyzw = r3.xxxx * cb0[91].xyzw + r0.xyzw;
  r2.x = cb1[10].z;
  r2.y = cb1[11].z;
  r2.z = cb1[12].z;
  r1.x = dot(r1.xyzw, r2.xyzw);
  r0.xyzw = r1.xxxx * cb0[93].xyzw + r0.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  return;
}