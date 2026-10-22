// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[37];
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
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[36].xyyy);
  r1.xy = (uint2)r0.xw;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = cb0[34].zw * r1.xy;
  r2.xy = r1.xy * cb0[34].zw + float2(-0.5,-0.5);
  r2.x = max(abs(r2.x), abs(r2.y));
  r2.x = cmp(r2.x < 0.5);
  if (r2.x != 0) {
    r2.xy = r1.xy * cb0[34].zw + -cb0[27].zw;
    r3.xyzw = cb0[27].zwzw * float4(1,-1,-1,1) + r1.zwzw;
    r1.xy = r1.xy * cb0[34].zw + cb0[27].zw;
    r1.zw = max(cb0[33].xy, r2.xy);
    r1.zw = min(cb0[33].zw, r1.zw);
    r2.xyzw = t0.SampleLevel(s0_s, r1.zw, 0).xyzw;
    r3.xyzw = max(cb0[33].xyxy, r3.xyzw);
    r3.xyzw = min(cb0[33].zwzw, r3.xyzw);
    r4.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
    r3.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
    r1.xy = max(cb0[33].xy, r1.xy);
    r1.xy = min(cb0[33].zw, r1.xy);
    r1.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
    r2.xyzw = r4.xyzw + r2.xyzw;
    r2.xyzw = r2.xyzw + r3.xyzw;
    r1.xyzw = r2.xyzw + r1.xyzw;
    r1.xyzw = float4(0.25,0.25,0.25,0.25) * r1.xyzw;
    r1.xyz = max(float3(0,0,0), r1.xyz);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  }
  return;
}