// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[29];
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
  out float o0 : TEXCOORD6,
  out float p0 : TEXCOORD8,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v3.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[4].zzz * cb1[2].xyz;
  r1.xyz = cb1[4].xxx * cb1[0].xyz;
  r2.xyz = cb1[4].yyy * cb1[1].xyz;
  r0.w = (int)v3.x + asint(cb3[0].w);
  r0.w = t1.Load(r0.w).x;
  r1.w = (uint)r0.w << 2;
  bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r3.x = (((uint)r0.w << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r3.y = (((uint)r0.w << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
  bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r3.z = (((uint)r0.w << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
  r4.xyz = t0.Load(r1.w).zxy;
  r5.x = r4.z;
  r6.xyz = t0.Load(r3.x).yxz;
  r5.y = r6.x;
  r3.xyw = t0.Load(r3.y).xyz;
  r7.xyz = t0.Load(r3.z).xyz;
  r5.z = r3.y;
  r0.w = dot(v1.xyz, r5.xyz);
  r2.xyz = r2.xyz * r0.www;
  r6.x = r4.y;
  r4.y = r6.z;
  r6.z = r3.x;
  r4.z = r3.w;
  r0.w = dot(v1.xyz, r6.xyz);
  r1.xyz = r1.xyz * r0.www + r2.xyz;
  r0.w = dot(v1.xyz, r4.xyz);
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r1.x = cb2[23].z;
  r1.y = cb2[24].z;
  r1.z = cb2[25].z;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb2[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb2[27].z, r0.x);
  p0.x = cb2[27].y * r0.x + cb2[27].x;
  r6.w = r7.x;
  r0.x = dot(v0.xyzw, r6.xyzw);
  r5.w = r7.y;
  r4.w = r7.z;
  r0.y = dot(v0.xyzw, r4.xyzw);
  r0.z = dot(v0.xyzw, r5.xyzw);
  r1.xyz = cb1[1].xyz * r0.zzz;
  r0.xzw = cb1[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb1[2].xyz * r0.yyy + r0.xzw;
  r1.xyz = cb1[3].xyz + cb0[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb2[20].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb2[19].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb2[21].xyzw + r1.xyzw;
  r0.xyzw = cb2[22].xyzw + r0.xyzw;
  r1.x = cmp(r0.z < 0);
  r1.y = cmp(0 < cb2[28].x);
  r1.x = r1.x ? r1.y : 0;
  r0.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o0.x = r0.z;
  o1.xyzw = r0.xyzw;
  return;
}