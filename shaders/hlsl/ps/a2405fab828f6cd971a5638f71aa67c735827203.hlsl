// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[31];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[45].xyzw * v5.yyyy;
  r0.xyzw = v5.xxxx * cb1[44].xyzw + r0.xyzw;
  r0.xyzw = v5.zzzz * cb1[46].xyzw + r0.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb1[70].xyz + r0.xyz;
  r1.xy = r0.xy / cb2[16].zz;
  r0.xyz = -cb1[67].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb2[17].w * r0.x;
  r0.y = t0.SampleBias(s0_s, r1.xy, cb1[143].y).x;
  r0.z = cb2[16].w + -cb2[2].x;
  r0.y = saturate(r0.y * r0.z + cb2[2].x);
  r0.y = cb2[17].x + r0.y;
  r0.y = r0.y * -cb2[17].y + cb2[17].y;
  r0.x = r0.y * r0.x + cb1[143].y;
  r0.x = t1.SampleBias(s1_s, v2.xy, r0.x).w;
  r0.yzw = -cb1[129].xxy + v5.xxy;
  r1.xy = cb1[152].xx + r0.zw;
  r1.xy = (uint2)r1.xy;
  r1.y = (uint)r1.y << 1;
  r1.x = (int)r1.y + (int)r1.x;
  r1.x = (uint)r1.x % 5;
  r1.x = (uint)r1.x;
  r0.y = r0.y * cb1[130].z + -0.469999999;
  r0.yzw = float3(4.93230057,0.015625,0.015625) * r0.yzw;
  r0.y = cos(r0.y);
  r0.y = 0.899999976 + r0.y;
  r0.y = saturate(0.555555582 * r0.y);
  r0.y = cb2[28].z + -r0.y;
  r0.z = t2.SampleBias(s2_s, r0.zw, cb1[143].y).x;
  r0.z = r1.x + r0.z;
  r0.z = 0.166666672 * r0.z;
  r0.w = cmp(cb1[31].w < 1);
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r1.z = r1.x * cb1[65].z + -cb1[65].w;
  r1.z = 1 / r1.z;
  r1.w = r1.x * cb1[65].x + cb1[65].y;
  r1.z = r1.w + r1.z;
  r0.w = r0.w ? r1.y : r1.z;
  r0.w = r0.w / cb2[28].x;
  r0.y = r0.w * r0.y + r0.z;
  r0.z = cb2[30].y * r0.z;
  r0.y = saturate(-0.5 + r0.y);
  r0.x = r0.x * r0.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = log2(v2.y);
  r0.x = cb2[30].z * r0.x;
  r0.x = exp2(r0.x);
  r0.y = cmp(0 >= v2.y);
  r0.x = r0.y ? 0 : r0.x;
  r0.x = r0.z * r0.x + r1.y;
  r0.x = r1.x / r0.x;
  oDepthLE = min(v5.z, r0.x);
  o0.xyzw = cb0[2].xyzw;
  return;
}