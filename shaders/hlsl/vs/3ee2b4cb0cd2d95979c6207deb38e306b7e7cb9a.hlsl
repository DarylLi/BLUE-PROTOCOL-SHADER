// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

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
  float4 cb1[4];
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
  out float o0 : TEXCOORD6,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.x = 0;
  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.y = t2.Load(r0.x).x;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.xzw = t0.Load(r0.x).xyz;
  r1.x = (uint)r0.y << 2;
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.y = (((uint)r0.y << 2) & bitmask.y) | ((uint)1 & ~bitmask.y);
  bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.z = (((uint)r0.y << 2) & bitmask.z) | ((uint)2 & ~bitmask.z);
  bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.w = (((uint)r0.y << 2) & bitmask.w) | ((uint)3 & ~bitmask.w);
  r2.xyz = t1.Load(r1.x).zxy;
  r3.xyz = cb1[1].xyz * r2.zzz;
  r3.xyz = r2.yyy * cb1[0].xyz + r3.xyz;
  r3.xyz = r2.xxx * cb1[2].xyz + r3.xyz;
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  r3.xyz = r3.xyz * r0.yyy;
  r4.xyz = t1.Load(r1.y).yxz;
  r5.xyz = cb1[1].xyz * r4.xxx;
  r5.xyz = r4.yyy * cb1[0].xyz + r5.xyz;
  r5.xyz = r4.zzz * cb1[2].xyz + r5.xyz;
  r0.y = dot(r5.xyz, r5.xyz);
  r0.y = rsqrt(r0.y);
  r5.xyz = r5.xyz * r0.yyy;
  r5.xyz = r5.xyz * r0.zzz;
  r0.xyz = r0.xxx * r3.xyz + r5.xyz;
  r1.xyz = t1.Load(r1.z).xyz;
  r3.xyz = t1.Load(r1.w).xyz;
  r5.xyz = cb1[1].xyz * r1.yyy;
  r5.xyz = r1.xxx * cb1[0].xyz + r5.xyz;
  r5.xyz = r1.zzz * cb1[2].xyz + r5.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r5.xyz * r1.www;
  r0.xyz = r0.www * r5.xyz + r0.xyz;
  r5.x = cb2[23].z;
  r5.y = cb2[24].z;
  r5.z = cb2[25].z;
  r0.x = dot(r5.xyz, r0.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb2[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb2[27].z, r0.x);
  r0.x = cb2[27].y * r0.x + cb2[27].x;
  r5.x = r2.z;
  r5.y = r4.x;
  r5.z = r1.y;
  r5.w = r3.y;
  r0.y = dot(v0.xyzw, r5.xyzw);
  r0.yzw = cb1[1].xyz * r0.yyy;
  r4.x = r2.y;
  r2.y = r4.z;
  r4.z = r1.x;
  r2.z = r1.z;
  r4.w = r3.x;
  r2.w = r3.z;
  r1.x = dot(v0.xyzw, r2.xyzw);
  r1.y = dot(v0.xyzw, r4.xyzw);
  r0.yzw = cb1[0].xyz * r1.yyy + r0.yzw;
  r0.yzw = cb1[2].xyz * r1.xxx + r0.yzw;
  r1.xyz = cb1[3].xyz + cb0[70].xyz;
  r0.yzw = r1.xyz + r0.yzw;
  r1.xyzw = cb2[20].xyzw * r0.zzzz;
  r1.xyzw = r0.yyyy * cb2[19].xyzw + r1.xyzw;
  r1.xyzw = r0.wwww * cb2[21].xyzw + r1.xyzw;
  r1.xyzw = cb2[22].xyzw + r1.xyzw;
  r0.y = cmp(r1.z < 0);
  r0.z = cmp(0 < cb2[28].x);
  r0.y = r0.y ? r0.z : 0;
  r0.yz = r0.yy ? float2(9.99999997e-007,1) : r1.zw;
  o1.xy = r1.xy;
  r0.x = r0.y * cb2[27].w + r0.x;
  o1.z = r0.x * r0.z;
  o1.w = r0.z;
  return;
}