// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[41];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[29];
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
  out float o5 : TEXCOORD6,
  out float p5 : TEXCOORD8,
  out float3 o6 : TEXCOORD7,
  out float4 o7 : SV_POSITION0)
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
  r0.x = cb1[18].x + cb1[18].y;
  r0.x = cb1[18].z + r0.x;
  r0.x = frac(r0.x);
  r0.x = cb0[142].z + r0.x;
  r0.x = cb3[2].x * r0.x;
  r0.x = cb4[26].z * r0.x;
  r0.yz = v6.xy + -v4.xy;
  r0.yz = cb4[27].ww * r0.yz + v4.xy;
  r0.yz = cb4[28].xx * r0.yz;
  r0.xy = r0.xx * cb4[27].yz + r0.yz;
  r0.xy = t0.SampleLevel(s0_s, r0.xy, -1).xy;
  r0.zw = r0.xy * float2(2,2) + float2(-1,-1);
  r1.xy = r0.xy + r0.xy;
  r0.x = dot(r0.zw, r0.zw);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r1.z = sqrt(r0.x);
  r0.xyz = float3(-1,-1,-1) + r1.xyz;
  r0.xyz = v3.xxx * r0.xyz + float3(0,0,1);
  r1.xyz = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb4[28].yyy * r1.xyz + r0.xyz;
  r0.xyz = cb4[39].xyz * r0.xyz;
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
  r0.w = cb4[39].w * r0.w + 1;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = cb4[40].xxx * r0.xyz;
  r1.x = dot(v0.xyzw, v7.xyzw);
  r1.y = dot(v0.xyzw, v8.xyzw);
  r1.z = dot(v0.xyzw, v9.xyzw);
  r1.xyz = cb0[70].xyz + r1.xyz;
  r0.xyz = r0.xyz * v3.xxx + r1.xyz;
  r1.xyzw = cb2[20].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb2[19].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb2[21].xyzw + r1.xyzw;
  o6.xyz = r0.xyz;
  r0.xyzw = v0.wwww * cb2[22].xyzw + r1.xyzw;
  r1.x = cmp(r0.z < 0);
  r1.y = cmp(0 < cb2[28].x);
  r1.x = r1.x ? r1.y : 0;
  r0.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o5.x = r0.z;
  o7.xyzw = r0.xyzw;
  r0.x = cb2[23].z;
  r0.y = cb2[24].z;
  r0.z = cb2[25].z;
  r0.x = dot(r0.xyz, v2.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb2[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb2[27].z, r0.x);
  p5.x = cb2[27].y * r0.x + cb2[27].x;
  return;
}