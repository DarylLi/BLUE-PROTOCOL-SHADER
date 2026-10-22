// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[26];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
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
  float4 v10 : ATTRIBUTE13,
  float4 v11 : ATTRIBUTE14,
  float4 v12 : ATTRIBUTE15,
  uint v13 : SV_InstanceID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : COLOR1,
  out float4 o4 : COLOR2,
  out float o5 : PARTICLE_TIME0,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : SV_POSITION0)
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
  r1.x = dot(r0.xyz, v5.xyz);
  r1.y = dot(r0.xyz, v6.xyz);
  r1.z = dot(r0.xyz, v7.xyz);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  o1.w = cb1[4].w * v2.w;
  r0.x = dot(v2.xyz, v5.xyz);
  r0.y = dot(v2.xyz, v6.xyz);
  r0.z = dot(v2.xyz, v7.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
  o2.xy = v4.xy;
  o2.zw = float2(0,0);
  o3.xyzw = v11.xyzw;
  o4.xyzw = v10.xyzw;
  o5.x = v9.y;
  r0.w = v9.y * cb3[23].z + v4.x;
  r1.x = r0.w * cb3[24].y + v10.z;
  r0.w = v9.y * cb3[24].z + v4.y;
  r1.y = r0.w * cb3[24].w + v10.z;
  r0.w = t0.SampleLevel(s0_s, r1.xy, -1).x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = 1 + -v4.y;
  r0.w = r0.w * cb3[21].w + -cb3[21].w;
  r0.w = saturate(cb3[22].z + r0.w);
  r1.x = -1 + cb3[22].w;
  r0.w = r0.w * r1.x + 1;
  r1.x = v5.w;
  r1.y = v6.w;
  r1.z = v7.w;
  r2.x = dot(v0.xyzw, v5.xyzw);
  r2.y = dot(v0.xyzw, v6.xyzw);
  r2.z = dot(v0.xyzw, v7.xyzw);
  r1.xyz = r2.xyz + -r1.xyz;
  r2.xyz = cb0[70].xyz + r2.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.0142857144 * r1.x;
  r1.x = cmp(0 >= r1.x);
  r1.y = log2(r1.y);
  r1.y = cb3[25].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = 0.333333343 * r1.y;
  r1.x = r1.x ? 0 : r1.y;
  r1.yzw = cb3[15].xyz + cb2[8].xyz;
  r2.w = cb3[25].y * v10.z;
  r1.yzw = r2.www * r1.yzw;
  r1.xyz = r1.xxx * r1.yzw;
  r0.xyz = r0.www * r0.xyz + r1.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  o6.xyz = r0.xyz;
  o6.w = v0.w;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o7.xyzw = v0.wwww * cb0[3].xyzw + r0.xyzw;
  return;
}