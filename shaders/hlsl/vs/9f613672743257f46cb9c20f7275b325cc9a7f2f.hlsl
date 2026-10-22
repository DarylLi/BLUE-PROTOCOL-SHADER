// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[37];
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
  r1.w = cmp(r4.z >= 1);
  if (r1.w != 0) {
    r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r2.xyz = floor(r2.xyz);
    r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r3.xyz = r1.zxy * r4.zzz + -cb1[70].zxy;
    r2.xyz = r3.xyz + -r2.xyz;
    r2.yz = float2(9.99999975e-005,9.99999975e-005) * r2.yz;
    r2.x = r2.x * 9.99999975e-005 + 0.200000003;
    r6.xyz = t5.SampleLevel(s1_s, r2.yz, -1).xyz;
    r2.w = cb4[34].z + r6.y;
    r3.w = r2.x + -r2.w;
    r3.w = max(0, r3.w);
    r4.x = r6.x + -r6.y;
    r4.x = max(9.99999975e-005, r4.x);
    r3.w = r3.w / r4.x;
    r3.w = min(1, r3.w);
    r4.x = ceil(r3.w);
    r3.w = 1 + -r3.w;
    r3.w = min(0.200000003, r3.w);
    r3.w = r4.x * r3.w;
    r4.x = 5 * r3.w;
    r2.xw = -r6.zz + r2.xw;
    r4.y = max(0, r2.x);
    r2.w = max(9.99999975e-005, r2.w);
    r2.w = r4.y / r2.w;
    r2.w = min(1, r2.w);
    r4.y = ceil(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = min(0.200000003, r2.w);
    r2.w = r4.y * r2.w;
    r2.xw = float2(10000,5) * r2.xw;
    r6.xy = t6.SampleLevel(s2_s, r2.yz, -1).xy;
    r3.w = r3.w * 5 + -r2.w;
    r3.w = cmp(9.99999975e-006 < abs(r3.w));
    r4.y = cmp(r4.x >= r2.w);
    r4.y = r4.y ? r6.y : r6.x;
    r3.w = r3.w ? r4.y : r6.x;
    r3.w = cb4[34].w * r3.w;
    r2.w = max(r4.x, r2.w);
    r3.w = r3.w * r2.w;
    r2.x = max(0, r2.x);
    r4.x = cb4[14].z + r0.x;
    r3.x = -r4.x + r3.x;
    r2.x = min(r3.x, r2.x);
    r2.x = cb4[35].y * r2.x;
    r2.x = r2.w * r2.x;
    r2.x = r3.w * r2.x;
    r2.yz = t7.SampleLevel(s3_s, r2.yz, -1).xy;
    r2.yz = float2(-1,-1) + r2.yz;
    r2.xy = r2.xx * r2.yz;
    r2.w = dot(r2.xy, r2.xy);
    r2.w = sqrt(r2.w);
    r2.z = -1.20000005 * r2.w;
    r2.w = cb4[23].y * cb1[142].z;
    r3.xw = r3.yz / cb4[23].ww;
    r3.xw = r2.ww * float2(0.353553385,-0.353553385) + r3.xw;
    r3.xw = float2(0.5,0.5) + r3.xw;
    r3.xw = frac(r3.xw);
    r3.xw = r3.xw * float2(2,2) + float2(-1,-1);
    r4.xy = -abs(r3.xw) * float2(2,2) + float2(3,3);
    r3.xw = abs(r3.xw) * abs(r3.xw);
    r3.xw = r3.xw * r4.xy;
    r3.x = dot(float2(-0.707106769,0.707106769), r3.xw);
    r6.xyz = r1.xyz * r4.zzz + -cb1[70].xyz;
    r6.xyz = r6.xyz / cb4[24].zzz;
    r6.xyz = r2.www * float3(-0.5,-0.5,-0.5) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = frac(r6.xyz);
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r7.xyz = -abs(r6.xyz) * float3(2,2,2) + float3(3,3,3);
    r6.xyz = abs(r6.xyz) * abs(r6.xyz);
    r6.xyz = r6.xyz * r7.xyz;
    r2.w = dot(r6.xyz, r6.xyz);
    r2.w = sqrt(r2.w);
    r2.w = r3.x + r2.w;
    r2.w = 6.28318548 * r2.w;
    sincos(r2.w, r3.x, r4.x);
    r6.xyz = float3(7.07106781,-7.07106781,0) * r3.xxx;
    r6.xyz = r4.xxx * float3(0,0,10) + r6.xyz;
    r6.xyz = float3(0,0,-10) + r6.xyz;
    r6.xyz = cb4[24].www * r6.xyz;
    r2.w = 0.5 + cb1[142].z;
    r2.w = cb4[25].x * r2.w;
    r2.w = 6.28318548 * r2.w;
    r2.w = sin(r2.w);
    r2.w = r2.w * 0.5 + 0.75;
    r7.xy = cb4[25].xw * cb1[142].zz;
    r3.x = 6.28318548 * r7.x;
    r3.x = sin(r3.x);
    r3.x = r3.x * 0.5 + 0.75;
    r7.z = cb4[26].x * cb1[142].z;
    r3.yz = r3.yz / cb4[26].yy;
    r3.yz = r7.yz + r3.yz;
    r3.y = t4.SampleLevel(s0_s, r3.yz, -1).x;
    r3.y = cb4[26].z * r3.y;
    r3.z = cmp(0 >= r3.y);
    r3.y = log2(r3.y);
    r3.y = cb4[26].w * r3.y;
    r3.y = exp2(r3.y);
    r3.y = r3.z ? 0 : r3.y;
    r3.y = saturate(cb4[27].x + r3.y);
    r3.x = r3.x + -r2.w;
    r2.w = r3.y * r3.x + r2.w;
    r2.w = cb4[27].y * r2.w;
    r2.w = cb4[27].z * r2.w;
    r3.xyz = r6.xyz * r2.www + float3(1,1,1);
    r2.w = 1 + -r0.z;
    r3.xyz = r3.xyz * r2.www;
    r6.xy = cb4[35].zw * r3.zx;
    r6.z = cb4[36].x * r3.y;
    r6.w = cb4[36].y * r6.x;
    r2.xyz = r6.yzw + r2.xyz;
  } else {
    r2.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r4.zzz + r2.xyz;
  r2.xyw = cb2[13].xyz + cb1[113].xyz;
  r5.w = v0.w;
  r3.x = cb2[10].x;
  r3.y = cb2[11].x;
  r3.z = cb2[12].x;
  r3.w = r2.x;
  r3.x = dot(r5.xyzw, r3.xyzw);
  r6.x = cb2[10].y;
  r6.y = cb2[11].y;
  r6.z = cb2[12].y;
  r6.w = r2.y;
  r3.y = dot(r5.xyzw, r6.xyzw);
  r2.x = cb2[10].z;
  r2.y = cb2[11].z;
  r2.z = cb2[12].z;
  r3.z = dot(r5.xyzw, r2.xyzw);
  if (r1.w != 0) {
    r0.x = cb4[14].z + r0.x;
    r1.w = 1 + -r0.z;
    r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[111].zxy;
    r2.xyz = floor(r2.xyz);
    r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r5.xyz = -cb1[113].zxy + r3.zxy;
    r2.xyz = r5.xyz + -r2.xyz;
    r2.yz = float2(9.99999975e-005,9.99999975e-005) * r2.yz;
    r2.x = r2.x * 9.99999975e-005 + 0.200000003;
    r6.xyz = t5.SampleLevel(s1_s, r2.yz, -1).xyz;
    r2.w = cb4[34].z + r6.y;
    r3.w = r2.x + -r2.w;
    r3.w = max(0, r3.w);
    r4.x = r6.x + -r6.y;
    r4.x = max(9.99999975e-005, r4.x);
    r3.w = r3.w / r4.x;
    r3.w = min(1, r3.w);
    r4.x = ceil(r3.w);
    r3.w = 1 + -r3.w;
    r3.w = min(0.200000003, r3.w);
    r3.w = r4.x * r3.w;
    r4.x = 5 * r3.w;
    r2.xw = -r6.zz + r2.xw;
    r4.y = max(0, r2.x);
    r2.w = max(9.99999975e-005, r2.w);
    r2.w = r4.y / r2.w;
    r2.w = min(1, r2.w);
    r4.y = ceil(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = min(0.200000003, r2.w);
    r2.w = r4.y * r2.w;
    r2.xw = float2(10000,5) * r2.xw;
    r6.xy = t6.SampleLevel(s2_s, r2.yz, -1).xy;
    r3.w = r3.w * 5 + -r2.w;
    r3.w = cmp(9.99999975e-006 < abs(r3.w));
    r4.y = cmp(r4.x >= r2.w);
    r4.y = r4.y ? r6.y : r6.x;
    r3.w = r3.w ? r4.y : r6.x;
    r3.w = cb4[34].w * r3.w;
    r2.w = max(r4.x, r2.w);
    r3.w = r3.w * r2.w;
    r2.x = max(0, r2.x);
    r0.x = r5.x + -r0.x;
    r0.x = min(r2.x, r0.x);
    r0.x = cb4[35].y * r0.x;
    r0.x = r2.w * r0.x;
    r0.x = r3.w * r0.x;
    r2.xy = t7.SampleLevel(s3_s, r2.yz, -1).xy;
    r2.xy = float2(-1,-1) + r2.xy;
    r2.xy = r2.xy * r0.xx;
    r0.x = dot(r2.xy, r2.xy);
    r0.x = sqrt(r0.x);
    r2.z = -1.20000005 * r0.x;
    r0.x = cb4[23].y * cb1[139].z;
    r4.xy = r5.yz / cb4[23].ww;
    r4.xy = r0.xx * float2(0.353553385,-0.353553385) + r4.xy;
    r4.xy = float2(0.5,0.5) + r4.xy;
    r4.xy = frac(r4.xy);
    r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
    r5.xw = -abs(r4.xy) * float2(2,2) + float2(3,3);
    r4.xy = abs(r4.xy) * abs(r4.xy);
    r4.xy = r4.xy * r5.xw;
    r2.w = dot(float2(-0.707106769,0.707106769), r4.xy);
    r6.xyz = -cb1[113].xyz + r3.xyz;
    r6.xyz = r6.xyz / cb4[24].zzz;
    r6.xyz = r0.xxx * float3(-0.5,-0.5,-0.5) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = frac(r6.xyz);
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r7.xyz = -abs(r6.xyz) * float3(2,2,2) + float3(3,3,3);
    r6.xyz = abs(r6.xyz) * abs(r6.xyz);
    r6.xyz = r6.xyz * r7.xyz;
    r0.x = dot(r6.xyz, r6.xyz);
    r0.x = sqrt(r0.x);
    r0.x = r2.w + r0.x;
    r0.x = 6.28318548 * r0.x;
    sincos(r0.x, r0.x, r4.x);
    r6.xyz = float3(7.07106781,-7.07106781,0) * r0.xxx;
    r6.xyz = r4.xxx * float3(0,0,10) + r6.xyz;
    r6.xyz = float3(0,0,-10) + r6.xyz;
    r6.xyz = cb4[24].www * r6.xyz;
    r0.x = 0.5 + cb1[139].z;
    r0.x = cb4[25].x * r0.x;
    r0.x = 6.28318548 * r0.x;
    r0.x = sin(r0.x);
    r0.x = r0.x * 0.5 + 0.75;
    r7.xy = cb4[25].xw * cb1[139].zz;
    r2.w = 6.28318548 * r7.x;
    r2.w = sin(r2.w);
    r2.w = r2.w * 0.5 + 0.75;
    r7.z = cb4[26].x * cb1[139].z;
    r4.xy = r5.yz / cb4[26].yy;
    r4.xy = r7.yz + r4.xy;
    r3.w = t4.SampleLevel(s0_s, r4.xy, -1).x;
    r3.w = cb4[26].z * r3.w;
    r4.x = cmp(0 >= r3.w);
    r3.w = log2(r3.w);
    r3.w = cb4[26].w * r3.w;
    r3.w = exp2(r3.w);
    r3.w = r4.x ? 0 : r3.w;
    r3.w = saturate(cb4[27].x + r3.w);
    r2.w = r2.w + -r0.x;
    r0.x = r3.w * r2.w + r0.x;
    r0.x = cb4[27].y * r0.x;
    r0.x = cb4[27].z * r0.x;
    r5.xyz = r6.xyz * r0.xxx + float3(1,1,1);
    r5.xyz = r5.xyz * r1.www;
    r6.xy = cb4[35].zw * r5.zx;
    r6.z = cb4[36].x * r5.y;
    r6.w = cb4[36].y * r6.x;
    r2.xyz = r6.yzw + r2.xyz;
  } else {
    r2.xyz = float3(0,0,0);
  }
  r2.xyz = r3.xyz + r2.xyz;
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