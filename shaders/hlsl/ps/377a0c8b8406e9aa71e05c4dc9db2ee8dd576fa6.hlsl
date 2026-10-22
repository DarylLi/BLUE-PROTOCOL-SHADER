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
  float4 v1 : TEXCOORD0,
  uint v2 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v0.yyyy;
  r0.xyzw = v0.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v0.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb0[70].xyz + r0.xyz;
  r1.xy = r0.xy / cb2[16].zz;
  r0.xyz = -cb0[67].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb2[17].w * r0.x;
  r0.y = t0.SampleBias(s0_s, r1.xy, cb0[143].y).x;
  r0.z = cb2[16].w + -cb2[2].x;
  r0.y = saturate(r0.y * r0.z + cb2[2].x);
  r0.y = cb2[17].x + r0.y;
  r0.y = r0.y * -cb2[17].y + cb2[17].y;
  r0.x = r0.y * r0.x + cb0[143].y;
  r0.x = t1.SampleBias(s1_s, v1.xy, r0.x).w;
  r0.y = cmp(cb0[31].w < 1);
  r1.x = v0.z;
  r1.y = 1;
  r0.zw = v0.ww * r1.xy;
  r1.x = r0.z * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.y = r0.z * cb0[65].x + cb0[65].y;
  r1.x = r1.y + r1.x;
  r0.y = r0.y ? r0.w : r1.x;
  r1.x = cb1[1].w * 0.617499948 + -r0.y;
  r1.yz = float2(0.649999976,0.487499982) * cb1[1].ww;
  r1.x = saturate(r1.x / r1.z);
  r1.z = -cb1[1].w * 0.649999976 + 8000;
  r1.x = r1.x * r1.z + r1.y;
  r1.y = cb2[28].y + r0.y;
  r0.y = r0.y / cb2[28].y;
  r1.x = r1.y / r1.x;
  r1.y = cb2[28].x * cb1[1].w;
  r1.z = cmp(r1.y >= 0);
  r1.y = cmp(9.99999975e-006 < abs(r1.y));
  r1.x = r1.z ? r1.x : r0.y;
  r0.y = r1.y ? r1.x : r0.y;
  r1.xyz = -cb0[129].xxy + v0.xxy;
  r2.xy = cb0[152].xx + r1.yz;
  r2.xy = (uint2)r2.xy;
  r1.w = (uint)r2.y << 1;
  r1.w = (int)r1.w + (int)r2.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r1.x = r1.x * cb0[130].z + -0.469999999;
  r1.xyz = float3(4.93230057,0.015625,0.015625) * r1.xyz;
  r1.x = cos(r1.x);
  r1.x = 0.899999976 + r1.x;
  r1.x = saturate(0.555555582 * r1.x);
  r1.y = t2.SampleBias(s2_s, r1.yz, cb0[143].y).x;
  r1.y = r1.w + r1.y;
  r1.y = 0.166666672 * r1.y;
  r1.z = cmp(9.99999975e-006 < abs(cb2[28].x));
  r1.w = 1 + cb2[28].x;
  r1.z = r1.z ? r1.w : 1.39999998;
  r1.x = r1.z + -r1.x;
  r0.y = r0.y * r1.x + r1.y;
  r1.x = cb2[30].x * r1.y;
  r0.y = saturate(-0.5 + r0.y);
  r0.x = r0.x * r0.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = log2(v1.y);
  r0.x = cb2[30].y * r0.x;
  r0.x = exp2(r0.x);
  r0.y = cmp(0 >= v1.y);
  r0.x = r0.y ? 0 : r0.x;
  r0.x = r1.x * r0.x + r0.w;
  r0.x = r0.z / r0.x;
  r0.x = min(v0.z, r0.x);
  oDepthLE = cb0[144].w ? v0.z : r0.x;
  o0.xyzw = float4(0,0,0,0);
  return;
}