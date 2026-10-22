// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[30];
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
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  uint v5 : SV_IsFrontFace0,
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
  r0.y = 1 + v3.w;
  r0.y = cmp(r0.x < r0.y);
  r0.x = cmp(v3.w < r0.x);
  r0.z = cmp(v3.w < 0);
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = cmp((int)r0.x == 0);
  r0.y = cmp(0.00100000005 < abs(v3.w));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) discard;
  r0.xyzw = cb0[45].xyzw * v0.yyyy;
  r0.xyzw = v0.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v0.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb0[70].xyz + r0.xyz;
  r1.xy = r0.xy / cb1[27].xx;
  r0.w = t0.SampleBias(s0_s, r1.xy, cb0[143].y).x;
  r1.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = cb1[27].y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = cb1[27].z * r1.x;
  r0.w = r0.w ? -0 : -r1.x;
  r0.w = cb1[28].x + r0.w;
  r0.w = 1 + r0.w;
  r1.xyz = -cb0[67].xyz + r0.xyz;
  r0.xy = r0.xy / cb1[18].yy;
  r0.x = t0.SampleBias(s0_s, r0.xy, cb0[143].y).x;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = sqrt(r0.y);
  r0.z = r0.y / cb1[28].y;
  r0.y = cb1[19].w * r0.y;
  r1.x = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r1.x = cb1[28].z * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r0.z = r0.z ? 0 : r1.x;
  r0.z = saturate(r0.w * r0.z);
  r0.z = 1 + -r0.z;
  r0.w = cb1[18].z + -cb1[18].w;
  r0.x = saturate(r0.x * r0.w + cb1[18].w);
  r0.x = cb1[19].x + r0.x;
  r0.x = r0.x * -cb1[19].y + cb1[19].y;
  r0.x = r0.x * r0.y + cb0[143].y;
  r0.x = t1.SampleBias(s1_s, v4.xy, r0.x).w;
  r0.x = r0.x * r0.z;
  r1.x = v0.z;
  r1.y = 1;
  r0.yz = v0.ww * r1.xy;
  r0.w = r0.y * cb0[65].z + -cb0[65].w;
  r0.w = 1 / r0.w;
  r0.y = r0.y * cb0[65].x + cb0[65].y;
  r0.y = r0.y + r0.w;
  r0.w = cmp(cb0[31].w < 1);
  r0.y = r0.w ? r0.z : r0.y;
  r0.y = r0.y / cb1[28].w;
  r1.xyz = -cb0[129].xxy + v0.xxy;
  r0.zw = cb0[152].xx + r1.yz;
  r0.zw = (uint2)r0.zw;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r1.yz = float2(0.015625,0.015625) * r1.yz;
  r0.w = r1.x * cb0[130].z + -0.469999999;
  r0.w = 4.93230057 * r0.w;
  r0.w = cos(r0.w);
  r0.w = 0.899999976 + r0.w;
  r0.w = saturate(0.555555582 * r0.w);
  r0.w = cb1[29].y + -r0.w;
  r1.x = t2.SampleBias(s2_s, r1.yz, cb0[143].y).x;
  r0.z = r1.x + r0.z;
  r0.z = 0.166666672 * r0.z;
  r0.y = r0.y * r0.w + r0.z;
  r0.y = saturate(-0.5 + r0.y);
  r0.x = r0.x * r0.y;
  r0.x = r0.x * v3.y + -0.333299994;
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