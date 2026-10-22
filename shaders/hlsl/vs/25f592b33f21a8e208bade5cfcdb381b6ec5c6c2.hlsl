// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
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
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
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
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.y = (((uint)r2.x << 2) & bitmask.y) | ((uint)1 & ~bitmask.y);
  bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.z = (((uint)r2.x << 2) & bitmask.z) | ((uint)2 & ~bitmask.z);
  bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.w = (((uint)r2.x << 2) & bitmask.w) | ((uint)3 & ~bitmask.w);
  r2.x = (uint)r2.x << 2;
  r3.xyz = t2.Load(r2.x).zxy;
  r4.xyz = t2.Load(r2.y).yxz;
  r5.xyz = cb1[1].xyz * r4.xxx;
  r5.xyz = r4.yyy * cb1[0].xyz + r5.xyz;
  r5.xyz = r4.zzz * cb1[2].xyz + r5.xyz;
  r2.x = dot(r5.xyz, r5.xyz);
  r2.x = rsqrt(r2.x);
  r5.xyz = r5.xyz * r2.xxx;
  r6.xyz = r5.xyz * r0.zzz;
  r5.xyz = r5.xyz * r1.yyy;
  r7.xyz = cb1[1].xyz * r3.zzz;
  r7.xyz = r3.yyy * cb1[0].xyz + r7.xyz;
  r7.xyz = r3.xxx * cb1[2].xyz + r7.xyz;
  r0.z = dot(r7.xyz, r7.xyz);
  r0.z = rsqrt(r0.z);
  r7.xyz = r7.xyz * r0.zzz;
  r6.xyz = r0.yyy * r7.xyz + r6.xyz;
  r5.xyz = r1.xxx * r7.xyz + r5.xyz;
  r2.xyz = t2.Load(r2.z).xyz;
  r7.xyz = t2.Load(r2.w).xyz;
  r8.xyz = cb1[1].xyz * r2.yyy;
  r8.xyz = r2.xxx * cb1[0].xyz + r8.xyz;
  r8.xyz = r2.zzz * cb1[2].xyz + r8.xyz;
  r0.y = dot(r8.xyz, r8.xyz);
  r0.y = rsqrt(r0.y);
  r8.xyz = r8.xyz * r0.yyy;
  o0.xyz = r0.www * r8.xyz + r6.xyz;
  o1.xyz = r1.zzz * r8.xyz + r5.xyz;
  o1.w = cb1[4].w * r1.w;
  o2.xyzw = float4(0,1,1,0);
  r0.y = (int)r0.x * asint(cb2[0].y);
  r0.x = mad(asint(cb2[0].y), (int)r0.x, asint(cb2[0].z));
  r0.xz = t0.Load(r0.x).xy;
  o4.xy = cb3[2].xy * r0.xz;
  r0.xy = t0.Load(r0.y).xy;
  o3.xy = r0.xy;
  o3.zw = float2(0,0);
  o4.zw = float2(0,0);
  r0.x = r3.z;
  r0.y = r4.x;
  r0.z = r2.y;
  r0.w = r7.y;
  r0.x = dot(v0.xyzw, r0.xyzw);
  r0.xyz = cb1[1].xyz * r0.xxx;
  r4.x = r3.y;
  r3.y = r4.z;
  r4.z = r2.x;
  r3.z = r2.z;
  r4.w = r7.x;
  r3.w = r7.z;
  r0.w = dot(v0.xyzw, r3.xyzw);
  r1.x = dot(v0.xyzw, r4.xyzw);
  r0.xyz = cb1[0].xyz * r1.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * r0.www + r0.xyz;
  r1.xyz = cb1[3].xyz + cb0[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o5.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}