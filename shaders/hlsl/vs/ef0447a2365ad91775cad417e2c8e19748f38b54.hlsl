// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb3 : register(b3)
{
  float4 cb3[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
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
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD6,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
  float4 r0,r1,r2;
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
  o1.w = cb1[4].w * v2.w;
  o2.xy = v4.xy;
  o2.zw = float2(0,0);
  r0.xy = v5.xy;
  r0.z = v6.x;
  r1.x = dot(r0.xyz, v8.xyz);
  r1.y = dot(r0.xyz, v9.xyz);
  r1.z = dot(r0.xyz, v10.xyz);
  r0.x = v6.y;
  r0.yz = v7.xy;
  r2.x = dot(r0.xyz, v8.xyz);
  r2.y = dot(r0.xyz, v9.xyz);
  r2.z = dot(r0.xyz, v10.xyz);
  r0.xyz = -cb3[6].www * r2.xyz + r1.xyz;
  r1.xyz = cb3[6].www * r2.xyz;
  r0.xyz = cb3[7].yyy * r0.xyz + r1.xyz;
  r1.x = dot(v0.xyzw, v8.xyzw);
  r1.y = dot(v0.xyzw, v9.xyzw);
  r1.z = dot(v0.xyzw, v10.xyzw);
  r1.xyz = cb0[70].xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb2[8].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb2[7].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb2[9].xyzw + r1.xyzw;
  o4.xyz = r0.xyz;
  r0.xyzw = v0.wwww * cb2[10].xyzw + r1.xyzw;
  r1.x = cmp(r0.z < 0);
  r1.y = cmp(0 != cb2[11].x);
  r1.x = r1.x ? r1.y : 0;
  r0.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o5.xyw = r0.xyw;
  r0.x = cb2[11].y * r0.z;
  o3.x = r0.x;
  o5.z = r0.x * r0.w;
  o4.w = v0.w;
  return;
}