// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[36];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asint(cb0[32].xy);
  r0.xy = -r0.xy * cb1[132].zw + v0.xy;
  r0.x = t1.SampleLevel(s1_s, r0.xy, 0).x;
  r0.x = -1 + r0.x;
  r0.y = t0.SampleLevel(s0_s, v0.xy, 0).x;
  r0.z = r0.y * cb1[65].z + -cb1[65].w;
  r0.y = r0.y * cb1[65].x + cb1[65].y;
  r0.z = 1 / r0.z;
  r0.y = r0.y + r0.z;
  r0.z = -cb0[34].z + r0.y;
  r0.y = -cb0[35].x + r0.y;
  r0.y = saturate(cb0[35].y * r0.y);
  r0.z = saturate(cb0[34].w * r0.z);
  r0.z = 1 + -r0.z;
  r0.x = r0.z * r0.x;
  r0.x = r0.y * r0.x + 1;
  o0.xyzw = sqrt(r0.xxxx);
  return;
}