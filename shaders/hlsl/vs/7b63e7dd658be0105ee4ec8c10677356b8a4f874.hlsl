// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[43];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[53];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
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
  out float4 o5 : TEXCOORD7,
  out float4 o6 : TEXCOORD6,
  out float3 o7 : TEXCOORD8,
  out uint o8 : SV_RenderTargetArrayIndex0,
  out float4 o9 : SV_POSITION0)
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
  o1.w = cb2[4].w * v2.w;
  o2.xy = v4.xy;
  o2.zw = v5.yx;
  o3.xy = v6.xy;
  o3.zw = float2(0,0);
  o4.xyzw = v3.xyzw;
  r0.x = v7.x;
  r0.y = v8.x;
  r0.z = v9.x;
  r0.x = dot(-r0.xyz, -r0.xyz);
  r1.x = v7.y;
  r1.y = v8.y;
  r1.z = v9.y;
  r0.y = dot(-r1.xyz, -r1.xyz);
  r0.xy = sqrt(r0.xy);
  r0.x = r0.x + r0.y;
  r1.x = v7.z;
  r1.y = v8.z;
  r1.z = v9.z;
  r0.y = dot(-r1.xyz, -r1.xyz);
  r0.y = sqrt(r0.y);
  r0.x = r0.x + r0.y;
  r0.x = r0.x * 0.333333343 + -1;
  r0.x = cb5[42].z * r0.x + 1;
  r0.y = cb2[18].x + cb2[18].y;
  r0.y = cb2[18].z + r0.y;
  r0.y = frac(r0.y);
  r0.y = cb1[142].z + r0.y;
  r0.y = cb4[2].x * r0.y;
  r0.y = cb5[27].z * r0.y;
  r0.zw = v6.xy + -v4.xy;
  r0.zw = cb5[28].ww * r0.zw + v4.xy;
  r0.zw = cb5[29].xx * r0.zw;
  r0.yz = r0.yy * cb5[28].yz + r0.zw;
  r0.yz = t0.SampleLevel(s0_s, r0.yz, -1).xy;
  r1.xy = r0.yz * float2(2,2) + float2(-1,-1);
  r2.xy = r0.yz + r0.yz;
  r0.y = dot(r1.xy, r1.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r2.z = sqrt(r0.y);
  r0.yzw = float3(-1,-1,-1) + r2.xyz;
  r0.yzw = v3.xxx * r0.yzw + float3(0,0,1);
  r1.xyz = float3(0,0,1) + -r0.yzw;
  r0.yzw = cb5[29].yyy * r1.xyz + r0.yzw;
  r1.x = cb5[41].w * r0.y;
  r1.yz = cb5[42].xy * r0.zw;
  r0.xyz = r1.xyz * r0.xxx;
  r0.xyz = cb5[42].www * r0.xyz;
  r1.x = dot(v0.xyzw, v7.xyzw);
  r1.y = dot(v0.xyzw, v8.xyzw);
  r1.z = dot(v0.xyzw, v9.xyzw);
  r1.xyz = cb1[70].xyz + r1.xyz;
  r0.xyz = r0.xyz * v3.xxx + r1.xyz;
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