// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[4].x != 1.000000);
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r2.x = dot(r1.xyzw, cb0[0].xyzw);
  r2.y = dot(r1.xyzw, cb0[1].xyzw);
  r2.z = dot(r1.xyzw, cb0[2].xyzw);
  r1.w = dot(r1.xyzw, cb0[3].xyzw);
  r0.yzw = saturate(r2.xyz);
  r0.yzw = log2(r0.yzw);
  r0.yzw = cb0[4].xxx * r0.yzw;
  r0.yzw = exp2(r0.yzw);
  r1.xyz = r0.xxx ? r0.yzw : r2.xyz;
  o0.xyzw = v1.xyzw * r1.xyzw;
  o1.xyzw = float4(0,0,0,0);
  return;
}