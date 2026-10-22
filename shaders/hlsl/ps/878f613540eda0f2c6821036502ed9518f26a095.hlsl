// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[54];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  linear noperspective float4 v1 : TEXCOORD1,
  linear noperspective float4 v2 : TEXCOORD2,
  linear noperspective float4 v3 : TEXCOORD3,
  linear noperspective float4 v4 : TEXCOORD4,
  linear noperspective float4 v5 : TEXCOORD5,
  linear noperspective float4 v6 : TEXCOORD6,
  linear noperspective float4 v7 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
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
  r1.xyzw = cb0[42].xyzw * r1.xyzw;
  r0.xyzw = r0.xyzw * cb0[41].xyzw + r1.xyzw;
  r1.xyzw = max(cb0[33].xyxy, v2.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v2.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, r1.zw, 0).xyzw;
  r1.xyzw = r2.yyyy * r1.xyzw;
  r2.xyzw = r3.xyzw * r2.xxxx;
  r0.xyzw = r2.xyzw * cb0[43].xyzw + r0.xyzw;
  r0.xyzw = r1.xyzw * cb0[44].xyzw + r0.xyzw;
  r1.xyzw = max(cb0[33].xyxy, v3.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v3.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, r1.zw, 0).xyzw;
  r1.xyzw = r2.yyyy * r1.xyzw;
  r2.xyzw = r3.xyzw * r2.xxxx;
  r0.xyzw = r2.xyzw * cb0[45].xyzw + r0.xyzw;
  r0.xyzw = r1.xyzw * cb0[46].xyzw + r0.xyzw;
  r1.xyzw = max(cb0[33].xyxy, v4.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v4.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, r1.zw, 0).xyzw;
  r1.xyzw = r2.yyyy * r1.xyzw;
  r2.xyzw = r3.xyzw * r2.xxxx;
  r0.xyzw = r2.xyzw * cb0[47].xyzw + r0.xyzw;
  r0.xyzw = r1.xyzw * cb0[48].xyzw + r0.xyzw;
  r1.xyzw = max(cb0[33].xyxy, v5.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v5.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, r1.zw, 0).xyzw;
  r1.xyzw = r2.yyyy * r1.xyzw;
  r2.xyzw = r3.xyzw * r2.xxxx;
  r0.xyzw = r2.xyzw * cb0[49].xyzw + r0.xyzw;
  r0.xyzw = r1.xyzw * cb0[50].xyzw + r0.xyzw;
  r1.xyzw = max(cb0[33].xyxy, v6.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v6.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, r1.zw, 0).xyzw;
  r1.xyzw = r2.yyyy * r1.xyzw;
  r2.xyzw = r3.xyzw * r2.xxxx;
  r0.xyzw = r2.xyzw * cb0[51].xyzw + r0.xyzw;
  r0.xyzw = r1.xyzw * cb0[52].xyzw + r0.xyzw;
  r1.xy = max(cb0[33].xy, v7.xy);
  r1.xy = min(cb0[33].zw, r1.xy);
  r1.zw = -v7.xy + r1.xy;
  r2.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r1.xy = saturate(-abs(r1.zw) * cb0[27].xy + float2(1,1));
  r1.x = r1.x * r1.y;
  r1.xyzw = r1.xxxx * r2.xyzw;
  o0.xyzw = r1.xyzw * cb0[53].xyzw + r0.xyzw;
  return;
}