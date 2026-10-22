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
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR1,
  out float4 o3 : TEXCOORD7,
  out float4 o4 : TEXCOORD6,
  out float3 o5 : TEXCOORD8,
  out uint o6 : SV_RenderTargetArrayIndex0,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb4[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t0.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = t2.Load(r0.x).x;
  r1.xyzw = t0.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
  bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.z = (((uint)r0.x << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
  r0.x = (uint)r0.x << 2;
  r3.xyz = t1.Load(r0.x).zxy;
  r4.xyz = t1.Load(r2.x).yxz;
  r5.xyz = cb2[1].xyz * r4.xxx;
  r5.xyz = r4.yyy * cb2[0].xyz + r5.xyz;
  r5.xyz = r4.zzz * cb2[2].xyz + r5.xyz;
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = rsqrt(r0.x);
  r5.xyz = r5.xyz * r0.xxx;
  r6.xyz = r5.xyz * r0.zzz;
  r5.xyz = r5.xyz * r1.yyy;
  r7.xyz = cb2[1].xyz * r3.zzz;
  r7.xyz = r3.yyy * cb2[0].xyz + r7.xyz;
  r7.xyz = r3.xxx * cb2[2].xyz + r7.xyz;
  r0.x = dot(r7.xyz, r7.xyz);
  r0.x = rsqrt(r0.x);
  r7.xyz = r7.xyz * r0.xxx;
  r0.xyz = r0.yyy * r7.xyz + r6.xyz;
  r5.xyz = r1.xxx * r7.xyz + r5.xyz;
  r2.xyw = t1.Load(r2.y).xyz;
  r6.xyz = t1.Load(r2.z).xyz;
  r7.xyz = cb2[1].xyz * r2.yyy;
  r7.xyz = r2.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r2.www * cb2[2].xyz + r7.xyz;
  r1.x = dot(r7.xyz, r7.xyz);
  r1.x = rsqrt(r1.x);
  r7.xyz = r7.xyz * r1.xxx;
  o0.xyz = r0.www * r7.xyz + r0.xyz;
  r0.xyz = r1.zzz * r7.xyz + r5.xyz;
  o1.w = cb2[4].w * r1.w;
  o0.w = 0;
  o1.xyz = r0.xyz;
  o5.xyz = r0.xyz;
  o2.xyzw = float4(0,1,1,0);
  r0.x = r3.z;
  r0.y = r4.x;
  r0.z = r2.y;
  r0.w = r6.y;
  r0.x = dot(v0.xyzw, r0.xyzw);
  r0.xyz = cb2[1].xyz * r0.xxx;
  r4.x = r3.y;
  r3.y = r4.z;
  r4.z = r2.x;
  r3.z = r2.w;
  r4.w = r6.x;
  r3.w = r6.z;
  r0.w = dot(v0.xyzw, r3.xyzw);
  r1.x = dot(v0.xyzw, r4.xyzw);
  r0.xyz = cb2[0].xyz * r1.xxx + r0.xyz;
  r0.xyz = cb2[2].xyz * r0.www + r0.xyz;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o3.xyz = r0.xyz;
  r0.w = asuint(cb0[3].y) << 2;
  r1.xyzw = cb3[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb3[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb3[r0.w+31].xyzw + r1.xyzw;
  r0.xyzw = cb3[r0.w+32].xyzw + r1.xyzw;
  o4.xyzw = r0.xyzw;
  o7.xyzw = r0.xyzw;
  o6.x = cb0[3].y;
  return;
}