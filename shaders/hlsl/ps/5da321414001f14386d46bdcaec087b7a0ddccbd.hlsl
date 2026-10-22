// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[32];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD6,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v0.z;
  r0.y = 1;
  r0.xy = v0.ww * r0.xy;
  r0.z = r0.x * cb0[65].z + -cb0[65].w;
  r0.z = 1 / r0.z;
  r0.x = r0.x * cb0[65].x + cb0[65].y;
  r0.x = r0.x + r0.z;
  r0.z = cmp(cb0[31].w < 1);
  r0.x = r0.z ? r0.y : r0.x;
  r0.y = cb1[1].w * 0.617499948 + -r0.x;
  r0.zw = float2(0.649999976,0.487499982) * cb1[1].ww;
  r0.y = saturate(r0.y / r0.w);
  r0.w = -cb1[1].w * 0.649999976 + 8000;
  r0.y = r0.y * r0.w + r0.z;
  r0.z = cb2[29].z + r0.x;
  r0.x = r0.x / cb2[29].z;
  r0.y = r0.z / r0.y;
  r0.z = cb2[29].y * cb1[1].w;
  r0.w = cmp(r0.z >= 0);
  r0.z = cmp(9.99999975e-006 < abs(r0.z));
  r0.y = r0.w ? r0.y : r0.x;
  r0.x = r0.z ? r0.y : r0.x;
  r0.yzw = -cb0[129].xxy + v0.xxy;
  r1.xy = cb0[152].xx + r0.zw;
  r1.xy = (uint2)r1.xy;
  r1.y = (uint)r1.y << 1;
  r1.x = (int)r1.y + (int)r1.x;
  r1.x = (uint)r1.x % 5;
  r1.x = (uint)r1.x;
  r0.y = r0.y * cb0[130].z + -0.469999999;
  r0.yzw = float3(4.93230057,0.015625,0.015625) * r0.yzw;
  r0.y = cos(r0.y);
  r0.y = 0.899999976 + r0.y;
  r0.y = saturate(0.555555582 * r0.y);
  r0.z = t1.SampleBias(s1_s, r0.zw, cb0[143].y).x;
  r0.z = r1.x + r0.z;
  r0.z = 0.166666672 * r0.z;
  r0.w = cmp(9.99999975e-006 < abs(cb2[29].y));
  r1.x = 1 + cb2[29].y;
  r0.w = r0.w ? r1.x : 1.39999998;
  r0.y = r0.w + -r0.y;
  r0.x = r0.x * r0.y + r0.z;
  r0.x = saturate(-0.5 + r0.x);
  r1.xyzw = cb0[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v0.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r1.xyz = -cb0[67].xyz + r1.xyz;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / cb2[30].y;
  r0.y = saturate(r0.y * cb2[31].x + -cb2[30].w);
  r0.y = r0.y * 3 + r0.z;
  r0.y = -1.5 + r0.y;
  r0.x = r0.x * r0.y;
  r0.y = cb0[142].z * cb2[25].z + v3.x;
  r1.x = cb2[26].y * r0.y;
  r0.y = cb0[142].z * cb2[26].z + v3.y;
  r1.y = cb2[26].w * r0.y;
  r0.y = t0.SampleBias(s0_s, r1.xy, cb0[143].y).x;
  r0.y = saturate(r0.y * cb2[27].y + -cb2[27].y);
  r0.x = r0.x * r0.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}