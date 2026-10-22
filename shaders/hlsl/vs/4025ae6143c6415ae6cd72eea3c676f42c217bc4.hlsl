// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

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
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR0,
  out float4 o6 : COLOR1)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(1 < asint(cb0[135].x));
  r0.yzw = cb1[3].xyz + cb0[70].xyz;
  r1.x = (int)v2.x + asint(cb2[0].w);
  r1.y = t4.Load(r1.x).x;
  r1.z = (uint)r1.y << 2;
  bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.x = (((uint)r1.y << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.y = (((uint)r1.y << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
  bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.z = (((uint)r1.y << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
  r3.xyz = t2.Load(r1.z).xyz;
  r4.xyz = t3.Load(r1.z).yxz;
  r5.x = r3.y;
  r6.xyw = t2.Load(r2.z).xyz;
  r5.w = r6.y;
  r1.yzw = t2.Load(r2.x).xyz;
  r5.y = r1.z;
  r7.xyz = t2.Load(r2.y).xyz;
  r5.z = r7.y;
  r1.z = dot(v0.xyzw, r5.xyzw);
  r5.xzw = cb1[1].xyz * r1.zzz;
  r8.x = r3.x;
  r8.w = r6.x;
  r8.y = r1.y;
  r8.z = r7.x;
  r1.z = dot(v0.xyzw, r8.xyzw);
  r5.xzw = cb1[0].xyz * r1.zzz + r5.xzw;
  r6.x = r3.z;
  r6.y = r1.w;
  r6.z = r7.z;
  r1.z = dot(v0.xyzw, r6.xyzw);
  r5.xzw = cb1[2].xyz * r1.zzz + r5.xzw;
  r0.yzw = r5.xzw + r0.yzw;
  r9.xyzw = cb0[1].xyzw * r0.zzzz;
  r9.xyzw = r0.yyyy * cb0[0].xyzw + r9.xyzw;
  r9.xyzw = r0.wwww * cb0[2].xyzw + r9.xyzw;
  r9.xyzw = cb0[3].xyzw + r9.xyzw;
  r0.y = 0.00100000005 * r9.w;
  r0.x = r0.x ? r0.y : 0;
  o0.z = r9.z + r0.x;
  o0.xyw = r9.xyw;
  o1.xyzw = r9.xyzw;
  r0.x = cb1[10].y;
  r0.y = cb1[11].y;
  r0.z = cb1[12].y;
  r9.x = r4.y;
  r10.xyz = t3.Load(r2.x).xzy;
  r9.y = r10.x;
  r2.xyw = t3.Load(r2.y).xyz;
  r5.xzw = t3.Load(r2.z).xyz;
  r9.z = r2.x;
  r9.w = r5.x;
  r9.x = dot(v0.xyzw, r9.xyzw);
  r10.x = r4.z;
  r4.y = r10.z;
  r4.z = r2.y;
  r10.z = r2.w;
  r4.w = r5.z;
  r10.w = r5.w;
  r9.z = dot(v0.xyzw, r10.xyzw);
  r9.y = dot(v0.xyzw, r4.xyzw);
  r2.xyw = cb1[13].xyz + cb0[113].xyz;
  r0.w = r2.y;
  r9.w = v0.w;
  r0.x = dot(r9.xyzw, r0.xyzw);
  r0.xyzw = cb0[92].xyzw * r0.xxxx;
  r4.w = r2.x;
  r4.x = cb1[10].x;
  r4.y = cb1[11].x;
  r4.z = cb1[12].x;
  r1.z = dot(r9.xyzw, r4.xyzw);
  r0.xyzw = r1.zzzz * cb0[91].xyzw + r0.xyzw;
  r2.x = cb1[10].z;
  r2.y = cb1[11].z;
  r2.z = cb1[12].z;
  r1.z = dot(r9.xyzw, r2.xyzw);
  r0.xyzw = r1.zzzz * cb0[93].xyzw + r0.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.xyz = cb1[1].xyz * r3.yyy;
  r0.xyz = r8.xxx * cb1[0].xyz + r0.xyz;
  r0.xyz = r3.zzz * cb1[2].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb1[1].xyz * r5.yyy;
  r2.xyz = r1.yyy * cb1[0].xyz + r2.xyz;
  r1.yzw = r1.www * cb1[2].xyz + r2.xyz;
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = rsqrt(r0.w);
  r1.yzw = r1.yzw * r0.www;
  r0.w = (uint)r1.x << 1;
  r2.xyz = t0.Load(r0.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r1.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r1.x = (int)r1.x & asint(cb2[0].x);
  r3.xyzw = t1.Load(r1.x).xyzw;
  o5.xyzw = r3.zyxw;
  r3.xyzw = t0.Load(r0.w).xyzw;
  r4.xyz = r3.yzx * r2.xyz;
  r2.xyz = r3.xyz * r2.yzx + -r4.xyz;
  r2.xyz = r2.xyz * r3.www;
  r4.xyz = r2.xyz * r3.yzx;
  r2.xyz = r2.zxy * r3.zxy + -r4.xyz;
  r2.xyz = r2.xyz * r3.www;
  r4.xyz = r2.yyy * r1.yzw;
  r1.xyz = r3.yyy * r1.yzw;
  r1.xyz = r3.xxx * r0.xyz + r1.xyz;
  r0.xyz = r2.xxx * r0.xyz + r4.xyz;
  r2.xyw = cb1[1].xyz * r7.yyy;
  r2.xyw = r7.xxx * cb1[0].xyz + r2.xyw;
  r2.xyw = r6.zzz * cb1[2].xyz + r2.xyw;
  r0.w = dot(r2.xyw, r2.xyw);
  r0.w = rsqrt(r0.w);
  r2.xyw = r2.xyw * r0.www;
  o3.xyz = r2.zzz * r2.xyw + r0.xyz;
  o4.xyz = r3.zzz * r2.xyw + r1.xyz;
  o4.w = cb1[4].w * r3.w;
  o3.w = 0;
  o6.xyzw = float4(0,1,1,0);
  return;
}