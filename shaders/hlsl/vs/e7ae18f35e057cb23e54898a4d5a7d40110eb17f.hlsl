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
  float4 cb2[14];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR1,
  out float4 o6 : TEXCOORD0)
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
  r2.xyz = t1.Load(r0.y).xyz;
  r3.xyz = t1.Load(r0.z).xyz;
  r0.xyzw = t0.Load(r0.x).xyzw;
  r2.w = (int)v2.x + asint(cb3[0].w);
  r4.x = (uint)r2.w << 1;
  r4.xyz = t3.Load(r4.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.w = (((uint)r2.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.xyzw = t3.Load(r4.w).xyzw;
  r6.xyz = r5.yzx * r4.xyz;
  r4.xyz = r5.xyz * r4.yzx + -r6.xyz;
  r4.xyz = r4.xyz * r5.www;
  r6.xyz = r4.xyz * r5.yzx;
  r4.xyz = r4.zxy * r5.zxy + -r6.xyz;
  r4.xyz = r4.xyz * r5.www;
  r6.xyz = cb2[1].xyz * r1.yyy;
  r6.xyz = r1.xxx * cb2[0].xyz + r6.xyz;
  r6.xyz = r1.zzz * cb2[2].xyz + r6.xyz;
  r7.xyz = cb2[1].xyz * r2.yyy;
  r7.xyz = r2.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r2.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r3.yyy;
  r8.xyz = r3.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r3.zzz * cb2[2].xyz + r8.xyz;
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = r6.xyz * r4.www;
  r4.w = dot(r7.xyz, r7.xyz);
  r4.w = rsqrt(r4.w);
  r7.xyz = r7.xyz * r4.www;
  r4.w = dot(r8.xyz, r8.xyz);
  r4.w = rsqrt(r4.w);
  r8.xyz = r8.xyz * r4.www;
  r9.xyz = r7.xyz * r4.yyy;
  r4.xyw = r4.xxx * r6.xyz + r9.xyz;
  o3.xyz = r4.zzz * r8.xyz + r4.xyw;
  r4.xyz = r7.xyz * r5.yyy;
  r4.xyz = r5.xxx * r6.xyz + r4.xyz;
  o4.xyz = r5.zzz * r8.xyz + r4.xyz;
  o4.w = cb2[4].w * r5.w;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r4.xyz = cb0[6].xyz + r0.xyz;
  r5.xyz = cb2[1].xyz * r4.yyy;
  r4.xyw = cb2[0].xyz * r4.xxx + r5.xyz;
  r4.xyz = cb2[2].xyz * r4.zzz + r4.xyw;
  r4.xyz = cb2[3].xyz + r4.xyz;
  r5.xyz = cb1[70].xyz + r4.xyz;
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = sqrt(r4.w);
  r4.w = -cb0[7].x + r4.w;
  r4.w = saturate(cb0[7].y * r4.w);
  o5.y = 1 + -r4.w;
  r4.w = 1 + -r1.w;
  r4.w = cb0[7].w * r4.w;
  r1.w = cb0[7].z * r1.w + r4.w;
  r5.xyz = -cb0[4].xyz + r4.xyz;
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = sqrt(r4.w);
  r4.w = cb0[1].w * r0.w + r4.w;
  r4.xyz = -cb0[5].xyz + r4.xyz;
  r4.x = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r4.x);
  r4.x = cb0[1].w * r0.w + r4.x;
  r4.yzw = cmp(cb0[1].xyz < r4.www);
  r4.yzw = r4.yzw ? float3(1,1,1) : 0;
  r4.y = dot(r4.yzw, cb0[3].xyz);
  r4.xzw = cmp(cb0[2].xyz < r4.xxx);
  r4.xzw = r4.xzw ? float3(1,1,1) : 0;
  r4.x = dot(r4.xzw, cb0[3].xyz);
  r4.x = cb0[5].w * r4.x;
  r4.w = r4.y * cb0[4].w + r4.x;
  r4.x = cmp(abs(r4.w) < 0.999000013);
  r4.x = r4.x ? 1.000000 : 0;
  r4.z = r4.x * r1.w;
  r5.x = r1.x;
  r5.y = r2.x;
  r5.z = r3.x;
  r5.w = r0.x;
  r5.x = dot(v0.xyzw, r5.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r3.y;
  r6.w = r0.y;
  r5.y = dot(v0.xyzw, r6.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r0.z;
  r5.z = dot(v0.xyzw, r3.xyzw);
  r1.xyz = cb2[1].xyz * r5.yyy;
  r1.xyz = cb2[0].xyz * r5.xxx + r1.xyz;
  r1.xyz = cb2[2].xyz * r5.zzz + r1.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.y = cb2[1].z * r0.y;
  r0.x = r0.x * cb2[0].z + r0.y;
  r0.x = r0.z * cb2[2].z + r0.x;
  r0.x = cb2[3].z + r0.x;
  r0.y = (int)r2.w * asint(cb3[0].y);
  r0.yz = t2.Load(r0.y).xy;
  r1.w = asint(cb3[0].y) + -1;
  r1.w = min(2, (uint)r1.w);
  r1.w = mad(asint(cb3[0].y), (int)r2.w, (int)r1.w);
  r1.w = t2.Load(r1.w).y;
  r2.x = cmp(r4.z >= 1);
  if (r2.x != 0) {
    r2.y = cb4[29].z * cb1[142].z;
    r2.zw = r1.xy * r4.zz + -cb1[70].xy;
    r3.xy = r2.zw / cb4[30].xx;
    r3.xy = r2.yy * float2(0.353553385,-0.353553385) + r3.xy;
    r3.xy = float2(0.5,0.5) + r3.xy;
    r3.xy = frac(r3.xy);
    r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
    r3.zw = -abs(r3.xy) * float2(2,2) + float2(3,3);
    r3.xy = abs(r3.xy) * abs(r3.xy);
    r3.xy = r3.xy * r3.zw;
    r3.x = dot(float2(-0.707106769,0.707106769), r3.xy);
    r3.yzw = r1.xyz * r4.zzz + -cb1[70].xyz;
    r6.xyz = r3.yzw / cb4[30].www;
    r6.xyz = r2.yyy * float3(-0.5,-0.5,-0.5) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = frac(r6.xyz);
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r7.xyz = -abs(r6.xyz) * float3(2,2,2) + float3(3,3,3);
    r6.xyz = abs(r6.xyz) * abs(r6.xyz);
    r6.xyz = r6.xyz * r7.xyz;
    r2.y = dot(r6.xyz, r6.xyz);
    r2.y = sqrt(r2.y);
    r2.y = r3.x + r2.y;
    r2.y = 6.28318548 * r2.y;
    sincos(r2.y, r3.x, r4.x);
    r3.xyz = float3(7.07106781,-7.07106781,0) * r3.xxx;
    r3.xyz = r4.xxx * float3(0,0,10) + r3.xyz;
    r3.xyz = float3(0,0,-10) + r3.xyz;
    r3.xyz = cb4[31].xxx * r3.xyz;
    r4.xy = cb4[31].zy * cb1[142].zz;
    r4.xy = float2(6.28318548,6.28318548) * r4.xy;
    r4.xy = sin(r4.xy);
    r4.xy = r4.xy * float2(0.5,0.5) + float2(0.75,0.75);
    r2.y = r4.x * r4.y;
    r2.y = cb4[31].w * r2.y;
    r2.y = cb4[32].x * r2.y;
    r3.xyz = r3.xyz * r2.yyy + float3(1,1,1);
    r2.y = 1 + -r1.w;
    r6.xyz = r3.xyz * r2.yyy;
    r6.w = cb4[32].y * r6.z;
    r3.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r3.xyz = floor(r3.xyz);
    r3.xyz = r3.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r2.y = r3.w + -r3.x;
    r2.y = r2.y * 9.99999975e-005 + 0.200000003;
    r2.zw = -r3.yz + r2.zw;
    r2.zw = float2(9.99999975e-005,9.99999975e-005) * r2.zw;
    r3.xyz = t4.SampleLevel(s0_s, r2.zw, -1).xyz;
    r4.x = cb4[32].w + r3.y;
    r4.y = -r4.x + r2.y;
    r4.y = max(0, r4.y);
    r3.x = r3.x + -r3.y;
    r3.x = max(9.99999975e-005, r3.x);
    r3.x = r4.y / r3.x;
    r3.x = min(1, r3.x);
    r3.y = ceil(r3.x);
    r3.x = 1 + -r3.x;
    r3.x = min(0.200000003, r3.x);
    r3.x = r3.y * r3.x;
    r2.y = -r3.z + r2.y;
    r4.y = max(0, r2.y);
    r3.z = r4.x + -r3.z;
    r3.z = max(9.99999975e-005, r3.z);
    r3.z = r4.y / r3.z;
    r3.z = min(1, r3.z);
    r4.x = ceil(r3.z);
    r3.z = 1 + -r3.z;
    r3.z = min(0.200000003, r3.z);
    r3.z = r4.x * r3.z;
    r3.yz = float2(5,5) * r3.xz;
    r4.xy = t5.SampleLevel(s1_s, r2.zw, -1).xy;
    r3.x = r3.x * 5 + -r3.z;
    r3.x = cmp(9.99999975e-006 < abs(r3.x));
    r6.z = cmp(r3.y >= r3.z);
    r4.y = r6.z ? r4.y : r4.x;
    r3.x = r3.x ? r4.y : r4.x;
    r3.x = cb4[33].x * r3.x;
    r3.y = max(r3.y, r3.z);
    r3.x = r3.x * r3.y;
    r2.y = 10000 * r2.y;
    r2.y = max(0, r2.y);
    r3.z = cb4[17].z + r0.x;
    r3.z = r3.w + -r3.z;
    r2.y = min(r3.z, r2.y);
    r2.y = cb4[33].z * r2.y;
    r2.y = r3.y * r2.y;
    r2.y = r3.x * r2.y;
    r2.zw = t6.SampleLevel(s2_s, r2.zw, -1).xy;
    r2.zw = float2(-1,-1) + r2.zw;
    r3.xy = r2.yy * r2.zw;
    r2.y = dot(r3.xy, r3.xy);
    r2.y = sqrt(r2.y);
    r3.z = -1.20000005 * r2.y;
    r2.yzw = r6.xyw + r3.xyz;
  } else {
    r2.yzw = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r4.zzz + r2.yzw;
  r3.xyw = cb2[13].xyz + cb1[113].xyz;
  r5.w = v0.w;
  r6.x = cb2[10].x;
  r6.y = cb2[11].x;
  r6.z = cb2[12].x;
  r6.w = r3.x;
  r6.x = dot(r5.xyzw, r6.xyzw);
  r7.x = cb2[10].y;
  r7.y = cb2[11].y;
  r7.z = cb2[12].y;
  r7.w = r3.y;
  r6.y = dot(r5.xyzw, r7.xyzw);
  r3.x = cb2[10].z;
  r3.y = cb2[11].z;
  r3.z = cb2[12].z;
  r6.z = dot(r5.xyzw, r3.xyzw);
  if (r2.x != 0) {
    r1.w = 1 + -r1.w;
    r0.x = cb4[17].z + r0.x;
    r2.x = cb4[29].z * cb1[139].z;
    r2.yz = -cb1[113].xy + r6.xy;
    r3.xy = r2.yz / cb4[30].xx;
    r3.xy = r2.xx * float2(0.353553385,-0.353553385) + r3.xy;
    r3.xy = float2(0.5,0.5) + r3.xy;
    r3.xy = frac(r3.xy);
    r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
    r3.zw = -abs(r3.xy) * float2(2,2) + float2(3,3);
    r3.xy = abs(r3.xy) * abs(r3.xy);
    r3.xy = r3.xy * r3.zw;
    r2.w = dot(float2(-0.707106769,0.707106769), r3.xy);
    r3.xyz = -cb1[113].xyz + r6.xyz;
    r3.xyw = r3.xyz / cb4[30].www;
    r3.xyw = r2.xxx * float3(-0.5,-0.5,-0.5) + r3.xyw;
    r3.xyw = float3(0.5,0.5,0.5) + r3.xyw;
    r3.xyw = frac(r3.xyw);
    r3.xyw = r3.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r5.xyz = -abs(r3.xyw) * float3(2,2,2) + float3(3,3,3);
    r3.xyw = abs(r3.xyw) * abs(r3.xyw);
    r3.xyw = r3.xyw * r5.xyz;
    r2.x = dot(r3.xyw, r3.xyw);
    r2.x = sqrt(r2.x);
    r2.x = r2.w + r2.x;
    r2.x = 6.28318548 * r2.x;
    sincos(r2.x, r2.x, r3.x);
    r5.xyz = float3(7.07106781,-7.07106781,0) * r2.xxx;
    r3.xyw = r3.xxx * float3(0,0,10) + r5.xyz;
    r3.xyw = float3(0,0,-10) + r3.xyw;
    r3.xyw = cb4[31].xxx * r3.xyw;
    r2.xw = cb4[31].zy * cb1[139].zz;
    r2.xw = float2(6.28318548,6.28318548) * r2.xw;
    r2.xw = sin(r2.xw);
    r2.xw = r2.xw * float2(0.5,0.5) + float2(0.75,0.75);
    r2.x = r2.x * r2.w;
    r2.x = cb4[31].w * r2.x;
    r2.x = cb4[32].x * r2.x;
    r3.xyw = r3.xyw * r2.xxx + float3(1,1,1);
    r5.xyz = r3.xyw * r1.www;
    r5.w = cb4[32].y * r5.z;
    r3.xyw = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[111].zxy;
    r3.xyw = floor(r3.xyw);
    r3.xyw = r3.xyw * float3(500,500,500) + float3(250,-4750,-4750);
    r1.w = r3.z + -r3.x;
    r1.w = r1.w * 9.99999975e-005 + 0.200000003;
    r2.xy = -r3.yw + r2.yz;
    r2.xy = float2(9.99999975e-005,9.99999975e-005) * r2.xy;
    r3.xyw = t4.SampleLevel(s0_s, r2.xy, -1).xyz;
    r2.z = cb4[32].w + r3.y;
    r2.w = -r2.z + r1.w;
    r2.w = max(0, r2.w);
    r3.x = r3.x + -r3.y;
    r3.x = max(9.99999975e-005, r3.x);
    r2.w = r2.w / r3.x;
    r2.w = min(1, r2.w);
    r3.x = ceil(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = min(0.200000003, r2.w);
    r2.w = r3.x * r2.w;
    r3.x = 5 * r2.w;
    r1.w = -r3.w + r1.w;
    r3.y = max(0, r1.w);
    r2.z = r2.z + -r3.w;
    r2.z = max(9.99999975e-005, r2.z);
    r2.z = r3.y / r2.z;
    r2.z = min(1, r2.z);
    r3.y = ceil(r2.z);
    r2.z = 1 + -r2.z;
    r2.z = min(0.200000003, r2.z);
    r2.z = r3.y * r2.z;
    r2.z = 5 * r2.z;
    r3.yw = t5.SampleLevel(s1_s, r2.xy, -1).xy;
    r2.w = r2.w * 5 + -r2.z;
    r2.w = cmp(9.99999975e-006 < abs(r2.w));
    r4.x = cmp(r3.x >= r2.z);
    r3.w = r4.x ? r3.w : r3.y;
    r2.w = r2.w ? r3.w : r3.y;
    r2.w = cb4[33].x * r2.w;
    r2.z = max(r3.x, r2.z);
    r2.w = r2.w * r2.z;
    r1.w = 10000 * r1.w;
    r1.w = max(0, r1.w);
    r0.x = r3.z + -r0.x;
    r0.x = min(r1.w, r0.x);
    r0.x = cb4[33].z * r0.x;
    r0.x = r2.z * r0.x;
    r0.x = r2.w * r0.x;
    r2.xy = t6.SampleLevel(s2_s, r2.xy, -1).xy;
    r2.xy = float2(-1,-1) + r2.xy;
    r2.xy = r2.xy * r0.xx;
    r0.x = dot(r2.xy, r2.xy);
    r0.x = sqrt(r0.x);
    r2.z = -1.20000005 * r0.x;
    r2.xyz = r5.xyw + r2.xyz;
  } else {
    r2.xyz = float3(0,0,0);
  }
  r2.xyz = r6.xyz + r2.xyz;
  r3.xyzw = cb1[92].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb1[91].xyzw + r3.xyzw;
  r2.xyzw = r2.zzzz * cb1[93].xyzw + r3.xyzw;
  o2.xyzw = cb1[94].xyzw + r2.xyzw;
  r2.xyzw = cb1[1].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[0].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb1[2].xyzw + r2.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.x = cmp(1 < asint(cb1[135].x));
  r2.x = 0.00100000005 * r1.w;
  r0.x = r0.x ? r2.x : 0;
  o0.z = r1.z + r0.x;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  o3.w = 0;
  o5.x = r0.w;
  o5.zw = r4.zw;
  o6.xy = r0.yz;
  o6.zw = float2(0,0);
  return;
}