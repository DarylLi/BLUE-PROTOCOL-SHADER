// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t0 : register(t0);

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
  float4 v4 : ATTRIBUTE8,
  float4 v5 : ATTRIBUTE9,
  float4 v6 : ATTRIBUTE10,
  int4 v7 : ATTRIBUTE11,
  float2 v8 : ATTRIBUTE12,
  float4 v9 : ATTRIBUTE14,
  float4 v10 : ATTRIBUTE15,
  uint v11 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR1)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v11.x, instance_id
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v0.xyzw, v4.xyzw);
  r0.y = dot(v0.xyzw, v5.xyzw);
  r0.z = dot(v0.xyzw, v6.xyzw);
  r0.xyz = cb0[70].xyz + r0.xyz;
  r1.xyz = v2.yzx * v1.xyz;
  r1.xyz = v2.xyz * v1.yzx + -r1.xyz;
  r1.xyz = v2.www * r1.xyz;
  r2.xyz = v2.yzx * r1.xyz;
  r1.xyz = r1.zxy * v2.zxy + -r2.xyz;
  r1.xyz = v2.www * r1.xyz;
  r2.x = dot(r1.xyz, v4.xyz);
  r2.y = dot(r1.xyz, v5.xyz);
  r2.z = dot(r1.xyz, v6.xyz);
  r1.x = dot(v2.xyz, v4.xyz);
  r1.y = dot(v2.xyz, v5.xyz);
  r1.z = dot(v2.xyz, v6.xyz);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  o3.xyz = r2.xyz * r0.www;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r1.xyz * r0.www;
  o4.w = cb1[4].w * v2.w;
  if (cb2[1].z != 0) {
    r0.w = (int)v11.x * 3;
    r1.xyzw = t0.Load(r0.w).xyzw;
    r2.xy = mad((int2)v11.xx, int2(3,3), int2(1,2));
    r3.xyzw = t0.Load(r2.x).xyzw;
    r2.xyzw = t0.Load(r2.y).xyzw;
    r1.x = dot(v0.xyzw, r1.xyzw);
    r1.y = dot(v0.xyzw, r3.xyzw);
    r1.z = dot(v0.xyzw, r2.xyzw);
    r1.xyz = cb0[113].xyz + r1.xyz;
  } else {
    r1.xyz = r0.xyz;
  }
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
  o5.xyzw = v9.xyzw;
  return;
}