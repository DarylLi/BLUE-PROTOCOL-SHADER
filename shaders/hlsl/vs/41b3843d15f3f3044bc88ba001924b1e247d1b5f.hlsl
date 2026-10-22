// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[29];
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
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR0,
  out float4 o3 : COLOR1,
  out float o4 : TEXCOORD6,
  out float p4 : TEXCOORD8,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb4[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = (int)r0.x & asint(cb4[0].x);
  r2.xyzw = t3.Load(r0.x).xyzw;
  o2.xyzw = r2.zyxw;
  r1.xyzw = t2.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.xyz = r1.xyz * r0.zwy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r0.w = (int)v1.x + asint(cb0[8].x);
  r2.xy = mad(int2(3,3), (int2)r0.ww, int2(1,2));
  r3.xyz = t1.Load(r2.x).yxz;
  r2.xyz = t1.Load(r2.y).xyz;
  r4.xyz = cb2[1].xyz * r3.xxx;
  r4.xyz = r3.yyy * cb2[0].xyz + r4.xyz;
  r4.xyz = r3.zzz * cb2[2].xyz + r4.xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r5.xyz = r4.xyz * r0.yyy;
  r4.xyz = r4.xyz * r1.yyy;
  r0.y = (int)r0.w * 3;
  r6.xyzw = t0.Load(r0.w).xyzw;
  r7.xyzw = t1.Load(r0.y).zxyw;
  r8.xyz = cb2[1].xyz * r7.zzz;
  r8.xyz = r7.yyy * cb2[0].xyz + r8.xyz;
  r8.xyz = r7.xxx * cb2[2].xyz + r8.xyz;
  r0.y = dot(r8.xyz, r8.xyz);
  r0.y = rsqrt(r0.y);
  r8.xyz = r8.xyz * r0.yyy;
  r0.xyw = r0.xxx * r8.xyz + r5.xyz;
  r4.xyz = r1.xxx * r8.xyz + r4.xyz;
  r5.xyz = cb2[1].xyz * r2.yyy;
  r5.xyz = r2.xxx * cb2[0].xyz + r5.xyz;
  r5.xyz = r2.zzz * cb2[2].xyz + r5.xyz;
  r1.x = dot(r5.xyz, r5.xyz);
  r1.x = rsqrt(r1.x);
  r5.xyz = r5.xyz * r1.xxx;
  o0.xyz = r0.zzz * r5.xyz + r0.xyw;
  r0.xyz = r1.zzz * r5.xyz + r4.xyz;
  o1.w = cb2[4].w * r1.w;
  o1.xyz = r0.xyz;
  r1.xyz = cb0[6].xyz + r6.xyz;
  r4.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r4.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r1.xyz = cb2[3].xyz + r1.xyz;
  r4.xyz = -cb0[5].xyz + r1.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = sqrt(r0.w);
  r0.w = cb0[1].w * r6.w + r0.w;
  r4.xyz = cmp(cb0[2].xyz < r0.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r0.w = dot(r4.xyz, cb0[3].xyz);
  r0.w = cb0[5].w * r0.w;
  r4.xyz = -cb0[4].xyz + r1.xyz;
  r1.xyz = cb1[70].xyz + r1.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = -cb0[7].x + r1.x;
  r1.x = saturate(cb0[7].y * r1.x);
  o3.y = 1 + -r1.x;
  r1.x = dot(r4.xyz, r4.xyz);
  r1.x = sqrt(r1.x);
  r1.x = cb0[1].w * r6.w + r1.x;
  r1.xyz = cmp(cb0[1].xyz < r1.xxx);
  r1.xyz = r1.xyz ? float3(1,1,1) : 0;
  r1.x = dot(r1.xyz, cb0[3].xyz);
  r1.w = r1.x * cb0[4].w + r0.w;
  r0.w = cmp(abs(r1.w) < 0.999000013);
  r0.w = r0.w ? 1.000000 : 0;
  r1.x = 0.00390625 * r7.w;
  r1.x = trunc(r1.x);
  r1.y = 1 + -r1.x;
  r1.y = cb0[7].w * r1.y;
  r1.x = cb0[7].z * r1.x + r1.y;
  r1.z = r1.x * r0.w;
  o3.zw = r1.zw;
  o3.x = r6.w;
  r4.x = r7.z;
  r4.y = r3.x;
  r4.z = r2.y;
  r4.w = r6.y;
  r0.w = dot(v0.xyzw, r4.xyzw);
  r1.xyw = cb2[1].xyz * r0.www;
  r3.x = r7.y;
  r7.y = r3.z;
  r3.z = r2.x;
  r7.z = r2.z;
  r3.w = r6.x;
  r7.w = r6.z;
  r0.w = dot(v0.xyzw, r7.xyzw);
  r2.x = dot(v0.xyzw, r3.xyzw);
  r1.xyw = cb2[0].xyz * r2.xxx + r1.xyw;
  r1.xyw = cb2[2].xyz * r0.www + r1.xyw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r2.xyz = r2.xyz + r1.xyw;
  r2.w = 1;
  r1.xyzw = r2.xyzw * r1.zzzz;
  r2.xyzw = cb3[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb3[19].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb3[21].xyzw + r2.xyzw;
  r1.xyzw = r1.wwww * cb3[22].xyzw + r2.xyzw;
  r0.w = cmp(r1.z < 0);
  r2.x = cmp(0 < cb3[28].x);
  r0.w = r0.w ? r2.x : 0;
  r1.zw = r0.ww ? float2(9.99999997e-007,1) : r1.zw;
  o4.x = r1.z;
  o5.xyzw = r1.xyzw;
  r1.x = cb3[23].z;
  r1.y = cb3[24].z;
  r1.z = cb3[25].z;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb3[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb3[27].z, r0.x);
  p4.x = cb3[27].y * r0.x + cb3[27].x;
  return;
}