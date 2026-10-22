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
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cmp(cb0[0].xyzw != float4(0,0,0,0));
  r0.xy = (int2)r0.zw | (int2)r0.xy;
  r0.x = (int)r0.y | (int)r0.x;
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.y = dot(r1.xyzw, cb0[0].xyzw);
  r0.xyzw = r0.xxxx ? r0.yyyy : r1.xyzw;
  r0.w = dot(r0.xyzw, cb0[1].xyzw);
  o0.xyzw = v1.xyzw * r0.xyzw;
  o1.xyzw = float4(0,0,0,0);
  return;
}