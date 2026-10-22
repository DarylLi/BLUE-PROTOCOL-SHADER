// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.x = t1.Load(r0.x).x;
  r0.y = (uint)r0.x << 2;
  bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.z = (((uint)r0.x << 2) & bitmask.z) | ((uint)2 & ~bitmask.z);
  bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.w = (((uint)r0.x << 2) & bitmask.w) | ((uint)3 & ~bitmask.w);
  r1.xyz = t0.Load(r0.y).zxy;
  r2.x = r1.z;
  r3.xyz = t0.Load(r0.x).yxz;
  r2.y = r3.x;
  r0.xyz = t0.Load(r0.z).xyz;
  r4.xyz = t0.Load(r0.w).xyz;
  r2.z = r0.y;
  r2.w = r4.y;
  r0.y = dot(v0.xyzw, r2.xyzw);
  r2.xyz = cb1[1].xyz * r0.yyy;
  r3.x = r1.y;
  r1.y = r3.z;
  r3.z = r0.x;
  r1.z = r0.z;
  r3.w = r4.x;
  r1.w = r4.z;
  r0.x = dot(v0.xyzw, r1.xyzw);
  r0.y = dot(v0.xyzw, r3.xyzw);
  r0.yzw = cb1[0].xyz * r0.yyy + r2.xyz;
  r0.xyz = cb1[2].xyz * r0.xxx + r0.yzw;
  r1.xyz = cb1[3].xyz + cb0[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}