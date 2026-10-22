// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[6];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  x0[1].x = -16384;
  x0[2].x = 16384;
  x0[4].x = 16384;
  x0[5].x = 16384;
  r0.xyz = asint(cb0[1].xxx) * int3(1,-1,1);
  r1.xyzw = mad(asint(cb0[1].xxxx), int4(0,1,1,0), (int4)vThreadID.xyxy);
  r2.xyzw = cmp((uint4)r1.zwxy < asuint(cb0[0].zwzw));
  r2.xy = r2.yw ? r2.xz : 0;
  if (r2.x != 0) {
    r0.w = (int)r0.x;
    r0.w = cb0[1].y * abs(r0.w);
    r0.w = r0.w * 8 + -8;
    r0.w = max(0, r0.w);
    r3.xy = r1.zw;
    r3.zw = float2(0,0);
    r2.x = t0.Load(r3.xyw).y;
    r3.xyz = t1.Load(r3.xyz).yzw;
    r2.x = max(-16384, r2.x);
    x0[1].x = r2.x;
    r2.x = min(16384, r3.x);
    x0[2].x = r2.x;
    r2.xz = r0.ww * cb0[1].ww + r3.yz;
    r2.xz = min(float2(16384,16384), r2.xz);
    x0[4].x = r2.x;
    x0[5].x = r2.z;
  }
  r3.xw = cb0[1].xx;
  r3.yz = float2(0,0);
  r0.w = (int)r3.w * -1;
  r3.xyzw = mad(int4(-1,-1,-1,-1), (int4)r3.zwxy, (int4)vThreadID.xyxy);
  r4.xyzw = cmp((uint4)r3.zwxy < asuint(cb0[0].zwzw));
  r2.xz = r4.yw ? r4.xz : 0;
  if (r2.x != 0) {
    r2.x = (int)r0.w;
    r2.x = cb0[1].y * abs(r2.x);
    r2.x = r2.x * 8 + -8;
    r2.x = max(0, r2.x);
    r4.xy = r3.zw;
    r4.zw = float2(0,0);
    r2.w = t0.Load(r4.xyw).y;
    r4.xyz = t1.Load(r4.xyz).yzw;
    r4.w = x0[1].x;
    r5.x = x0[2].x;
    r5.y = x0[4].x;
    r5.z = x0[5].x;
    r2.w = max(r4.w, r2.w);
    x0[1].x = r2.w;
    r2.w = min(r5.x, r4.x);
    x0[2].x = r2.w;
    r2.xw = r2.xx * cb0[1].ww + r4.yz;
    r2.x = min(r5.y, r2.x);
    x0[4].x = r2.x;
    r2.x = min(r5.z, r2.w);
    x0[5].x = r2.x;
  }
  r4.xy = (int2)vThreadID.xy + asint(cb0[1].xx);
  r2.xw = cmp((uint2)r4.xy < asuint(cb0[0].zw));
  r2.x = r2.w ? r2.x : 0;
  if (r2.x != 0) {
    r2.x = asint(cb0[1].x);
    r2.x = cb0[1].y * abs(r2.x);
    r2.x = r2.x * 8 + -8;
    r2.x = max(0, r2.x);
    r2.x = dot(r2.xx, r2.xx);
    r2.x = sqrt(r2.x);
    r4.zw = float2(0,0);
    r2.w = t0.Load(r4.xyw).y;
    r4.xyz = t1.Load(r4.xyz).yzw;
    r4.w = x0[1].x;
    r5.x = x0[2].x;
    r5.y = x0[4].x;
    r5.z = x0[5].x;
    r2.w = max(r4.w, r2.w);
    x0[1].x = r2.w;
    r2.w = min(r5.x, r4.x);
    x0[2].x = r2.w;
    r2.xw = r2.xx * cb0[1].ww + r4.yz;
    r2.x = min(r5.y, r2.x);
    x0[4].x = r2.x;
    r2.x = min(r5.z, r2.w);
    x0[5].x = r2.x;
  }
  r4.xy = (int2)vThreadID.xy + asint(-cb0[1].xx);
  r2.xw = cmp((uint2)r4.xy < asuint(cb0[0].zw));
  r2.x = r2.w ? r2.x : 0;
  if (r2.x != 0) {
    r2.x = asint(-cb0[1].x);
    r2.x = cb0[1].y * abs(r2.x);
    r2.x = r2.x * 8 + -8;
    r2.x = max(0, r2.x);
    r2.x = dot(r2.xx, r2.xx);
    r2.x = sqrt(r2.x);
    r4.zw = float2(0,0);
    r2.w = t0.Load(r4.xyw).y;
    r4.xyz = t1.Load(r4.xyz).yzw;
    r4.w = x0[1].x;
    r5.x = x0[2].x;
    r5.y = x0[4].x;
    r5.z = x0[5].x;
    r2.w = max(r4.w, r2.w);
    x0[1].x = r2.w;
    r2.w = min(r5.x, r4.x);
    x0[2].x = r2.w;
    r2.xw = r2.xx * cb0[1].ww + r4.yz;
    r2.x = min(r5.y, r2.x);
    x0[4].x = r2.x;
    r2.x = min(r5.z, r2.w);
    x0[5].x = r2.x;
  }
  if (r2.y != 0) {
    r0.x = (int)r0.x;
    r0.x = cb0[1].y * abs(r0.x);
    r0.x = r0.x * 8 + -8;
    r0.x = max(0, r0.x);
    r1.zw = float2(0,0);
    r2.x = t0.Load(r1.xyw).y;
    r1.xyz = t1.Load(r1.xyz).yzw;
    r1.w = x0[1].x;
    r2.y = x0[2].x;
    r2.w = x0[4].x;
    r4.x = x0[5].x;
    r1.w = max(r1.w, r2.x);
    x0[1].x = r1.w;
    r1.x = min(r2.y, r1.x);
    x0[2].x = r1.x;
    r1.xy = r0.xx * cb0[1].ww + r1.yz;
    r0.x = min(r2.w, r1.x);
    x0[4].x = r0.x;
    r0.x = min(r4.x, r1.y);
    x0[5].x = r0.x;
  }
  if (r2.z != 0) {
    r0.x = (int)r0.w;
    r0.x = cb0[1].y * abs(r0.x);
    r0.x = r0.x * 8 + -8;
    r0.x = max(0, r0.x);
    r3.zw = float2(0,0);
    r0.w = t0.Load(r3.xyw).y;
    r1.xyz = t1.Load(r3.xyz).yzw;
    r1.w = x0[1].x;
    r2.x = x0[2].x;
    r2.y = x0[4].x;
    r2.z = x0[5].x;
    r0.w = max(r1.w, r0.w);
    x0[1].x = r0.w;
    r0.w = min(r2.x, r1.x);
    x0[2].x = r0.w;
    r0.xw = r0.xx * cb0[1].ww + r1.yz;
    r0.x = min(r2.y, r0.x);
    x0[4].x = r0.x;
    r0.x = min(r2.z, r0.w);
    x0[5].x = r0.x;
  }
  r1.xyzw = mad(asint(cb0[1].xxxx), int4(1,-1,-1,1), (int4)vThreadID.xyxy);
  r2.xyzw = cmp((uint4)r1.zwxy < asuint(cb0[0].zwzw));
  r0.xw = r2.yw ? r2.xz : 0;
  if (r0.x != 0) {
    r2.xy = (int2)r0.yz;
    r2.xy = cb0[1].yy * abs(r2.xy);
    r2.xy = r2.xy * float2(8,8) + float2(-8,-8);
    r2.xy = max(float2(0,0), r2.xy);
    r0.x = dot(r2.xy, r2.xy);
    r0.x = sqrt(r0.x);
    r2.xy = r1.zw;
    r2.zw = float2(0,0);
    r3.x = t0.Load(r2.xyw).y;
    r2.xyz = t1.Load(r2.xyz).yzw;
    r2.w = x0[1].x;
    r3.y = x0[2].x;
    r3.z = x0[4].x;
    r3.w = x0[5].x;
    r2.w = max(r2.w, r3.x);
    x0[1].x = r2.w;
    r2.x = min(r3.y, r2.x);
    x0[2].x = r2.x;
    r2.xy = r0.xx * cb0[1].ww + r2.yz;
    r0.x = min(r3.z, r2.x);
    x0[4].x = r0.x;
    r0.x = min(r3.w, r2.y);
    x0[5].x = r0.x;
  }
  if (r0.w != 0) {
    r0.xy = (int2)r0.zy;
    r0.xy = cb0[1].yy * abs(r0.xy);
    r0.xy = r0.xy * float2(8,8) + float2(-8,-8);
    r0.xy = max(float2(0,0), r0.xy);
    r0.x = dot(r0.xy, r0.xy);
    r0.x = sqrt(r0.x);
    r1.zw = float2(0,0);
    r0.y = t0.Load(r1.xyw).y;
    r1.xyz = t1.Load(r1.xyz).yzw;
    r0.z = x0[1].x;
    r0.w = x0[2].x;
    r1.w = x0[4].x;
    r2.x = x0[5].x;
    r0.y = max(r0.z, r0.y);
    x0[1].x = r0.y;
    r0.y = min(r0.w, r1.x);
    x0[2].x = r0.y;
    r0.xy = r0.xx * cb0[1].ww + r1.yz;
    r0.x = min(r1.w, r0.x);
    x0[4].x = r0.x;
    r0.x = min(r2.x, r0.y);
    x0[5].x = r0.x;
  }
  r0.xy = cmp((uint2)vThreadID.xy < asuint(cb0[0].zw));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xy = vThreadID.xy;
    r0.zw = float2(0,0);
    r1.x = t2.Load(r0.xyw).x;
    r2.x = t3.Load(r0.xyw).x;
    r3.x = t0.Load(r0.xyw).y;
    r0.xyz = t1.Load(r0.xyz).yzw;
    r0.w = cb0[1].y * 8 + -8;
    r3.y = cb0[1].z * -r1.x;
    r3.y = cmp(r0.w < r3.y);
    r3.z = x0[1].x;
    r3.z = max(r3.x, r3.z);
    r1.y = r3.y ? r3.z : r3.x;
    r3.x = cb0[1].z * r2.x;
    r0.w = cmp(r0.w < r3.x);
    r3.x = x0[2].x;
    r3.y = min(r3.x, r0.x);
    r3.x = x0[4].x;
    r3.z = min(r3.x, r0.y);
    r2.yz = r0.ww ? r3.yz : r0.xy;
    r0.x = x0[5].x;
    r2.w = min(r0.z, r0.x);
    r1.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, vThreadID.xyyy, r2.xyzw
  }
  return;
}