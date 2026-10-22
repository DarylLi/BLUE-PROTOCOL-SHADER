// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[12];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[151];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  uint v1 : SV_InstanceID0,
  float2 v2 : ATTRIBUTE0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD4,
  out float3 o2 : PARTICLE_LIGHTING_OFFSET0,
  out float4 o3 : TANGENTX0,
  out float4 o4 : TANGENTZ0,
  out float4 o5 : TEXCOORD6,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v1.x << 4;
  r0.y = (uint)v0.x >> 2;
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x + asint(cb0[1].x);
  r0.xy = t0.Load(r0.x).xy;
  r1.xyzw = t1.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r2.xyz = t2.SampleLevel(s1_s, r0.xy, 0).xyz;
  r3.xyzw = t3.SampleLevel(s2_s, r0.xy, 0).xyzw;
  r0.z = cmp(1 >= r1.w);
  r0.z = r0.z ? 1.000000 : 0;
  r4.xyz = cb2[1].xyz * r2.yyy;
  r2.xyw = r2.xxx * cb2[0].xyz + r4.xyz;
  r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r4.xy = cb4[3].zw * r1.ww + cb4[3].xy;
  r4.xyz = t4.SampleLevel(s3_s, r4.xy, 0).xyz;
  r4.xyz = r4.xyz * cb4[4].xyz + cb4[5].xyz;
  r5.xy = cmp(r3.xy < float2(0.5,0.5));
  r5.zw = r5.xy ? float2(0,0) : float2(-0.5,-0.5);
  r3.xy = r5.zw + r3.xy;
  r3.xy = r3.xy + r3.xy;
  r4.xy = cb3[0].xy * r4.xy;
  r5.zw = cb4[6].xy * r0.ww;
  r5.zw = max(float2(1,1), r5.zw);
  r5.zw = min(cb4[6].zw, r5.zw);
  r3.xy = r4.xy * r3.xy;
  r3.xy = r3.xy * r5.zw;
  r0.zw = r3.xy * r0.zz;
  r3.xy = float2(1,1) + -v2.xy;
  r3.xy = r5.xy ? r3.xy : v2.xy;
  r2.w = frac(r4.z);
  r4.x = r4.z + -r2.w;
  r4.y = r4.x / cb4[7].x;
  r4.z = cmp(r4.y >= -r4.y);
  r4.y = frac(abs(r4.y));
  r4.y = r4.z ? r4.y : -r4.y;
  r5.x = cb4[7].x * r4.y;
  r4.x = cb4[7].z * r4.x;
  r5.y = floor(r4.x);
  r3.xy = r5.xy + r3.xy;
  o0.xy = cb4[7].zw * r3.xy;
  r3.x = cb4[10].x * r3.w;
  r3.x = r3.x * r1.w + r3.z;
  r3.yzw = cb2[1].xyz * r1.yyy;
  r3.yzw = cb2[0].xyz * r1.xxx + r3.yzw;
  r1.xyz = cb2[2].xyz * r1.zzz + r3.yzw;
  r3.yzw = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r3.yzw + r1.xyz;
  r3.yzw = cb1[64].xyz + -cb1[62].xyz;
  r3.yzw = cb4[9].www * r3.yzw + cb1[62].xyz;
  r4.xyz = cb1[63].xyz + -cb1[61].xyz;
  r4.xyz = cb4[9].www * r4.xyz + cb1[61].xyz;
  r5.xyz = cb3[1].xyz + -r3.yzw;
  r3.yzw = cb3[1].www * r5.xyz + r3.yzw;
  r5.xyz = cb3[2].xyz + r4.xyz;
  r4.xyz = cb3[2].www * r5.xyz + -r4.xyz;
  r5.xyz = cb1[68].zxy + -r1.zxy;
  r4.w = dot(r5.xyz, r5.xyz);
  r5.w = max(0.00999999978, r4.w);
  r5.w = sqrt(r5.w);
  r5.xyz = r5.xyz / r5.www;
  r5.w = cmp(0 < cb4[9].x);
  if (r5.w != 0) {
    r4.w = saturate(r4.w * cb4[9].y + -cb4[9].z);
    r6.xyz = float3(0,1,0) * r5.xyz;
    r6.xyz = r5.zxy * float3(1,0,0) + -r6.xyz;
    r5.w = dot(r6.xy, r6.xy);
    r5.w = max(0.00999999978, r5.w);
    r5.w = sqrt(r5.w);
    r6.xyz = r6.xyz / r5.www;
    r7.xyz = r6.yzx * r5.xyz;
    r7.xyz = r5.zxy * r6.zxy + -r7.xyz;
    r6.xyz = r6.xyz + -r3.yzw;
    r6.xyz = r4.www * r6.xyz + r3.yzw;
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = rsqrt(r5.w);
    r6.xyz = r6.xyz * r5.www;
    r7.xyz = r7.xyz + -r4.xyz;
    r7.xyz = r4.www * r7.xyz + r4.xyz;
    r4.w = dot(r7.xyz, r7.xyz);
    r4.w = rsqrt(r4.w);
    r7.xyz = r7.xyz * r4.www;
  } else {
    r2.xyz = float3(0,0,9.99999975e-005) + r2.xyz;
    r4.w = dot(r2.xyz, r2.xyz);
    r4.w = rsqrt(r4.w);
    r2.xyz = r4.www * r2.xyz;
    r8.xyz = r5.xyz * r2.yzx;
    r8.xyz = r5.zxy * r2.zxy + -r8.xyz;
    r4.w = dot(r8.xyz, r8.xyz);
    r4.w = max(0.00999999978, r4.w);
    r4.w = sqrt(r4.w);
    r8.xyz = r8.xyz / r4.www;
    r9.xyz = cb3[1].zxy * r5.zxy;
    r9.xyz = cb3[1].yzx * r5.xyz + -r9.xyz;
    r4.w = dot(r9.xyz, r9.xyz);
    r4.w = max(0.00999999978, r4.w);
    r4.w = sqrt(r4.w);
    r9.xyz = r9.xyz / r4.www;
    r10.xyz = cmp(float3(0,0,0) < cb4[8].yzw);
    r11.xyz = float3(0,1,0) * r5.xyz;
    r11.xyz = r5.zxy * float3(1,0,0) + -r11.xyz;
    r4.w = dot(r11.xy, r11.xy);
    r4.w = max(0.00999999978, r4.w);
    r4.w = sqrt(r4.w);
    r11.xyz = r11.xyz / r4.www;
    r12.xyz = r11.yzx * r5.xyz;
    r5.xyz = r5.zxy * r11.zxy + -r12.xyz;
    r3.yzw = r10.zzz ? r11.xyz : r3.yzw;
    r4.xyz = r10.zzz ? r5.xyz : r4.xyz;
    r3.yzw = r10.yyy ? cb3[1].xyz : r3.yzw;
    r4.xyz = r10.yyy ? -r9.xyz : r4.xyz;
    r6.xyz = r10.xxx ? r8.xyz : r3.yzw;
    r7.xyz = r10.xxx ? -r2.xyz : r4.xyz;
  }
  r2.x = r3.x * 6.28318548 + cb4[10].y;
  sincos(r2.x, r2.x, r3.x);
  r3.yzw = r3.xxx * r6.xyz;
  r3.yzw = r2.xxx * r7.xyz + r3.yzw;
  r2.xyz = r2.xxx * r6.zxy;
  r2.xyz = r3.xxx * r7.zxy + -r2.xyz;
  r4.xy = cb4[11].xy + v2.xy;
  r0.zw = r4.xy * r0.zw;
  r4.xyz = r0.www * r2.yzx;
  r4.xyz = r0.zzz * r3.yzw + r4.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r0.zw = float2(10,10) + r0.xy;
  r0.z = r0.z * r0.w;
  r4.xyz = float3(1341.4563,2633.57788,5623.98291) * r0.zzz;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.z = 0.5 * cb1[150].w;
  o2.xyz = r0.zzz * r4.xyz;
  r0.xyz = cb3[0].zzz + r0.xyx;
  r0.xyz = float3(0.0078125,0.0078125,0.0078125) * r0.xyz;
  r0.xyz = frac(r0.xyz);
  r0.xyz = r0.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r0.xyz = r0.xyz * r0.xyy;
  r0.x = dot(r0.xyz, float3(20.390625,60.703125,2.42812085));
  o1.w = frac(r0.x);
  r0.xyzw = cb1[1].xyzw * r1.yyyy;
  r0.xyzw = r1.xxxx * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r1.zzzz * cb1[2].xyzw + r0.xyzw;
  o6.xyzw = cb1[3].xyzw + r0.xyzw;
  r0.xyz = r3.wyz * r2.zxy;
  r0.xyz = r3.zwy * r2.xyz + -r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = r2.xyz * r0.yzx;
  r2.xyz = r2.zxy * r0.zxy + -r4.xyz;
  r0.w = dot(r2.xyz, r3.yzw);
  r2.x = cmp(0 < r0.w);
  r0.w = cmp(r0.w < 0);
  r0.w = (int)-r2.x + (int)r0.w;
  o4.w = (int)r0.w;
  o0.zw = float2(0,0);
  o1.y = r1.w;
  o1.z = 0;
  o1.x = r2.w;
  o3.xyz = r3.yzw;
  o3.w = 0;
  o4.xyz = r0.xyz;
  o5.xyz = r1.xyz;
  o5.w = 1;
  return;
}