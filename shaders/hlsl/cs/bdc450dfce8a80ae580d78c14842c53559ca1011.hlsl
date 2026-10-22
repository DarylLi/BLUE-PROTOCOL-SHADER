// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
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
  r0.xy = (uint2)cb0[1].xy;
  r0.xy = cmp((uint2)vThreadID.xy < (uint2)r0.xy);
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xy = (uint2)vThreadID.xy << int2(1,1);
    r0.zw = float2(0,0);
    r0.xyz = t0.Load(r0.xyz).xyz;
    r1.xyzw = mad((int4)vThreadID.xyxy, int4(2,2,2,2), int4(1,1,1,0));
    r2.xy = r1.zw;
    r2.zw = float2(0,0);
    r2.xyz = t0.Load(r2.xyz).xyz;
    r1.zw = float2(0,0);
    r1.xyz = t0.Load(r1.xyz).xyz;
    r3.xy = mad((int2)vThreadID.xy, int2(2,2), int2(0,1));
    r3.zw = float2(0,0);
    r3.xyz = t0.Load(r3.xyz).xyz;
    r0.w = r2.x + r0.x;
    r0.w = r0.w + r1.x;
    r0.w = r0.w + r3.x;
    r0.x = r0.x + -r0.w;
    r1.w = r2.x + -r0.w;
    r0.x = abs(r1.w) + abs(r0.x);
    r1.x = r1.x + -r0.w;
    r0.x = abs(r1.x) + r0.x;
    r1.x = r3.x + -r0.w;
    r0.x = abs(r1.x) + r0.x;
    r4.xw = -r0.xx * float2(0.25,0.25) + r0.ww;
    r0.xw = r2.yz + r1.yz;
    r0.xw = r0.xw + r3.yz;
    r0.xy = r0.yz + r0.xw;
    r4.yz = float2(0.25,0.25) * r0.xy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyyy, r4.xyzw
  }
  return;
}