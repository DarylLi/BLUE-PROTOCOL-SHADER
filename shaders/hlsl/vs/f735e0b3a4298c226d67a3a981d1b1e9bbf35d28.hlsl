// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[21];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[365];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR1,
  out float4 o2 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r2.x = r1.y;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r3.xyzw = t0.Load(r0.x).xyzw;
  r4.xyz = t1.Load(r0.y).yxz;
  r0.xyz = t1.Load(r0.z).xyz;
  r2.y = r4.x;
  r2.z = r0.y;
  r2.w = r3.y;
  r1.y = dot(v0.xyzw, r2.xyzw);
  r2.xyz = cb2[1].xyz * r1.yyy;
  r0.y = r4.z;
  r4.z = r0.x;
  r4.x = r1.x;
  r4.w = r3.x;
  r1.x = dot(v0.xyzw, r4.xyzw);
  r2.xyz = cb2[0].xyz * r1.xxx + r2.xyz;
  r0.x = r1.z;
  r1.x = 0.00390625 * r1.w;
  r1.x = trunc(r1.x);
  r0.w = r3.z;
  r0.x = dot(v0.xyzw, r0.xyzw);
  r0.xyz = cb2[2].xyz * r0.xxx + r2.xyz;
  r1.yzw = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.yzw + r0.xyz;
  r0.w = 1 + -r1.x;
  r0.w = cb0[7].w * r0.w;
  r0.w = cb0[7].z * r1.x + r0.w;
  r1.xyz = cb0[6].xyz + r3.xyz;
  r2.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r1.xyz = cb2[3].xyz + r1.xyz;
  r2.xyz = -cb0[5].xyz + r1.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r1.w = cb0[1].w * r3.w + r1.w;
  r2.xyz = cmp(cb0[2].xyz < r1.www);
  r2.xyz = r2.xyz ? float3(1,1,1) : 0;
  r1.w = dot(r2.xyz, cb0[3].xyz);
  r1.w = cb0[5].w * r1.w;
  r2.xyz = -cb0[4].xyz + r1.xyz;
  r1.xyz = cb1[70].xyz + r1.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = -cb0[7].x + r1.x;
  r1.x = saturate(cb0[7].y * r1.x);
  o1.y = 1 + -r1.x;
  r1.x = dot(r2.xyz, r2.xyz);
  r1.x = sqrt(r1.x);
  r1.x = cb0[1].w * r3.w + r1.x;
  o1.x = r3.w;
  r1.xyz = cmp(cb0[1].xyz < r1.xxx);
  r1.xyz = r1.xyz ? float3(1,1,1) : 0;
  r1.x = dot(r1.xyz, cb0[3].xyz);
  r1.w = r1.x * cb0[4].w + r1.w;
  r1.x = cmp(abs(r1.w) < 0.999000013);
  r1.x = r1.x ? 1.000000 : 0;
  r1.z = r1.x * r0.w;
  r2.xyz = r0.xyz * r1.zzz + -cb1[70].xyz;
  r3.xyz = -cb4[9].xyz + r2.xyz;
  r0.w = dot(cb4[13].xyz, r3.xyz);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / cb4[19].y;
  r1.x = r1.x * 2 + cb4[20].x;
  r1.x = saturate(-2 + r1.x);
  r3.xyz = cb4[13].xyz * r0.www + cb4[9].xyz;
  r4.xyz = -r3.xyz + r2.xyz;
  r5.xyz = cb4[13].zxy * r4.yzx;
  r5.xyz = cb4[13].yzx * r4.zxy + -r5.xyz;
  r6.xy = float2(3.14159274,6.28318548) * r1.xx;
  r6.xz = sin(r6.xy);
  r0.w = cos(r6.y);
  r5.xyz = r6.zzz * r5.xyz;
  r6.z = 50 * r6.x;
  r4.xyz = r4.xyz * r0.www + r5.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r3.xyz = r3.xyz + -r2.xyz;
  r2.xyz = cb4[11].xyz + -r2.xyz;
  r3.xyz = r3.xyz + -r2.xyz;
  r2.xyz = r1.xxx * r3.xyz + r2.xyz;
  r6.xy = float2(0,0);
  r2.xyz = r6.xyz + r2.xyz;
  r0.w = cmp(r1.z >= 1);
  r2.xyz = r0.www ? r2.xyz : 0;
  r0.xyz = r0.xyz * r1.zzz + r2.xyz;
  r2.xyzw = cb1[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb1[0].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r2.xyzw;
  r1.x = 1;
  r1.x = r1.x * r1.z;
  o1.zw = r1.zw;
  r0.xyzw = r1.xxxx * cb1[3].xyzw + r0.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.x = (int)r0.x * asint(cb3[0].y);
  r0.xy = t2.Load(r0.x).xy;
  o2.xy = r0.xy;
  o2.zw = float2(0,0);
  return;
}