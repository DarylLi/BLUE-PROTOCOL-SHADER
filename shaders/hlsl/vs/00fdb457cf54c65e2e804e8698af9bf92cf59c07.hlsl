// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb4 : register(b4)
{
  float4 cb4[9];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[53];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[143];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
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
  out float4 o3 : COLOR0,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : TEXCOORD6,
  out float3 o6 : TEXCOORD8,
  out uint o7 : SV_RenderTargetArrayIndex0,
  out float4 o8 : SV_POSITION0)
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
  o1.w = cb2[4].w * v2.w;
  o2.xy = v4.xy;
  o2.zw = float2(0,0);
  o3.xyzw = v3.xyzw;
  r0.x = cb4[8].z * v3.x;
  r0.y = cb1[142].z * cb4[8].x + v3.w;
  r1.x = v5.w;
  r1.y = v6.w;
  r0.z = abs(r1.x) + abs(r1.y);
  r1.z = v7.w;
  r0.z = abs(r1.z) + r0.z;
  r0.z = frac(r0.z);
  r0.y = r0.z * 0.5 + r0.y;
  r0.y = 6.28318548 * r0.y;
  r0.y = sin(r0.y);
  r0.x = r0.y * r0.x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r2.x);
  r3.y = dot(cb4[2].xyz, v5.xyz);
  r3.z = dot(cb4[2].xyz, v6.xyz);
  r3.x = dot(cb4[2].xyz, v7.xyz);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = sqrt(r0.y);
  r0.yzw = r3.xyz / r0.yyy;
  r3.x = dot(v0.xyzw, v5.xyzw);
  r3.y = dot(v0.xyzw, v6.xyzw);
  r3.z = dot(v0.xyzw, v7.xyzw);
  r2.yzw = r3.xyz + -r1.xyz;
  r1.w = dot(r0.zwy, r2.yzw);
  r1.xyz = r0.zwy * r1.www + r1.xyz;
  r2.yzw = r3.xyz + -r1.xyz;
  r4.xyz = r2.zwy * r0.yzw;
  r0.yzw = r0.wyz * r2.wyz + -r4.xyz;
  r0.xyz = r0.yzw * r0.xxx;
  r0.xyz = r2.yzw * r2.xxx + r0.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r0.xyz = r0.xyz + -r3.xyz;
  r1.xyz = cb1[70].xyz + r3.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o4.xyz = r0.xyz;
  r0.w = asuint(cb0[1].x) << 2;
  r1.xyzw = cb3[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb3[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb3[r0.w+31].xyzw + r1.xyzw;
  r0.xyzw = v0.wwww * cb3[r0.w+32].xyzw + r1.xyzw;
  o5.xyzw = r0.xyzw;
  o8.xyzw = r0.xyzw;
  o6.xyz = v2.xyz;
  o7.x = cb0[1].x;
  return;
}