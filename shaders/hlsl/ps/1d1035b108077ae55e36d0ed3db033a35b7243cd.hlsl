// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[18];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
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
  out float4 o0 : SV_Target0,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb1[31].w < 1);
  r1.x = v5.z;
  r1.y = 1;
  r0.yz = v5.ww * r1.xy;
  r0.w = r0.y * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r1.x = r0.y * cb1[65].x + cb1[65].y;
  r0.w = r1.x + r0.w;
  r0.x = r0.x ? r0.z : r0.w;
  r0.w = cb2[1].w * 0.617499948 + -r0.x;
  r1.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r0.w = saturate(r0.w / r1.y);
  r1.y = -cb2[1].w * 0.649999976 + 8000;
  r0.w = r0.w * r1.y + r1.x;
  r1.x = cb3[16].x + r0.x;
  r1.yz = r0.xx / cb3[16].xz;
  r0.x = r1.x / r0.w;
  r0.w = cb3[15].w * cb2[1].w;
  r1.x = cmp(r0.w >= 0);
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.x = r1.x ? r0.x : r1.y;
  r0.x = r0.w ? r0.x : r1.y;
  r1.xyw = -cb1[129].xxy + v5.xxy;
  r2.xy = cb1[152].xx + r1.yw;
  r2.xy = (uint2)r2.xy;
  r0.w = (uint)r2.y << 1;
  r0.w = (int)r0.w + (int)r2.x;
  r0.w = (uint)r0.w % 5;
  r0.w = (uint)r0.w;
  r1.x = r1.x * cb1[130].z + -0.469999999;
  r1.xyw = float3(4.93230057,0.015625,0.015625) * r1.xyw;
  r1.x = cos(r1.x);
  r1.x = 0.899999976 + r1.x;
  r1.x = saturate(0.555555582 * r1.x);
  r1.y = t1.SampleBias(s1_s, r1.yw, cb1[143].y).x;
  r0.w = r1.y + r0.w;
  r0.w = 0.166666672 * r0.w;
  r1.y = cmp(9.99999975e-006 < abs(cb3[15].w));
  r1.w = 1 + cb3[15].w;
  r1.y = r1.y ? r1.w : 1.39999998;
  r1.x = r1.y + -r1.x;
  r0.x = r0.x * r1.x + r0.w;
  r0.w = cb3[16].y * r0.w;
  r0.x = saturate(-0.5 + r0.x);
  r1.xy = cb3[8].xx * v2.xy;
  r1.x = t0.SampleBias(s0_s, r1.xy, cb1[143].y).w;
  r0.x = r1.x * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = log2(r1.z);
  r1.x = cmp(0 >= r1.z);
  r0.x = cb3[16].w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = min(1, r0.x);
  r0.x = cb3[17].x * r0.x;
  r0.x = max(1, r0.x);
  r0.x = r1.x ? 1 : r0.x;
  r0.x = r0.w * r0.x + r0.z;
  r0.x = r0.y / r0.x;
  oDepthLE = min(v5.z, r0.x);
  o0.xyzw = cb0[1].xyzw;
  return;
}