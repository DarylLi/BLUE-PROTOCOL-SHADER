// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[66];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[65].xyyy);
  r1.xy = (uint2)r0.xw;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = r1.xy * cb0[63].zw + float2(-0.5,-0.5);
  r1.z = max(abs(r1.z), abs(r1.w));
  r1.z = cmp(r1.z >= 0.5);
  if (r1.z != 0) {
    return;
  }
  r2.xyzw = r1.xyxy * cb0[63].zwzw + cb0[34].xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
  r2.xyzw = t0.SampleLevel(s0_s, r2.zw, 0).xyzw;
  r2.xyzw = cb0[45].xyzw * r2.xyzw;
  r2.xyzw = r3.xyzw * cb0[44].xyzw + r2.xyzw;
  r3.xyzw = r1.xyxy * cb0[63].zwzw + cb0[35].xyzw;
  r4.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
  r2.xyzw = r4.xyzw * cb0[46].xyzw + r2.xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
  r2.xyzw = r3.xyzw * cb0[47].xyzw + r2.xyzw;
  r3.xyzw = r1.xyxy * cb0[63].zwzw + cb0[36].xyzw;
  r4.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
  r2.xyzw = r4.xyzw * cb0[48].xyzw + r2.xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
  r2.xyzw = r3.xyzw * cb0[49].xyzw + r2.xyzw;
  r3.xyzw = r1.xyxy * cb0[63].zwzw + cb0[37].xyzw;
  r4.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
  r2.xyzw = r4.xyzw * cb0[50].xyzw + r2.xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
  r2.xyzw = r3.xyzw * cb0[51].xyzw + r2.xyzw;
  r3.xyzw = r1.xyxy * cb0[63].zwzw + cb0[38].xyzw;
  r4.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
  r2.xyzw = r4.xyzw * cb0[52].xyzw + r2.xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
  r2.xyzw = r3.xyzw * cb0[53].xyzw + r2.xyzw;
  r3.xyzw = r1.xyxy * cb0[63].zwzw + cb0[39].xyzw;
  r4.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
  r2.xyzw = r4.xyzw * cb0[54].xyzw + r2.xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
  r2.xyzw = r3.xyzw * cb0[55].xyzw + r2.xyzw;
  r3.xyzw = r1.xyxy * cb0[63].zwzw + cb0[40].xyzw;
  r4.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
  r2.xyzw = r4.xyzw * cb0[56].xyzw + r2.xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
  r2.xyzw = r3.xyzw * cb0[57].xyzw + r2.xyzw;
  r3.xyzw = r1.xyxy * cb0[63].zwzw + cb0[41].xyzw;
  r4.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
  r2.xyzw = r4.xyzw * cb0[58].xyzw + r2.xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
  r2.xyzw = r3.xyzw * cb0[59].xyzw + r2.xyzw;
  r3.xyzw = r1.xyxy * cb0[63].zwzw + cb0[42].xyzw;
  r4.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
  r2.xyzw = r4.xyzw * cb0[60].xyzw + r2.xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
  r2.xyzw = r3.xyzw * cb0[61].xyzw + r2.xyzw;
  r1.xy = r1.xy * cb0[63].zw + cb0[43].xy;
  r1.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r1.xyzw = r1.xyzw * cb0[62].xyzw + r2.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}