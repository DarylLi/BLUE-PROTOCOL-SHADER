// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[92];
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
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[91].xyyy);
  r1.xy = (uint2)r0.xw;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = cb0[89].zw * r1.xy;
  r2.xy = r1.xy * cb0[89].zw + float2(-0.5,-0.5);
  r2.x = max(abs(r2.x), abs(r2.y));
  r2.x = cmp(r2.x >= 0.5);
  if (r2.x != 0) {
    return;
  }
  r2.xyzw = r1.xyxy * cb0[89].zwzw + cb0[41].xyzw;
  r3.xyz = t0.SampleLevel(s0_s, r2.xy, 0).xyz;
  r2.xyz = t0.SampleLevel(s0_s, r2.zw, 0).xyz;
  r2.xyz = cb0[58].xyz * r2.xyz;
  r2.xyz = r3.xyz * cb0[57].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[42].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[59].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[60].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[43].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[61].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[62].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[44].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[63].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[64].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[45].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[65].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[66].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[46].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[67].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[68].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[47].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[69].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[70].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[48].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[71].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[72].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[49].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[73].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[74].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[50].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[75].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[76].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[51].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[77].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[78].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[52].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[79].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[80].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[53].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[81].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[82].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[54].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[83].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[84].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[55].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[85].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[86].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[89].zwzw + cb0[56].xyzw;
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyz = r4.xyz * cb0[87].xyz + r2.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.xyz = r3.xyz * cb0[88].xyz + r2.xyz;
  r2.w = t0.SampleLevel(s0_s, r1.zw, 0).w;
  r1.xyzw = t1.SampleLevel(s1_s, r1.zw, 0).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}