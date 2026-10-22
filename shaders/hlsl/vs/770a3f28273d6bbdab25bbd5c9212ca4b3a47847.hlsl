// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[43];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float2 v5 : ATTRIBUTE5,
  float2 v6 : ATTRIBUTE6,
  float4 v7 : ATTRIBUTE8,
  float4 v8 : ATTRIBUTE9,
  float4 v9 : ATTRIBUTE10,
  int4 v10 : ATTRIBUTE11,
  float2 v11 : ATTRIBUTE12,
  float4 v12 : ATTRIBUTE14,
  float4 v13 : ATTRIBUTE15,
  uint v14 : SV_InstanceID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : COLOR0,
  out float3 o5 : TEXCOORD9,
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
  r1.x = dot(r0.xyz, v7.xyz);
  r1.y = dot(r0.xyz, v8.xyz);
  r1.z = dot(r0.xyz, v9.xyz);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  r0.x = dot(v2.xyz, v7.xyz);
  r0.y = dot(v2.xyz, v8.xyz);
  r0.z = dot(v2.xyz, v9.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
  o1.w = cb1[4].w * v2.w;
  o2.xy = v4.xy;
  o2.zw = v5.yx;
  o3.xy = v6.xy;
  o3.zw = float2(0,0);
  o4.xyzw = v3.xyzw;
  r0.x = dot(v0.xyzw, v7.xyzw);
  r0.y = dot(v0.xyzw, v8.xyzw);
  r0.z = dot(v0.xyzw, v9.xyzw);
  r0.xyz = cb0[70].xyz + r0.xyz;
  o5.xyz = r0.xyz;
  r1.x = v7.x;
  r1.y = v8.x;
  r1.z = v9.x;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = sqrt(r0.w);
  r1.x = v7.y;
  r1.y = v8.y;
  r1.z = v9.y;
  r1.x = dot(-r1.xyz, -r1.xyz);
  r1.x = sqrt(r1.x);
  r0.w = r1.x + r0.w;
  r1.x = v7.z;
  r1.y = v8.z;
  r1.z = v9.z;
  r1.x = dot(-r1.xyz, -r1.xyz);
  r1.x = sqrt(r1.x);
  r0.w = r1.x + r0.w;
  r0.w = r0.w * 0.333333343 + -1;
  r0.w = cb3[42].z * r0.w + 1;
  r1.x = cb1[18].x + cb1[18].y;
  r1.x = cb1[18].z + r1.x;
  r1.x = frac(r1.x);
  r1.x = cb0[142].z + r1.x;
  r1.x = cb2[2].x * r1.x;
  r1.x = cb3[27].z * r1.x;
  r1.yz = v6.xy + -v4.xy;
  r1.yz = cb3[28].ww * r1.yz + v4.xy;
  r1.yz = cb3[29].xx * r1.yz;
  r1.xy = r1.xx * cb3[28].yz + r1.yz;
  r1.xy = t0.SampleLevel(s0_s, r1.xy, -1).xy;
  r1.zw = r1.xy * float2(2,2) + float2(-1,-1);
  r2.xy = r1.xy + r1.xy;
  r1.x = dot(r1.zw, r1.zw);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r2.z = sqrt(r1.x);
  r1.xyz = float3(-1,-1,-1) + r2.xyz;
  r1.xyz = v3.xxx * r1.xyz + float3(0,0,1);
  r2.xyz = float3(0,0,1) + -r1.xyz;
  r1.xyz = cb3[29].yyy * r2.xyz + r1.xyz;
  r2.x = cb3[41].w * r1.x;
  r2.yz = cb3[42].xy * r1.yz;
  r1.xyz = r2.xyz * r0.www;
  r1.xyz = cb3[42].www * r1.xyz;
  r0.xyz = r1.xyz * v3.xxx + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o6.xyzw = v0.wwww * cb0[3].xyzw + r0.xyzw;
  return;
}