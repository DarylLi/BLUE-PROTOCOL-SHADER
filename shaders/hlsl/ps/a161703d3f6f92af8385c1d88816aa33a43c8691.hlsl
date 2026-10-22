// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[21];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
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
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  uint v4 : PRIMITIVE_ID0,
  float4 v5 : TEXCOORD6,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z * cb4[9].z + v3.x;
  r0.z = cb1[142].z * cb4[10].z + v3.y;
  r0.xy = cb4[10].yw * r0.xz;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb1[143].y).x;
  r0.x = -0.5 + r0.x;
  r0.x = r0.x + r0.x;
  r1.x = cb4[11].z * r0.x;
  r1.y = cb4[12].x * r0.x;
  r0.x = t2.SampleBias(s2_s, v3.xy, cb1[143].y).y;
  r0.x = r0.x * cb4[12].y + cb4[12].z;
  r0.xy = r1.xy * r0.xx + v3.xy;
  r0.x = t3.SampleBias(s3_s, r0.xy, cb1[143].y).x;
  r0.x = -1 + r0.x;
  r0.y = cb4[13].w + r0.x;
  r0.x = cb4[15].x + r0.x;
  r0.xy = saturate(ceil(r0.xy));
  r0.z = 1 + -r0.y;
  r0.y = cb4[19].z * r0.z + r0.y;
  r0.z = -cb4[20].x + v2.w;
  r0.y = r0.y * r0.z;
  r0.z = 1 + -r0.x;
  r0.x = cb4[20].y * r0.z + r0.x;
  r0.x = r0.y * r0.x;
  r0.x = saturate(ceil(r0.x));
  r0.yz = -cb1[129].xy + v6.xy;
  r1.xy = cb1[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t4.SampleBias(s4_s, r0.yz, cb1[143].y).x;
  r0.zw = (uint2)r1.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.y = 0.166666672 * r0.y;
  r0.z = saturate(cb1[142].w * cb2[0].x + cb2[0].y);
  r0.y = cb4[19].y * r0.z + r0.y;
  r0.y = -0.5 + r0.y;
  r0.x = r0.y * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.zw = float2(0,1);
  r1.xw = float2(0,1);
  r2.x = min(0, cb3[7].w);
  r2.y = cmp(cb3[7].z < r2.x);
  r2.xz = -cb3[7].zy + r2.xx;
  r3.xyz = cb3[7].wzw + -cb3[7].zyy;
  r4.xy = r3.xy + -r2.xz;
  r0.xy = r4.yx / r3.yx;
  r1.z = r0.x;
  r3.xy = r2.xz / r3.xy;
  r2.x = r2.y ? r2.x : r2.z;
  r4.xyz = r2.xxx / r3.zzz;
  r0.x = r3.x;
  r1.y = r3.y;
  r0.xyzw = r2.yyyy ? r0.xyzw : r1.xyzw;
  r4.w = 1;
  r1.xyzw = cb0[3].xxxx * r4.xyzw;
  r0.xyzw = r0.xyzw * cb0[3].yyyy + r1.xyzw;
  r0.xyzw = r0.xyzw * cb0[2].xxxx + cb0[2].yyyy;
  r1.xyzw = cb3[9].xyzw * cb0[3].wwww;
  r0.xyzw = r0.xyzw * cb0[3].zzzz + r1.xyzw;
  r1.x = 1 + -cb0[2].z;
  r2.xyzw = cb3[8].xyzw * cb0[2].zzzz;
  r0.xyzw = r0.xyzw * r1.xxxx + r2.xyzw;
  r1.xy = float2(0.100000001,0.100000001) * cb0[1].xy;
  r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  o0.xyzw = r1.xyzw * r0.xyzw;
  return;
}