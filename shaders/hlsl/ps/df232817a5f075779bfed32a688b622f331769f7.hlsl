// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * cb0[34].zw + -cb0[27].zw;
  r0.xy = max(cb0[33].xy, r0.xy);
  r0.xy = min(cb0[33].zw, r0.xy);
  r0.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r1.xy = cb0[34].zw * v0.xy;
  r1.xyzw = cb0[27].zwzw * float4(1,-1,-1,1) + r1.xyxy;
  r1.xyzw = max(cb0[33].xyxy, r1.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, r1.zw, 0).xyzw;
  r0.xyzw = r2.xyzw + r0.xyzw;
  r0.xyzw = r0.xyzw + r1.xyzw;
  r1.xy = v0.xy * cb0[34].zw + cb0[27].zw;
  r1.xy = max(cb0[33].xy, r1.xy);
  r1.xy = min(cb0[33].zw, r1.xy);
  r1.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r0.xyzw = float4(0.25,0.25,0.25,0.25) * r0.xyzw;
  o0.xyz = max(float3(0,0,0), r0.xyz);
  o0.w = r0.w;
  return;
}