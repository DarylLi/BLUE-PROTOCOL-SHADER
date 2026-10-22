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
  float4 cb1[28];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[153];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD3,
  float3 v3 : PARTICLE_LIGHTING_OFFSET0,
  float w3 : TEXCOORD6,
  float v4 : TEXCOORD8,
  float3 w4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 0.5 + cb0[142].z;
  r0.x = frac(r0.x);
  r0.y = r0.x + r0.x;
  r0.z = max(1, r0.y);
  r0.y = min(1, r0.y);
  r0.y = r0.y + r0.y;
  r0.z = -1 + r0.z;
  r0.z = r0.z + r0.z;
  r0.yz = min(float2(1,1), r0.yz);
  r0.z = 1 + -r0.z;
  r0.y = r0.z * r0.y;
  r0.z = -cb0[70].z + w4.z;
  r0.z = -cb3[29].y + r0.z;
  r0.z = abs(r0.z) / cb3[29].z;
  r0.z = -r0.z * cb3[29].w + 1;
  r0.w = cb3[28].z * v2.y + cb3[28].w;
  r0.w = -cb3[29].x * r0.w + 1;
  r1.y = -r0.w * r0.z + 1;
  r0.z = cb2[2].x * cb0[142].z;
  r0.z = cb3[30].x * r0.z;
  r0.zw = cb3[17].xy * r0.zz;
  r1.x = v2.x;
  r1.zw = r1.xy * cb3[16].xy + r0.zw;
  r1.xy = r1.xy * cb3[18].xy + float2(0.200000003,0.200000003);
  r0.zw = r0.zw * float2(0.699999988,0.699999988) + r1.xy;
  r1.x = t0.SampleBias(s0_s, r0.zw, cb0[143].y).x;
  r1.y = r1.x * 2 + -1;
  r1.x = 0;
  r1.xy = cb3[31].xx * r1.xy;
  r2.xy = r1.xy * r0.xx + r1.zw;
  r2.zw = r1.xy * r0.xx + r0.zw;
  r0.x = t0.SampleBias(s0_s, r2.zw, cb0[143].y).y;
  r0.x = r0.x * 2 + -1;
  r2.x = t0.SampleBias(s0_s, r2.xy, cb0[143].y).x;
  r2.x = r2.x * 2 + -1;
  r2.y = frac(cb0[142].z);
  r1.zw = r1.xy * r2.yy + r1.zw;
  r0.zw = r1.xy * r2.yy + r0.zw;
  r0.z = t0.SampleBias(s0_s, r0.zw, cb0[143].y).y;
  r0.z = r0.z * 2 + -1;
  r0.w = t0.SampleBias(s0_s, r1.zw, cb0[143].y).x;
  r0.w = r0.w * 2 + -1;
  r1.x = r2.x + -r0.w;
  r0.w = r0.y * r1.x + r0.w;
  r0.x = r0.x + -r0.z;
  r0.x = r0.y * r0.x + r0.z;
  r0.x = r0.w + -r0.x;
  r0.x = r0.x * cb3[31].y + v2.x;
  r0.x = r0.x * 2 + -1;
  r0.x = 1 + -abs(r0.x);
  r0.x = r0.x * cb3[31].w + -cb3[31].w;
  r0.x = saturate(cb3[32].y + r0.x);
  r0.yz = -cb0[129].xy + v5.xy;
  r1.xy = cb0[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t1.SampleBias(s1_s, r0.yz, cb0[143].y).x;
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
  o0.xyzw = float4(0,0,0,0);
  oDepth = saturate(w3.x * cb1[27].w + v4.x);
  return;
}