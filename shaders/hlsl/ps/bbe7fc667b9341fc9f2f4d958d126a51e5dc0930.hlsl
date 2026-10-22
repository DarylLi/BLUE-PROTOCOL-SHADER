// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[81];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD0,
  float3 v3 : TEXCOORD7,
  float4 v4 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[142].z * cb2[64].z + v2.x;
  r0.z = cb0[142].z * cb2[65].z + v2.y;
  r0.xy = cb2[65].yw * r0.xz;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb0[143].y).y;
  r0.x = 0.5 + -r0.x;
  r0.x = dot(r0.xx, cb2[66].yy);
  r0.y = v2.x * 2 + -1;
  r0.z = saturate(r0.y);
  r0.y = 1 + -abs(r0.y);
  r0.z = ceil(r0.z);
  r0.z = r0.z * 0.5 + r0.y;
  r0.z = cb0[142].z * cb2[62].z + r0.z;
  r1.x = cb2[63].y * r0.z;
  r0.z = cb0[142].z * cb2[63].z + v2.y;
  r1.y = cb2[63].w * r0.z;
  r0.xz = r1.xy + r0.xx;
  r0.x = t1.SampleBias(s1_s, r0.xz, cb0[143].y).x;
  r0.x = 0.5 + -r0.x;
  r0.x = dot(r0.xx, cb2[66].ww);
  r0.x = r0.y + r0.x;
  r0.x = r0.x * 10 + cb2[80].x;
  r0.x = saturate(-10 + r0.x);
  r0.x = ceil(r0.x);
  r0.y = t0.SampleBias(s0_s, v2.xy, cb0[143].y).x;
  r0.y = -1 + r0.y;
  r0.z = cb2[68].z + r0.y;
  r0.y = cb2[69].w + r0.y;
  r0.yz = saturate(ceil(r0.yz));
  r0.w = 1 + -r0.z;
  r0.z = cb2[79].z * r0.w + r0.z;
  r0.x = r0.z * r0.x;
  r0.z = 1 + -r0.y;
  r0.y = cb2[80].y * r0.z + r0.y;
  r0.x = r0.x * r0.y;
  r0.x = saturate(ceil(r0.x));
  r0.yz = -cb0[129].xy + v4.xy;
  r1.xy = cb0[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t2.SampleBias(s2_s, r0.yz, cb0[143].y).x;
  r0.zw = (uint2)r1.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.y = 0.166666672 * r0.y;
  r0.z = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r0.y = cb2[79].y * r0.z + r0.y;
  r0.y = -0.5 + r0.y;
  r0.x = r0.y * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}