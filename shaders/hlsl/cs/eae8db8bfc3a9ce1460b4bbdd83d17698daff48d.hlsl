// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[236];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[235].zwww);
  r1.xy = (uint2)r0.xw;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = cb0[234].xy * r1.xy;
  r2.xy = r1.xy * cb0[234].xy + float2(-0.5,-0.5);
  r2.x = max(abs(r2.x), abs(r2.y));
  r2.x = cmp(r2.x >= 0.5);
  if (r2.x != 0) {
    return;
  }
  r2.x = asint(cb0[233].x) + -1;
  r3.xyzw = float4(0,0,0,0);
  r2.y = 0;
  while (true) {
    r2.w = cmp((int)r2.y >= (int)r2.x);
    if (r2.w != 0) break;
    r2.w = (int)r2.y ^ 2;
    r4.x = max((int)-r2.y, (int)r2.y);
    r4.x = (uint)r4.x >> 1;
    r4.y = -(int)r4.x;
    r2.w = r2.w ? -0.000000 : 0;
    r2.w = r2.w ? r4.y : r4.x;
    r4.xyzw = r1.xyxy * cb0[234].xyxy + cb0[r2.w+41].xyzw;
    r5.xyzw = t0.SampleLevel(s0_s, r4.xy, 0).xyzw;
    r5.xyzw = r5.xyzw * cb0[r2.y+105].xyzw + r3.xyzw;
    r4.xyzw = t0.SampleLevel(s0_s, r4.zw, 0).xyzw;
    r2.yz = (int2)r2.yy + int2(2,1);
    r3.xyzw = r4.xyzw * cb0[r2.z+105].xyzw + r5.xyzw;
  }
  r2.x = cmp((int)r2.y < asint(cb0[233].x));
  if (r2.x != 0) {
    r2.x = (int)r2.y ^ 2;
    r2.z = max((int)-r2.y, (int)r2.y);
    r2.z = (uint)r2.z >> 1;
    r2.w = -(int)r2.z;
    r2.x = r2.x ? -0.000000 : 0;
    r2.x = r2.x ? r2.w : r2.z;
    r1.xy = r1.xy * cb0[234].xy + cb0[r2.x+41].xy;
    r4.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
    r3.xyzw = r4.xyzw * cb0[r2.y+105].xyzw + r3.xyzw;
  }
  r1.xyzw = t1.SampleLevel(s1_s, r1.zw, 0).xyzw;
  r1.xyzw = r3.xyzw + r1.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}