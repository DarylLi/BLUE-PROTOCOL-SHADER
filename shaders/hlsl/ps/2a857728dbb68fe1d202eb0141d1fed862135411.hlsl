// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[18];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[153];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD6,
  float4 v2 : TEXCOORD7,
  float4 v3 : TEXCOORD10,
  float4 v4 : TEXCOORD11,
  float4 v5 : COLOR0,
  float4 v6 : COLOR1,
  float4 v7 : TEXCOORD0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = floor(v0.xy);
  r0.x = dot(r0.xy, float2(347.834503,3343.28369));
  r0.x = cos(r0.x);
  r0.x = 1000 * r0.x;
  r0.x = frac(r0.x);
  r0.y = 1 + v6.w;
  r0.y = cmp(r0.x < r0.y);
  r0.x = cmp(v6.w < r0.x);
  r0.z = cmp(v6.w < 0);
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = cmp((int)r0.x == 0);
  r0.y = cmp(0.00100000005 < abs(v6.w));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) discard;
  r0.x = v0.z;
  r0.y = 1;
  r0.xy = v0.ww * r0.xy;
  r0.z = r0.x * cb0[65].z + -cb0[65].w;
  r0.z = 1 / r0.z;
  r0.x = r0.x * cb0[65].x + cb0[65].y;
  r0.x = r0.x + r0.z;
  r0.z = cmp(cb0[31].w < 1);
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = r0.x / cb1[16].z;
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
  r0.y = cb1[17].x + -r0.y;
  r0.z = t0.SampleBias(s0_s, r0.zw, cb0[143].y).x;
  r0.z = r1.x + r0.z;
  r0.z = 0.166666672 * r0.z;
  r0.x = r0.x * r0.y + r0.z;
  r0.x = saturate(-0.5 + r0.x);
  r0.x = r0.x * v6.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.xyz = v1.xyz / v1.www;
  r0.xy = -cb0[126].xy + r0.xy;
  r1.xyz = v2.xyz / v2.www;
  r1.xy = -cb0[126].zw + r1.xy;
  r0.xyz = -r1.xyz + r0.xyz;
  o0.xy = r0.xy * float2(0.249500006,0.249500006) + float2(0.499992371,0.499992371);
  r0.x = (uint)r0.z >> 16;
  r0.y = (int)r0.z & 0x0000ffff;
  r0.xy = (uint2)r0.xy;
  r0.y = r0.y * 1.52590219e-005 + 1.52590223e-006;
  r0.x = r0.x * 1.52590219e-005 + 1.52590223e-006;
  o0.zw = min(float2(1,1), r0.xy);
  return;
}