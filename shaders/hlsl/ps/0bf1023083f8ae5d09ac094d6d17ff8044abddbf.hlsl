// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[58];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.z = cb0[57].z * 0.25 + v0.x;
  r0.xyw = -cb0[57].zww * float3(0.25,0.25,0.25) + v0.xyy;
  r0.z = t0.Sample(s0_s, r0.zw).x;
  r0.x = t0.Sample(s0_s, r0.xy).x;
  r0.xz = saturate(r0.xz);
  r0.x = min(r0.x, r0.z);
  r1.x = -cb0[57].z * 0.25 + v0.x;
  r1.yzw = cb0[57].wzw * float3(0.25,0.25,0.25) + v0.yxy;
  r0.y = t0.Sample(s0_s, r1.xy).x;
  r0.z = t0.Sample(s0_s, r1.zw).x;
  r0.yz = saturate(r0.yz);
  r0.y = min(r0.y, r0.z);
  o0.xyzw = min(r0.xxxx, r0.yyyy);
  return;
}