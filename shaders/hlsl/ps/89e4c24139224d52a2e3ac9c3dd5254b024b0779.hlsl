// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r1.xy = cmp(cb0[1].xz == float2(1,1));
  r2.xyzw = cb0[0].xxxx * r0.xyzw;
  r2.xyzw = cb0[0].yyyy * r2.xyzw;
  r0.xyzw = r1.xxxx ? r2.xyzw : r0.xyzw;
  if (r1.y != 0) {
    r1.xyzw = t1.Sample(s1_s, v0.xy).xyzw;
    r2.x = cmp(cb0[1].y == 0.000000);
    r3.xyzw = saturate(r1.xyzw + r0.xyzw);
    r1.xyzw = saturate(r1.xyzw + -r0.xyzw);
    o0.xyzw = r2.xxxx ? r3.xyzw : r1.xyzw;
  } else {
    o0.xyzw = r0.xyzw;
  }
  return;
}