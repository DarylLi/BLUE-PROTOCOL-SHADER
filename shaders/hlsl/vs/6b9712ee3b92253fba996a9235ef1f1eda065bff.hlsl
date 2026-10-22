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
  float2 v4 : ATTRIBUTE4,
  uint v5 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : PARTICLE_LIGHTING_OFFSET0,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v5.x, vertex_id
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
  r1.yzw = r1.xxx * r5.xyz + r1.yzw;
  r2.yzw = r1.xxx * r4.zxy;
  r2.xyz = r2.xxx * r5.zxy + -r2.yzw;
  if (cb0[1].x != 0) {
    r3.xy = cmp(float2(0,0) < v2.xy);
    r3.zw = cmp(v2.xy < float2(0,0));
    r3.xy = (int2)-r3.xy + (int2)r3.zw;
    r3.xy = (int2)r3.xy;
    r0.w = (uint)v5.x;
    r1.x = asuint(cb0[1].x);
    r0.w = r0.w / r1.x;
    r2.w = cmp(r0.w >= -r0.w);
    r0.w = frac(r0.w);
    r0.w = r2.w ? r0.w : -r0.w;
    r0.w = r0.w * r1.x;
    r0.w = (uint)r0.w;
    r1.x = cb4[5].x * cb4[5].y;
    r2.w = v2.w / r1.x;
    r3.z = cmp(r2.w >= -r2.w);
    r2.w = frac(abs(r2.w));
    r2.w = r3.z ? r2.w : -r2.w;
    r1.x = r2.w * r1.x;
    r1.x = (uint)r1.x;
    r2.w = r3.x * r3.y;
    r2.w = cmp(r2.w < 0);
    r3.z = asint(cb0[1].x) + -1;
    r3.z = (int)-r0.w + (int)r3.z;
    r0.w = r2.w ? r3.z : r0.w;
    r0.w = mad((int)r1.x, asint(cb0[1].x), (int)r0.w);
    r3.zw = t2.Load(r0.w).xy;
    r3.xy = cmp(r3.xy < float2(0,0));
    r4.xy = float2(1,1) + -r3.zw;
    r3.xy = r3.xy ? r4.xy : r3.zw;
  } else {
    r3.xy = v4.xy;
  }
  r4.xyz = cb2[70].xyz + r0.xyz;
  r3.xy = cb4[9].xy + r3.xy;
  r3.xy = abs(v2.xy) * r3.xy;
  r3.xzw = r3.xxx * r1.yzw + r4.xyz;
  r3.xyz = r3.yyy * r2.yzx + r3.xzw;
  o0.w = frac(v2.w);
  r4.xyz = r2.zxy * r1.wyz;
  r4.xyz = r1.zwy * r2.xyz + -r4.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
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
  r0.xyz = r5.xxx ? r4.xyz : r0.xyz;
  r0.w = 10 + v1.w;
  r0.w = r0.w * r0.w;
  r4.xyz = float3(1361.4563,2333.57788,3623.98291) * r0.www;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 0.5 * cb2[150].w;
  o3.xyz = r0.www * r4.xyz;
  r4.xyzw = cb2[1].xyzw * r3.yyyy;
  r4.xyzw = r3.xxxx * cb2[0].xyzw + r4.xyzw;
  r4.xyzw = r3.zzzz * cb2[2].xyzw + r4.xyzw;
  r4.xyzw = cb2[3].xyzw + r4.xyzw;
  r5.xyz = r2.xyz * r0.yzx;
  r2.xyz = r2.zxy * r0.zxy + -r5.xyz;
  r0.w = dot(r2.xyz, r1.yzw);
  r1.x = cmp(0 < r0.w);
  r0.w = cmp(r0.w < 0);
  r0.w = (int)-r1.x + (int)r0.w;
  o1.w = (int)r0.w;
  r2.xyz = -cb2[68].xyz + r3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r1.x = dot(r2.xyz, cb2[60].xyz);
  r0.w = r0.w / r1.x;
  r0.w = cb2[210].z * r0.w;
  r0.w = max(0, r0.w);
  r1.x = min(cb2[67].z, cb1[143].z);
  r3.w = cb2[67].z + -r1.x;
  r2.w = r3.w + r2.z;
  r2.z = dot(r2.xyw, r2.xyw);
  r3.w = rsqrt(r2.z);
  r2.z = r3.w * r2.z;
  r0.w = max(cb1[143].w, r0.w);
  r5.x = cmp(0 < r0.w);
  r5.y = r0.w * r3.w;
  r1.x = r5.y * r2.w + r1.x;
  r5.y = -r5.y * r2.w + r2.w;
  r0.w = -r0.w * r3.w + 1;
  r0.w = r0.w * r2.z;
  r5.z = -cb1[146].y + r1.x;
  r5.z = cb1[143].y * r5.z;
  r5.z = max(-127, r5.z);
  r5.z = exp2(-r5.z);
  r5.z = cb1[146].x * r5.z;
  r1.x = -cb1[144].w + r1.x;
  r1.x = cb1[144].y * r1.x;
  r1.x = max(-127, r1.x);
  r1.x = exp2(-r1.x);
  r1.x = cb1[144].z * r1.x;
  r5.z = r5.x ? r5.z : cb1[143].x;
  r1.x = r5.x ? r1.x : cb1[144].x;
  r0.w = r5.x ? r0.w : r2.z;
  r5.x = r5.x ? r5.y : r2.w;
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
  r1.x = r5.x * r1.x;
  r1.x = r5.z * r5.y + r1.x;
  r5.x = r1.x * r0.w;
  r5.yz = cmp(float2(0,0) < cb1[146].zw);
  if (r5.y != 0) {
    r5.y = saturate(r2.z * cb1[150].x + cb1[150].y);
    r6.xy = float2(1,-1) * cb1[149].yx;
    r6.x = dot(r2.xy, r6.xy);
    r6.y = dot(r2.xy, cb1[149].xy);
    r6.z = r2.w;
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
    r2.xyw = r3.www * r2.xyw;
    r2.x = saturate(dot(r2.xyw, cb1[147].xyz));
    r2.x = log2(r2.x);
    r2.x = cb1[148].w * r2.x;
    r2.x = exp2(r2.x);
    r2.xyw = cb1[148].xyz * r2.xxx;
    r0.w = -cb1[147].w + r0.w;
    r0.w = max(0, r0.w);
    r0.w = r1.x * r0.w;
    r0.w = exp2(-r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r7.xyz = r2.xyw * r0.www;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r0.w = exp2(-r5.x);
  r0.w = min(1, r0.w);
  r7.w = max(cb1[145].w, r0.w);
  r0.w = cmp(cb1[146].w < r2.z);
  r0.w = r0.w ? r5.z : 0;
  r2.xyzw = r0.wwww ? float4(0,0,0,1) : r7.xyzw;
  r0.w = 1 + -r2.w;
  r2.xyz = r6.xyz * r0.www + r2.xyz;
  r0.w = cmp(0 < cb2[182].y);
  if (r0.w != 0) {
    r0.w = cmp(0 != cb2[184].x);
    r5.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb2[68].xyz;
    r6.xy = r4.xy / r4.ww;
    r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r3.xyz = r3.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r5.xyz;
    r1.x = dot(r3.xyz, r3.xyz);
    r3.w = sqrt(r1.x);
    r3.w = -cb2[181].x + r3.w;
    r3.w = max(0, r3.w);
    r3.w = cb2[182].x * r3.w;
    r3.w = cb2[181].z * r3.w;
    r5.z = sqrt(r3.w);
    r3.w = cb2[181].y * r5.z;
    r5.w = cmp(r3.w < 0.707106769);
    r3.w = dot(r3.ww, r3.ww);
    r3.w = min(1, r3.w);
    r3.w = r5.w ? r3.w : 1;
    r1.x = rsqrt(r1.x);
    r3.xyz = r3.xyz * r1.xxx;
    r1.x = -r3.z * r3.z + 1;
    r1.x = sqrt(r1.x);
    r7.y = r3.z * 0.5 + 0.5;
    r3.xy = r3.xy / r1.xx;
    r1.x = 1 + -abs(r3.x);
    r1.x = sqrt(r1.x);
    r3.z = abs(r3.x) * -0.0187292993 + 0.0742610022;
    r3.z = r3.z * abs(r3.x) + -0.212114394;
    r3.z = r3.z * abs(r3.x) + 1.57072878;
    r5.w = r3.z * r1.x;
    r5.w = r5.w * -2 + 3.14159274;
    r3.x = cmp(r3.x < -r3.x);
    r3.x = r3.x ? r5.w : 0;
    r1.x = r3.z * r1.x + r3.x;
    r3.x = cmp(r3.y < 0);
    r3.y = 6.28318548 + -r1.x;
    r1.x = r3.x ? r3.y : r1.x;
    r7.x = 0.159154937 * r1.x;
    r3.xy = cb2[180].zw * float2(0.5,0.5) + r7.xy;
    r6.zw = float2(1,1) + cb2[180].xy;
    r6.zw = cb2[180].xy / r6.zw;
    r3.xy = r6.zw * r3.xy;
    r5.xy = r0.ww ? r3.xy : r6.xy;
    r5.xyzw = t1.SampleLevel(s1_s, r5.xyz, 0).xyzw;
    r3.xyz = r5.xyz * r3.www;
    r0.w = 1 + -r5.w;
    r0.w = -r3.w * r0.w + 1;
    r3.xyz = cb2[135].zzz * r3.xyz;
    o4.xyz = r3.xyz * r2.www + r2.xyz;
    o4.w = r2.w * r0.w;
  } else {
    o4.xyzw = r2.xyzw;
  }
  o0.xyz = r1.yzw;
  o1.xyz = r0.xyz;
  o2.xyzw = v3.xyzw;
  o5.xyzw = r4.xyzw;
  return;
}