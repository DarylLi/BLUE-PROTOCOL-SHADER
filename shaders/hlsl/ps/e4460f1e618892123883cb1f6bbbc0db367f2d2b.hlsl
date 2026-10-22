// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v0.xy;
  r0.zw = (int2)r0.xy & int2(1,1);
  r0.xy = (uint2)r0.xy;
  r0.xy = cb0[1].zw * r0.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = cmp(v0.z < r0.x);
  r0.y = (int)r0.w ^ (int)r0.z;
  r0.y = cmp(0 < (uint)r0.y);
  r0.y = r0.y ? 1.000000 : 0;
  r0.y = r0.x ? r0.y : 1;
  r0.x = r0.x ? 0.400000006 : 1;
  r1.xyz = v1.www * r0.xxx;
  r0.xyzw = v1.xyzw * r0.yyyy;
  r1.w = 1;
  o0.xyzw = r1.xyzw * r0.xyzw;
  return;
}