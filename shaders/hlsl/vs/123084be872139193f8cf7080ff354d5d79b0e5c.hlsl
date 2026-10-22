// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
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
  float4 v0 : ATTRIBUTE0,
  float4 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float4 v4 : ATTRIBUTE5,
  float2 v5 : ATTRIBUTE4,
  uint v6 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD1,
  out float4 o6 : TEXCOORD2,
  out float4 o7 : TEXCOORD3,
  out float3 o8 : PARTICLE_LIGHTING_OFFSET0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v6.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[1].xyz * v0.yyy;
  r0.xyz = v0.xxx * cb2[0].xyz + r0.xyz;
  r0.xyz = v0.zzz * cb2[2].xyz + r0.xyz;
  r0.xyz = cb2[3].xyz + r0.xyz;
  r1.xyz = cb1[64].xyz + -cb1[62].xyz;
  r1.xyz = cb3[6].www * r1.xyz + cb1[62].xyz;
  r2.xyz = cb1[63].xyz + -cb1[61].xyz;
  r2.xyz = cb3[6].www * r2.xyz + cb1[61].xyz;
  r3.xyz = cb3[0].xyz + -r1.xyz;
  r1.xyz = cb3[0].www * r3.xyz + r1.xyz;
  r3.xyz = cb3[1].xyz + r2.xyz;
  r2.xyz = cb3[1].www * r3.xyz + -r2.xyz;
  r3.xyz = cb1[67].zxy + -r0.zxy;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = max(9.99999994e-009, r0.w);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r1.w = cmp(0 < cb3[6].x);
  if (r1.w != 0) {
    r0.w = saturate(r0.w * cb3[6].y + -cb3[6].z);
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
    r6.xyz = cb2[1].xyz * v1.yyy;
    r6.xyz = v1.xxx * cb2[0].xyz + r6.xyz;
    r6.xyz = v1.zzz * cb2[2].xyz + r6.xyz;
    r6.xyz = cb2[3].xyz + r6.xyz;
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
    r8.xyz = cb3[0].zxy * r3.zxy;
    r8.xyz = cb3[0].yzx * r3.xyz + -r8.xyz;
    r0.w = dot(r8.xyz, r8.xyz);
    r0.w = max(9.99999994e-009, r0.w);
    r0.w = rsqrt(r0.w);
    r8.xyz = r8.xyz * r0.www;
    r9.xyz = cmp(float3(0,0,0) < cb3[2].yzw);
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
    r1.xyz = r9.yyy ? cb3[0].xyz : r1.xyz;
    r2.xyz = r9.yyy ? -r8.xyz : r2.xyz;
    r4.xyz = r9.xxx ? r7.xyz : r1.xyz;
    r5.xyz = r9.xxx ? -r6.xyz : r2.xyz;
  }
  r0.w = v2.z * cb3[8].x + cb3[8].y;
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
    r1.w = cb3[5].x * cb3[5].y;
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
    r2.zw = t0.Load(r0.w).xy;
    r4.xy = cmp(r2.xy < float2(0,0));
    r4.zw = float2(1,1) + -r2.zw;
    r4.xy = r4.xy ? r4.zw : r2.zw;
  } else {
    r2.xy = cmp(r2.xy < float2(0,0));
    r4.zw = float2(1,1) + -v5.xy;
    r2.zw = r2.xy ? r4.zw : v5.xy;
    r4.xy = v5.xy;
  }
  r5.xyz = cb1[70].xyz + r0.xyz;
  r2.xy = cb3[9].xy + r4.xy;
  r2.xy = abs(v2.xy) * r2.xy;
  r4.xyz = r2.xxx * r3.xyz + r5.xyz;
  r4.xyz = r2.yyy * r1.yzx + r4.xyz;
  r3.w = frac(v2.w);
  r0.w = v2.w + -r3.w;
  r1.w = r0.w / cb3[5].x;
  r2.x = cmp(r1.w >= -r1.w);
  r1.w = frac(abs(r1.w));
  r1.w = r2.x ? r1.w : -r1.w;
  r2.x = cb3[5].x * r1.w;
  r0.w = cb3[5].z * r0.w;
  r2.y = floor(r0.w);
  r2.xy = r2.xy + r2.zw;
  o7.xy = cb3[5].zw * r2.xy;
  r2.xyz = r3.zxy * r1.zxy;
  r2.xyz = r3.yzx * r1.xyz + -r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r5.xy = cmp(cb3[8].zz < float2(0.5,1.5));
  r6.xyz = -cb3[3].xyz + r0.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r7.xyz = r6.xyz * r0.www;
  r0.w = dot(cb3[4].xyz, r6.xyz);
  r6.xyz = r0.www * cb3[4].xyz + cb3[3].xyz;
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
  r0.w = 0.5 * cb1[150].w;
  o8.xyz = r0.www * r2.xyz;
  r2.xyz = r1.xyz * r0.yzx;
  r1.xyz = r1.zxy * r0.zxy + -r2.xyz;
  r0.w = dot(r1.xyz, r3.xyz);
  r1.x = cmp(0 < r0.w);
  r0.w = cmp(r0.w < 0);
  r0.w = (int)-r1.x + (int)r0.w;
  o4.w = (int)r0.w;
  r1.xyzw = cb1[92].xyzw * r4.yyyy;
  r1.xyzw = r4.xxxx * cb1[91].xyzw + r1.xyzw;
  r1.xyzw = r4.zzzz * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r1.xyzw;
  r1.xyzw = cb1[1].xyzw * r4.yyyy;
  r1.xyzw = r4.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r4.zzzz * cb1[2].xyzw + r1.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.w = cmp(1 < asint(cb1[135].x));
  r2.x = 0.00100000005 * r1.w;
  r0.w = r0.w ? r2.x : 0;
  o0.z = r1.z + r0.w;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  o3.xyzw = r3.xyzw;
  o4.xyz = r0.xyz;
  o5.xyzw = v4.xyzw;
  o6.xyzw = v3.xyzw;
  o7.zw = float2(0,0);
  return;
}