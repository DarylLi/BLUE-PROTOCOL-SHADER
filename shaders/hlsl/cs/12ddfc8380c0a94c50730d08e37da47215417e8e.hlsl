// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = cmp((uint2)vThreadID.xy >= asuint(cb0[0].zw));
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x != 0) {
    return;
  }
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.zw = cb0[2].zw * r0.xy;
  r1.xyzw = cb0[2].xyyy * r0.zwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.xy = r0.xy * cb0[2].zw + -cb0[2].zw;
  r2.xy = min(cb0[1].xy, r2.xy);
  r2.xy = min(cb0[1].xy, r2.xy);
  r2.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
  r3.xyzw = cb0[2].zwzw * float4(0,-1,1,-1) + r0.zwzw;
  r3.xyzw = min(cb0[1].xyxy, r3.xyzw);
  r3.xyzw = min(cb0[1].xyxy, r3.xyzw);
  r4.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
  r5.xyzw = cb0[2].zwzw * float4(-1,0,1,0) + r0.zwzw;
  r5.xyzw = min(cb0[1].xyxy, r5.xyzw);
  r5.xyzw = min(cb0[1].xyxy, r5.xyzw);
  r6.xyzw = t0.SampleLevel(s0_s, r5.xy, 0).xyzw;
  r5.xy = min(cb0[1].xy, r0.zw);
  r5.xy = min(cb0[1].xy, r5.xy);
  r7.xyzw = t0.SampleLevel(s0_s, r5.xy, 0).xyzw;
  r5.xyzw = t0.SampleLevel(s0_s, r5.zw, 0).xyzw;
  r8.xyzw = cb0[2].zwzw * float4(-1,1,0,1) + r0.zwzw;
  r8.xyzw = min(cb0[1].xyxy, r8.xyzw);
  r8.xyzw = min(cb0[1].xyxy, r8.xyzw);
  r9.xyzw = t0.SampleLevel(s0_s, r8.xy, 0).xyzw;
  r8.xyzw = t0.SampleLevel(s0_s, r8.zw, 0).xyzw;
  r0.xy = r0.xy * cb0[2].zw + cb0[2].zw;
  r0.xy = min(cb0[1].xy, r0.xy);
  r0.xy = min(cb0[1].xy, r0.xy);
  r0.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r10.xyzw = min(r4.xyzw, r3.xyzw);
  r3.xyzw = max(r4.xyzw, r3.xyzw);
  r4.xyzw = min(r10.xyzw, r2.xyzw);
  r2.xyzw = max(r10.xyzw, r2.xyzw);
  r10.xyzw = min(r2.xyzw, r3.xyzw);
  r2.xyzw = max(r2.xyzw, r3.xyzw);
  r3.xyzw = min(r7.xyzw, r5.xyzw);
  r5.xyzw = max(r7.xyzw, r5.xyzw);
  r7.xyzw = min(r6.xyzw, r3.xyzw);
  r3.xyzw = max(r6.xyzw, r3.xyzw);
  r6.xyzw = min(r3.xyzw, r5.xyzw);
  r3.xyzw = max(r3.xyzw, r5.xyzw);
  r5.xyzw = min(r8.xyzw, r0.xyzw);
  r0.xyzw = max(r8.xyzw, r0.xyzw);
  r8.xyzw = min(r9.xyzw, r5.xyzw);
  r5.xyzw = max(r9.xyzw, r5.xyzw);
  r9.xyzw = min(r5.xyzw, r0.xyzw);
  r0.xyzw = max(r5.xyzw, r0.xyzw);
  r4.xyzw = max(r7.xyzw, r4.xyzw);
  r4.xyzw = max(r4.xyzw, r8.xyzw);
  r5.xyzw = min(r9.xyzw, r6.xyzw);
  r6.xyzw = max(r9.xyzw, r6.xyzw);
  r5.xyzw = max(r10.xyzw, r5.xyzw);
  r5.xyzw = min(r5.xyzw, r6.xyzw);
  r2.xyzw = min(r3.xyzw, r2.xyzw);
  r0.xyzw = min(r2.xyzw, r0.xyzw);
  r2.xyzw = min(r5.xyzw, r0.xyzw);
  r0.xyzw = max(r5.xyzw, r0.xyzw);
  r2.xyzw = max(r4.xyzw, r2.xyzw);
  r0.xyzw = min(r2.xyzw, r0.xyzw);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzw, r0.xyzw
  return;
}