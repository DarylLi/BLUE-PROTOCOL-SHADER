// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[64];
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
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[63].xyyy);
  r1.xy = (uint2)r0.xw;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = cb0[61].zw * r1.xy;
  r2.xy = r1.xy * cb0[61].zw + float2(-0.5,-0.5);
  r2.x = max(abs(r2.x), abs(r2.y));
  r2.x = cmp(r2.x >= 0.5);
  if (r2.x != 0) {
    return;
  }
  r2.xyzw = r1.xyxy * cb0[61].zwzw + cb0[41].xyzw;
  r3.xyz = t0.SampleLevel(s0_s, r2.xy, 0).xyz;
  r2.xyz = t0.SampleLevel(s0_s, r2.zw, 0).xyz;
  r2.xyz = cb0[49].xyz * r2.xyz;
  r2.xyz = r3.xyz * cb0[48].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[61].zwzw + cb0[42].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[50].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[51].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[61].zwzw + cb0[43].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[52].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[53].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[61].zwzw + cb0[44].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[54].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[55].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[61].zwzw + cb0[45].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[56].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[57].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[61].zwzw + cb0[46].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[58].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[59].xyz + r2.xyz;
  r1.xy = r1.xy * cb0[61].zw + cb0[47].xy;
  r3.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
  r2.xyz = r3.xyz * cb0[60].xyz + r2.xyz;
  r2.w = t0.SampleLevel(s0_s, r1.zw, 0).w;
  r1.xyzw = t1.SampleLevel(s1_s, r1.zw, 0).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}