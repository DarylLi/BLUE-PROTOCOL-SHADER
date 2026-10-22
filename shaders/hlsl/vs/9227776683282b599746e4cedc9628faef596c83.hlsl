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
  float4 cb1[136];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v5.x, vertex_id
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
  r1.yzw = r1.xxx * r5.xyz + r1.yzw;
  r2.yzw = r1.xxx * r4.xyz;
  r2.xyz = r2.xxx * r5.xyz + -r2.yzw;
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
    r1.x = cb3[5].x * cb3[5].y;
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
    r3.zw = t0.Load(r0.w).xy;
    r3.xy = cmp(r3.xy < float2(0,0));
    r4.xy = float2(1,1) + -r3.zw;
    r3.xy = r3.xy ? r4.xy : r3.zw;
  } else {
    r3.xy = v4.xy;
  }
  r0.xyz = cb1[70].xyz + r0.xyz;
  r3.xy = cb3[9].xy + r3.xy;
  r3.xy = abs(v2.xy) * r3.xy;
  r0.xyz = r3.xxx * r1.yzw + r0.xyz;
  r0.xyz = r3.yyy * r2.xyz + r0.xyz;
  r1.xyzw = cb1[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[91].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r1.xyzw;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb1[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  return;
}