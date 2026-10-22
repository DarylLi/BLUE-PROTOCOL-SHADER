// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

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
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  x0[0].x = 0;
  x0[3].x = 0;
  r0.xyzw = mad(asint(cb0[1].xxxx), int4(0,1,1,0), (int4)vThreadID.xyxy);
  r1.xyzw = cmp((uint4)r0.zwxy < asuint(cb0[0].zwzw));
  r1.xy = r1.yw ? r1.xz : 0;
  if (r1.x != 0) {
    r2.xy = r0.zw;
    r2.zw = float2(0,0);
    r1.x = t0.Load(r2.xyw).x;
    r1.z = t1.Load(r2.xyz).x;
    r1.x = min(0, r1.x);
    x0[0].x = r1.x;
    r1.x = max(0, r1.z);
    x0[3].x = r1.x;
  }
  r2.xw = cb0[1].xx;
  r2.yz = float2(0,0);
  r2.xyzw = mad(int4(-1,-1,-1,-1), (int4)r2.zwxy, (int4)vThreadID.xyxy);
  r3.xyzw = cmp((uint4)r2.zwxy < asuint(cb0[0].zwzw));
  r1.xz = r3.yw ? r3.xz : 0;
  if (r1.x != 0) {
    r3.xy = r2.zw;
    r3.zw = float2(0,0);
    r1.x = t0.Load(r3.xyw).x;
    r1.w = t1.Load(r3.xyz).x;
    r3.x = x0[0].x;
    r3.y = x0[3].x;
    r1.x = min(r3.x, r1.x);
    x0[0].x = r1.x;
    r1.x = max(r3.y, r1.w);
    x0[3].x = r1.x;
  }
  r3.xy = (int2)vThreadID.xy + asint(cb0[1].xx);
  r1.xw = cmp((uint2)r3.xy < asuint(cb0[0].zw));
  r1.x = r1.w ? r1.x : 0;
  if (r1.x != 0) {
    r3.zw = float2(0,0);
    r1.x = t0.Load(r3.xyw).x;
    r1.w = t1.Load(r3.xyz).x;
    r3.x = x0[0].x;
    r3.y = x0[3].x;
    r1.x = min(r3.x, r1.x);
    x0[0].x = r1.x;
    r1.x = max(r3.y, r1.w);
    x0[3].x = r1.x;
  }
  r3.xy = (int2)vThreadID.xy + asint(-cb0[1].xx);
  r1.xw = cmp((uint2)r3.xy < asuint(cb0[0].zw));
  r1.x = r1.w ? r1.x : 0;
  if (r1.x != 0) {
    r3.zw = float2(0,0);
    r1.x = t0.Load(r3.xyw).x;
    r1.w = t1.Load(r3.xyz).x;
    r3.x = x0[0].x;
    r3.y = x0[3].x;
    r1.x = min(r3.x, r1.x);
    x0[0].x = r1.x;
    r1.x = max(r3.y, r1.w);
    x0[3].x = r1.x;
  }
  if (r1.y != 0) {
    r0.zw = float2(0,0);
    r1.x = t0.Load(r0.xyw).x;
    r0.x = t1.Load(r0.xyz).x;
    r0.y = x0[0].x;
    r0.z = x0[3].x;
    r0.y = min(r0.y, r1.x);
    x0[0].x = r0.y;
    r0.x = max(r0.z, r0.x);
    x0[3].x = r0.x;
  }
  if (r1.z != 0) {
    r2.zw = float2(0,0);
    r0.x = t0.Load(r2.xyw).x;
    r0.y = t1.Load(r2.xyz).x;
    r0.z = x0[0].x;
    r0.w = x0[3].x;
    r0.x = min(r0.z, r0.x);
    x0[0].x = r0.x;
    r0.x = max(r0.w, r0.y);
    x0[3].x = r0.x;
  }
  r0.xyzw = mad(asint(cb0[1].xxxx), int4(1,-1,-1,1), (int4)vThreadID.xyxy);
  r1.xyzw = cmp((uint4)r0.zwxy < asuint(cb0[0].zwzw));
  r1.xy = r1.yw ? r1.xz : 0;
  if (r1.x != 0) {
    r2.xy = r0.zw;
    r2.zw = float2(0,0);
    r1.x = t0.Load(r2.xyw).x;
    r1.z = t1.Load(r2.xyz).x;
    r1.w = x0[0].x;
    r2.x = x0[3].x;
    r1.x = min(r1.w, r1.x);
    x0[0].x = r1.x;
    r1.x = max(r2.x, r1.z);
    x0[3].x = r1.x;
  }
  if (r1.y != 0) {
    r0.zw = float2(0,0);
    r1.x = t0.Load(r0.xyw).x;
    r0.x = t1.Load(r0.xyz).x;
    r0.y = x0[0].x;
    r0.z = x0[3].x;
    r0.y = min(r0.y, r1.x);
    x0[0].x = r0.y;
    r0.x = max(r0.z, r0.x);
    x0[3].x = r0.x;
  }
  r0.xy = cmp((uint2)vThreadID.xy < asuint(cb0[0].zw));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xy = vThreadID.xy;
    r0.zw = float2(0,0);
    r1.x = t0.Load(r0.xyw).x;
    r0.x = t1.Load(r0.xyz).x;
    r0.y = cb0[1].y * 8 + -8;
    r0.z = x0[0].x;
    r0.w = cb0[1].z * -r0.z;
    r0.w = cmp(r0.y < r0.w);
    r0.z = min(r1.x, r0.z);
    r1.x = r0.w ? r0.z : r1.x;
    r0.z = x0[3].x;
    r0.w = cb0[1].z * r0.z;
    r0.y = cmp(r0.y < r0.w);
    r0.z = max(r0.x, r0.z);
    r0.x = r0.y ? r0.z : r0.x;
    r1.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyzw
    r0.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, vThreadID.xyyy, r0.xyzw
  }
  return;
}