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
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[3].w == 1.000000);
  r0.y = cmp(cb0[4].x >= cb0[4].y);
  r1.xyzw = cb0[4].xyxy * v0.xyxy;
  r0.zw = float2(-1,-1) + cb0[4].xy;
  r2.xy = cmp(float2(1,1) >= r1.xy);
  r3.xw = cmp(r1.xy >= r0.zw);
  r4.x = r2.x;
  r4.yw = float2(-1,0);
  r4.z = r3.x;
  r3.xz = float2(-1,0);
  r3.y = r2.y;
  r2.xyzw = r0.yyyy ? r4.xyzw : r3.xyzw;
  r0.y = 1 / cb0[3].w;
  r0.zw = r1.zw / cb0[3].ww;
  r0.zw = frac(r0.zw);
  r1.xy = cmp(r0.yy >= r0.zw);
  r3.x = -1 + cb0[3].w;
  r3.x = max(1, r3.x);
  r0.y = r3.x * r0.y;
  r1.zw = cmp(r0.zw >= r0.yy);
  r0.xyzw = r0.xxxx ? r2.xyzw : r1.xyzw;
  r1.yz = float2(1,1) / cb0[4].wz;
  r2.xy = -r1.zy * float2(0.5,0.5) + v0.xy;
  if (r0.x != 0) {
    r3.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
    r1.x = 0;
    r2.zw = r2.xy + r1.xy;
    r4.xyzw = t0.SampleLevel(s0_s, r2.zw, 0).xyzw;
    r5.xyzw = r4.xyzw + -r3.xyzw;
    r5.xyzw = r5.xyzw * float4(0.5,0.5,0.5,0.5) + r3.xyzw;
    r4.xyzw = r0.wwww ? r4.xyzw : r5.xyzw;
    o0.xyzw = r0.yyyy ? r3.xyzw : r4.xyzw;
  } else {
    if (r0.z != 0) {
      r1.w = 0;
      r3.xyzw = r2.xyxy + r1.zwzy;
      r4.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
      r3.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
      r5.xyzw = r3.xyzw + -r4.xyzw;
      r5.xyzw = r5.xyzw * float4(0.5,0.5,0.5,0.5) + r4.xyzw;
      r3.xyzw = r0.wwww ? r3.xyzw : r5.xyzw;
      o0.xyzw = r0.yyyy ? r4.xyzw : r3.xyzw;
    } else {
      r3.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
      r1.xw = float2(0,0);
      r4.xyzw = r2.xyxy + r1.xyzw;
      r5.xyzw = t0.SampleLevel(s0_s, r4.xy, 0).xyzw;
      r4.xyzw = t0.SampleLevel(s0_s, r4.zw, 0).xyzw;
      r0.xz = r2.xy + r1.zy;
      r1.xyzw = t0.SampleLevel(s0_s, r0.xz, 0).xyzw;
      r2.xyzw = r4.xyzw + -r3.xyzw;
      r2.xyzw = r2.xyzw * float4(0.5,0.5,0.5,0.5) + r3.xyzw;
      r1.xyzw = r1.xyzw + -r5.xyzw;
      r1.xyzw = r1.xyzw * float4(0.5,0.5,0.5,0.5) + r5.xyzw;
      r3.xyzw = r1.xyzw + -r2.xyzw;
      r3.xyzw = r3.xyzw * float4(0.5,0.5,0.5,0.5) + r2.xyzw;
      r1.xyzw = r0.wwww ? r1.xyzw : r3.xyzw;
      o0.xyzw = r0.yyyy ? r2.xyzw : r1.xyzw;
    }
  }
  return;
}