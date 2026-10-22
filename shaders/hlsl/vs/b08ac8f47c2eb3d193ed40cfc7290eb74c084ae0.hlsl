// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

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
  out float4 o4 : TEXCOORD0,
  out float o5 : TEXCOORD6,
  out float p5 : TEXCOORD8,
  out float3 o6 : TEXCOORD7,
  out float4 o7 : SV_POSITION0)
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
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t3.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x + asint(cb0[8].x);
  r2.yz = mad(int2(3,3), (int2)r2.xx, int2(1,2));
  r3.xyz = t1.Load(r2.y).yxz;
  r2.yzw = t1.Load(r2.z).xyz;
  r4.xyz = cb2[1].xyz * r3.xxx;
  r4.xyz = r3.yyy * cb2[0].xyz + r4.xyz;
  r4.xyz = r3.zzz * cb2[2].xyz + r4.xyz;
  r4.w = dot(r4.xyz, r4.xyz);
  r4.w = rsqrt(r4.w);
  r4.xyz = r4.xyz * r4.www;
  r5.xyz = r4.xyz * r0.zzz;
  r4.xyz = r4.xyz * r1.yyy;
  r0.z = (int)r2.x * 3;
  r6.xyzw = t0.Load(r2.x).xyzw;
  r7.xyzw = t1.Load(r0.z).zxyw;
  r8.xyz = cb2[1].xyz * r7.zzz;
  r8.xyz = r7.yyy * cb2[0].xyz + r8.xyz;
  r8.xyz = r7.xxx * cb2[2].xyz + r8.xyz;
  r0.z = dot(r8.xyz, r8.xyz);
  r0.z = rsqrt(r0.z);
  r8.xyz = r8.xyz * r0.zzz;
  r5.xyz = r0.yyy * r8.xyz + r5.xyz;
  r4.xyz = r1.xxx * r8.xyz + r4.xyz;
  r8.xyz = cb2[1].xyz * r2.zzz;
  r8.xyz = r2.yyy * cb2[0].xyz + r8.xyz;
  r8.xyz = r2.www * cb2[2].xyz + r8.xyz;
  r0.y = dot(r8.xyz, r8.xyz);
  r0.y = rsqrt(r0.y);
  r8.xyz = r8.xyz * r0.yyy;
  o0.xyz = r0.www * r8.xyz + r5.xyz;
  r0.yzw = r1.zzz * r8.xyz + r4.xyz;
  o1.w = cb2[4].w * r1.w;
  o1.xyz = r0.yzw;
  r1.x = (int)r0.x & asint(cb4[0].x);
  r0.x = (int)r0.x * asint(cb4[0].y);
  r1.yz = t2.Load(r0.x).xy;
  o4.xy = r1.yz;
  r1.xyzw = t4.Load(r1.x).xyzw;
  o2.xyzw = r1.zyxw;
  r1.xyz = cb0[6].xyz + r6.xyz;
  r4.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r4.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r1.xyz = cb2[3].xyz + r1.xyz;
  r4.xyz = -cb0[5].xyz + r1.xyz;
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb0[1].w * r6.w + r0.x;
  r4.xyz = cmp(cb0[2].xyz < r0.xxx);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r0.x = dot(r4.xyz, cb0[3].xyz);
  r0.x = cb0[5].w * r0.x;
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
  r1.w = r1.x * cb0[4].w + r0.x;
  r0.x = cmp(abs(r1.w) < 0.999000013);
  r0.x = r0.x ? 1.000000 : 0;
  r1.x = 0.00390625 * r7.w;
  r1.x = trunc(r1.x);
  r1.y = 1 + -r1.x;
  r1.y = cb0[7].w * r1.y;
  r1.x = cb0[7].z * r1.x + r1.y;
  r1.z = r1.x * r0.x;
  o3.zw = r1.zw;
  o3.x = r6.w;
  o4.zw = float2(0,0);
  r4.x = r7.z;
  r4.y = r3.x;
  r4.z = r2.z;
  r4.w = r6.y;
  r0.x = dot(v0.xyzw, r4.xyzw);
  r1.xyw = cb2[1].xyz * r0.xxx;
  r3.x = r7.y;
  r7.y = r3.z;
  r3.z = r2.y;
  r7.z = r2.w;
  r3.w = r6.x;
  r7.w = r6.z;
  r0.x = dot(v0.xyzw, r7.xyzw);
  r2.x = dot(v0.xyzw, r3.xyzw);
  r1.xyw = cb2[0].xyz * r2.xxx + r1.xyw;
  r1.xyw = cb2[2].xyz * r0.xxx + r1.xyw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r2.xyz = r2.xyz + r1.xyw;
  r2.w = 1;
  r1.xyzw = r2.xyzw * r1.zzzz;
  r2.xyzw = cb3[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb3[19].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb3[21].xyzw + r2.xyzw;
  r2.xyzw = r1.wwww * cb3[22].xyzw + r2.xyzw;
  o6.xyz = r1.xyz;
  r0.x = cmp(r2.z < 0);
  r1.x = cmp(0 < cb3[28].x);
  r0.x = r0.x ? r1.x : 0;
  r1.xy = r0.xx ? float2(9.99999997e-007,1) : r2.zw;
  o7.xy = r2.xy;
  o5.x = r1.x;
  o7.zw = r1.xy;
  r1.x = cb3[23].z;
  r1.y = cb3[24].z;
  r1.z = cb3[25].z;
  r0.x = dot(r1.xyz, r0.yzw);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb3[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb3[27].z, r0.x);
  p5.x = cb3[27].y * r0.x + cb3[27].x;
  return;
}