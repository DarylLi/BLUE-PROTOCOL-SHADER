// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  linear noperspective float2 v1 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t1.Sample(s0_s, v0.xy).w;
  r0.y = t1.Sample(s0_s, v0.zw).y;
  r0.zw = t1.Sample(s0_s, v1.xy).zx;
  r1.x = dot(r0.xyzw, float4(1,1,1,1));
  r1.x = cmp(r1.x < 9.99999975e-006);
  if (r1.x != 0) {
    o0.xyzw = t0.SampleLevel(s0_s, v1.xy, 0).xyzw;
    return;
  } else {
    r1.xy = max(r0.xy, r0.zw);
    r1.x = cmp(r1.y < r1.x);
    r2.xz = r1.xx ? r0.xz : 0;
    r2.yw = r1.xx ? float2(0,0) : r0.yw;
    r0.x = r1.x ? r0.x : r0.y;
    r0.y = r1.x ? r0.z : r0.w;
    r0.z = dot(r0.xy, float2(1,1));
    r0.xy = r0.xy / r0.zz;
    r1.xyzw = float4(1,1,-1,-1) * cb0[27].zwzw;
    r1.xyzw = r2.xyzw * r1.xyzw + v1.xyxy;
    r2.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
    r1.xyzw = t0.SampleLevel(s0_s, r1.zw, 0).xyzw;
    r1.xyzw = r1.xyzw * r0.yyyy;
    o0.xyzw = r0.xxxx * r2.xyzw + r1.xyzw;
    return;
  }
  return;
}