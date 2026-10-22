// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[66];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb0[1].xy + v0.xy;
  r0.xy = r0.xy / cb0[1].zw;
  r0.zw = float2(1,1) + -r0.xy;
  r0.x = r0.x * r0.z;
  r0.x = r0.x * r0.y;
  r0.x = r0.x * r0.w;
  r0.x = -r0.x * 8 + 1;
  r0.x = r0.x * r0.x;
  r0.x = r0.x * r0.x;
  r0.y = t0.SampleLevel(s0_s, v0.xy, 0).x;
  r0.z = r0.y * cb1[65].z + -cb1[65].w;
  r0.y = r0.y * cb1[65].x + cb1[65].y;
  r0.z = 1 / r0.z;
  r0.y = r0.y + r0.z;
  r0.y = saturate(cb0[3].x * r0.y);
  o0.x = max(r0.y, r0.x);
  o0.yzw = float3(1,1,1);
  return;
}