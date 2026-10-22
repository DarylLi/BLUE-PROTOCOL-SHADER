// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[34];
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
  out float4 o4 : HIT_PROXY_ID0,
  out float4 o5 : TEXCOORD6,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyzw = t1.Load(r0.y).xyzw;
  r3.xyzw = t1.Load(r0.z).xyzw;
  r0.xyzw = t0.Load(r0.x).xyzw;
  r4.x = (int)v2.x + asint(cb3[0].w);
  r4.y = (uint)r4.x << 1;
  r4.yzw = t3.Load(r4.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.x = (((uint)r4.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r5.xyzw = t3.Load(r5.x).xyzw;
  r6.xyz = r5.yzx * r4.yzw;
  r4.yzw = r5.xyz * r4.zwy + -r6.xyz;
  r4.yzw = r4.yzw * r5.www;
  r6.xyz = r4.yzw * r5.yzx;
  r4.yzw = r4.wyz * r5.zxy + -r6.xyz;
  r4.yzw = r4.yzw * r5.www;
  r6.xyz = cb2[1].xyz * r1.yyy;
  r6.xyz = r1.xxx * cb2[0].xyz + r6.xyz;
  r6.xyz = r1.zzz * cb2[2].xyz + r6.xyz;
  r7.xyz = cb2[1].xyz * r2.yyy;
  r7.xyz = r2.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r2.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r3.yyy;
  r8.xyz = r3.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r3.zzz * cb2[2].xyz + r8.xyz;
  r6.w = dot(r6.xyz, r6.xyz);
  r6.w = rsqrt(r6.w);
  r6.xyz = r6.xyz * r6.www;
  r6.w = dot(r7.xyz, r7.xyz);
  r6.w = rsqrt(r6.w);
  r7.xyz = r7.xyz * r6.www;
  r6.w = dot(r8.xyz, r8.xyz);
  r6.w = rsqrt(r6.w);
  r8.xyz = r8.xyz * r6.www;
  r9.xyz = r7.xyz * r4.zzz;
  r9.xyz = r4.yyy * r6.xyz + r9.xyz;
  o0.xyz = r4.www * r8.xyz + r9.xyz;
  r4.yzw = r7.xyz * r5.yyy;
  r4.yzw = r5.xxx * r6.xyz + r4.yzw;
  o1.xyz = r5.zzz * r8.xyz + r4.yzw;
  o1.w = cb2[4].w * r5.w;
  r4.y = 0.00390625 * r1.w;
  r4.y = trunc(r4.y);
  r5.xyz = cb0[6].xyz + r0.xyz;
  r6.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r6.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r6.xyz = cb1[70].xyz + r5.xyz;
  r4.z = dot(r6.xyz, r6.xyz);
  r4.z = sqrt(r4.z);
  r4.z = -cb0[7].x + r4.z;
  r4.z = saturate(cb0[7].y * r4.z);
  o2.y = 1 + -r4.z;
  r4.z = 1 + -r4.y;
  r4.z = cb0[7].w * r4.z;
  r4.z = cb0[7].z * r4.y + r4.z;
  r6.xyz = -cb0[4].xyz + r5.xyz;
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = sqrt(r4.w);
  r4.w = cb0[1].w * r0.w + r4.w;
  r5.xyz = -cb0[5].xyz + r5.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = cb0[1].w * r0.w + r5.x;
  r5.yzw = cmp(cb0[1].xyz < r4.www);
  r5.yzw = r5.yzw ? float3(1,1,1) : 0;
  r4.w = dot(r5.yzw, cb0[3].xyz);
  r5.xyz = cmp(cb0[2].xyz < r5.xxx);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r5.x = dot(r5.xyz, cb0[3].xyz);
  r5.x = cb0[5].w * r5.x;
  r5.w = r4.w * cb0[4].w + r5.x;
  r4.w = cmp(abs(r5.w) < 0.999000013);
  r4.w = r4.w ? 1.000000 : 0;
  r5.z = r4.z * r4.w;
  r6.x = r1.x;
  r6.y = r2.x;
  r6.z = r3.x;
  r6.w = r0.x;
  r1.x = dot(v0.xyzw, r6.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r3.y;
  r6.w = r0.y;
  r1.y = dot(v0.xyzw, r6.xyzw);
  r6.x = r1.z;
  r6.y = r2.z;
  r6.z = r3.z;
  r6.w = r0.z;
  r1.z = dot(v0.xyzw, r6.xyzw);
  r2.xyz = cb2[1].xyz * r1.yyy;
  r2.xyz = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r2.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.x = 1;
  r2.x = r2.x * r5.z;
  r2.y = (int)r4.x * asint(cb3[0].y);
  r2.yz = t2.Load(r2.y).xy;
  r3.x = cmp(r5.z >= 1);
  if (r3.x != 0) {
    r0.y = cb2[1].z * r0.y;
    r0.x = r0.x * cb2[0].z + r0.y;
    r0.x = r0.z * cb2[2].z + r0.x;
    r0.x = cb2[3].z + r0.x;
    r0.y = asint(cb3[0].y) + -1;
    r0.y = min(2, (uint)r0.y);
    r0.y = mad(asint(cb3[0].y), (int)r4.x, (int)r0.y);
    r0.y = t2.Load(r0.y).y;
    r0.z = cb4[29].z * cb1[142].z;
    r3.xy = r1.xy * r5.zz + -cb1[70].xy;
    r4.xz = r3.xy / cb4[30].xx;
    r4.xz = r0.zz * float2(0.353553385,-0.353553385) + r4.xz;
    r4.xz = float2(0.5,0.5) + r4.xz;
    r4.xz = frac(r4.xz);
    r4.xz = r4.xz * float2(2,2) + float2(-1,-1);
    r5.xy = -abs(r4.xz) * float2(2,2) + float2(3,3);
    r4.xz = abs(r4.xz) * abs(r4.xz);
    r4.xz = r4.xz * r5.xy;
    r3.z = dot(float2(-0.707106769,0.707106769), r4.xz);
    r4.xzw = r1.xyz * r5.zzz + -cb1[70].xyz;
    r6.xyz = r4.xzw / cb4[30].www;
    r6.xyz = r0.zzz * float3(-0.5,-0.5,-0.5) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = frac(r6.xyz);
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r7.xyz = -abs(r6.xyz) * float3(2,2,2) + float3(3,3,3);
    r6.xyz = abs(r6.xyz) * abs(r6.xyz);
    r6.xyz = r6.xyz * r7.xyz;
    r0.z = dot(r6.xyz, r6.xyz);
    r0.z = sqrt(r0.z);
    r0.z = r3.z + r0.z;
    r0.z = 6.28318548 * r0.z;
    sincos(r0.z, r4.x, r5.x);
    r6.xyz = float3(7.07106781,-7.07106781,0) * r4.xxx;
    r6.xyz = r5.xxx * float3(0,0,10) + r6.xyz;
    r6.xyz = float3(0,0,-10) + r6.xyz;
    r6.xyz = cb4[31].xxx * r6.xyz;
    r4.xz = cb4[31].zy * cb1[142].zz;
    r4.xz = float2(6.28318548,6.28318548) * r4.xz;
    r4.xz = sin(r4.xz);
    r4.xz = r4.xz * float2(0.5,0.5) + float2(0.75,0.75);
    r0.z = r4.x * r4.z;
    r0.z = cb4[31].w * r0.z;
    r0.z = cb4[32].x * r0.z;
    r6.xyz = r6.xyz * r0.zzz + float3(1,1,1);
    r0.y = 1 + -r0.y;
    r6.xyz = r6.xyz * r0.yyy;
    r6.w = cb4[32].y * r6.z;
    r7.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r7.xyz = floor(r7.xyz);
    r7.xyz = r7.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r0.y = -r7.x + r4.w;
    r0.y = r0.y * 9.99999975e-005 + 0.200000003;
    r3.xy = -r7.yz + r3.xy;
    r3.xy = float2(9.99999975e-005,9.99999975e-005) * r3.xy;
    r7.xyz = t4.SampleLevel(s0_s, r3.xy, -1).xyz;
    r0.z = cb4[32].w + r7.y;
    r3.z = r0.y + -r0.z;
    r3.z = max(0, r3.z);
    r4.x = r7.x + -r7.y;
    r4.x = max(9.99999975e-005, r4.x);
    r3.z = r3.z / r4.x;
    r3.z = min(1, r3.z);
    r4.x = ceil(r3.z);
    r3.z = 1 + -r3.z;
    r3.z = min(0.200000003, r3.z);
    r3.z = r4.x * r3.z;
    r4.x = 5 * r3.z;
    r0.yz = -r7.zz + r0.yz;
    r4.z = max(0, r0.y);
    r0.z = max(9.99999975e-005, r0.z);
    r0.z = r4.z / r0.z;
    r0.z = min(1, r0.z);
    r4.z = ceil(r0.z);
    r0.z = 1 + -r0.z;
    r0.z = min(0.200000003, r0.z);
    r0.z = r4.z * r0.z;
    r0.yz = float2(10000,5) * r0.yz;
    r5.xy = t5.SampleLevel(s1_s, r3.xy, -1).xy;
    r3.z = r3.z * 5 + -r0.z;
    r3.z = cmp(9.99999975e-006 < abs(r3.z));
    r4.z = cmp(r4.x >= r0.z);
    r4.z = r4.z ? r5.y : r5.x;
    r3.z = r3.z ? r4.z : r5.x;
    r3.z = cb4[33].x * r3.z;
    r0.z = max(r4.x, r0.z);
    r3.z = r3.z * r0.z;
    r0.y = max(0, r0.y);
    r0.x = cb4[17].z + r0.x;
    r0.x = r4.w + -r0.x;
    r0.x = min(r0.y, r0.x);
    r0.x = cb4[33].z * r0.x;
    r0.x = r0.z * r0.x;
    r0.x = r3.z * r0.x;
    r0.yz = t6.SampleLevel(s2_s, r3.xy, -1).xy;
    r0.yz = float2(-1,-1) + r0.yz;
    r0.xy = r0.xx * r0.yz;
    r3.x = dot(r0.xy, r0.xy);
    r3.x = sqrt(r3.x);
    r0.z = -1.20000005 * r3.x;
    r0.xyz = r6.xyw + r0.xyz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r1.xyz * r5.zzz + r0.xyz;
  r1.x = -r4.y * 256 + r1.w;
  o4.x = 0.00392156886 * r1.x;
  o4.y = 0.00392156886 * r2.w;
  o4.z = 0.00392156886 * r3.w;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  o6.xyzw = r2.xxxx * cb1[3].xyzw + r1.xyzw;
  o0.w = 0;
  o2.x = r0.w;
  o2.zw = r5.zw;
  o3.xy = r2.yz;
  o3.zw = float2(0,0);
  o4.w = 0;
  o5.w = r2.x;
  o5.xyz = r0.xyz;
  return;
}