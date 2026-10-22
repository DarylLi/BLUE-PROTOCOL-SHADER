// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[75];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
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
  float4 v2 : TEXCOORD0,
  uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z * cb3[58].z + v2.x;
  r0.z = cb1[142].z * cb3[59].z + v2.y;
  r0.xy = cb3[59].yw * r0.xz;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb1[143].y).y;
  r0.x = 0.5 + -r0.x;
  r0.x = dot(r0.xx, cb3[60].yy);
  r0.y = v2.x * 2 + -1;
  r0.z = saturate(r0.y);
  r0.y = 1 + -abs(r0.y);
  r0.z = ceil(r0.z);
  r0.z = r0.z * 0.5 + r0.y;
  r0.z = cb1[142].z * cb3[56].z + r0.z;
  r1.x = cb3[57].y * r0.z;
  r0.z = cb1[142].z * cb3[57].z + v2.y;
  r1.y = cb3[57].w * r0.z;
  r0.xz = r1.xy + r0.xx;
  r0.x = t1.SampleBias(s1_s, r0.xz, cb1[143].y).x;
  r0.x = 0.5 + -r0.x;
  r0.x = dot(r0.xx, cb3[60].ww);
  r0.x = r0.y + r0.x;
  r0.x = r0.x * 10 + cb3[74].x;
  r0.x = saturate(-10 + r0.x);
  r0.x = ceil(r0.x);
  r0.y = t0.SampleBias(s0_s, v2.xy, cb1[143].y).x;
  r0.y = -1 + r0.y;
  r0.z = cb3[62].z + r0.y;
  r0.y = cb3[63].w + r0.y;
  r0.yz = saturate(ceil(r0.yz));
  r0.w = 1 + -r0.z;
  r0.z = cb3[73].z * r0.w + r0.z;
  r0.x = r0.z * r0.x;
  r0.z = 1 + -r0.y;
  r0.y = cb3[74].y * r0.z + r0.y;
  r0.x = r0.x * r0.y;
  r0.x = saturate(ceil(r0.x));
  r0.yz = -cb1[129].xy + v5.xy;
  r1.xy = cb1[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t2.SampleBias(s2_s, r0.yz, cb1[143].y).x;
  r0.zw = (uint2)r1.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.y = 0.166666672 * r0.y;
  r0.z = saturate(cb1[142].w * cb2[0].x + cb2[0].y);
  r0.y = cb3[73].y * r0.z + r0.y;
  r0.y = -0.5 + r0.y;
  r0.x = r0.y * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = cb0[1].xyzw;
  return;
}