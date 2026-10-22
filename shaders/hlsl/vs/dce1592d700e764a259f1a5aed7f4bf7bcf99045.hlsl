// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float2 v5 : ATTRIBUTE5,
  float2 v6 : ATTRIBUTE6,
  float2 v7 : ATTRIBUTE7,
  float4 v8 : ATTRIBUTE8,
  float4 v9 : ATTRIBUTE9,
  float4 v10 : ATTRIBUTE10,
  int4 v11 : ATTRIBUTE11,
  float2 v12 : ATTRIBUTE12,
  float4 v13 : ATTRIBUTE14,
  float4 v14 : ATTRIBUTE15,
  uint v15 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v15.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v0.xyzw, v8.xyzw);
  r0.y = dot(v0.xyzw, v9.xyzw);
  r0.z = dot(v0.xyzw, v10.xyzw);
  r0.xyz = cb0[70].xyz + r0.xyz;
  r1.x = v6.y;
  r1.yz = v7.xy;
  r2.x = dot(r1.xyz, v8.xyz);
  r2.y = dot(r1.xyz, v9.xyz);
  r2.z = dot(r1.xyz, v10.xyz);
  r3.xyz = cb3[6].www * r2.xyz;
  r4.xy = v5.xy;
  r4.z = v6.x;
  r5.x = dot(r4.xyz, v8.xyz);
  r5.y = dot(r4.xyz, v9.xyz);
  r5.z = dot(r4.xyz, v10.xyz);
  r2.xyz = -cb3[6].www * r2.xyz + r5.xyz;
  r2.xyz = cb3[7].yyy * r2.xyz + r3.xyz;
  r2.xyz = r2.xyz + r0.xyz;
  r3.xyz = v2.yzx * v1.xyz;
  r3.xyz = v2.xyz * v1.yzx + -r3.xyz;
  r3.xyz = v2.www * r3.xyz;
  r5.xyz = v2.yzx * r3.xyz;
  r3.xyz = r3.zxy * v2.zxy + -r5.xyz;
  r3.xyz = v2.www * r3.xyz;
  r5.x = dot(r3.xyz, v8.xyz);
  r5.y = dot(r3.xyz, v9.xyz);
  r5.z = dot(r3.xyz, v10.xyz);
  r3.x = dot(v2.xyz, v8.xyz);
  r3.y = dot(v2.xyz, v9.xyz);
  r3.z = dot(v2.xyz, v10.xyz);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  o3.xyz = r5.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r3.xyz * r0.www;
  o4.w = cb1[4].w * v2.w;
  if (cb2[1].z != 0) {
    r0.w = (int)v15.x * 3;
    r3.xyzw = t0.Load(r0.w).xyzw;
    r5.xy = mad((int2)v15.xx, int2(3,3), int2(1,2));
    r6.xyzw = t0.Load(r5.x).xyzw;
    r5.xyzw = t0.Load(r5.y).xyzw;
    r3.x = dot(v0.xyzw, r3.xyzw);
    r3.y = dot(v0.xyzw, r6.xyzw);
    r3.z = dot(v0.xyzw, r5.xyzw);
    r0.xyz = cb0[113].xyz + r3.xyz;
  }
  r0.w = (int)v15.x * 3;
  r3.xyz = t0.Load(r0.w).xyz;
  r5.xy = mad((int2)v15.xx, int2(3,3), int2(1,2));
  r5.xzw = t0.Load(r5.x).xyz;
  r6.xyz = t0.Load(r5.y).xyz;
  r7.x = dot(r1.xyz, r3.xyz);
  r7.y = dot(r1.xyz, r5.xzw);
  r7.z = dot(r1.xyz, r6.xyz);
  r1.xyz = cb3[6].www * r7.xyz;
  r3.x = dot(r4.xyz, r3.xyz);
  r3.y = dot(r4.xyz, r5.xzw);
  r3.z = dot(r4.xyz, r6.xyz);
  r3.xyz = -cb3[6].www * r7.xyz + r3.xyz;
  r1.xyz = cb3[7].yyy * r3.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.xyzw = cb0[1].xyzw * r2.yyyy;
  r0.xyzw = r2.xxxx * cb0[0].xyzw + r0.xyzw;
  r0.xyzw = r2.zzzz * cb0[2].xyzw + r0.xyzw;
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