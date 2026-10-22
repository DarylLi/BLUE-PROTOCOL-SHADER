// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[34];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

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
  float4 cb1[143];
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
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD6,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r3.xyz = t1.Load(r0.z).xyz;
  r4.xyzw = t0.Load(r0.x).xyzw;
  r0.xy = t2.Load(r0.x).xy;
  r0.z = (int)v2.x + asint(cb3[0].w);
  r0.w = (uint)r0.z << 1;
  r5.xyz = t4.Load(r0.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.z << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r6.xyzw = t4.Load(r0.w).xyzw;
  r7.xyz = r6.yzx * r5.xyz;
  r5.xyz = r6.xyz * r5.yzx + -r7.xyz;
  r5.xyz = r5.xyz * r6.www;
  r7.xyz = r5.xyz * r6.yzx;
  r5.xyz = r5.zxy * r6.zxy + -r7.xyz;
  r5.xyz = r5.xyz * r6.www;
  r7.xyz = cb2[1].xyz * r1.yyy;
  r7.xyz = r1.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r1.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r2.yyy;
  r8.xyz = r2.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r2.zzz * cb2[2].xyz + r8.xyz;
  r9.xyz = cb2[1].xyz * r3.yyy;
  r9.xyz = r3.xxx * cb2[0].xyz + r9.xyz;
  r9.xyz = r3.zzz * cb2[2].xyz + r9.xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = rsqrt(r0.w);
  r7.xyz = r7.xyz * r0.www;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = rsqrt(r0.w);
  r8.xyz = r8.xyz * r0.www;
  r0.w = dot(r9.xyz, r9.xyz);
  r0.w = rsqrt(r0.w);
  r9.xyz = r9.xyz * r0.www;
  r10.xyz = r8.xyz * r5.yyy;
  r5.xyw = r5.xxx * r7.xyz + r10.xyz;
  o0.xyz = r5.zzz * r9.xyz + r5.xyw;
  r5.xyz = r8.xyz * r6.yyy;
  r5.xyz = r6.xxx * r7.xyz + r5.xyz;
  o1.xyz = r6.zzz * r9.xyz + r5.xyz;
  o1.w = cb2[4].w * r6.w;
  r0.w = 0.00390625 * r1.w;
  r0.w = trunc(r0.w);
  r5.xyz = cb0[6].xyz + r4.xyz;
  r6.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r6.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r6.xyz = cb1[70].xyz + r5.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r1.w = -cb0[7].x + r1.w;
  r1.w = saturate(cb0[7].y * r1.w);
  o2.y = 1 + -r1.w;
  r1.w = 1 + -r0.w;
  r1.w = cb0[7].w * r1.w;
  r0.w = cb0[7].z * r0.w + r1.w;
  r6.xyz = -cb0[4].xyz + r5.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r1.w = cb0[1].w * r4.w + r1.w;
  r5.xyz = -cb0[5].xyz + r5.xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[1].w * r4.w + r2.w;
  r5.xyz = cmp(cb0[1].xyz < r1.www);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r1.w = dot(r5.xyz, cb0[3].xyz);
  r5.xyz = cmp(cb0[2].xyz < r2.www);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r2.w = dot(r5.xyz, cb0[3].xyz);
  r2.w = cb0[5].w * r2.w;
  r5.w = r1.w * cb0[4].w + r2.w;
  r1.w = cmp(abs(r5.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r5.z = r1.w * r0.w;
  r6.x = r1.x;
  r6.y = r2.x;
  r6.z = r3.x;
  r6.w = r4.x;
  r0.w = dot(v0.xyzw, r6.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r3.y;
  r6.w = r4.y;
  r1.x = dot(v0.xyzw, r6.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r4.z;
  r1.y = dot(v0.xyzw, r3.xyzw);
  r1.xzw = cb2[1].xyz * r1.xxx;
  r1.xzw = cb2[0].xyz * r0.www + r1.xzw;
  r1.xyz = cb2[2].xyz * r1.yyy + r1.xzw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.w = 1;
  r0.w = r0.w * r5.z;
  r1.w = (int)r0.z * asint(cb3[0].y);
  r2.xy = t3.Load(r1.w).xy;
  r1.w = cmp(r5.z >= 1);
  if (r1.w != 0) {
    r1.w = cb2[1].z * r4.y;
    r1.w = r4.x * cb2[0].z + r1.w;
    r1.w = r4.z * cb2[2].z + r1.w;
    r1.w = cb2[3].z + r1.w;
    r2.z = asint(cb3[0].y) + -1;
    r2.z = min(2, (uint)r2.z);
    r2.z = mad(asint(cb3[0].y), (int)r0.z, (int)r2.z);
    r2.z = t3.Load(r2.z).y;
    r2.w = cb5[29].z * cb1[142].z;
    r3.xy = r1.xy * r5.zz + -cb1[70].xy;
    r3.zw = r3.xy / cb5[30].xx;
    r3.zw = r2.ww * float2(0.353553385,-0.353553385) + r3.zw;
    r3.zw = float2(0.5,0.5) + r3.zw;
    r3.zw = frac(r3.zw);
    r3.zw = r3.zw * float2(2,2) + float2(-1,-1);
    r4.xy = -abs(r3.zw) * float2(2,2) + float2(3,3);
    r3.zw = abs(r3.zw) * abs(r3.zw);
    r3.zw = r3.zw * r4.xy;
    r3.z = dot(float2(-0.707106769,0.707106769), r3.zw);
    r4.xyz = r1.xyz * r5.zzz + -cb1[70].xyz;
    r6.xyz = r4.xyz / cb5[30].www;
    r6.xyz = r2.www * float3(-0.5,-0.5,-0.5) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = frac(r6.xyz);
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r7.xyz = -abs(r6.xyz) * float3(2,2,2) + float3(3,3,3);
    r6.xyz = abs(r6.xyz) * abs(r6.xyz);
    r6.xyz = r6.xyz * r7.xyz;
    r2.w = dot(r6.xyz, r6.xyz);
    r2.w = sqrt(r2.w);
    r2.w = r3.z + r2.w;
    r2.w = 6.28318548 * r2.w;
    sincos(r2.w, r4.x, r5.x);
    r6.xyz = float3(7.07106781,-7.07106781,0) * r4.xxx;
    r6.xyz = r5.xxx * float3(0,0,10) + r6.xyz;
    r6.xyz = float3(0,0,-10) + r6.xyz;
    r6.xyz = cb5[31].xxx * r6.xyz;
    r3.zw = cb5[31].zy * cb1[142].zz;
    r3.zw = float2(6.28318548,6.28318548) * r3.zw;
    r3.zw = sin(r3.zw);
    r3.zw = r3.zw * float2(0.5,0.5) + float2(0.75,0.75);
    r2.w = r3.z * r3.w;
    r2.w = cb5[31].w * r2.w;
    r2.w = cb5[32].x * r2.w;
    r6.xyz = r6.xyz * r2.www + float3(1,1,1);
    r2.z = 1 + -r2.z;
    r6.xyz = r6.xyz * r2.zzz;
    r6.w = cb5[32].y * r6.z;
    r7.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r7.xyz = floor(r7.xyz);
    r7.xyz = r7.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r2.z = -r7.x + r4.z;
    r2.z = r2.z * 9.99999975e-005 + 0.200000003;
    r3.xy = -r7.yz + r3.xy;
    r3.xy = float2(9.99999975e-005,9.99999975e-005) * r3.xy;
    r7.xyz = t5.SampleLevel(s0_s, r3.xy, -1).xyz;
    r2.w = cb5[32].w + r7.y;
    r3.z = r2.z + -r2.w;
    r3.w = r7.x + -r7.y;
    r3.zw = max(float2(0,9.99999975e-005), r3.zw);
    r3.z = r3.z / r3.w;
    r3.z = min(1, r3.z);
    r3.w = ceil(r3.z);
    r3.z = 1 + -r3.z;
    r3.z = min(0.200000003, r3.z);
    r3.z = r3.w * r3.z;
    r3.w = 5 * r3.z;
    r2.zw = -r7.zz + r2.zw;
    r4.x = max(0, r2.z);
    r2.w = max(9.99999975e-005, r2.w);
    r2.w = r4.x / r2.w;
    r2.w = min(1, r2.w);
    r4.x = ceil(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = min(0.200000003, r2.w);
    r2.w = r4.x * r2.w;
    r2.zw = float2(10000,5) * r2.zw;
    r4.xy = t6.SampleLevel(s1_s, r3.xy, -1).xy;
    r3.z = r3.z * 5 + -r2.w;
    r3.z = cmp(9.99999975e-006 < abs(r3.z));
    r5.x = cmp(r3.w >= r2.w);
    r4.y = r5.x ? r4.y : r4.x;
    r3.z = r3.z ? r4.y : r4.x;
    r3.z = cb5[33].x * r3.z;
    r2.w = max(r3.w, r2.w);
    r3.z = r3.z * r2.w;
    r2.z = max(0, r2.z);
    r1.w = cb5[17].z + r1.w;
    r1.w = r4.z + -r1.w;
    r1.w = min(r2.z, r1.w);
    r1.w = cb5[33].z * r1.w;
    r1.w = r2.w * r1.w;
    r1.w = r3.z * r1.w;
    r2.zw = t7.SampleLevel(s2_s, r3.xy, -1).xy;
    r2.zw = float2(-1,-1) + r2.zw;
    r3.xy = r2.zw * r1.ww;
    r1.w = dot(r3.xy, r3.xy);
    r1.w = sqrt(r1.w);
    r3.z = -1.20000005 * r1.w;
    r3.xyz = r6.xyw + r3.xyz;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r5.zzz + r3.xyz;
  r3.xyzw = cb1[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r1.zzzz * cb1[2].xyzw + r3.xyzw;
  o6.xyzw = r0.wwww * cb1[3].xyzw + r3.xyzw;
  r0.z = mad(asint(cb3[0].y), (int)r0.z, asint(cb3[0].z));
  r2.zw = t3.Load(r0.z).xy;
  o4.xy = r2.zw * cb4[2].xy + r0.xy;
  o0.w = 0;
  o2.x = r4.w;
  o2.zw = r5.zw;
  o3.xy = r2.xy;
  o3.zw = float2(0,0);
  o4.zw = float2(0,0);
  o5.w = r0.w;
  o5.xyz = r1.xyz;
  return;
}