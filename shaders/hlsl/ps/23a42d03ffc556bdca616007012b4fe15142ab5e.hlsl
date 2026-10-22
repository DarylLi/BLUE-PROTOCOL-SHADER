// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[33];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[153];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD10,
  float4 v2 : TEXCOORD11,
  float4 v3 : TEXCOORD3,
  float3 v4 : PARTICLE_LIGHTING_OFFSET0,
  float4 v5 : TEXCOORD6,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[45].zw * v0.yy;
  r0.xy = v0.xx * cb0[44].zw + r0.xy;
  r0.xy = v0.zz * cb0[46].zw + r0.xy;
  r0.xy = cb0[47].zw + r0.xy;
  r0.x = r0.x / r0.y;
  r0.x = -cb0[70].z + r0.x;
  r0.x = -cb2[29].y + r0.x;
  r0.x = abs(r0.x) / cb2[29].z;
  r0.x = -r0.x * cb2[29].w + 1;
  r0.y = cb2[28].z * v3.y + cb2[28].w;
  r0.y = -cb2[29].x * r0.y + 1;
  r0.y = -r0.y * r0.x + 1;
  r0.z = cb1[2].x * cb0[142].z;
  r0.z = cb2[30].x * r0.z;
  r0.zw = cb2[17].xy * r0.zz;
  r0.x = v3.x;
  r1.xy = r0.xy * cb2[16].xy + r0.zw;
  r0.xy = r0.xy * cb2[18].xy + float2(0.200000003,0.200000003);
  r0.xy = r0.zw * float2(0.699999988,0.699999988) + r0.xy;
  r0.z = t0.SampleBias(s0_s, r0.xy, cb0[143].y).x;
  r2.y = r0.z * 2 + -1;
  r2.x = 0;
  r0.zw = cb2[31].xx * r2.xy;
  r1.z = 0.5 + cb0[142].z;
  r1.z = frac(r1.z);
  r2.xy = r0.zw * r1.zz + r1.xy;
  r1.w = t0.SampleBias(s0_s, r2.xy, cb0[143].y).x;
  r1.w = r1.w * 2 + -1;
  r2.x = frac(cb0[142].z);
  r1.xy = r0.zw * r2.xx + r1.xy;
  r2.xy = r0.zw * r2.xx + r0.xy;
  r0.xy = r0.zw * r1.zz + r0.xy;
  r0.z = r1.z + r1.z;
  r0.x = t0.SampleBias(s0_s, r0.xy, cb0[143].y).y;
  r0.x = r0.x * 2 + -1;
  r0.y = t0.SampleBias(s0_s, r2.xy, cb0[143].y).y;
  r0.y = r0.y * 2 + -1;
  r0.w = t0.SampleBias(s0_s, r1.xy, cb0[143].y).x;
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
  r0.x = r0.x * cb2[31].y + v3.x;
  r0.x = r0.x * 2 + -1;
  r0.x = 1 + -abs(r0.x);
  r0.x = r0.x * cb2[31].w + -cb2[31].w;
  r0.x = saturate(cb2[32].y + r0.x);
  r0.yz = -cb0[129].xy + v0.xy;
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
  return;
}