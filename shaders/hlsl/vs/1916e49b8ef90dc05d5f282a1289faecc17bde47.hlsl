// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[12];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[4];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[4];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[211];
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
  out float4 o1 : TEXCOORD5,
  out float3 o2 : PARTICLE_LIGHTING_OFFSET0,
  out float4 o3 : TANGENTX0,
  out float4 o4 : TANGENTZ0,
  out float4 o5 : TEXCOORD7,
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
  r0.xy = t2.Load(r0.x).xy;
  r1.xyzw = t3.SampleLevel(s2_s, r0.xy, 0).xyzw;
  r2.xyz = t4.SampleLevel(s3_s, r0.xy, 0).xyz;
  r3.xyzw = t5.SampleLevel(s4_s, r0.xy, 0).xyzw;
  r0.z = cmp(1 >= r1.w);
  r0.z = r0.z ? 1.000000 : 0;
  r4.xyz = cb3[1].xyz * r2.yyy;
  r2.xyw = r2.xxx * cb3[0].xyz + r4.xyz;
  r2.xyz = r2.zzz * cb3[2].xyz + r2.xyw;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r4.xy = cb5[0].zw * r1.ww + cb5[0].xy;
  r4.xyzw = t6.SampleLevel(s5_s, r4.xy, 0).xyzw;
  r4.xyzw = r4.xyzw * cb5[1].xyzw + cb5[2].xyzw;
  o1.xyzw = cb4[3].xyzw * r4.xyzw;
  r4.xy = cb5[3].zw * r1.ww + cb5[3].xy;
  r4.xyz = t6.SampleLevel(s5_s, r4.xy, 0).xyz;
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
  o0.xy = cb5[7].zw * r3.xy;
  r2.w = cb5[10].x * r3.w;
  r1.w = r2.w * r1.w + r3.z;
  r3.xyz = cb3[1].xyz * r1.yyy;
  r3.xyz = cb3[0].xyz * r1.xxx + r3.xyz;
  r1.xyz = cb3[2].xyz * r1.zzz + r3.xyz;
  r3.xyz = cb3[3].xyz + cb2[70].xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r3.xyz = cb2[64].xyz + -cb2[62].xyz;
  r3.xyz = cb5[9].www * r3.xyz + cb2[62].xyz;
  r4.xyz = cb2[63].xyz + -cb2[61].xyz;
  r4.xyz = cb5[9].www * r4.xyz + cb2[61].xyz;
  r5.xyz = cb4[1].xyz + -r3.xyz;
  r3.xyz = cb4[1].www * r5.xyz + r3.xyz;
  r5.xyz = cb4[2].xyz + r4.xyz;
  r4.xyz = cb4[2].www * r5.xyz + -r4.xyz;
  r5.xyz = cb2[68].zxy + -r1.zxy;
  r2.w = dot(r5.xyz, r5.xyz);
  r3.w = max(0.00999999978, r2.w);
  r3.w = sqrt(r3.w);
  r5.xyz = r5.xyz / r3.www;
  r3.w = cmp(0 < cb5[9].x);
  if (r3.w != 0) {
    r2.w = saturate(r2.w * cb5[9].y + -cb5[9].z);
    r6.xyz = float3(0,1,0) * r5.xyz;
    r6.xyz = r5.zxy * float3(1,0,0) + -r6.xyz;
    r3.w = dot(r6.xy, r6.xy);
    r3.w = max(0.00999999978, r3.w);
    r3.w = sqrt(r3.w);
    r6.xyz = r6.xyz / r3.www;
    r7.xyz = r6.yzx * r5.xyz;
    r7.xyz = r5.zxy * r6.zxy + -r7.xyz;
    r6.xyz = r6.xyz + -r3.xyz;
    r6.xyz = r2.www * r6.xyz + r3.xyz;
    r3.w = dot(r6.xyz, r6.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r6.xyz * r3.www;
    r7.xyz = r7.xyz + -r4.xyz;
    r7.xyz = r2.www * r7.xyz + r4.xyz;
    r2.w = dot(r7.xyz, r7.xyz);
    r2.w = rsqrt(r2.w);
    r7.xyz = r7.xyz * r2.www;
  } else {
    r2.xyz = float3(0,0,9.99999975e-005) + r2.xyz;
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = rsqrt(r2.w);
    r2.xyz = r2.xyz * r2.www;
    r8.xyz = r5.xyz * r2.yzx;
    r8.xyz = r5.zxy * r2.zxy + -r8.xyz;
    r2.w = dot(r8.xyz, r8.xyz);
    r2.w = max(0.00999999978, r2.w);
    r2.w = sqrt(r2.w);
    r8.xyz = r8.xyz / r2.www;
    r9.xyz = cb4[1].zxy * r5.zxy;
    r9.xyz = cb4[1].yzx * r5.xyz + -r9.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = max(0.00999999978, r2.w);
    r2.w = sqrt(r2.w);
    r9.xyz = r9.xyz / r2.www;
    r10.xyz = cmp(float3(0,0,0) < cb5[8].yzw);
    r11.xyz = float3(0,1,0) * r5.xyz;
    r11.xyz = r5.zxy * float3(1,0,0) + -r11.xyz;
    r2.w = dot(r11.xy, r11.xy);
    r2.w = max(0.00999999978, r2.w);
    r2.w = sqrt(r2.w);
    r11.xyz = r11.xyz / r2.www;
    r12.xyz = r11.yzx * r5.xyz;
    r5.xyz = r5.zxy * r11.zxy + -r12.xyz;
    r3.xyz = r10.zzz ? r11.xyz : r3.xyz;
    r4.xyz = r10.zzz ? r5.xyz : r4.xyz;
    r3.xyz = r10.yyy ? cb4[1].xyz : r3.xyz;
    r4.xyz = r10.yyy ? -r9.xyz : r4.xyz;
    r6.xyz = r10.xxx ? r8.xyz : r3.xyz;
    r7.xyz = r10.xxx ? -r2.xyz : r4.xyz;
  }
  r1.w = r1.w * 6.28318548 + cb5[10].y;
  sincos(r1.w, r2.x, r3.x);
  r2.yzw = r3.xxx * r6.xyz;
  r2.yzw = r2.xxx * r7.xyz + r2.yzw;
  r3.yzw = r2.xxx * r6.zxy;
  r3.xyz = r3.xxx * r7.zxy + -r3.yzw;
  r4.xy = cb5[11].xy + v2.xy;
  r0.zw = r4.xy * r0.zw;
  r4.xyz = r0.www * r3.yzx;
  r4.xyz = r0.zzz * r2.yzw + r4.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r0.xy = float2(10,10) + r0.xy;
  r0.x = r0.x * r0.y;
  r0.xyz = float3(1341.4563,2633.57788,5623.98291) * r0.xxx;
  r0.xyz = frac(r0.xyz);
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 0.5 * cb2[150].w;
  o2.xyz = r0.www * r0.xyz;
  r0.xyzw = cb2[1].xyzw * r1.yyyy;
  r0.xyzw = r1.xxxx * cb2[0].xyzw + r0.xyzw;
  r0.xyzw = r1.zzzz * cb2[2].xyzw + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r4.xyz = r3.zxy * r2.wyz;
  r4.xyz = r2.zwy * r3.xyz + -r4.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r5.xyz = r4.yzx * r3.xyz;
  r3.xyz = r3.zxy * r4.zxy + -r5.xyz;
  r1.w = dot(r3.xyz, r2.yzw);
  r2.x = cmp(0 < r1.w);
  r1.w = cmp(r1.w < 0);
  r1.w = (int)-r2.x + (int)r1.w;
  o4.w = (int)r1.w;
  r3.xyz = -cb2[68].xyz + r1.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r2.x = dot(r3.xyz, cb2[60].xyz);
  r1.w = r1.w / r2.x;
  r1.w = cb2[210].z * r1.w;
  r1.w = max(0, r1.w);
  r2.x = min(cb2[67].z, cb1[143].z);
  r4.w = cb2[67].z + -r2.x;
  r3.w = r4.w + r3.z;
  r3.z = dot(r3.xyw, r3.xyw);
  r4.w = rsqrt(r3.z);
  r3.z = r4.w * r3.z;
  r1.w = max(cb1[143].w, r1.w);
  r5.x = cmp(0 < r1.w);
  r5.y = r1.w * r4.w;
  r2.x = r5.y * r3.w + r2.x;
  r5.y = -r5.y * r3.w + r3.w;
  r1.w = -r1.w * r4.w + 1;
  r1.w = r1.w * r3.z;
  r5.z = -cb1[146].y + r2.x;
  r5.z = cb1[143].y * r5.z;
  r5.z = max(-127, r5.z);
  r5.z = exp2(-r5.z);
  r5.z = cb1[146].x * r5.z;
  r2.x = -cb1[144].w + r2.x;
  r2.x = cb1[144].y * r2.x;
  r2.x = max(-127, r2.x);
  r2.x = exp2(-r2.x);
  r2.x = cb1[144].z * r2.x;
  r5.z = r5.x ? r5.z : cb1[143].x;
  r2.x = r5.x ? r2.x : cb1[144].x;
  r1.w = r5.x ? r1.w : r3.z;
  r5.x = r5.x ? r5.y : r3.w;
  r5.y = cb1[143].y * r5.x;
  r5.y = max(-127, r5.y);
  r5.w = exp2(-r5.y);
  r5.w = 1 + -r5.w;
  r5.w = r5.w / r5.y;
  r6.x = -r5.y * 0.240226507 + 0.693147182;
  r5.y = cmp(0.00999999978 < abs(r5.y));
  r5.y = r5.y ? r5.w : r6.x;
  r5.x = cb1[144].y * r5.x;
  r5.x = max(-127, r5.x);
  r5.w = exp2(-r5.x);
  r5.w = 1 + -r5.w;
  r5.w = r5.w / r5.x;
  r6.x = -r5.x * 0.240226507 + 0.693147182;
  r5.x = cmp(0.00999999978 < abs(r5.x));
  r5.x = r5.x ? r5.w : r6.x;
  r2.x = r5.x * r2.x;
  r2.x = r5.z * r5.y + r2.x;
  r5.x = r2.x * r1.w;
  r5.yz = cmp(float2(0,0) < cb1[146].zw);
  if (r5.y != 0) {
    r5.y = saturate(r3.z * cb1[150].x + cb1[150].y);
    r6.xy = float2(1,-1) * cb1[149].yx;
    r6.x = dot(r3.xy, r6.xy);
    r6.y = dot(r3.xy, cb1[149].xy);
    r6.z = r3.w;
    r7.xyz = t0.SampleLevel(s0_s, r6.xyz, 0).xyz;
    r6.xyz = t0.SampleLevel(s0_s, r6.xyz, cb1[150].z).xyz;
    r7.xyz = r7.xyz + -r6.xyz;
    r6.xyz = r5.yyy * r7.xyz + r6.xyz;
    r6.xyz = cb1[145].xyz * r6.xyz;
  } else {
    r6.xyz = cb1[145].xyz;
  }
  r5.y = cmp(cb1[147].w >= 0);
  r5.w = cmp(cb1[146].z == 0.000000);
  r5.y = r5.w ? r5.y : 0;
  if (r5.y != 0) {
    r3.xyw = r4.www * r3.xyw;
    r3.x = saturate(dot(r3.xyw, cb1[147].xyz));
    r3.x = log2(r3.x);
    r3.x = cb1[148].w * r3.x;
    r3.x = exp2(r3.x);
    r3.xyw = cb1[148].xyz * r3.xxx;
    r1.w = -cb1[147].w + r1.w;
    r1.w = max(0, r1.w);
    r1.w = r2.x * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r7.xyz = r3.xyw * r1.www;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r5.x);
  r1.w = min(1, r1.w);
  r7.w = max(cb1[145].w, r1.w);
  r1.w = cmp(cb1[146].w < r3.z);
  r1.w = r1.w ? r5.z : 0;
  r3.xyzw = r1.wwww ? float4(0,0,0,1) : r7.xyzw;
  r1.w = 1 + -r3.w;
  r3.xyz = r6.xyz * r1.www + r3.xyz;
  r1.w = cmp(0 < cb2[182].y);
  if (r1.w != 0) {
    r1.w = cmp(0 != cb2[184].x);
    r5.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb2[68].xyz;
    r6.xy = r0.xy / r0.ww;
    r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.xyz = r1.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r5.xyz;
    r2.x = dot(r1.xyz, r1.xyz);
    r4.w = sqrt(r2.x);
    r4.w = -cb2[181].x + r4.w;
    r4.w = max(0, r4.w);
    r4.w = cb2[182].x * r4.w;
    r4.w = cb2[181].z * r4.w;
    r5.z = sqrt(r4.w);
    r4.w = cb2[181].y * r5.z;
    r5.w = cmp(r4.w < 0.707106769);
    r4.w = dot(r4.ww, r4.ww);
    r4.w = min(1, r4.w);
    r4.w = r5.w ? r4.w : 1;
    r2.x = rsqrt(r2.x);
    r1.xyz = r2.xxx * r1.xyz;
    r2.x = -r1.z * r1.z + 1;
    r2.x = sqrt(r2.x);
    r7.y = r1.z * 0.5 + 0.5;
    r1.xy = r1.xy / r2.xx;
    r1.z = 1 + -abs(r1.x);
    r1.z = sqrt(r1.z);
    r2.x = abs(r1.x) * -0.0187292993 + 0.0742610022;
    r2.x = r2.x * abs(r1.x) + -0.212114394;
    r2.x = r2.x * abs(r1.x) + 1.57072878;
    r5.w = r2.x * r1.z;
    r5.w = r5.w * -2 + 3.14159274;
    r1.x = cmp(r1.x < -r1.x);
    r1.x = r1.x ? r5.w : 0;
    r1.x = r2.x * r1.z + r1.x;
    r1.y = cmp(r1.y < 0);
    r1.z = 6.28318548 + -r1.x;
    r1.x = r1.y ? r1.z : r1.x;
    r7.x = 0.159154937 * r1.x;
    r1.xy = cb2[180].zw * float2(0.5,0.5) + r7.xy;
    r6.zw = float2(1,1) + cb2[180].xy;
    r6.zw = cb2[180].xy / r6.zw;
    r1.xy = r6.zw * r1.xy;
    r5.xy = r1.ww ? r1.xy : r6.xy;
    r1.xyzw = t1.SampleLevel(s1_s, r5.xyz, 0).xyzw;
    r1.xyz = r1.xyz * r4.www;
    r1.w = 1 + -r1.w;
    r1.w = -r4.w * r1.w + 1;
    r1.xyz = cb2[135].zzz * r1.xyz;
    o5.xyz = r1.xyz * r3.www + r3.xyz;
    o5.w = r3.w * r1.w;
  } else {
    o5.xyzw = r3.xyzw;
  }
  o0.zw = float2(0,0);
  o3.xyz = r2.yzw;
  o3.w = 0;
  o4.xyz = r4.xyz;
  o6.xyzw = r0.xyzw;
  return;
}