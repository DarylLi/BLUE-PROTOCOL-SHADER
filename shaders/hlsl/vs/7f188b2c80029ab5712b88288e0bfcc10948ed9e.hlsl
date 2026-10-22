// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[31];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
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
  out float4 o3 : COLOR1,
  out float4 o4 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[9].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r0.yzw = t1.Load(r0.z).xyz;
  r3.xyzw = t0.Load(r0.x).xyzw;
  r0.x = 0.00390625 * r1.w;
  r0.x = trunc(r0.x);
  r4.xyz = cb0[7].xyz + r3.xyz;
  r5.xyz = cb2[1].xyz * r4.yyy;
  r4.xyw = cb2[0].xyz * r4.xxx + r5.xyz;
  r4.xyz = cb2[2].xyz * r4.zzz + r4.xyw;
  r4.xyz = cb2[3].xyz + r4.xyz;
  r5.xyz = cb1[70].xyz + r4.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = -cb0[8].x + r1.w;
  r1.w = saturate(cb0[8].y * r1.w);
  o3.y = 1 + -r1.w;
  r1.w = 1 + -r0.x;
  r1.w = cb0[8].w * r1.w;
  r0.x = cb0[8].z * r0.x + r1.w;
  r5.xyz = -cb0[5].xyz + r4.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = cb0[2].w * r3.w + r1.w;
  r4.xyz = -cb0[6].xyz + r4.xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[2].w * r3.w + r2.w;
  r4.xyz = cmp(cb0[2].xyz < r1.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r1.w = dot(r4.xyz, cb0[4].xyz);
  r4.xyz = cmp(cb0[3].xyz < r2.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r2.w = dot(r4.xyz, cb0[4].xyz);
  r2.w = cb0[6].w * r2.w;
  r4.w = r1.w * cb0[5].w + r2.w;
  r1.w = cmp(abs(r4.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r4.z = r1.w * r0.x;
  r5.x = r1.x;
  r5.y = r2.x;
  r5.z = r0.y;
  r5.w = r3.x;
  r6.x = dot(v0.xyzw, r5.xyzw);
  r7.x = r1.y;
  r7.y = r2.y;
  r7.z = r0.z;
  r7.w = r3.y;
  r6.y = dot(v0.xyzw, r7.xyzw);
  r8.x = r1.z;
  r8.y = r2.z;
  r8.z = r0.w;
  r8.w = r3.z;
  r6.z = dot(v0.xyzw, r8.xyzw);
  r5.yzw = cb2[1].xyz * r6.yyy;
  r5.yzw = cb2[0].xyz * r6.xxx + r5.yzw;
  r5.yzw = cb2[2].xyz * r6.zzz + r5.yzw;
  r7.xzw = cb2[3].xyz + cb1[70].xyz;
  r5.yzw = r7.xzw + r5.yzw;
  r1.xyw = cb2[1].xyz * r1.yyy;
  r1.xyw = r5.xxx * cb2[0].xyz + r1.xyw;
  r1.xyz = r1.zzz * cb2[2].xyz + r1.xyw;
  r7.xyz = cb2[1].xyz * r7.yyy;
  r2.xyw = r2.xxx * cb2[0].xyz + r7.xyz;
  r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
  r0.xzw = cb2[1].xyz * r0.zzz;
  r0.xyz = r0.yyy * cb2[0].xyz + r0.xzw;
  r0.xyz = r8.zzz * cb2[2].xyz + r0.xyz;
  r7.xyz = cb2[1].xyz * r3.yyy;
  r7.xyz = r3.xxx * cb2[0].xyz + r7.xyz;
  r3.xyz = r3.zzz * cb2[2].xyz + r7.xyz;
  r3.xyz = cb2[3].xyz + r3.xyz;
  r0.w = (int)v2.x + asint(cb4[0].w);
  r0.w = (int)r0.w * asint(cb4[0].y);
  r4.xy = t2.Load(r0.w).xy;
  r0.w = cmp(r4.z >= 1);
  if (r0.w != 0) {
    r1.w = 0.00100000005 * r3.y;
    r2.w = dot(r0.xyz, r0.xyz);
    r2.w = sqrt(r2.w);
    r7.xyz = v0.yyy * r2.xyz;
    r7.xyz = v0.xxx * r1.xyz + r7.xyz;
    r7.xyz = v0.zzz * r0.xyz + r7.xyz;
    r7.xyz = r7.xyz / r2.www;
    r5.x = dot(r7.xyz, r7.xyz);
    r5.x = sqrt(r5.x);
    r7.w = 1 / cb3[1].z;
    r7.w = -r7.w * 0.25 + r7.z;
    r7.w = max(0, r7.w);
    r7.w = cb3[1].z * r7.w;
    r8.x = cmp(r7.w != 0.000000);
    r8.y = log2(r7.w);
    r8.y = cb3[1].w * r8.y;
    r8.y = exp2(r8.y);
    r7.w = r8.x ? r8.y : r7.w;
    r8.x = r3.x * 0.00100000005 + cb3[1].x;
    r8.y = cb3[1].x * 0.800000012 + r1.w;
    r8.xy = float2(0.5,0.5) + r8.xy;
    r8.xy = frac(r8.xy);
    r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
    r8.zw = abs(r8.xy) * abs(r8.xy);
    r8.xy = -abs(r8.xy) * float2(2,2) + float2(3,3);
    r8.xy = r8.zw * r8.xy + float2(-0.5,-0.5);
    r8.xy = r8.xy + r8.xy;
    r1.w = r8.y * r8.y + r8.x;
    r8.x = cmp(cb3[1].z != 0.000000);
    r8.y = cb3[6].x / cb3[1].z;
    r8.x = r8.x ? r8.y : cb3[6].x;
    r1.w = cb3[1].y * r1.w + r8.x;
    r1.w = r1.w * r7.w;
    r8.xy = cb3[0].xy * r1.ww + r7.xy;
    r8.z = r7.z;
    r1.w = dot(r8.xyz, r8.xyz);
    r1.w = rsqrt(r1.w);
    r8.xyz = r8.xyz * r1.www;
    r7.xyz = r8.xyz * r5.xxx + -r7.xyz;
    r7.xyz = r7.xyz * r2.www;
    r8.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r8.xyz = floor(r8.xyz);
    r8.xyz = r8.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r9.xyz = r5.wyz * r4.zzz + -cb1[70].zxy;
    r8.xyz = r9.xyz + -r8.xyz;
    r8.yz = float2(9.99999975e-005,9.99999975e-005) * r8.yz;
    r1.w = r8.x * 9.99999975e-005 + 0.200000003;
    r9.yzw = t3.SampleLevel(s0_s, r8.yz, -1).xyz;
    r2.w = cb5[29].y + r9.z;
    r5.x = -r2.w + r1.w;
    r5.x = max(0, r5.x);
    r7.w = r9.y + -r9.z;
    r7.w = max(9.99999975e-005, r7.w);
    r5.x = r5.x / r7.w;
    r5.x = min(1, r5.x);
    r7.w = ceil(r5.x);
    r5.x = 1 + -r5.x;
    r5.x = min(0.200000003, r5.x);
    r5.x = r7.w * r5.x;
    r7.w = 5 * r5.x;
    r1.w = -r9.w + r1.w;
    r8.x = max(0, r1.w);
    r2.w = r2.w + -r9.w;
    r2.w = max(9.99999975e-005, r2.w);
    r2.w = r8.x / r2.w;
    r2.w = min(1, r2.w);
    r8.x = ceil(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = min(0.200000003, r2.w);
    r2.w = r8.x * r2.w;
    r2.w = 5 * r2.w;
    r8.xw = t4.SampleLevel(s1_s, r8.yz, -1).xy;
    r5.x = r5.x * 5 + -r2.w;
    r5.x = cmp(9.99999975e-006 < abs(r5.x));
    r9.y = cmp(r7.w >= r2.w);
    r8.w = r9.y ? r8.w : r8.x;
    r5.x = r5.x ? r8.w : r8.x;
    r5.x = cb5[29].z * r5.x;
    r2.w = max(r7.w, r2.w);
    r5.x = r5.x * r2.w;
    r1.w = 10000 * r1.w;
    r1.w = max(0, r1.w);
    r7.w = cb5[15].z + r3.z;
    r7.w = r9.x + -r7.w;
    r1.w = min(r7.w, r1.w);
    r1.w = cb5[30].x * r1.w;
    r1.w = r2.w * r1.w;
    r1.w = r5.x * r1.w;
    r8.xy = t5.SampleLevel(s2_s, r8.yz, -1).xy;
    r8.xy = float2(-1,-1) + r8.xy;
    r8.xy = r8.xy * r1.ww;
    r1.w = dot(r8.xy, r8.xy);
    r1.w = sqrt(r1.w);
    r8.z = -1.20000005 * r1.w;
    r7.xyz = r7.xyz * cb5[28].www + r8.xyz;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r5.xyz = r5.yzw * r4.zzz + r7.xyz;
  r7.xyw = cb2[13].xyz + cb1[113].xyz;
  r6.w = v0.w;
  r8.x = cb2[10].x;
  r8.y = cb2[11].x;
  r8.z = cb2[12].x;
  r8.w = r7.x;
  r8.x = dot(r6.xyzw, r8.xyzw);
  r9.x = cb2[10].y;
  r9.y = cb2[11].y;
  r9.z = cb2[12].y;
  r9.w = r7.y;
  r8.y = dot(r6.xyzw, r9.xyzw);
  r7.x = cb2[10].z;
  r7.y = cb2[11].z;
  r7.z = cb2[12].z;
  r8.z = dot(r6.xyzw, r7.xyzw);
  if (r0.w != 0) {
    r0.w = 0.00100000005 * r3.y;
    r1.w = dot(r0.xyz, r0.xyz);
    r1.w = sqrt(r1.w);
    r2.xyz = v0.yyy * r2.xyz;
    r1.xyz = v0.xxx * r1.xyz + r2.xyz;
    r0.xyz = v0.zzz * r0.xyz + r1.xyz;
    r0.xyz = r0.xyz / r1.www;
    r1.x = dot(r0.xyz, r0.xyz);
    r1.x = sqrt(r1.x);
    r1.y = 1 / cb3[1].z;
    r1.y = -r1.y * 0.25 + r0.z;
    r1.y = max(0, r1.y);
    r1.y = cb3[1].z * r1.y;
    r1.z = cmp(r1.y != 0.000000);
    r2.x = log2(r1.y);
    r2.x = cb3[1].w * r2.x;
    r2.x = exp2(r2.x);
    r1.y = r1.z ? r2.x : r1.y;
    r2.x = r3.x * 0.00100000005 + cb3[1].x;
    r2.y = cb3[1].x * 0.800000012 + r0.w;
    r2.xy = float2(0.5,0.5) + r2.xy;
    r2.xy = frac(r2.xy);
    r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
    r2.zw = abs(r2.xy) * abs(r2.xy);
    r2.xy = -abs(r2.xy) * float2(2,2) + float2(3,3);
    r2.xy = r2.zw * r2.xy + float2(-0.5,-0.5);
    r2.xy = r2.xy + r2.xy;
    r0.w = r2.y * r2.y + r2.x;
    r1.z = cmp(cb3[1].z != 0.000000);
    r2.x = cb3[6].x / cb3[1].z;
    r1.z = r1.z ? r2.x : cb3[6].x;
    r0.w = cb3[1].y * r0.w + r1.z;
    r0.w = r0.w * r1.y;
    r2.xy = cb3[0].xy * r0.ww + r0.xy;
    r2.z = r0.z;
    r0.w = dot(r2.xyz, r2.xyz);
    r0.w = rsqrt(r0.w);
    r2.xyz = r2.xyz * r0.www;
    r0.xyz = r2.xyz * r1.xxx + -r0.xyz;
    r0.xyz = r0.xyz * r1.www;
    r0.w = cb5[15].z + r3.z;
    r1.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[111].zxy;
    r1.xyz = floor(r1.xyz);
    r1.xyz = r1.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r2.xyz = -cb1[113].zxy + r8.zxy;
    r1.xyz = r2.xyz + -r1.xyz;
    r1.yz = float2(9.99999975e-005,9.99999975e-005) * r1.yz;
    r1.x = r1.x * 9.99999975e-005 + 0.200000003;
    r2.yzw = t3.SampleLevel(s0_s, r1.yz, -1).xyz;
    r1.w = cb5[29].y + r2.z;
    r3.x = r1.x + -r1.w;
    r3.x = max(0, r3.x);
    r2.y = r2.y + -r2.z;
    r2.y = max(9.99999975e-005, r2.y);
    r2.y = r3.x / r2.y;
    r2.y = min(1, r2.y);
    r2.z = ceil(r2.y);
    r2.y = 1 + -r2.y;
    r2.y = min(0.200000003, r2.y);
    r2.y = r2.z * r2.y;
    r2.z = 5 * r2.y;
    r1.xw = -r2.ww + r1.xw;
    r3.x = max(0, r1.x);
    r1.w = max(9.99999975e-005, r1.w);
    r1.w = r3.x / r1.w;
    r1.w = min(1, r1.w);
    r2.w = ceil(r1.w);
    r1.w = 1 + -r1.w;
    r1.w = min(0.200000003, r1.w);
    r1.w = r2.w * r1.w;
    r1.xw = float2(10000,5) * r1.xw;
    r3.xy = t4.SampleLevel(s1_s, r1.yz, -1).xy;
    r2.y = r2.y * 5 + -r1.w;
    r2.y = cmp(9.99999975e-006 < abs(r2.y));
    r2.w = cmp(r2.z >= r1.w);
    r2.w = r2.w ? r3.y : r3.x;
    r2.y = r2.y ? r2.w : r3.x;
    r2.y = cb5[29].z * r2.y;
    r1.w = max(r2.z, r1.w);
    r2.y = r2.y * r1.w;
    r1.x = max(0, r1.x);
    r0.w = r2.x + -r0.w;
    r0.w = min(r1.x, r0.w);
    r0.w = cb5[30].x * r0.w;
    r0.w = r1.w * r0.w;
    r0.w = r2.y * r0.w;
    r1.xy = t5.SampleLevel(s2_s, r1.yz, -1).xy;
    r1.xy = float2(-1,-1) + r1.xy;
    r1.xy = r1.xy * r0.ww;
    r0.w = dot(r1.xy, r1.xy);
    r0.w = sqrt(r0.w);
    r1.z = -1.20000005 * r0.w;
    r0.xyz = r0.xyz * cb5[28].www + r1.xyz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r8.xyz + r0.xyz;
  r1.xyzw = cb1[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  r0.xyzw = cb1[1].xyzw * r5.yyyy;
  r0.xyzw = r5.xxxx * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r5.zzzz * cb1[2].xyzw + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb1[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.x = r3.w;
  o3.zw = r4.zw;
  o4.xy = r4.xy;
  o4.zw = float2(0,0);
  return;
}