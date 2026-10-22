// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[21];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[136];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float2 v4 : ATTRIBUTE4,
  float4 v5 : ATTRIBUTE8,
  float4 v6 : ATTRIBUTE9,
  float4 v7 : ATTRIBUTE10,
  int4 v8 : ATTRIBUTE11,
  float2 v9 : ATTRIBUTE12,
  float4 v10 : ATTRIBUTE14,
  float4 v11 : ATTRIBUTE15,
  uint v12 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v12.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v0.xyzw, v5.xyzw);
  r0.y = dot(v0.xyzw, v6.xyzw);
  r0.z = dot(v0.xyzw, v7.xyzw);
  r1.xyz = cb0[70].xyz + r0.xyz;
  r2.xyz = -cb3[9].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = r0.w / cb3[20].x;
  r0.w = r0.w * 2 + cb3[20].w;
  r0.w = saturate(-2 + r0.w);
  r3.xy = float2(3.14159274,6.28318548) * r0.ww;
  r3.xz = sin(r3.xy);
  r4.z = 50 * r3.x;
  r5.xyz = cb3[11].xyz + -r0.xyz;
  r1.w = dot(cb3[13].xyz, r2.xyz);
  r2.xyz = cb3[13].xyz * r1.www + cb3[9].xyz;
  r6.xyz = -r2.xyz + r0.xyz;
  r7.xyz = cb3[13].zxy * r6.yzx;
  r7.xyz = cb3[13].yzx * r6.zxy + -r7.xyz;
  r1.w = cos(r3.y);
  r3.xyz = r7.xyz * r3.zzz;
  r3.xyz = r6.xyz * r1.www + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r0.xyz = r2.xyz + -r0.xyz;
  r0.xyz = r0.xyz + -r5.xyz;
  r0.xyz = r0.www * r0.xyz + r5.xyz;
  r4.xy = float2(0,0);
  r0.xyz = r4.xyz + r0.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r2.xyz = v2.yzx * v1.xyz;
  r2.xyz = v2.xyz * v1.yzx + -r2.xyz;
  r2.xyz = v2.www * r2.xyz;
  r3.xyz = v2.yzx * r2.xyz;
  r2.xyz = r2.zxy * v2.zxy + -r3.xyz;
  r2.xyz = v2.www * r2.xyz;
  r3.x = dot(r2.xyz, v5.xyz);
  r3.y = dot(r2.xyz, v6.xyz);
  r3.z = dot(r2.xyz, v7.xyz);
  r2.x = dot(v2.xyz, v5.xyz);
  r2.y = dot(v2.xyz, v6.xyz);
  r2.z = dot(v2.xyz, v7.xyz);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  o3.xyz = r3.xyz * r0.www;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r2.xyz * r0.www;
  o4.w = cb1[4].w * v2.w;
  if (cb2[1].z != 0) {
    r0.w = (int)v12.x * 3;
    r2.xyzw = t0.Load(r0.w).xyzw;
    r3.xy = mad((int2)v12.xx, int2(3,3), int2(1,2));
    r4.xyzw = t0.Load(r3.x).xyzw;
    r3.xyzw = t0.Load(r3.y).xyzw;
    r2.x = dot(v0.xyzw, r2.xyzw);
    r2.y = dot(v0.xyzw, r4.xyzw);
    r2.z = dot(v0.xyzw, r3.xyzw);
    r1.xyz = cb0[113].xyz + r2.xyz;
  }
  r2.xyz = -cb0[113].xyz + r1.xyz;
  r3.xyz = -cb3[9].xyz + r2.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r0.w = r0.w / cb3[20].x;
  r0.w = r0.w * 2 + cb3[20].w;
  r0.w = saturate(-2 + r0.w);
  r4.xy = float2(3.14159274,6.28318548) * r0.ww;
  r4.xz = sin(r4.xy);
  r5.z = 50 * r4.x;
  r6.xyz = cb3[11].xyz + -r2.xyz;
  r1.w = dot(cb3[13].xyz, r3.xyz);
  r3.xyz = cb3[13].xyz * r1.www + cb3[9].xyz;
  r7.xyz = -r3.xyz + r2.xyz;
  r8.xyz = cb3[13].zxy * r7.yzx;
  r8.xyz = cb3[13].yzx * r7.zxy + -r8.xyz;
  r1.w = cos(r4.y);
  r4.xyz = r8.xyz * r4.zzz;
  r4.xyz = r7.xyz * r1.www + r4.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r2.xyz = r3.xyz + -r2.xyz;
  r2.xyz = r2.xyz + -r6.xyz;
  r2.xyz = r0.www * r2.xyz + r6.xyz;
  r5.xy = float2(0,0);
  r2.xyz = r5.xyz + r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = cb0[92].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[91].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r1.xyzw;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb0[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.w = 0;
  o5.xy = v4.xy;
  o5.zw = float2(0,0);
  return;
}