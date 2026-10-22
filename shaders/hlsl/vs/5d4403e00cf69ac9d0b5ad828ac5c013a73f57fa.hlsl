// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[4];
}

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
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR1,
  out float4 o3 : TEXCOORD4,
  out float4 o4 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t1.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t1.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = t3.Load(r0.x).x;
  r0.x = mad(asint(cb2[0].y), (int)r0.x, asint(cb2[0].z));
  r2.yz = t0.Load(r0.x).xy;
  bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r3.x = (((uint)r2.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r3.y = (((uint)r2.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
  bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r3.z = (((uint)r2.x << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
  r0.x = (uint)r2.x << 2;
  r4.xyz = t2.Load(r0.x).zxy;
  r5.xyz = t2.Load(r3.x).yxz;
  r6.xyz = cb1[1].xyz * r5.xxx;
  r6.xyz = r5.yyy * cb1[0].xyz + r6.xyz;
  r6.xyz = r5.zzz * cb1[2].xyz + r6.xyz;
  r0.x = dot(r6.xyz, r6.xyz);
  r0.x = rsqrt(r0.x);
  r6.xyz = r6.xyz * r0.xxx;
  r7.xyz = r6.xyz * r0.zzz;
  r6.xyz = r6.xyz * r1.yyy;
  r8.xyz = cb1[1].xyz * r4.zzz;
  r8.xyz = r4.yyy * cb1[0].xyz + r8.xyz;
  r8.xyz = r4.xxx * cb1[2].xyz + r8.xyz;
  r0.x = dot(r8.xyz, r8.xyz);
  r0.x = rsqrt(r0.x);
  r8.xyz = r8.xyz * r0.xxx;
  r0.xyz = r0.yyy * r8.xyz + r7.xyz;
  r6.xyz = r1.xxx * r8.xyz + r6.xyz;
  r3.xyw = t2.Load(r3.y).xyz;
  r7.xyz = t2.Load(r3.z).xyz;
  r8.xyz = cb1[1].xyz * r3.yyy;
  r8.xyz = r3.xxx * cb1[0].xyz + r8.xyz;
  r8.xyz = r3.www * cb1[2].xyz + r8.xyz;
  r1.x = dot(r8.xyz, r8.xyz);
  r1.x = rsqrt(r1.x);
  r8.xyz = r8.xyz * r1.xxx;
  o0.xyz = r0.www * r8.xyz + r0.xyz;
  o1.xyz = r1.zzz * r8.xyz + r6.xyz;
  o1.w = cb1[4].w * r1.w;
  o0.w = 0;
  o2.xyzw = float4(0,1,1,0);
  o3.xy = cb3[2].xy * r2.yz;
  o3.zw = cb3[3].xy * r2.yz;
  r0.x = r4.z;
  r0.y = r5.x;
  r0.z = r3.y;
  r0.w = r7.y;
  r0.x = dot(v0.xyzw, r0.xyzw);
  r0.xyz = cb1[1].xyz * r0.xxx;
  r5.x = r4.y;
  r4.y = r5.z;
  r5.z = r3.x;
  r4.z = r3.w;
  r5.w = r7.x;
  r4.w = r7.z;
  r0.w = dot(v0.xyzw, r4.xyzw);
  r1.x = dot(v0.xyzw, r5.xyzw);
  r0.xyz = cb1[0].xyz * r1.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * r0.www + r0.xyz;
  r1.xyz = cb1[3].xyz + cb0[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o4.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}