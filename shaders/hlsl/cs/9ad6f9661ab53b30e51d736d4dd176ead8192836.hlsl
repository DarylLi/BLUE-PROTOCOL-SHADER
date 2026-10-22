// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[46];
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
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[45].xyyy);
  r1.xyzw = (uint4)r0.xwxw;
  r1.xyzw = float4(0.5,0.5,0.5,0.5) + r1.xyzw;
  r2.xy = r1.zw * cb0[43].zw + float2(-0.5,-0.5);
  r2.x = max(abs(r2.x), abs(r2.y));
  r2.x = cmp(r2.x >= 0.5);
  if (r2.x != 0) {
    return;
  }
  r2.xyzw = r1.zwzw * cb0[43].zwzw + cb0[34].xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
  r2.xyzw = t0.SampleLevel(s0_s, r2.zw, 0).xyzw;
  r2.xyzw = cb0[38].xyzw * r2.xyzw;
  r2.xyzw = r3.xyzw * cb0[37].xyzw + r2.xyzw;
  r3.xyzw = r1.zwzw * cb0[43].zwzw + cb0[35].xyzw;
  r4.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
  r2.xyzw = r4.xyzw * cb0[39].xyzw + r2.xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
  r2.xyzw = r3.xyzw * cb0[40].xyzw + r2.xyzw;
  r1.xyzw = r1.xyzw * cb0[43].zwzw + cb0[36].xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r2.xyzw = r3.xyzw * cb0[41].xyzw + r2.xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, r1.zw, 0).xyzw;
  r1.xyzw = r1.xyzw * cb0[42].xyzw + r2.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}