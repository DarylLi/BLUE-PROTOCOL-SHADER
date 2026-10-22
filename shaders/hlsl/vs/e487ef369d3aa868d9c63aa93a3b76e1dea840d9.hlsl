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
  float4 cb1[5];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : COLOR1,
  out float4 o4 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = t2.Load(r0.x).x;
  bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.x = (((uint)r0.y << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.y = (((uint)r0.y << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
  bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.z = (((uint)r0.y << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
  r0.y = (uint)r0.y << 2;
  r0.yzw = t1.Load(r0.y).xyz;
  r2.xyw = t1.Load(r1.z).xyz;
  r3.w = r2.y;
  r3.x = r0.z;
  r1.xzw = t1.Load(r1.x).xyz;
  r4.xyz = t1.Load(r1.y).xyz;
  r3.y = r1.z;
  r3.z = r4.y;
  r1.y = dot(v0.xyzw, r3.xyzw);
  r3.xzw = cb1[1].xyz * r1.yyy;
  r5.w = r2.x;
  r5.x = r0.y;
  r5.y = r1.x;
  r5.z = r4.x;
  r0.y = dot(v0.xyzw, r5.xyzw);
  r3.xzw = cb1[0].xyz * r0.yyy + r3.xzw;
  r2.x = r0.w;
  r2.y = r1.w;
  r2.z = r4.z;
  r0.y = dot(v0.xyzw, r2.xyzw);
  r2.xyw = cb1[2].xyz * r0.yyy + r3.xzw;
  r3.xzw = cb1[3].xyz + cb0[70].xyz;
  r2.xyw = r3.xzw + r2.xyw;
  r6.xyzw = cb0[1].xyzw * r2.yyyy;
  r6.xyzw = r2.xxxx * cb0[0].xyzw + r6.xyzw;
  r6.xyzw = r2.wwww * cb0[2].xyzw + r6.xyzw;
  o4.xyz = r2.xyw;
  r6.xyzw = cb0[3].xyzw + r6.xyzw;
  o0.xy = cb0[364].xy * r6.zz + r6.xy;
  o0.zw = r6.zw;
  r2.xyw = cb1[1].xyz * r0.zzz;
  r2.xyw = r5.xxx * cb1[0].xyz + r2.xyw;
  r0.yzw = r0.www * cb1[2].xyz + r2.xyw;
  r1.y = dot(r0.yzw, r0.yzw);
  r1.y = rsqrt(r1.y);
  r0.yzw = r1.yyy * r0.yzw;
  r2.xyw = cb1[1].xyz * r3.yyy;
  r1.xyz = r1.xxx * cb1[0].xyz + r2.xyw;
  r1.xyz = r1.www * cb1[2].xyz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.w = (uint)r0.x << 1;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.xyzw = t0.Load(r0.x).xyzw;
  r2.xyw = t0.Load(r1.w).xyz;
  r5.xyz = r3.yzx * r2.xyw;
  r2.xyw = r3.xyz * r2.ywx + -r5.xyz;
  r2.xyw = r2.xyw * r3.www;
  r5.xyz = r2.xyw * r3.yzx;
  r2.xyw = r2.wxy * r3.zxy + -r5.xyz;
  r2.xyw = r2.xyw * r3.www;
  r5.xyz = r2.yyy * r1.xyz;
  r1.xyz = r3.yyy * r1.xyz;
  r1.xyz = r3.xxx * r0.yzw + r1.xyz;
  r0.xyz = r2.xxx * r0.yzw + r5.xyz;
  r4.yzw = cb1[1].xyz * r4.yyy;
  r4.xyz = r4.xxx * cb1[0].xyz + r4.yzw;
  r2.xyz = r2.zzz * cb1[2].xyz + r4.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  o1.xyz = r2.www * r2.xyz + r0.xyz;
  o2.xyz = r3.zzz * r2.xyz + r1.xyz;
  o2.w = cb1[4].w * r3.w;
  o1.w = 0;
  o3.xyzw = float4(0,1,1,0);
  o4.w = 1;
  return;
}