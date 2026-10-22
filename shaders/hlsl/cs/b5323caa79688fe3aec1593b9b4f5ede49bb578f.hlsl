// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[229];
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
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[228].zwww);
  r1.xy = (uint2)r0.xw;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = r1.xy * cb0[227].xy + float2(-0.5,-0.5);
  r1.z = max(abs(r1.z), abs(r1.w));
  r1.z = cmp(r1.z >= 0.5);
  if (r1.z != 0) {
    return;
  }
  r1.z = asint(cb0[226].x) + -1;
  r2.xyzw = float4(0,0,0,0);
  r3.x = 0;
  while (true) {
    r1.w = cmp((int)r3.x >= (int)r1.z);
    if (r1.w != 0) break;
    r1.w = (int)r3.x ^ 2;
    r3.z = max((int)-r3.x, (int)r3.x);
    r3.z = (uint)r3.z >> 1;
    r3.w = -(int)r3.z;
    r1.w = r1.w ? -0.000000 : 0;
    r1.w = r1.w ? r3.w : r3.z;
    r4.xyzw = r1.xyxy * cb0[227].xyxy + cb0[r1.w+34].xyzw;
    r5.xyzw = t0.SampleLevel(s0_s, r4.xy, 0).xyzw;
    r5.xyzw = r5.xyzw * cb0[r3.x+98].xyzw + r2.xyzw;
    r4.xyzw = t0.SampleLevel(s0_s, r4.zw, 0).xyzw;
    r3.xy = (int2)r3.xx + int2(2,1);
    r2.xyzw = r4.xyzw * cb0[r3.y+98].xyzw + r5.xyzw;
  }
  r1.z = cmp((int)r3.x < asint(cb0[226].x));
  if (r1.z != 0) {
    r1.z = (int)r3.x ^ 2;
    r1.w = max((int)-r3.x, (int)r3.x);
    r1.w = (uint)r1.w >> 1;
    r3.y = -(int)r1.w;
    r1.z = r1.z ? -0.000000 : 0;
    r1.z = r1.z ? r3.y : r1.w;
    r1.xy = r1.xy * cb0[227].xy + cb0[r1.z+34].xy;
    r1.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
    r2.xyzw = r1.xyzw * cb0[r3.x+98].xyzw + r2.xyzw;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r2.xyzw
  return;
}