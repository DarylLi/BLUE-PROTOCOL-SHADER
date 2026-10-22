// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

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
  r1.xyzw = t3.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r2.xyzw = t2.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r3.xyzw = -r2.xyzw + r1.xyzw;
  r0.z = cb0[1].z + -cb0[1].y;
  r3.xyzw = r3.xyzw / r0.zzzz;
  r4.xyzw = cb0[1].wwww * r3.xyzw;
  r3.xyzw = cb0[2].xxxx * r3.xyzw;
  r3.xyzw = r3.xyzw * r0.zzzz;
  r3.xyzw = -r3.xyzw * float4(0.333333343,0.333333343,0.333333343,0.333333343) + r1.xyzw;
  r1.xyzw = -r3.xyzw + r1.xyzw;
  r4.xyzw = r4.xyzw * r0.zzzz;
  r5.xyzw = r4.xyzw * float4(0.333333343,0.333333343,0.333333343,0.333333343) + r2.xyzw;
  r4.xyzw = float4(0.333333343,0.333333343,0.333333343,0.333333343) * r4.xyzw;
  r6.xyzw = -r5.xyzw + r3.xyzw;
  r0.w = -cb0[1].y + cb0[0].x;
  r0.z = r0.w / r0.z;
  r5.xyzw = r0.zzzz * r6.xyzw + r5.xyzw;
  r1.xyzw = r0.zzzz * r1.xyzw + r3.xyzw;
  r1.xyzw = r1.xyzw + -r5.xyzw;
  r1.xyzw = r0.zzzz * r1.xyzw + r5.xyzw;
  r3.xyzw = r0.zzzz * r4.xyzw + r2.xyzw;
  r4.xyzw = r5.xyzw + -r3.xyzw;
  r3.xyzw = r0.zzzz * r4.xyzw + r3.xyzw;
  r1.xyzw = -r3.xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * r1.xyzw + r3.xyzw;
  r0.z = cmp(cb0[1].z != cb0[1].y);
  r1.xyzw = r0.zzzz ? r1.xyzw : r2.xyzw;
  r2.xyzw = t1.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r0.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r3.xyzw = r2.xyzw + -r0.xyzw;
  r4.xy = cb0[0].zx + -cb0[0].yy;
  r3.xyzw = r3.xyzw / r4.xxxx;
  r5.xyzw = cb0[1].xxxx * r3.xyzw;
  r3.xyzw = cb0[0].wwww * r3.xyzw;
  r3.xyzw = r3.xyzw * r4.xxxx;
  r5.xyzw = r5.xyzw * r4.xxxx;
  r4.x = r4.y / r4.x;
  r5.xyzw = -r5.xyzw * float4(0.333333343,0.333333343,0.333333343,0.333333343) + r2.xyzw;
  r2.xyzw = -r5.xyzw + r2.xyzw;
  r2.xyzw = r4.xxxx * r2.xyzw + r5.xyzw;
  r6.xyzw = r3.xyzw * float4(0.333333343,0.333333343,0.333333343,0.333333343) + r0.xyzw;
  r3.xyzw = float4(0.333333343,0.333333343,0.333333343,0.333333343) * r3.xyzw;
  r3.xyzw = r4.xxxx * r3.xyzw + r0.xyzw;
  r5.xyzw = -r6.xyzw + r5.xyzw;
  r5.xyzw = r4.xxxx * r5.xyzw + r6.xyzw;
  r2.xyzw = -r5.xyzw + r2.xyzw;
  r2.xyzw = r4.xxxx * r2.xyzw + r5.xyzw;
  r5.xyzw = r5.xyzw + -r3.xyzw;
  r3.xyzw = r4.xxxx * r5.xyzw + r3.xyzw;
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r2.xyzw = r4.xxxx * r2.xyzw + r3.xyzw;
  r3.x = cmp(cb0[0].z != cb0[0].y);
  r0.xyzw = r3.xxxx ? r2.xyzw : r0.xyzw;
  r1.xyzw = r1.xyzw + -r0.xyzw;
  r0.xyzw = cb0[2].yyyy * r1.xyzw + r0.xyzw;
  r1.xyzw = float4(-0.5,-0.5,-0.5,-0.5) + cb0[3].xyxy;
  o0.xyzw = r1.xyzw + r0.xyzw;
  return;
}