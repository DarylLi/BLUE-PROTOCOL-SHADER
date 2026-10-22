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
  float4 cb4[4];
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
  out float4 o5 : SV_POSITION0)
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
  r0.xyzw = t2.Load(r0.x).xyzw;
  r2.w = (int)v2.x + asint(cb3[0].w);
  r5.x = (uint)r2.w << 1;
  r5.xyz = t4.Load(r5.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.w = (((uint)r2.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r6.xyzw = t4.Load(r5.w).xyzw;
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
  r5.w = dot(r7.xyz, r7.xyz);
  r5.w = rsqrt(r5.w);
  r7.xyz = r7.xyz * r5.www;
  r5.w = dot(r8.xyz, r8.xyz);
  r5.w = rsqrt(r5.w);
  r8.xyz = r8.xyz * r5.www;
  r5.w = dot(r9.xyz, r9.xyz);
  r5.w = rsqrt(r5.w);
  r9.xyz = r9.xyz * r5.www;
  r10.xyz = r8.xyz * r5.yyy;
  r5.xyw = r5.xxx * r7.xyz + r10.xyz;
  o0.xyz = r5.zzz * r9.xyz + r5.xyw;
  r5.xyz = r8.xyz * r6.yyy;
  r5.xyz = r6.xxx * r7.xyz + r5.xyz;
  o1.xyz = r6.zzz * r9.xyz + r5.xyz;
  o1.w = cb2[4].w * r6.w;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r5.xyz = cb0[6].xyz + r4.xyz;
  r6.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r6.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r6.xyz = cb1[70].xyz + r5.xyz;
  r5.w = dot(r6.xyz, r6.xyz);
  r5.w = sqrt(r5.w);
  r5.w = -cb0[7].x + r5.w;
  r5.w = saturate(cb0[7].y * r5.w);
  o2.y = 1 + -r5.w;
  r5.w = 1 + -r1.w;
  r5.w = cb0[7].w * r5.w;
  r1.w = cb0[7].z * r1.w + r5.w;
  r6.xyz = -cb0[4].xyz + r5.xyz;
  r5.w = dot(r6.xyz, r6.xyz);
  r5.w = sqrt(r5.w);
  r5.w = cb0[1].w * r4.w + r5.w;
  r5.xyz = -cb0[5].xyz + r5.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = cb0[1].w * r4.w + r5.x;
  r5.yzw = cmp(cb0[1].xyz < r5.www);
  r5.yzw = r5.yzw ? float3(1,1,1) : 0;
  r5.y = dot(r5.yzw, cb0[3].xyz);
  r5.xzw = cmp(cb0[2].xyz < r5.xxx);
  r5.xzw = r5.xzw ? float3(1,1,1) : 0;
  r5.x = dot(r5.xzw, cb0[3].xyz);
  r5.x = cb0[5].w * r5.x;
  r5.w = r5.y * cb0[4].w + r5.x;
  r5.x = cmp(abs(r5.w) < 0.999000013);
  r5.x = r5.x ? 1.000000 : 0;
  r5.z = r5.x * r1.w;
  r6.x = r1.x;
  r6.y = r2.x;
  r6.z = r3.x;
  r6.w = r4.x;
  r1.x = dot(v0.xyzw, r6.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r3.y;
  r6.w = r4.y;
  r1.y = dot(v0.xyzw, r6.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r4.z;
  r1.z = dot(v0.xyzw, r3.xyzw);
  r2.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.w = 1;
  r1.w = r1.w * r5.z;
  r2.x = (int)r2.w * asint(cb3[0].y);
  r2.xy = t3.Load(r2.x).xy;
  r2.z = cmp(r5.z >= 1);
  if (r2.z != 0) {
    r2.z = cb2[1].z * r4.y;
    r2.z = r4.x * cb2[0].z + r2.z;
    r2.z = r4.z * cb2[2].z + r2.z;
    r2.z = cb2[3].z + r2.z;
    r3.x = asint(cb3[0].y) + -1;
    r3.x = min(2, (uint)r3.x);
    r3.x = mad(asint(cb3[0].y), (int)r2.w, (int)r3.x);
    r3.x = t3.Load(r3.x).y;
    r3.y = cb5[29].y * cb1[142].z;
    r3.zw = r1.xy * r5.zz + -cb1[70].xy;
    r4.xy = r3.zw / cb5[29].ww;
    r4.xy = r3.yy * float2(0.353553385,-0.353553385) + r4.xy;
    r4.xy = float2(0.5,0.5) + r4.xy;
    r4.xy = frac(r4.xy);
    r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
    r5.xy = -abs(r4.xy) * float2(2,2) + float2(3,3);
    r4.xy = abs(r4.xy) * abs(r4.xy);
    r4.xy = r4.xy * r5.xy;
    r4.x = dot(float2(-0.707106769,0.707106769), r4.xy);
    r6.xyz = r1.xyz * r5.zzz + -cb1[70].xyz;
    r6.xyw = r6.xyz / cb5[30].zzz;
    r6.xyw = r3.yyy * float3(-0.5,-0.5,-0.5) + r6.xyw;
    r6.xyw = float3(0.5,0.5,0.5) + r6.xyw;
    r6.xyw = frac(r6.xyw);
    r6.xyw = r6.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r7.xyz = -abs(r6.xyw) * float3(2,2,2) + float3(3,3,3);
    r6.xyw = abs(r6.xyw) * abs(r6.xyw);
    r6.xyw = r6.xyw * r7.xyz;
    r3.y = dot(r6.xyw, r6.xyw);
    r3.y = sqrt(r3.y);
    r3.y = r4.x + r3.y;
    r3.y = 6.28318548 * r3.y;
    sincos(r3.y, r4.x, r5.x);
    r4.xyz = float3(7.07106781,-7.07106781,0) * r4.xxx;
    r4.xyz = r5.xxx * float3(0,0,10) + r4.xyz;
    r4.xyz = float3(0,0,-10) + r4.xyz;
    r4.xyz = cb5[30].www * r4.xyz;
    r5.xy = cb5[31].yx * cb1[142].zz;
    r5.xy = float2(6.28318548,6.28318548) * r5.xy;
    r5.xy = sin(r5.xy);
    r5.xy = r5.xy * float2(0.5,0.5) + float2(0.75,0.75);
    r3.y = r5.x * r5.y;
    r3.y = cb5[31].z * r3.y;
    r3.y = cb5[31].w * r3.y;
    r4.xyz = r4.xyz * r3.yyy + float3(1,1,1);
    r3.x = 1 + -r3.x;
    r7.xyz = r4.xyz * r3.xxx;
    r7.w = cb5[32].x * r7.z;
    r4.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r4.xyz = floor(r4.xyz);
    r4.xyz = r4.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r3.x = r6.z + -r4.x;
    r3.x = r3.x * 9.99999975e-005 + 0.200000003;
    r3.yz = -r4.yz + r3.zw;
    r3.yz = float2(9.99999975e-005,9.99999975e-005) * r3.yz;
    r4.xyz = t5.SampleLevel(s0_s, r3.yz, -1).xyz;
    r3.w = cb5[32].z + r4.y;
    r5.x = r3.x + -r3.w;
    r5.x = max(0, r5.x);
    r4.x = r4.x + -r4.y;
    r4.x = max(9.99999975e-005, r4.x);
    r4.x = r5.x / r4.x;
    r4.x = min(1, r4.x);
    r4.y = ceil(r4.x);
    r4.x = 1 + -r4.x;
    r4.x = min(0.200000003, r4.x);
    r4.x = r4.y * r4.x;
    r4.y = 5 * r4.x;
    r3.xw = -r4.zz + r3.xw;
    r5.x = max(0, r3.x);
    r3.w = max(9.99999975e-005, r3.w);
    r3.w = r5.x / r3.w;
    r3.w = min(1, r3.w);
    r4.z = ceil(r3.w);
    r3.w = 1 + -r3.w;
    r3.w = min(0.200000003, r3.w);
    r3.w = r4.z * r3.w;
    r3.xw = float2(10000,5) * r3.xw;
    r5.xy = t6.SampleLevel(s1_s, r3.yz, -1).xy;
    r4.x = r4.x * 5 + -r3.w;
    r4.x = cmp(9.99999975e-006 < abs(r4.x));
    r4.z = cmp(r4.y >= r3.w);
    r4.z = r4.z ? r5.y : r5.x;
    r4.x = r4.x ? r4.z : r5.x;
    r4.x = cb5[32].w * r4.x;
    r3.w = max(r4.y, r3.w);
    r4.x = r4.x * r3.w;
    r3.x = max(0, r3.x);
    r2.z = cb5[17].z + r2.z;
    r2.z = r6.z + -r2.z;
    r2.z = min(r3.x, r2.z);
    r2.z = cb5[33].y * r2.z;
    r2.z = r3.w * r2.z;
    r2.z = r4.x * r2.z;
    r3.xy = t7.SampleLevel(s2_s, r3.yz, -1).xy;
    r3.xy = float2(-1,-1) + r3.xy;
    r3.xy = r3.xy * r2.zz;
    r2.z = dot(r3.xy, r3.xy);
    r2.z = sqrt(r2.z);
    r3.z = -1.20000005 * r2.z;
    r3.xyz = r7.xyw + r3.xyz;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r5.zzz + r3.xyz;
  r3.xyzw = cb1[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r1.zzzz * cb1[2].xyzw + r3.xyzw;
  o5.xyzw = r1.wwww * cb1[3].xyzw + r3.xyzw;
  r1.x = mad(asint(cb3[0].y), (int)r2.w, asint(cb3[0].z));
  r1.xy = t3.Load(r1.x).xy;
  o4.xy = r1.xy * cb4[2].xy + r0.xy;
  o4.zw = r1.xy * cb4[3].xy + r0.zw;
  o0.w = 0;
  o2.x = r4.w;
  o2.zw = r5.zw;
  o3.xy = r2.xy;
  o3.zw = float2(0,0);
  return;
}