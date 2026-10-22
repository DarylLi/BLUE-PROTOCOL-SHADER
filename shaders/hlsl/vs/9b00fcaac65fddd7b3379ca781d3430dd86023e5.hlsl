// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float4 v1 : ATTRIBUTE2,
  uint v2 : SV_InstanceID0,
  uint v3 : SV_VertexID0,
  out float4 o0 : TEXCOORD6,
  out float3 o1 : TEXCOORD8,
  out float4 o2 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v3.x, vertex_id
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v3.x + asint(cb2[0].w);
  r0.x = t1.Load(r0.x).x;
  r0.y = (uint)r0.x << 2;
  bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.z = (((uint)r0.x << 2) & bitmask.z) | ((uint)2 & ~bitmask.z);
  bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.w = (((uint)r0.x << 2) & bitmask.w) | ((uint)3 & ~bitmask.w);
  r1.xyz = t0.Load(r0.y).zxy;
  r2.x = r1.z;
  r3.xyz = t0.Load(r0.w).xyz;
  r2.w = r3.y;
  r4.xyz = t0.Load(r0.x).yxz;
  r0.xyz = t0.Load(r0.z).xyz;
  r2.y = r4.x;
  r2.z = r0.y;
  r0.y = dot(v0.xyzw, r2.xyzw);
  r0.w = dot(v1.xyz, r2.xyz);
  r2.xyz = cb1[1].xyz * r0.yyy;
  r4.w = r3.x;
  r1.w = r3.z;
  r4.x = r1.y;
  r1.y = r4.z;
  r4.z = r0.x;
  r1.z = r0.z;
  r0.x = dot(v0.xyzw, r4.xyzw);
  r0.y = dot(v1.xyz, r4.xyz);
  r2.xyz = cb1[0].xyz * r0.xxx + r2.xyz;
  r0.x = dot(v0.xyzw, r1.xyzw);
  r0.z = dot(v1.xyz, r1.xyz);
  r1.xyz = cb1[2].xyz * r0.xxx + r2.xyz;
  r2.xyz = cb1[3].xyz + cb0[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  o0.xyz = r1.xyz;
  o2.xyz = r1.xyz;
  o0.w = 1;
  r1.xyz = cb1[4].yyy * cb1[1].xyz;
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xxx * cb1[0].xyz;
  r0.xyw = r2.xyz * r0.yyy + r1.xyz;
  r1.xyz = cb1[4].zzz * cb1[2].xyz;
  o1.xyz = r1.xyz * r0.zzz + r0.xyw;
  o2.w = 1;
  return;
}