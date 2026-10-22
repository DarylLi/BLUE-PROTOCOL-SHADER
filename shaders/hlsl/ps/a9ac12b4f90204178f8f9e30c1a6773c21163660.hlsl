// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[78];
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
  uint v4 : PRIMITIVE_ID0,
  float4 v5 : TEXCOORD6,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb1[129].xy + v6.xy;
  r0.zw = cb1[152].xx + r0.xy;
  r0.xy = float2(0.015625,0.015625) * r0.xy;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb1[143].y).x;
  r0.yz = (uint2)r0.zw;
  r0.z = (uint)r0.z << 1;
  r0.y = (int)r0.z + (int)r0.y;
  r0.y = (uint)r0.y % 5;
  r0.y = (uint)r0.y;
  r0.x = r0.y + r0.x;
  r0.y = saturate(cb1[142].w * cb2[0].x + cb2[0].y);
  r0.z = r0.x * 0.166666672 + r0.y;
  r0.x = 0.166666672 * r0.x;
  r0.x = cb3[75].x * r0.y + r0.x;
  r0.xy = float2(-0.5,-0.5) + r0.xz;
  r0.z = -cb3[75].w + v2.w;
  r0.y = r0.z * r0.y;
  r0.z = t0.SampleBias(s0_s, v3.xy, cb1[143].y).x;
  r0.z = -1 + r0.z;
  r0.w = cb3[62].z + r0.z;
  r0.z = cb3[63].w + r0.z;
  r0.zw = saturate(ceil(r0.zw));
  r1.x = 1 + -r0.w;
  r0.w = cb3[75].y * r1.x + r0.w;
  r0.y = r0.w * r0.y;
  r0.w = 1 + -r0.z;
  r0.z = cb3[76].x * r0.w + r0.z;
  r0.y = r0.y * r0.z;
  r0.y = saturate(ceil(r0.y));
  r0.x = r0.x * r0.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.xyzw = cb1[45].xyzw * v6.yyyy;
  r0.xyzw = v6.xxxx * cb1[44].xyzw + r0.xyzw;
  r0.xyzw = v6.zzzz * cb1[46].xyzw + r0.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb1[70].xyz + r0.xyz;
  r0.xyz = cb1[67].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = cb1[130].x / cb1[130].y;
  r0.y = 1.77777779 / r0.y;
  r0.y = max(1, r0.y);
  r0.z = 0.763943851 * cb1[128].x;
  r0.y = r0.z * r0.y;
  r0.xy = r0.xx * r0.yy + float2(-0.5,-300);
  r0.xy = saturate(float2(0.00333889807,0.000175438603) * r0.xy);
  r0.x = r0.x * -0.600000024 + 1;
  r0.x = r0.y * -0.200000003 + r0.x;
  r0.x = v3.z * r0.x;
  r1.x = v6.z;
  r1.y = 1;
  r0.yz = v6.ww * r1.xy;
  r0.x = r0.x * cb3[77].w + r0.z;
  r0.x = r0.y / r0.x;
  oDepthLE = min(v6.z, r0.x);
  o0.xyzw = cb0[1].xyzw;
  return;
}