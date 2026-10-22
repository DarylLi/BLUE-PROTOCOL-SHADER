// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[33];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD4,
  float3 v2 : PARTICLE_LIGHTING_OFFSET0,
  float4 v3 : TANGENTX0,
  float4 v4 : TANGENTZ0,
  float4 v5 : TEXCOORD6,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[45].zw * v6.yy;
  r0.xy = v6.xx * cb1[44].zw + r0.xy;
  r0.xy = v6.zz * cb1[46].zw + r0.xy;
  r0.xy = cb1[47].zw + r0.xy;
  r0.x = r0.x / r0.y;
  r0.x = -cb1[70].z + r0.x;
  r0.x = -cb3[29].y + r0.x;
  r0.x = abs(r0.x) / cb3[29].z;
  r0.x = -r0.x * cb3[29].w + 1;
  r0.y = cb3[28].z * v0.y + cb3[28].w;
  r0.y = -cb3[29].x * r0.y + 1;
  r0.y = -r0.y * r0.x + 1;
  r0.z = cb2[2].x * cb1[142].z;
  r0.z = cb3[30].x * r0.z;
  r0.zw = cb3[17].xy * r0.zz;
  r0.x = v0.x;
  r1.xy = r0.xy * cb3[16].xy + r0.zw;
  r0.xy = r0.xy * cb3[18].xy + float2(0.200000003,0.200000003);
  r0.xy = r0.zw * float2(0.699999988,0.699999988) + r0.xy;
  r0.z = t0.SampleBias(s0_s, r0.xy, cb1[143].y).x;
  r2.y = r0.z * 2 + -1;
  r2.x = 0;
  r0.zw = cb3[31].xx * r2.xy;
  r1.z = 0.5 + cb1[142].z;
  r1.z = frac(r1.z);
  r2.xy = r0.zw * r1.zz + r1.xy;
  r1.w = t0.SampleBias(s0_s, r2.xy, cb1[143].y).x;
  r1.w = r1.w * 2 + -1;
  r2.x = frac(cb1[142].z);
  r1.xy = r0.zw * r2.xx + r1.xy;
  r2.xy = r0.zw * r2.xx + r0.xy;
  r0.xy = r0.zw * r1.zz + r0.xy;
  r0.z = r1.z + r1.z;
  r0.x = t0.SampleBias(s0_s, r0.xy, cb1[143].y).y;
  r0.x = r0.x * 2 + -1;
  r0.y = t0.SampleBias(s0_s, r2.xy, cb1[143].y).y;
  r0.y = r0.y * 2 + -1;
  r0.w = t0.SampleBias(s0_s, r1.xy, cb1[143].y).x;
  r0.w = r0.w * 2 + -1;
  r1.x = r1.w + -r0.w;
  r1.y = max(1, r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.z + r0.z;
  r0.z = min(1, r0.z);
  r1.y = -1 + r1.y;
  r1.y = r1.y + r1.y;
  r1.y = min(1, r1.y);
  r1.y = 1 + -r1.y;
  r0.z = r1.y * r0.z;
  r0.w = r0.z * r1.x + r0.w;
  r0.x = r0.x + -r0.y;
  r0.x = r0.z * r0.x + r0.y;
  r0.x = r0.w + -r0.x;
  r0.x = r0.x * cb3[31].y + v0.x;
  r0.x = r0.x * 2 + -1;
  r0.x = 1 + -abs(r0.x);
  r0.x = r0.x * cb3[31].w + -cb3[31].w;
  r0.x = saturate(cb3[32].y + r0.x);
  r0.yz = -cb1[129].xy + v6.xy;
  r1.xy = cb1[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t1.SampleBias(s1_s, r0.yz, cb1[143].y).x;
  r0.zw = (uint2)r1.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.x = r0.y * 0.166666672 + r0.x;
  r0.x = -0.833299994 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = cb0[2].xyzw;
  return;
}