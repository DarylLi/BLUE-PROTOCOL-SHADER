// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb6 : register(b6)
{
  float4 cb6[18];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[12];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[53];
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
  out float3 o1 : PARTICLE_LIGHTING_OFFSET0,
  out float4 o2 : TANGENTX0,
  out float4 o3 : TANGENTZ0,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : TEXCOORD6,
  out float3 o6 : TEXCOORD8,
  out uint o7 : SV_RenderTargetArrayIndex0,
  out float4 o8 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v1.x << 4;
  r0.y = (uint)v0.x >> 2;
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x + asint(cb0[1].x);
  r0.xy = t1.Load(r0.x).xy;
  r1.xyzw = t2.SampleLevel(s1_s, r0.xy, 0).xyzw;
  r2.xyz = t3.SampleLevel(s2_s, r0.xy, 0).xyz;
  r3.xyzw = t4.SampleLevel(s3_s, r0.xy, 0).xyzw;
  r0.z = cmp(1 >= r1.w);
  r0.z = r0.z ? 1.000000 : 0;
  r4.xyz = cb2[1].xyz * r2.yyy;
  r2.xyw = r2.xxx * cb2[0].xyz + r4.xyz;
  r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r4.xy = cb5[3].zw * r1.ww + cb5[3].xy;
  r4.xyz = t5.SampleLevel(s4_s, r4.xy, 0).xyz;
  r4.xyz = r4.xyz * cb5[4].xyz + cb5[5].xyz;
  r5.xy = cmp(r3.xy < float2(0.5,0.5));
  r5.zw = r5.xy ? float2(0,0) : float2(-0.5,-0.5);
  r3.xy = r5.zw + r3.xy;
  r3.xy = r3.xy + r3.xy;
  r4.xy = cb4[0].xy * r4.xy;
  r5.zw = cb5[6].xy * r0.ww;
  r5.zw = max(float2(1,1), r5.zw);
  r5.zw = min(cb5[6].zw, r5.zw);
  r3.xy = r4.xy * r3.xy;
  r3.xy = r3.xy * r5.zw;
  r0.zw = r3.xy * r0.zz;
  r3.xy = float2(1,1) + -v2.xy;
  r3.xy = r5.xy ? r3.xy : v2.xy;
  r2.w = frac(r4.z);
  r2.w = r4.z + -r2.w;
  r4.x = r2.w / cb5[7].x;
  r4.y = cmp(r4.x >= -r4.x);
  r4.x = frac(abs(r4.x));
  r4.x = r4.y ? r4.x : -r4.x;
  r4.x = cb5[7].x * r4.x;
  r2.w = cb5[7].z * r2.w;
  r4.y = floor(r2.w);
  r3.xy = r4.xy + r3.xy;
  r3.xy = cb5[7].zw * r3.xy;
  r2.w = cb5[10].x * r3.w;
  r1.w = r2.w * r1.w + r3.z;
  r4.xyz = cb2[1].xyz * r1.yyy;
  r4.xyz = cb2[0].xyz * r1.xxx + r4.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r4.xyz;
  r4.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = cb1[64].xyz + -cb1[62].xyz;
  r4.xyz = cb5[9].www * r4.xyz + cb1[62].xyz;
  r5.xyz = cb1[63].xyz + -cb1[61].xyz;
  r5.xyz = cb5[9].www * r5.xyz + cb1[61].xyz;
  r6.xyz = cb4[1].xyz + -r4.xyz;
  r4.xyz = cb4[1].www * r6.xyz + r4.xyz;
  r6.xyz = cb4[2].xyz + r5.xyz;
  r5.xyz = cb4[2].www * r6.xyz + -r5.xyz;
  r6.xyz = cb1[68].zxy + -r1.zxy;
  r2.w = dot(r6.xyz, r6.xyz);
  r3.z = max(0.00999999978, r2.w);
  r3.z = sqrt(r3.z);
  r6.xyz = r6.xyz / r3.zzz;
  r3.z = cmp(0 < cb5[9].x);
  if (r3.z != 0) {
    r2.w = saturate(r2.w * cb5[9].y + -cb5[9].z);
    r7.xyz = float3(0,1,0) * r6.xyz;
    r7.xyz = r6.zxy * float3(1,0,0) + -r7.xyz;
    r3.z = dot(r7.xy, r7.xy);
    r3.z = max(0.00999999978, r3.z);
    r3.z = sqrt(r3.z);
    r7.xyz = r7.xyz / r3.zzz;
    r8.xyz = r7.yzx * r6.xyz;
    r8.xyz = r6.zxy * r7.zxy + -r8.xyz;
    r7.xyz = r7.xyz + -r4.xyz;
    r7.xyz = r2.www * r7.xyz + r4.xyz;
    r3.z = dot(r7.xyz, r7.xyz);
    r3.z = rsqrt(r3.z);
    r7.xyz = r7.xyz * r3.zzz;
    r8.xyz = r8.xyz + -r5.xyz;
    r8.xyz = r2.www * r8.xyz + r5.xyz;
    r2.w = dot(r8.xyz, r8.xyz);
    r2.w = rsqrt(r2.w);
    r8.xyz = r8.xyz * r2.www;
  } else {
    r2.xyz = float3(0,0,9.99999975e-005) + r2.xyz;
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = rsqrt(r2.w);
    r2.xyz = r2.xyz * r2.www;
    r9.xyz = r6.xyz * r2.yzx;
    r9.xyz = r6.zxy * r2.zxy + -r9.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = max(0.00999999978, r2.w);
    r2.w = sqrt(r2.w);
    r9.xyz = r9.xyz / r2.www;
    r10.xyz = cb4[1].zxy * r6.zxy;
    r10.xyz = cb4[1].yzx * r6.xyz + -r10.xyz;
    r2.w = dot(r10.xyz, r10.xyz);
    r2.w = max(0.00999999978, r2.w);
    r2.w = sqrt(r2.w);
    r10.xyz = r10.xyz / r2.www;
    r11.xyz = cmp(float3(0,0,0) < cb5[8].yzw);
    r12.xyz = float3(0,1,0) * r6.xyz;
    r12.xyz = r6.zxy * float3(1,0,0) + -r12.xyz;
    r2.w = dot(r12.xy, r12.xy);
    r2.w = max(0.00999999978, r2.w);
    r2.w = sqrt(r2.w);
    r12.xyz = r12.xyz / r2.www;
    r13.xyz = r12.yzx * r6.xyz;
    r6.xyz = r6.zxy * r12.zxy + -r13.xyz;
    r4.xyz = r11.zzz ? r12.xyz : r4.xyz;
    r5.xyz = r11.zzz ? r6.xyz : r5.xyz;
    r4.xyz = r11.yyy ? cb4[1].xyz : r4.xyz;
    r5.xyz = r11.yyy ? -r10.xyz : r5.xyz;
    r7.xyz = r11.xxx ? r9.xyz : r4.xyz;
    r8.xyz = r11.xxx ? -r2.xyz : r5.xyz;
  }
  r1.w = r1.w * 6.28318548 + cb5[10].y;
  sincos(r1.w, r2.x, r4.x);
  r2.yzw = r4.xxx * r7.xyz;
  r2.yzw = r2.xxx * r8.xyz + r2.yzw;
  r4.yzw = r2.xxx * r7.zxy;
  r4.xyz = r4.xxx * r8.zxy + -r4.yzw;
  r3.zw = cb5[11].xy + v2.xy;
  r0.zw = r3.zw * r0.zw;
  r5.xyz = r0.www * r4.yzx;
  r5.xyz = r0.zzz * r2.yzw + r5.xyz;
  r1.xyz = r5.xyz + r1.xyz;
  r0.xy = float2(10,10) + r0.xy;
  r0.x = r0.x * r0.y;
  r0.xyz = float3(1341.4563,2633.57788,5623.98291) * r0.xxx;
  r0.xyz = frac(r0.xyz);
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 0.5 * cb1[150].w;
  o1.xyz = r0.www * r0.xyz;
  r0.xyz = r4.zxy * r2.wyz;
  r0.xyz = r2.zwy * r4.xyz + -r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r5.xyz = cb2[1].xyz * r0.yyy;
  r5.xyz = r0.xxx * cb2[0].xyz + r5.xyz;
  r5.xyz = r0.zzz * cb2[2].xyz + r5.xyz;
  r0.w = cb1[142].z * cb6[16].y + r3.x;
  r6.x = cb6[17].x * r0.w;
  r0.w = cb1[142].z * cb6[17].y + r3.y;
  r6.y = cb6[17].z * r0.w;
  r0.w = t0.SampleLevel(s0_s, r6.xy, -1).x;
  r5.xyz = r5.xyz * r0.www;
  r1.xyz = r5.xyz * cb6[17].www + r1.xyz;
  r5.xyz = r4.xyz * r0.yzx;
  r4.xyz = r4.zxy * r0.zxy + -r5.xyz;
  r0.w = dot(r4.xyz, r2.yzw);
  r1.w = cmp(0 < r0.w);
  r0.w = cmp(r0.w < 0);
  r0.w = (int)-r1.w + (int)r0.w;
  o3.w = (int)r0.w;
  r0.w = asuint(cb0[1].y) << 2;
  r4.xyzw = cb3[r0.w+30].xyzw * r1.yyyy;
  r4.xyzw = r1.xxxx * cb3[r0.w+29].xyzw + r4.xyzw;
  r4.xyzw = r1.zzzz * cb3[r0.w+31].xyzw + r4.xyzw;
  r4.xyzw = cb3[r0.w+32].xyzw + r4.xyzw;
  o0.xy = r3.xy;
  o0.zw = float2(0,0);
  o2.xyz = r2.yzw;
  o2.w = 0;
  o3.xyz = r0.xyz;
  o5.xyzw = r4.xyzw;
  o8.xyzw = r4.xyzw;
  o4.xyz = r1.xyz;
  o6.xyz = r0.xyz;
  o7.x = cb0[1].y;
  return;
}