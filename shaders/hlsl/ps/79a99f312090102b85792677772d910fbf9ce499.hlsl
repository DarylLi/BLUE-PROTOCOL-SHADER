// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[100];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  uint v5 : PRIMITIVE_ID0,
  float4 v6 : TEXCOORD6,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z * cb3[76].y + v3.x;
  r0.z = cb1[142].z * cb3[77].y + v3.y;
  r0.xy = cb3[77].xz * r0.xz;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb1[143].y).x;
  r0.x = -0.5 + r0.x;
  r0.x = r0.x + r0.x;
  r0.xy = cb3[78].yw * r0.xx;
  r0.z = t2.SampleBias(s2_s, v3.xy, cb1[143].y).y;
  r0.z = r0.z * cb3[79].x + cb3[79].y;
  r0.xy = r0.xy * r0.zz + v3.xy;
  r0.x = t0.SampleBias(s0_s, r0.xy, cb1[143].y).x;
  r0.x = -1 + r0.x;
  r0.y = cb3[80].z + r0.x;
  r0.x = cb3[81].w + r0.x;
  r0.xy = saturate(ceil(r0.xy));
  r0.z = 1 + -r0.y;
  r0.y = cb3[99].z * r0.z + r0.y;
  r0.z = 1 + -r0.x;
  r0.x = cb3[99].w * r0.z + r0.x;
  r0.x = r0.y * r0.x;
  r0.x = saturate(ceil(r0.x));
  r0.yz = -cb1[129].xy + v7.xy;
  r1.xy = cb1[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t3.SampleBias(s3_s, r0.yz, cb1[143].y).x;
  r0.zw = (uint2)r1.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.y = 0.166666672 * r0.y;
  r0.z = saturate(cb1[142].w * cb2[0].x + cb2[0].y);
  r0.y = cb3[99].y * r0.z + r0.y;
  r0.y = -0.5 + r0.y;
  r0.x = r0.y * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = cb0[1].xyzw;
  return;
}