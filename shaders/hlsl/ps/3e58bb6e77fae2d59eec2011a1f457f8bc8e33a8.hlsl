// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[3].zw);
  r0.xy = v0.xy / r0.xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r0.xy = r0.xy * cb0[2].zw + float2(0.5,0.5);
  r1.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r0.xyzw = t1.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r2.xyzw = r0.xyzw + -r1.xyzw;
  r3.xy = cb0[0].zx + -cb0[0].yy;
  r2.xyzw = r2.xyzw / r3.xxxx;
  r4.xyzw = cb0[0].wwww * r2.xyzw;
  r2.xyzw = cb0[1].xxxx * r2.xyzw;
  r2.xyzw = r2.xyzw * r3.xxxx;
  r2.xyzw = -r2.xyzw * float4(0.333333343,0.333333343,0.333333343,0.333333343) + r0.xyzw;
  r0.xyzw = -r2.xyzw + r0.xyzw;
  r4.xyzw = r4.xyzw * r3.xxxx;
  r3.x = r3.y / r3.x;
  r5.xyzw = r4.xyzw * float4(0.333333343,0.333333343,0.333333343,0.333333343) + r1.xyzw;
  r4.xyzw = float4(0.333333343,0.333333343,0.333333343,0.333333343) * r4.xyzw;
  r4.xyzw = r3.xxxx * r4.xyzw + r1.xyzw;
  r6.xyzw = -r5.xyzw + r2.xyzw;
  r5.xyzw = r3.xxxx * r6.xyzw + r5.xyzw;
  r0.xyzw = r3.xxxx * r0.xyzw + r2.xyzw;
  r0.xyzw = r0.xyzw + -r5.xyzw;
  r0.xyzw = r3.xxxx * r0.xyzw + r5.xyzw;
  r2.xyzw = r5.xyzw + -r4.xyzw;
  r2.xyzw = r3.xxxx * r2.xyzw + r4.xyzw;
  r0.xyzw = -r2.xyzw + r0.xyzw;
  r0.xyzw = r3.xxxx * r0.xyzw + r2.xyzw;
  r2.x = cmp(cb0[0].z != cb0[0].y);
  r0.xyzw = r2.xxxx ? r0.xyzw : r1.xyzw;
  r1.xyzw = float4(-0.5,-0.5,-0.5,-0.5) + cb0[3].xyxy;
  o0.xyzw = r1.xyzw + r0.xyzw;
  return;
}