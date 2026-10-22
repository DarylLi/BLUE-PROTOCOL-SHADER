// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb2 : register(b2)
{
  float4 cb2[29];
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
  float4 v4 : ATTRIBUTE8,
  float4 v5 : ATTRIBUTE9,
  float4 v6 : ATTRIBUTE10,
  int4 v7 : ATTRIBUTE11,
  float2 v8 : ATTRIBUTE12,
  float4 v9 : ATTRIBUTE14,
  float4 v10 : ATTRIBUTE15,
  uint v11 : SV_InstanceID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float o2 : TEXCOORD6,
  out float3 p2 : TEXCOORD7,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v2.yzx * v1.xyz;
  r0.xyz = v2.xyz * v1.yzx + -r0.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = v2.yzx * r0.xyz;
  r0.xyz = r0.zxy * v2.zxy + -r1.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.x = dot(r0.xyz, v4.xyz);
  r1.y = dot(r0.xyz, v5.xyz);
  r1.z = dot(r0.xyz, v6.xyz);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  r0.x = dot(v2.xyz, v4.xyz);
  r0.y = dot(v2.xyz, v5.xyz);
  r0.z = dot(v2.xyz, v6.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
  o1.w = cb1[4].w * v2.w;
  o2.x = 0;
  r0.y = dot(v0.xyzw, v4.xyzw);
  r0.z = dot(v0.xyzw, v5.xyzw);
  r0.w = dot(v0.xyzw, v6.xyzw);
  r0.xyz = cb0[70].xyz + r0.yzw;
  p2.xyz = r0.xyz;
  r1.x = cb2[23].z;
  r1.y = cb2[24].z;
  r1.z = cb2[25].z;
  r0.w = dot(r1.xyz, v2.xyz);
  r1.x = -abs(r0.w) * abs(r0.w) + 1;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / abs(r0.w);
  r0.w = cmp(0 < abs(r0.w));
  r0.w = r0.w ? r1.x : cb2[27].z;
  r0.w = max(0, r0.w);
  r0.w = min(cb2[27].z, r0.w);
  r0.w = cb2[27].y * r0.w + cb2[27].x;
  r1.xyzw = cb2[20].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb2[19].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb2[21].xyzw + r1.xyzw;
  r1.xyzw = v0.wwww * cb2[22].xyzw + r1.xyzw;
  r0.x = cmp(r1.z < 0);
  r0.y = cmp(0 < cb2[28].x);
  r0.x = r0.x ? r0.y : 0;
  r0.xy = r0.xx ? float2(9.99999997e-007,1) : r1.zw;
  o3.xy = r1.xy;
  r0.x = r0.x * cb2[27].w + r0.w;
  o3.z = r0.x * r0.y;
  o3.w = r0.y;
  return;
}