// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
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
  out float4 o2 : COLOR1,
  out float4 o3 : TEXCOORD6,
  out float3 o4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.y = (uint)r0.x << 1;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t2.Load(r0.x).xyzw;
  r0.xyz = t2.Load(r0.y).xyz;
  r2.xyz = r1.yzx * r0.xyz;
  r0.xyz = r1.xyz * r0.yzx + -r2.xyz;
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
  o1.xyz = r1.zzz * r5.xyz + r4.xyz;
  o1.w = cb2[4].w * r1.w;
  o0.w = 0;
  r0.xyz = cb0[6].xyz + r6.xyz;
  r1.xyz = cb2[1].xyz * r0.yyy;
  r0.xyw = cb2[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[2].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[3].xyz + r0.xyz;
  r1.xyz = -cb0[5].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r0.w = cb0[1].w * r6.w + r0.w;
  r1.xyz = cmp(cb0[2].xyz < r0.www);
  r1.xyz = r1.xyz ? float3(1,1,1) : 0;
  r0.w = dot(r1.xyz, cb0[3].xyz);
  r0.w = cb0[5].w * r0.w;
  r1.xyz = -cb0[4].xyz + r0.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = -cb0[7].x + r0.x;
  r0.x = saturate(cb0[7].y * r0.x);
  o2.y = 1 + -r0.x;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb0[1].w * r6.w + r0.x;
  r0.xyz = cmp(cb0[1].xyz < r0.xxx);
  r0.xyz = r0.xyz ? float3(1,1,1) : 0;
  r0.x = dot(r0.xyz, cb0[3].xyz);
  r0.w = r0.x * cb0[4].w + r0.w;
  r0.x = cmp(abs(r0.w) < 0.999000013);
  r0.x = r0.x ? 1.000000 : 0;
  r0.y = 0.00390625 * r7.w;
  r0.y = trunc(r0.y);
  r1.x = 1 + -r0.y;
  r1.x = cb0[7].w * r1.x;
  r0.y = cb0[7].z * r0.y + r1.x;
  r0.z = r0.y * r0.x;
  o2.zw = r0.zw;
  o2.x = r6.w;
  r1.x = r7.z;
  r1.y = r3.x;
  r1.z = r2.y;
  r1.w = r6.y;
  r0.x = dot(v0.xyzw, r1.xyzw);
  r0.xyw = cb2[1].xyz * r0.xxx;
  r3.x = r7.y;
  r7.y = r3.z;
  r3.z = r2.x;
  r7.z = r2.z;
  r3.w = r6.x;
  r7.w = r6.z;
  r1.x = dot(v0.xyzw, r7.xyzw);
  r1.y = dot(v0.xyzw, r3.xyzw);
  r0.xyw = cb2[0].xyz * r1.yyy + r0.xyw;
  r0.xyw = cb2[2].xyz * r1.xxx + r0.xyw;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r1.xyz + r0.xyw;
  r1.w = 1;
  r0.xyzw = r1.xyzw * r0.zzzz;
  o3.xyzw = r0.xyzw;
  o4.xyz = r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  o5.xyzw = r0.wwww * cb1[3].xyzw + r1.xyzw;
  return;
}