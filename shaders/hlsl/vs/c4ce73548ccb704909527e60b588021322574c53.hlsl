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
  out float4 o4 : COLOR2,
  out float o5 : TEXCOORD6,
  out float3 p5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
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
  o2.zw = v5.yx;
  o3.xyzw = v3.xyzw;
  o4.xyzw = v13.xyzw;
  r0.x = v13.x + v13.x;
  r0.x = saturate(r0.x);
  r1.xy = v5.xy;
  r1.z = v6.x;
  r0.y = dot(r1.xyz, v8.xyz);
  r0.z = dot(r1.xyz, v9.xyz);
  r0.w = dot(r1.xyz, v10.xyz);
  r1.x = v6.y;
  r1.yz = v7.xy;
  r2.y = dot(r1.xyz, v8.xyz);
  r2.z = dot(r1.xyz, v9.xyz);
  r2.w = dot(r1.xyz, v10.xyz);
  r0.yzw = -r0.xxx * r2.yzw + r0.yzw;
  r1.xyz = r2.yzw * r0.xxx;
  r0.x = saturate(v13.x * 2 + -1);
  r0.xyz = r0.xxx * r0.yzw + r1.xyz;
  r1.y = dot(v0.xyzw, v8.xyzw);
  r1.z = dot(v0.xyzw, v9.xyzw);
  r1.w = dot(v0.xyzw, v10.xyzw);
  r1.xyz = cb0[70].xyz + r1.yzw;
  r0.xyz = r1.xyz + r0.xyz;
  p5.xyz = r0.xyz;
  o5.x = 0;
  r1.xyzw = cb2[20].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb2[19].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb2[21].xyzw + r1.xyzw;
  r0.xyzw = v0.wwww * cb2[22].xyzw + r0.xyzw;
  r1.x = cmp(r0.z < 0);
  r1.y = cmp(0 < cb2[28].x);
  r1.x = r1.x ? r1.y : 0;
  r0.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o6.xyw = r0.xyw;
  r1.x = cb2[23].z;
  r1.y = cb2[24].z;
  r1.z = cb2[25].z;
  r0.x = dot(r1.xyz, v2.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb2[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb2[27].z, r0.x);
  r0.x = cb2[27].y * r0.x + cb2[27].x;
  r0.x = r0.z * cb2[27].w + r0.x;
  o6.z = r0.x * r0.w;
  return;
}