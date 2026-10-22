// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[9];
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
  float4 cb0[143];
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
  out float4 o5 : TEXCOORD0,
  out float4 o6 : COLOR0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v12.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v0.xyzw, v5.xyzw);
  r0.y = dot(v0.xyzw, v6.xyzw);
  r0.z = dot(v0.xyzw, v7.xyzw);
  r1.xyz = cb0[70].xyz + r0.xyz;
  r0.w = cb0[142].z * cb3[8].x + v3.w;
  r2.x = v5.w;
  r2.y = v6.w;
  r2.z = v7.w;
  r1.w = abs(r2.x) + abs(r2.y);
  r1.w = r1.w + abs(r2.z);
  r1.w = frac(r1.w);
  r0.w = r1.w * 0.5 + r0.w;
  r0.w = 6.28318548 * r0.w;
  r0.w = sin(r0.w);
  r2.w = cb3[8].z * v3.x;
  r0.w = r2.w * r0.w;
  r0.w = 6.28318548 * r0.w;
  r3.y = dot(cb3[2].xyz, v5.xyz);
  r3.z = dot(cb3[2].xyz, v6.xyz);
  r3.x = dot(cb3[2].xyz, v7.xyz);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = sqrt(r3.w);
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -r2.xyz + r0.xyz;
  r3.w = dot(r3.yzx, r4.xyz);
  r2.xyz = r3.yzx * r3.www + r2.xyz;
  r4.xyz = -r2.xyz + r0.xyz;
  r5.xyz = r4.yzx * r3.xyz;
  r3.xyz = r3.zxy * r4.zxy + -r5.xyz;
  sincos(r0.w, r5.x, r6.x);
  r3.xyz = r5.xxx * r3.xyz;
  r3.xyz = r4.xyz * r6.xxx + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r0.xyz = r2.xyz + -r0.xyz;
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
    r3.xyzw = t0.Load(r0.w).xyzw;
    r2.xy = mad((int2)v12.xx, int2(3,3), int2(1,2));
    r4.xyzw = t0.Load(r2.x).xyzw;
    r5.xyzw = t0.Load(r2.y).xyzw;
    r2.x = dot(v0.xyzw, r3.xyzw);
    r2.y = dot(v0.xyzw, r4.xyzw);
    r2.z = dot(v0.xyzw, r5.xyzw);
    r1.xyz = cb0[113].xyz + r2.xyz;
  }
  r0.w = (int)v12.x * 3;
  r3.xyzw = t0.Load(r0.w).xyzw;
  r2.xy = mad((int2)v12.xx, int2(3,3), int2(1,2));
  r4.xyzw = t0.Load(r2.x).xyzw;
  r5.xyzw = t0.Load(r2.y).xywz;
  r0.w = cb0[139].z * cb3[8].x + v3.w;
  r0.w = r1.w * 0.5 + r0.w;
  r0.w = 6.28318548 * r0.w;
  r0.w = sin(r0.w);
  r0.w = r0.w * r2.w;
  r0.w = 6.28318548 * r0.w;
  r2.y = dot(cb3[2].xyz, r3.xyz);
  r2.z = dot(cb3[2].xyz, r4.xyz);
  r2.x = dot(cb3[2].xyz, r5.xyw);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r2.xyz = r2.xyz / r1.www;
  r3.xyz = -cb0[113].xyz + r1.xyz;
  r5.x = r3.w;
  r5.y = r4.w;
  r4.xyz = -r5.xyz + r3.xyz;
  r1.w = dot(r2.yzx, r4.xyz);
  r4.xyz = r2.yzx * r1.www + r5.xyz;
  r5.xyz = -r4.xyz + r3.xyz;
  r6.xyz = r5.yzx * r2.xyz;
  r2.xyz = r2.zxy * r5.zxy + -r6.xyz;
  sincos(r0.w, r6.x, r7.x);
  r2.xyz = r6.xxx * r2.xyz;
  r2.xyz = r5.xyz * r7.xxx + r2.xyz;
  r2.xyz = r4.xyz + r2.xyz;
  r2.xyz = r2.xyz + -r3.xyz;
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
  o6.xyzw = v3.xyzw;
  return;
}