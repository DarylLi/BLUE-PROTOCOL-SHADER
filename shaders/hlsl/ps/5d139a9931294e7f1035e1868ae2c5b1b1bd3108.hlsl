// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

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
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.xy, 0).w;
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r1.xy = cmp((int2)r0.zz == int2(12,13));
  r0.zw = cmp((int2)r0.zz != int2(0,14));
  r1.x = (int)r1.y | (int)r1.x;
  r1.y = t1.SampleLevel(s0_s, r0.xy, 0).w;
  r0.x = t2.SampleLevel(s1_s, r0.xy, 0).x;
  r0.y = r1.x ? r1.y : 1;
  r1.x = ~(int)r1.x;
  r0.z = r0.z ? r1.x : 0;
  r0.z = r0.w ? r0.z : 0;
  r0.z = r0.z ? 1.000000 : 0;
  r0.z = cb0[0].y * r0.z;
  r0.x = r0.y * r0.x + -1;
  o0.w = r0.z * r0.x + 1;
  o0.xyz = float3(0,0,0);
  return;
}