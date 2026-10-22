// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb1[71];
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
  out float4 o4 : COLOR2,
  out float4 o5 : TEXCOORD7,
  out float4 o6 : TEXCOORD6,
  out float3 o7 : TEXCOORD8,
  out uint o8 : SV_RenderTargetArrayIndex0,
  out float4 o9 : SV_POSITION0)
{
  float4 r0,r1,r2,r3;
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
  o2.zw = v5.yx;
  o3.xyzw = v3.xyzw;
  o4.xyzw = v13.xyzw;
  r0.x = v13.x + v13.x;
  r0.x = saturate(r0.x);
  r1.xy = v5.xy;
  r1.z = v6.x;
  r2.x = dot(r1.xyz, v8.xyz);
  r2.y = dot(r1.xyz, v9.xyz);
  r2.z = dot(r1.xyz, v10.xyz);
  r1.x = v6.y;
  r1.yz = v7.xy;
  r3.x = dot(r1.xyz, v8.xyz);
  r3.y = dot(r1.xyz, v9.xyz);
  r3.z = dot(r1.xyz, v10.xyz);
  r0.yzw = -r0.xxx * r3.xyz + r2.xyz;
  r1.xyz = r3.xyz * r0.xxx;
  r0.x = saturate(v13.x * 2 + -1);
  r0.xyz = r0.xxx * r0.yzw + r1.xyz;
  r1.x = dot(v0.xyzw, v8.xyzw);
  r1.y = dot(v0.xyzw, v9.xyzw);
  r1.z = dot(v0.xyzw, v10.xyzw);
  r1.xyz = cb1[70].xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o5.xyz = r0.xyz;
  r0.w = asuint(cb0[1].x) << 2;
  r1.xyzw = cb3[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb3[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb3[r0.w+31].xyzw + r1.xyzw;
  r0.xyzw = v0.wwww * cb3[r0.w+32].xyzw + r1.xyzw;
  o6.xyzw = r0.xyzw;
  o9.xyzw = r0.xyzw;
  o7.xyz = v2.xyz;
  o8.x = cb0[1].x;
  return;
}