// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[131];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD6,
  float4 v2 : TEXCOORD7,
  float4 v3 : TEXCOORD10,
  float4 v4 : TEXCOORD11,
  float4 v5 : TEXCOORD0,
  float4 v6 : TEXCOORD1,
  uint v7 : PRIMITIVE_ID0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb0[129].xy + v0.xy;
  r0.xy = r0.xy * cb0[130].zw + float2(-0.5,-0.5);
  r0.xy = v0.ww * r0.xy;
  r0.zw = v0.zw;
  r1.xyw = float3(2,-2,1);
  r1.z = v0.w;
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.x = r0.z * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r0.z = r0.z * cb0[65].x + cb0[65].y;
  r0.z = r0.z + r1.x;
  r1.x = cmp(cb0[31].w < 1);
  r0.z = r1.x ? r0.w : r0.z;
  r0.xy = r0.xy / r0.ww;
  r0.xy = r0.xy * cb0[66].xy + cb0[66].wz;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.y = r0.x * cb0[65].z + -cb0[65].w;
  r0.x = r0.x * cb0[65].x + cb0[65].y;
  r0.y = 1 / r0.y;
  r0.x = r0.x + r0.y;
  r0.x = r0.x + -r0.z;
  r0.x = saturate(r0.x / cb1[11].y);
  r0.x = cb1[11].z * r0.x;
  r0.y = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.y = cb1[11].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = -0.337221563 + r0.y;
  r0.y = cmp(r0.y < 0);
  r0.x = (int)r0.y | (int)r0.x;
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