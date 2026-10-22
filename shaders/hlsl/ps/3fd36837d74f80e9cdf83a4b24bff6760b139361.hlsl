// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[46];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  linear noperspective float4 v1 : TEXCOORD1,
  linear noperspective float4 v2 : TEXCOORD2,
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
  r1.xyzw = cb0[44].xyzw * r1.xyzw;
  r0.xyzw = r0.xyzw * cb0[43].xyzw + r1.xyzw;
  r1.xy = max(cb0[33].xy, v2.xy);
  r1.xy = min(cb0[33].zw, r1.xy);
  r1.zw = -v2.xy + r1.xy;
  r2.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r1.xy = saturate(-abs(r1.zw) * cb0[27].xy + float2(1,1));
  r1.x = r1.x * r1.y;
  r1.xyzw = r1.xxxx * r2.xyzw;
  r0.xyzw = r1.xyzw * cb0[45].xyzw + r0.xyzw;
  r1.xy = max(cb0[40].xy, v0.xy);
  r1.xy = min(cb0[40].zw, r1.xy);
  r1.xyzw = t1.SampleLevel(s1_s, r1.xy, 0).xyzw;
  o0.xyzw = r1.xyzw + r0.xyzw;
  return;
}