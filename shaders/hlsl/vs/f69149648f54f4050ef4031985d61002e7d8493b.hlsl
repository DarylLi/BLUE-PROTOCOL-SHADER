// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[53];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float4 v1 : ATTRIBUTE2,
  uint v2 : SV_InstanceID0,
  uint v3 : SV_VertexID0,
  out uint o0 : SV_RenderTargetArrayIndex0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : COLOR1,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : TEXCOORD6,
  out float3 o6 : TEXCOORD8,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v3.x, vertex_id
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.x = cb0[3].y;
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  r0.x = (int)v3.x + asint(cb4[0].w);
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
  r2.xyz = cb2[1].xyz * r0.yyy;
  r4.w = r3.x;
  r1.w = r3.z;
  r4.x = r1.y;
  r1.y = r4.z;
  r4.z = r0.x;
  r1.z = r0.z;
  r0.x = dot(v0.xyzw, r4.xyzw);
  r0.y = dot(v1.xyz, r4.xyz);
  r2.xyz = cb2[0].xyz * r0.xxx + r2.xyz;
  r0.x = dot(v0.xyzw, r1.xyzw);
  r0.z = dot(v1.xyz, r1.xyz);
  r1.xyz = cb2[2].xyz * r0.xxx + r2.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  o4.xyz = r1.xyz;
  r0.x = asuint(cb0[3].y) << 2;
  r2.xyzw = cb3[r0.x+30].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb3[r0.x+29].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb3[r0.x+31].xyzw + r2.xyzw;
  r1.xyzw = cb3[r0.x+32].xyzw + r1.xyzw;
  o5.xyzw = r1.xyzw;
  o7.xyzw = r1.xyzw;
  r1.xyz = cb2[4].yyy * cb2[1].xyz;
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb2[4].xxx * cb2[0].xyz;
  r0.xyw = r2.xyz * r0.yyy + r1.xyz;
  r1.xyz = cb2[4].zzz * cb2[2].xyz;
  o6.xyz = r1.xyz * r0.zzz + r0.xyw;
  return;
}