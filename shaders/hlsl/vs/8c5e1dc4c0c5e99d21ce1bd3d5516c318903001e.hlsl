// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

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
  float4 cb2[4];
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
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD6,
  out float3 o1 : TEXCOORD8,
  out uint o2 : SV_RenderTargetArrayIndex0,
  out float4 o3 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb4[0].w);
  r0.y = t2.Load(r0.x).x;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.xzw = t0.Load(r0.x).xyz;
  bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.x = (((uint)r0.y << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.y = (((uint)r0.y << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
  bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.z = (((uint)r0.y << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
  r0.y = (uint)r0.y << 2;
  r2.xyz = t1.Load(r0.y).xyz;
  r3.xyw = t1.Load(r1.z).xyz;
  r4.w = r3.y;
  r4.x = r2.y;
  r1.xzw = t1.Load(r1.x).xyz;
  r5.xyz = t1.Load(r1.y).xyz;
  r4.y = r1.z;
  r4.z = r5.y;
  r0.y = dot(v0.xyzw, r4.xyzw);
  r4.xzw = cb2[1].xyz * r0.yyy;
  r6.w = r3.x;
  r6.x = r2.x;
  r6.y = r1.x;
  r6.z = r5.x;
  r0.y = dot(v0.xyzw, r6.xyzw);
  r4.xzw = cb2[0].xyz * r0.yyy + r4.xzw;
  r3.x = r2.z;
  r3.y = r1.w;
  r3.z = r5.z;
  r0.y = dot(v0.xyzw, r3.xyzw);
  r3.xyw = cb2[2].xyz * r0.yyy + r4.xzw;
  r4.xzw = cb2[3].xyz + cb1[70].xyz;
  r3.xyw = r4.xzw + r3.xyw;
  o0.xyz = r3.xyw;
  o0.w = 1;
  r2.xyw = cb2[1].xyz * r2.yyy;
  r2.xyw = r6.xxx * cb2[0].xyz + r2.xyw;
  r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = r2.xyz * r0.yyy;
  r4.xyz = cb2[1].xyz * r4.yyy;
  r1.xyz = r1.xxx * cb2[0].xyz + r4.xyz;
  r1.xyz = r1.www * cb2[2].xyz + r1.xyz;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyz = r1.xyz * r0.yyy;
  r1.xyz = r1.xyz * r0.zzz;
  r0.xyz = r0.xxx * r2.xyz + r1.xyz;
  r1.xyz = cb2[1].xyz * r5.yyy;
  r1.xyz = r5.xxx * cb2[0].xyz + r1.xyz;
  r1.xyz = r3.zzz * cb2[2].xyz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o1.xyz = r0.www * r1.xyz + r0.xyz;
  o2.x = cb0[3].y;
  r0.x = asuint(cb0[3].y) << 2;
  r1.xyzw = cb3[r0.x+30].xyzw * r3.yyyy;
  r1.xyzw = r3.xxxx * cb3[r0.x+29].xyzw + r1.xyzw;
  r1.xyzw = r3.wwww * cb3[r0.x+31].xyzw + r1.xyzw;
  o3.xyzw = cb3[r0.x+32].xyzw + r1.xyzw;
  return;
}