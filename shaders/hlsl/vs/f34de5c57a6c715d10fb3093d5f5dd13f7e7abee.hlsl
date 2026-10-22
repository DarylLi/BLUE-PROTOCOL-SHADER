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
  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r1.xyz = t1.Load(r0.y).yxz;
  r0.yzw = t1.Load(r0.z).xyz;
  r2.xyz = cb2[1].xyz * r1.xxx;
  r2.xyz = r1.yyy * cb2[0].xyz + r2.xyz;
  r2.xyz = r1.zzz * cb2[2].xyz + r2.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r2.w = (int)v2.x + asint(cb4[0].w);
  r3.x = (uint)r2.w << 1;
  r3.xyz = t3.Load(r3.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.w = (((uint)r2.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r4.xyzw = t3.Load(r3.w).xyzw;
  r5.xyz = r4.yzx * r3.xyz;
  r3.xyz = r4.xyz * r3.yzx + -r5.xyz;
  r3.xyz = r3.xyz * r4.www;
  r5.xyz = r3.xyz * r4.yzx;
  r3.xyz = r3.zxy * r4.zxy + -r5.xyz;
  r3.xyz = r3.xyz * r4.www;
  r5.xyz = r3.yyy * r2.xyz;
  r2.xyz = r4.yyy * r2.xyz;
  r3.y = (int)r0.x * 3;
  r6.xyzw = t0.Load(r0.x).xyzw;
  r7.xyzw = t1.Load(r3.y).zxyw;
  r8.xyz = cb2[1].xyz * r7.zzz;
  r8.xyz = r7.yyy * cb2[0].xyz + r8.xyz;
  r8.xyz = r7.xxx * cb2[2].xyz + r8.xyz;
  r0.x = dot(r8.xyz, r8.xyz);
  r0.x = rsqrt(r0.x);
  r8.xyz = r8.xyz * r0.xxx;
  r3.xyw = r3.xxx * r8.xyz + r5.xyz;
  r2.xyz = r4.xxx * r8.xyz + r2.xyz;
  r5.xyz = cb2[1].xyz * r0.zzz;
  r5.xyz = r0.yyy * cb2[0].xyz + r5.xyz;
  r5.xyz = r0.www * cb2[2].xyz + r5.xyz;
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = rsqrt(r0.x);
  r5.xyz = r5.xyz * r0.xxx;
  o0.xyz = r3.zzz * r5.xyz + r3.xyw;
  r2.xyz = r4.zzz * r5.xyz + r2.xyz;
  o1.w = cb2[4].w * r4.w;
  o1.xyz = r2.xyz;
  r0.x = (int)r2.w & asint(cb4[0].x);
  r3.xyzw = t4.Load(r0.x).xyzw;
  o2.xyzw = r3.zyxw;
  r3.xyz = cb0[6].xyz + r6.xyz;
  r4.xyz = cb2[1].xyz * r3.yyy;
  r3.xyw = cb2[0].xyz * r3.xxx + r4.xyz;
  r3.xyz = cb2[2].xyz * r3.zzz + r3.xyw;
  r3.xyz = cb2[3].xyz + r3.xyz;
  r4.xyz = -cb0[5].xyz + r3.xyz;
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb0[1].w * r6.w + r0.x;
  r4.xyz = cmp(cb0[2].xyz < r0.xxx);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r0.x = dot(r4.xyz, cb0[3].xyz);
  r0.x = cb0[5].w * r0.x;
  r4.xyz = -cb0[4].xyz + r3.xyz;
  r3.xyz = cb1[70].xyz + r3.xyz;
  r3.x = dot(r3.xyz, r3.xyz);
  r3.x = sqrt(r3.x);
  r3.x = -cb0[7].x + r3.x;
  r3.x = saturate(cb0[7].y * r3.x);
  o3.y = 1 + -r3.x;
  r3.x = dot(r4.xyz, r4.xyz);
  r3.x = sqrt(r3.x);
  r3.x = cb0[1].w * r6.w + r3.x;
  r3.xyz = cmp(cb0[1].xyz < r3.xxx);
  r3.xyz = r3.xyz ? float3(1,1,1) : 0;
  r3.x = dot(r3.xyz, cb0[3].xyz);
  r3.w = r3.x * cb0[4].w + r0.x;
  r0.x = cmp(abs(r3.w) < 0.999000013);
  r0.x = r0.x ? 1.000000 : 0;
  r3.x = 0.00390625 * r7.w;
  r3.x = trunc(r3.x);
  r3.y = 1 + -r3.x;
  r3.y = cb0[7].w * r3.y;
  r3.x = cb0[7].z * r3.x + r3.y;
  r3.z = r3.x * r0.x;
  o3.zw = r3.zw;
  o3.x = r6.w;
  r0.x = asint(cb4[0].y) + -1;
  r0.x = min(1, (uint)r0.x);
  r0.x = mad(asint(cb4[0].y), (int)r2.w, (int)r0.x);
  r2.w = (int)r2.w * asint(cb4[0].y);
  r3.xy = t2.Load(r2.w).xy;
  o4.xy = r3.xy;
  r3.xy = t2.Load(r0.x).xy;
  o4.zw = r3.xy;
  r4.x = r7.z;
  r4.y = r1.x;
  r4.z = r0.z;
  r4.w = r6.y;
  r0.x = dot(v0.xyzw, r4.xyzw);
  r3.xyw = cb2[1].xyz * r0.xxx;
  r1.x = r7.y;
  r7.y = r1.z;
  r1.z = r0.y;
  r7.z = r0.w;
  r1.w = r6.x;
  r7.w = r6.z;
  r0.x = dot(v0.xyzw, r7.xyzw);
  r0.y = dot(v0.xyzw, r1.xyzw);
  r0.yzw = cb2[0].xyz * r0.yyy + r3.xyw;
  r0.xyz = cb2[2].xyz * r0.xxx + r0.yzw;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r0.w = 1;
  r0.xyzw = r0.xyzw * r3.zzzz;
  r1.xyzw = cb3[20].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb3[19].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb3[21].xyzw + r1.xyzw;
  r1.xyzw = r0.wwww * cb3[22].xyzw + r1.xyzw;
  o6.xyz = r0.xyz;
  r0.x = cmp(r1.z < 0);
  r0.y = cmp(0 < cb3[28].x);
  r0.x = r0.x ? r0.y : 0;
  r0.xy = r0.xx ? float2(9.99999997e-007,1) : r1.zw;
  o7.xy = r1.xy;
  o5.x = r0.x;
  o7.zw = r0.xy;
  r0.x = cb3[23].z;
  r0.y = cb3[24].z;
  r0.z = cb3[25].z;
  r0.x = dot(r0.xyz, r2.xyz);
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