// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb4 : register(b4)
{
  float4 cb4[23];
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
  float2 v5 : ATTRIBUTE5,
  float2 v6 : ATTRIBUTE6,
  float2 v7 : ATTRIBUTE7,
  float4 v8 : ATTRIBUTE8,
  float4 v9 : ATTRIBUTE9,
  float4 v10 : ATTRIBUTE10,
  int4 v11 : ATTRIBUTE11,
  float2 v12 : ATTRIBUTE12,
  float4 v13 : ATTRIBUTE13,
  float4 v14 : ATTRIBUTE14,
  float4 v15 : ATTRIBUTE15,
  uint v16 : SV_InstanceID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : COLOR0,
  out float4 o4 : COLOR1,
  out float4 o5 : COLOR2,
  out float4 o6 : PARTICLE_VELOCITY0,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD6,
  out float3 o9 : TEXCOORD8,
  out uint o10 : SV_RenderTargetArrayIndex0,
  out float4 o11 : SV_POSITION0)
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
  r1.x = dot(r0.xyz, v8.xyz);
  r1.y = dot(r0.xyz, v9.xyz);
  r1.z = dot(r0.xyz, v10.xyz);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  r0.x = dot(v2.xyz, v8.xyz);
  r0.y = dot(v2.xyz, v9.xyz);
  r0.z = dot(v2.xyz, v10.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
  o1.w = cb2[4].w * v2.w;
  o2.xy = v4.xy;
  o2.zw = float2(0,0);
  o3.xyzw = v3.xyzw;
  o4.xyzw = v14.xyzw;
  o5.xyzw = v13.xyzw;
  o6.xyzw = v15.xyzw;
  r0.x = cb1[142].z + v13.w;
  r0.x = r0.x / v13.z;
  r0.x = frac(r0.x);
  r0.y = 1 + v13.x;
  r0.z = r0.x * r0.y + -v13.x;
  r0.x = r0.x * r0.y;
  r0.xy = saturate(cb4[22].zz * r0.xz);
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.y = cb1[142].z + cb1[142].z;
  r0.y = frac(r0.y);
  r0.y = 6.28318548 * r0.y;
  r0.y = sin(r0.y);
  r0.y = 1 + r0.y;
  r0.y = v13.y * r0.y;
  r0.z = saturate(r0.y * 0.5 + -1);
  r0.y = 0.5 * r0.y;
  r0.y = saturate(r0.y);
  r1.x = v6.y;
  r1.yz = v7.xy;
  r2.x = dot(r1.xyz, v8.xyz);
  r2.y = dot(r1.xyz, v9.xyz);
  r2.z = dot(r1.xyz, v10.xyz);
  r1.xyz = r2.xyz * r0.yyy;
  r3.xy = v5.xy;
  r3.z = v6.x;
  r4.x = dot(r3.xyz, v8.xyz);
  r4.y = dot(r3.xyz, v9.xyz);
  r4.z = dot(r3.xyz, v10.xyz);
  r2.xyz = -r0.yyy * r2.xyz + r4.xyz;
  r0.yzw = r0.zzz * r2.xyz + r1.xyz;
  r0.yzw = r0.yzw + -r4.xyz;
  r0.xyz = r0.xxx * r0.yzw + r4.xyz;
  r1.x = dot(v0.xyzw, v8.xyzw);
  r1.y = dot(v0.xyzw, v9.xyzw);
  r1.z = dot(v0.xyzw, v10.xyzw);
  r1.xyz = cb1[70].xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.w = asuint(cb0[1].x) << 2;
  r1.xyzw = cb3[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb3[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb3[r0.w+31].xyzw + r1.xyzw;
  r0.xyzw = v0.wwww * cb3[r0.w+32].xyzw + r1.xyzw;
  o8.xyzw = r0.xyzw;
  o11.xyzw = r0.xyzw;
  o9.xyz = v2.xyz;
  o10.x = cb0[1].x;
  return;
}