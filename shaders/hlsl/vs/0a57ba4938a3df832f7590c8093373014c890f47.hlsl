// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb2 : register(b2)
{
  float4 cb2[21];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
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
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD7,
  out float4 o4 : TEXCOORD6,
  out float3 o5 : TEXCOORD8)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v2.yzx * v1.xyz;
  r0.xyz = v2.xyz * v1.yzx + -r0.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = v2.yzx * r0.xyz;
  r0.xyz = r0.zxy * v2.zxy + -r1.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.x = dot(r0.xyz, v5.xyz);
  r1.y = dot(r0.xyz, v6.xyz);
  r1.z = dot(r0.xyz, v7.xyz);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  r0.x = dot(v2.xyz, v5.xyz);
  r0.y = dot(v2.xyz, v6.xyz);
  r0.z = dot(v2.xyz, v7.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
  o1.w = cb1[4].w * v2.w;
  o2.xy = v4.xy;
  o2.zw = float2(0,0);
  r0.x = dot(v0.xyzw, v5.xyzw);
  r0.y = dot(v0.xyzw, v6.xyzw);
  r0.z = dot(v0.xyzw, v7.xyzw);
  r1.xyz = -cb2[9].xyz + r0.xyz;
  r0.w = dot(cb2[13].xyz, r1.xyz);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / cb2[20].x;
  r1.x = r1.x * 2 + cb2[20].w;
  r1.x = saturate(-2 + r1.x);
  r1.yzw = cb2[13].xyz * r0.www + cb2[9].xyz;
  r2.xyz = -r1.yzw + r0.xyz;
  r3.xyz = cb2[13].zxy * r2.yzx;
  r3.xyz = cb2[13].yzx * r2.zxy + -r3.xyz;
  r4.xy = float2(3.14159274,6.28318548) * r1.xx;
  r4.xz = sin(r4.xy);
  r0.w = cos(r4.y);
  r3.xyz = r4.zzz * r3.xyz;
  r4.z = 50 * r4.x;
  r2.xyz = r2.xyz * r0.www + r3.xyz;
  r1.yzw = r2.xyz + r1.yzw;
  r1.yzw = r1.yzw + -r0.xyz;
  r2.xyz = cb2[11].xyz + -r0.xyz;
  r0.xyz = cb0[70].xyz + r0.xyz;
  r1.yzw = -r2.xyz + r1.yzw;
  r1.xyz = r1.xxx * r1.yzw + r2.xyz;
  r4.xy = float2(0,0);
  r1.xyz = r4.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o3.xyz = r0.xyz;
  o4.xyz = r0.xyz;
  o4.w = v0.w;
  o5.xyz = v2.xyz;
  return;
}