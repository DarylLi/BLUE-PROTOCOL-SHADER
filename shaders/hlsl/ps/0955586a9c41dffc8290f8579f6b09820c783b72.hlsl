// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[37];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  linear noperspective float4 v1 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = max(cb0[33].xyxy, v1.xyzw);
  r0.xyzw = min(cb0[33].zwzw, r0.xyzw);
  r1.xyzw = -v1.xyzw + r0.xyzw;
  r1.xyzw = saturate(-abs(r1.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r1.xy = r1.xz * r1.yw;
  r2.xyzw = t0.SampleLevel(s0_s, r0.zw, 0).xyzw;
  r0.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r0.xyzw = r1.xxxx * r0.xyzw;
  r1.xyzw = r2.xyzw * r1.yyyy;
  r1.xyzw = cb0[36].xyzw * r1.xyzw;
  o0.xyzw = r0.xyzw * cb0[35].xyzw + r1.xyzw;
  return;
}