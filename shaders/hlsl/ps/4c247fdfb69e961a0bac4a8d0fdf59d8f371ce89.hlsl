// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[137];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  nointerpolation float3 v0 : TEXCOORD0,
  nointerpolation float w0 : TEXCOORD1,
  nointerpolation float4 v1 : TEXCOORD2,
  float3 v2 : TEXCOORD3,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[69].xyz + -v1.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = -v1.w * v1.w + r0.w;
  r1.xyz = -cb1[69].yzx + v2.yzx;
  r1.w = dot(r1.xyz, r1.xyz);
  r0.w = r1.w * r0.w;
  r1.w = r1.w + r1.w;
  r0.w = 4 * r0.w;
  r0.x = dot(r1.zxy, r0.xyz);
  r0.y = r0.x + r0.x;
  r0.y = r0.y * r0.y + -r0.w;
  r0.z = sqrt(r0.y);
  r0.y = cmp(r0.y >= 0);
  r0.x = -r0.x * 2 + -r0.z;
  r0.x = r0.x / r1.w;
  r0.x = r0.y ? r0.x : -1;
  r0.y = cmp(r0.x < 0);
  r0.xzw = r0.xxx * r1.xyz + cb1[69].yzx;
  r0.xzw = -v1.yzx + r0.xzw;
  if (r0.y != 0) discard;
  r0.y = dot(r0.xzw, r0.xzw);
  r0.y = rsqrt(r0.y);
  r0.xyz = r0.xzw * r0.yyy;
  r1.xyz = r0.xyx * r0.xyz;
  r0.w = r0.z * r0.z + -r1.x;
  r1.xz = r1.zy * float2(1,3) + float2(0,-1);
  r0.w = 0.429042608 * r0.w;
  r1.yw = r0.yy * r0.xz;
  r2.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.xyz;
  r1.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r1.xyzw;
  r3.xyzw = t1.SampleLevel(s0_s, v0.xyz, 0).xyzw;
  r3.xyzw = r3.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r0.xyz = t0.SampleLevel(s0_s, v0.xyz, 0).xyz;
  r3.xyzw = r3.xyzw * r0.xxxx;
  r3.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r3.wxyz;
  r4.x = r3.x;
  r5.xyzw = t2.SampleLevel(s0_s, v0.xyz, 0).xyzw;
  r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r5.xyzw = r5.xyzw * r0.xxxx;
  r5.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r5.xyzw;
  r4.yzw = r5.xyz;
  r4.x = dot(r4.xyzw, r1.xyzw);
  r2.x = 0.886227548;
  r3.x = r0.x;
  r3.x = dot(r3.xyzw, r2.xyzw);
  r3.x = r3.x + r4.x;
  r3.x = r5.w * r0.w + r3.x;
  r4.xyzw = t3.SampleLevel(s0_s, v0.xyz, 0).xyzw;
  r4.xyzw = r4.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r4.xyzw = r4.xyzw * r0.yyyy;
  r4.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r4.wxyz;
  r5.yzw = r4.yzw;
  r5.x = r0.y;
  r3.w = dot(r5.xyzw, r2.xyzw);
  r5.xyzw = t4.SampleLevel(s0_s, v0.xyz, 0).xyzw;
  r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r5.xyzw = r5.xyzw * r0.yyyy;
  r5.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r5.xyzw;
  r4.yzw = r5.xyz;
  r4.x = dot(r4.xyzw, r1.xyzw);
  r3.w = r4.x + r3.w;
  r3.y = r5.w * r0.w + r3.w;
  r4.xyzw = t5.SampleLevel(s0_s, v0.xyz, 0).xyzw;
  r4.xyzw = r4.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r4.xyzw = r4.xyzw * r0.zzzz;
  r4.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r4.wxyz;
  r5.yzw = r4.yzw;
  r5.x = r0.z;
  r2.x = dot(r5.xyzw, r2.xyzw);
  r5.xyzw = t6.SampleLevel(s0_s, v0.xyz, 0).xyzw;
  r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r5.xyzw = r5.xyzw * r0.zzzz;
  r0.xyz = float3(0.318309873,0.318309873,0.318309873) * r0.xyz;
  r5.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r5.xyzw;
  r4.yzw = r5.xyz;
  r1.x = dot(r4.xyzw, r1.xyzw);
  r1.x = r2.x + r1.x;
  r3.z = r5.w * r0.w + r1.x;
  r1.xyz = max(float3(0,0,0), r3.xyz);
  r1.xyz = r1.xyz * float3(0.318309873,0.318309873,0.318309873) + -r0.xyz;
  r0.xyz = w0.xww * r1.xyz + r0.xyz;
  r0.xyz = cb1[135].yyy * r0.xyz;
  r1.xyz = cb0[1].xyz * cb1[136].www + cb1[136].xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = 0;
  o1.xyzw = float4(0,0,0,0);
  return;
}