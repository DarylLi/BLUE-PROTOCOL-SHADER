// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
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
  float4 v0 : ATTRIBUTE0,
  float4 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float4 v4 : ATTRIBUTE5,
  float2 v5 : ATTRIBUTE4,
  uint v6 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : PARTICLE_LIGHTING_OFFSET0,
  out float4 o6 : TEXCOORD7,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v6.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb3[1].xyz * v0.yyy;
  r0.xyz = v0.xxx * cb3[0].xyz + r0.xyz;
  r0.xyz = v0.zzz * cb3[2].xyz + r0.xyz;
  r0.xyz = cb3[3].xyz + r0.xyz;
  r1.xyz = cb2[64].xyz + -cb2[62].xyz;
  r1.xyz = cb4[6].www * r1.xyz + cb2[62].xyz;
  r2.xyz = cb2[63].xyz + -cb2[61].xyz;
  r2.xyz = cb4[6].www * r2.xyz + cb2[61].xyz;
  r3.xyz = cb4[0].xyz + -r1.xyz;
  r1.xyz = cb4[0].www * r3.xyz + r1.xyz;
  r3.xyz = cb4[1].xyz + r2.xyz;
  r2.xyz = cb4[1].www * r3.xyz + -r2.xyz;
  r3.xyz = cb2[67].zxy + -r0.zxy;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = max(9.99999994e-009, r0.w);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r1.w = cmp(0 < cb4[6].x);
  if (r1.w != 0) {
    r0.w = saturate(r0.w * cb4[6].y + -cb4[6].z);
    r4.xyz = float3(0,1,0) * r3.xyz;
    r4.xyz = r3.zxy * float3(1,0,0) + -r4.xyz;
    r1.w = dot(r4.xy, r4.xy);
    r1.w = max(9.99999994e-009, r1.w);
    r1.w = rsqrt(r1.w);
    r5.xyz = r4.xyz * r1.www;
    r6.xyz = r5.yzx * r3.xyz;
    r5.xyz = r3.zxy * r5.zxy + -r6.xyz;
    r4.xyz = r4.xyz * r1.www + -r1.xyz;
    r4.xyz = r0.www * r4.xyz + r1.xyz;
    r1.w = dot(r4.xyz, r4.xyz);
    r1.w = rsqrt(r1.w);
    r4.xyz = r4.xyz * r1.www;
    r5.xyz = r5.xyz + -r2.xyz;
    r5.xyz = r0.www * r5.xyz + r2.xyz;
    r0.w = dot(r5.xyz, r5.xyz);
    r0.w = rsqrt(r0.w);
    r5.xyz = r5.xyz * r0.www;
  } else {
    r6.xyz = cb3[1].xyz * v1.yyy;
    r6.xyz = v1.xxx * cb3[0].xyz + r6.xyz;
    r6.xyz = v1.zzz * cb3[2].xyz + r6.xyz;
    r6.xyz = cb3[3].xyz + r6.xyz;
    r6.xyz = -r6.xyz + r0.xyz;
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = max(9.99999994e-009, r0.w);
    r0.w = rsqrt(r0.w);
    r6.xyz = r6.xyz * r0.www;
    r7.xyz = r6.yzx * r3.xyz;
    r7.xyz = r3.zxy * r6.zxy + -r7.xyz;
    r0.w = dot(r7.xyz, r7.xyz);
    r0.w = max(9.99999994e-009, r0.w);
    r0.w = rsqrt(r0.w);
    r7.xyz = r7.xyz * r0.www;
    r8.xyz = cb4[0].zxy * r3.zxy;
    r8.xyz = cb4[0].yzx * r3.xyz + -r8.xyz;
    r0.w = dot(r8.xyz, r8.xyz);
    r0.w = max(9.99999994e-009, r0.w);
    r0.w = rsqrt(r0.w);
    r8.xyz = r8.xyz * r0.www;
    r9.xyz = cmp(float3(0,0,0) < cb4[2].yzw);
    r10.xyz = float3(0,1,0) * r3.xyz;
    r10.xyz = r3.zxy * float3(1,0,0) + -r10.xyz;
    r0.w = dot(r10.xy, r10.xy);
    r0.w = max(9.99999994e-009, r0.w);
    r0.w = rsqrt(r0.w);
    r10.xyz = r10.xyz * r0.www;
    r11.xyz = r10.yzx * r3.xyz;
    r3.xyz = r3.zxy * r10.zxy + -r11.xyz;
    r1.xyz = r9.zzz ? r10.xyz : r1.xyz;
    r2.xyz = r9.zzz ? r3.xyz : r2.xyz;
    r1.xyz = r9.yyy ? cb4[0].xyz : r1.xyz;
    r2.xyz = r9.yyy ? -r8.xyz : r2.xyz;
    r4.xyz = r9.xxx ? r7.xyz : r1.xyz;
    r5.xyz = r9.xxx ? -r6.xyz : r2.xyz;
  }
  r0.w = v2.z * cb4[8].x + cb4[8].y;
  sincos(r0.w, r1.x, r2.x);
  r1.yzw = r2.xxx * r4.xyz;
  r3.xyz = r1.xxx * r5.xyz + r1.yzw;
  r1.xyz = r1.xxx * r4.zxy;
  r1.xyz = r2.xxx * r5.zxy + -r1.xyz;
  r2.xy = cmp(float2(0,0) < v2.xy);
  r2.zw = cmp(v2.xy < float2(0,0));
  r2.xy = (int2)-r2.xy + (int2)r2.zw;
  r2.xy = (int2)r2.xy;
  if (cb0[1].x != 0) {
    r0.w = (uint)v6.x;
    r1.w = asuint(cb0[1].x);
    r0.w = r0.w / r1.w;
    r2.z = cmp(r0.w >= -r0.w);
    r0.w = frac(r0.w);
    r0.w = r2.z ? r0.w : -r0.w;
    r0.w = r0.w * r1.w;
    r0.w = (uint)r0.w;
    r1.w = cb4[5].x * cb4[5].y;
    r2.z = v2.w / r1.w;
    r2.w = cmp(r2.z >= -r2.z);
    r2.z = frac(abs(r2.z));
    r2.z = r2.w ? r2.z : -r2.z;
    r1.w = r2.z * r1.w;
    r1.w = (uint)r1.w;
    r2.z = r2.x * r2.y;
    r2.z = cmp(r2.z < 0);
    r2.w = asint(cb0[1].x) + -1;
    r2.w = (int)-r0.w + (int)r2.w;
    r0.w = r2.z ? r2.w : r0.w;
    r0.w = mad((int)r1.w, asint(cb0[1].x), (int)r0.w);
    r2.zw = t2.Load(r0.w).xy;
    r4.xy = cmp(r2.xy < float2(0,0));
    r4.zw = float2(1,1) + -r2.zw;
    r4.xy = r4.xy ? r4.zw : r2.zw;
  } else {
    r2.xy = cmp(r2.xy < float2(0,0));
    r4.zw = float2(1,1) + -v5.xy;
    r2.zw = r2.xy ? r4.zw : v5.xy;
    r4.xy = v5.xy;
  }
  r5.xyz = cb2[70].xyz + r0.xyz;
  r2.xy = cb4[9].xy + r4.xy;
  r2.xy = abs(v2.xy) * r2.xy;
  r4.xyz = r2.xxx * r3.xyz + r5.xyz;
  r4.xyz = r2.yyy * r1.yzx + r4.xyz;
  r3.w = frac(v2.w);
  r0.w = v2.w + -r3.w;
  r1.w = r0.w / cb4[5].x;
  r2.x = cmp(r1.w >= -r1.w);
  r1.w = frac(abs(r1.w));
  r1.w = r2.x ? r1.w : -r1.w;
  r2.x = cb4[5].x * r1.w;
  r0.w = cb4[5].z * r0.w;
  r2.y = floor(r0.w);
  r2.xy = r2.xy + r2.zw;
  o4.xy = cb4[5].zw * r2.xy;
  r2.xyz = r3.zxy * r1.zxy;
  r2.xyz = r3.yzx * r1.xyz + -r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r5.xy = cmp(cb4[8].zz < float2(0.5,1.5));
  r6.xyz = -cb4[3].xyz + r0.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r7.xyz = r6.xyz * r0.www;
  r0.w = dot(cb4[4].xyz, r6.xyz);
  r6.xyz = r0.www * cb4[4].xyz + cb4[3].xyz;
  r0.xyz = -r6.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r5.yyy ? r7.xyz : r0.xyz;
  r0.xyz = r5.xxx ? r2.xyz : r0.xyz;
  r0.w = 10 + v1.w;
  r0.w = r0.w * r0.w;
  r2.xyz = float3(1361.4563,2333.57788,3623.98291) * r0.www;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 0.5 * cb2[150].w;
  o5.xyz = r0.www * r2.xyz;
  r2.xyzw = cb2[1].xyzw * r4.yyyy;
  r2.xyzw = r4.xxxx * cb2[0].xyzw + r2.xyzw;
  r2.xyzw = r4.zzzz * cb2[2].xyzw + r2.xyzw;
  r2.xyzw = cb2[3].xyzw + r2.xyzw;
  r5.xyz = r1.xyz * r0.yzx;
  r1.xyz = r1.zxy * r0.zxy + -r5.xyz;
  r0.w = dot(r1.xyz, r3.xyz);
  r1.x = cmp(0 < r0.w);
  r0.w = cmp(r0.w < 0);
  r0.w = (int)-r1.x + (int)r0.w;
  o1.w = (int)r0.w;
  r1.xyz = -cb2[68].xyz + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r4.w = dot(r1.xyz, cb2[60].xyz);
  r0.w = r0.w / r4.w;
  r0.w = cb2[210].z * r0.w;
  r0.w = max(0, r0.w);
  r4.w = min(cb2[67].z, cb1[143].z);
  r5.x = cb2[67].z + -r4.w;
  r1.w = r5.x + r1.z;
  r1.z = dot(r1.xyw, r1.xyw);
  r5.x = rsqrt(r1.z);
  r1.z = r5.x * r1.z;
  r0.w = max(cb1[143].w, r0.w);
  r5.y = cmp(0 < r0.w);
  r5.z = r0.w * r5.x;
  r4.w = r5.z * r1.w + r4.w;
  r5.z = -r5.z * r1.w + r1.w;
  r0.w = -r0.w * r5.x + 1;
  r0.w = r0.w * r1.z;
  r5.w = -cb1[146].y + r4.w;
  r5.w = cb1[143].y * r5.w;
  r5.w = max(-127, r5.w);
  r5.w = exp2(-r5.w);
  r5.w = cb1[146].x * r5.w;
  r4.w = -cb1[144].w + r4.w;
  r4.w = cb1[144].y * r4.w;
  r4.w = max(-127, r4.w);
  r4.w = exp2(-r4.w);
  r4.w = cb1[144].z * r4.w;
  r5.w = r5.y ? r5.w : cb1[143].x;
  r4.w = r5.y ? r4.w : cb1[144].x;
  r0.w = r5.y ? r0.w : r1.z;
  r5.y = r5.y ? r5.z : r1.w;
  r5.z = cb1[143].y * r5.y;
  r5.z = max(-127, r5.z);
  r6.x = exp2(-r5.z);
  r6.x = 1 + -r6.x;
  r6.x = r6.x / r5.z;
  r6.y = -r5.z * 0.240226507 + 0.693147182;
  r5.z = cmp(0.00999999978 < abs(r5.z));
  r5.z = r5.z ? r6.x : r6.y;
  r5.y = cb1[144].y * r5.y;
  r5.y = max(-127, r5.y);
  r6.x = exp2(-r5.y);
  r6.x = 1 + -r6.x;
  r6.x = r6.x / r5.y;
  r6.y = -r5.y * 0.240226507 + 0.693147182;
  r5.y = cmp(0.00999999978 < abs(r5.y));
  r5.y = r5.y ? r6.x : r6.y;
  r4.w = r5.y * r4.w;
  r4.w = r5.w * r5.z + r4.w;
  r5.y = r4.w * r0.w;
  r5.zw = cmp(float2(0,0) < cb1[146].zw);
  if (r5.z != 0) {
    r5.z = saturate(r1.z * cb1[150].x + cb1[150].y);
    r6.xy = float2(1,-1) * cb1[149].yx;
    r6.x = dot(r1.xy, r6.xy);
    r6.y = dot(r1.xy, cb1[149].xy);
    r6.z = r1.w;
    r7.xyz = t0.SampleLevel(s0_s, r6.xyz, 0).xyz;
    r6.xyz = t0.SampleLevel(s0_s, r6.xyz, cb1[150].z).xyz;
    r7.xyz = r7.xyz + -r6.xyz;
    r6.xyz = r5.zzz * r7.xyz + r6.xyz;
    r6.xyz = cb1[145].xyz * r6.xyz;
  } else {
    r6.xyz = cb1[145].xyz;
  }
  r5.z = cmp(cb1[147].w >= 0);
  r6.w = cmp(cb1[146].z == 0.000000);
  r5.z = r5.z ? r6.w : 0;
  if (r5.z != 0) {
    r1.xyw = r5.xxx * r1.xyw;
    r1.x = saturate(dot(r1.xyw, cb1[147].xyz));
    r1.x = log2(r1.x);
    r1.x = cb1[148].w * r1.x;
    r1.x = exp2(r1.x);
    r1.xyw = cb1[148].xyz * r1.xxx;
    r0.w = -cb1[147].w + r0.w;
    r0.w = max(0, r0.w);
    r0.w = r4.w * r0.w;
    r0.w = exp2(-r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r7.xyz = r1.xyw * r0.www;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r0.w = exp2(-r5.y);
  r0.w = min(1, r0.w);
  r7.w = max(cb1[145].w, r0.w);
  r0.w = cmp(cb1[146].w < r1.z);
  r0.w = r0.w ? r5.w : 0;
  r1.xyzw = r0.wwww ? float4(0,0,0,1) : r7.xyzw;
  r0.w = 1 + -r1.w;
  r1.xyz = r6.xyz * r0.www + r1.xyz;
  r0.w = cmp(0 < cb2[182].y);
  if (r0.w != 0) {
    r0.w = cmp(0 != cb2[184].x);
    r5.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb2[68].xyz;
    r6.xy = r2.xy / r2.ww;
    r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r4.xyz = r4.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r5.xyz;
    r4.w = dot(r4.xyz, r4.xyz);
    r5.x = sqrt(r4.w);
    r5.x = -cb2[181].x + r5.x;
    r5.x = max(0, r5.x);
    r5.x = cb2[182].x * r5.x;
    r5.x = cb2[181].z * r5.x;
    r5.z = sqrt(r5.x);
    r5.w = cb2[181].y * r5.z;
    r6.z = cmp(r5.w < 0.707106769);
    r5.w = dot(r5.ww, r5.ww);
    r5.w = min(1, r5.w);
    r5.w = r6.z ? r5.w : 1;
    r4.w = rsqrt(r4.w);
    r4.xyz = r4.xyz * r4.www;
    r4.w = -r4.z * r4.z + 1;
    r4.w = sqrt(r4.w);
    r7.y = r4.z * 0.5 + 0.5;
    r4.xy = r4.xy / r4.ww;
    r4.z = 1 + -abs(r4.x);
    r4.z = sqrt(r4.z);
    r4.w = abs(r4.x) * -0.0187292993 + 0.0742610022;
    r4.w = r4.w * abs(r4.x) + -0.212114394;
    r4.w = r4.w * abs(r4.x) + 1.57072878;
    r6.z = r4.w * r4.z;
    r6.z = r6.z * -2 + 3.14159274;
    r4.x = cmp(r4.x < -r4.x);
    r4.x = r4.x ? r6.z : 0;
    r4.x = r4.w * r4.z + r4.x;
    r4.y = cmp(r4.y < 0);
    r4.z = 6.28318548 + -r4.x;
    r4.x = r4.y ? r4.z : r4.x;
    r7.x = 0.159154937 * r4.x;
    r4.xy = cb2[180].zw * float2(0.5,0.5) + r7.xy;
    r4.zw = float2(1,1) + cb2[180].xy;
    r4.zw = cb2[180].xy / r4.zw;
    r4.xy = r4.xy * r4.zw;
    r5.xy = r0.ww ? r4.xy : r6.xy;
    r4.xyzw = t1.SampleLevel(s1_s, r5.xyz, 0).xyzw;
    r4.xyz = r4.xyz * r5.www;
    r0.w = 1 + -r4.w;
    r0.w = -r5.w * r0.w + 1;
    r4.xyz = cb2[135].zzz * r4.xyz;
    o6.xyz = r4.xyz * r1.www + r1.xyz;
    o6.w = r1.w * r0.w;
  } else {
    o6.xyzw = r1.xyzw;
  }
  o0.xyzw = r3.xyzw;
  o1.xyz = r0.xyz;
  o2.xyzw = v4.xyzw;
  o3.xyzw = v3.xyzw;
  o4.zw = float2(0,0);
  o7.xyzw = r2.xyzw;
  return;
}