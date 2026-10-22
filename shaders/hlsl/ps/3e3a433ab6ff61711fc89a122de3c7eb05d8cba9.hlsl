// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[77];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[144];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD3,
  float3 v3 : PARTICLE_LIGHTING_OFFSET0,
  float w3 : TEXCOORD6,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z * cb4[54].x + v2.x;
  r0.z = cb1[142].z * cb4[55].z + v2.y;
  r0.xy = cb4[55].yw * r0.xz;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb1[143].y).z;
  r0.x = -0.5 + r0.x;
  r0.x = r0.x + r0.x;
  r0.y = cb1[142].z * cb4[71].x + v2.x;
  r1.x = cb4[72].y * r0.y;
  r0.y = cb1[142].z * cb4[72].z + v2.y;
  r1.y = cb4[72].w * r0.y;
  r0.yz = r0.xx * cb4[73].yy + r1.xy;
  r0.y = t2.SampleBias(s2_s, r0.yz, cb1[143].y).x;
  r0.z = log2(r0.y);
  r0.y = cmp(0 >= r0.y);
  r0.z = cb4[73].z * r0.z;
  r0.z = exp2(r0.z);
  r0.y = r0.y ? 0 : r0.z;
  r0.z = cb1[142].z * cb4[74].w + v2.x;
  r1.x = cb4[76].x * r0.z;
  r0.z = cb1[142].z * cb4[76].y + v2.y;
  r1.y = cb4[76].z * r0.z;
  r0.xz = r0.xx * cb4[56].yy + r1.xy;
  r0.x = t0.SampleBias(s0_s, r0.xz, cb1[143].y).x;
  r0.z = -0.100000001 + v2.x;
  r0.w = 0.899999976 + -v2.x;
  r0.z = min(r0.z, r0.w);
  r0.x = r0.z * 5 + r0.x;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * cb4[69].x + -cb4[69].x;
  r0.x = saturate(cb4[69].z + r0.x);
  r0.y = 0.5 + cb1[142].z;
  r0.y = frac(r0.y);
  r0.z = r0.y + r0.y;
  r0.w = max(1, r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.z + r0.z;
  r0.w = -1 + r0.w;
  r0.w = r0.w + r0.w;
  r0.zw = min(float2(1,1), r0.zw);
  r0.w = 1 + -r0.w;
  r0.z = r0.w * r0.z;
  r1.xy = cb1[45].zw * v5.yy;
  r1.xy = v5.xx * cb1[44].zw + r1.xy;
  r1.xy = v5.zz * cb1[46].zw + r1.xy;
  r1.xy = cb1[47].zw + r1.xy;
  r0.w = r1.x / r1.y;
  r0.w = -cb1[70].z + r0.w;
  r0.w = -cb4[42].w + r0.w;
  r0.w = abs(r0.w) / cb4[43].x;
  r0.w = -r0.w * cb4[43].y + 1;
  r1.x = cb4[42].x * v2.y + cb4[42].y;
  r1.y = -cb4[42].z * r1.x + 1;
  r2.y = -r1.y * r0.w + 1;
  r0.w = cb3[2].x * cb1[142].z;
  r0.w = cb4[44].x * r0.w;
  r1.yz = cb4[3].xy * r0.ww;
  r2.x = v2.x;
  r2.zw = r2.xy * cb4[1].xy + r1.yz;
  r2.xy = r2.xy * cb4[2].xy + float2(0.200000003,0.200000003);
  r1.yz = r1.yz * float2(0.699999988,0.699999988) + r2.xy;
  r2.y = t0.SampleBias(s0_s, r1.yz, cb1[143].y).x;
  r2.x = 0;
  r2.xy = cb4[45].xx * r2.xy;
  r3.xy = r2.xy * r0.yy + r2.zw;
  r0.yw = r2.xy * r0.yy + r1.yz;
  r0.y = t0.SampleBias(s0_s, r0.yw, cb1[143].y).y;
  r0.w = t0.SampleBias(s0_s, r3.xy, cb1[143].y).x;
  r1.w = frac(cb1[142].z);
  r2.zw = r2.xy * r1.ww + r2.zw;
  r1.yz = r2.xy * r1.ww + r1.yz;
  r1.y = t0.SampleBias(s0_s, r1.yz, cb1[143].y).y;
  r1.z = t0.SampleBias(s0_s, r2.zw, cb1[143].y).x;
  r0.yw = -r1.yz + r0.yw;
  r0.w = r0.z * r0.w + r1.z;
  r0.y = r0.z * r0.y + r1.y;
  r0.y = r0.w + -r0.y;
  r0.y = r0.y * cb4[46].y + v2.x;
  r0.y = r0.y * 2 + -1;
  r0.y = 1 + -abs(r0.y);
  r0.y = r0.y * cb4[69].x + -cb4[69].x;
  r0.y = saturate(cb4[69].z + r0.y);
  r0.y = cb4[69].w * r0.y;
  r0.x = r0.y * r0.x;
  r0.y = 1 + -r1.x;
  r0.z = saturate(cb4[67].w * r1.x);
  r0.y = saturate(cb4[68].z * r0.y);
  r0.y = r0.z * r0.y;
  r0.x = saturate(r0.y * r0.x);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = w3.x * cb2[11].y + cb0[1].y;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}