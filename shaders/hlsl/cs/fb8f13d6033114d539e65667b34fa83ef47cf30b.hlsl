// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u1
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (uint4)vThreadID.xyyy;
  r0.xyzw = r0.xyzw * cb0[2].xyyy + cb0[2].zwww;
  r0.xyzw = max(cb0[4].xyyy, r0.xyzw);
  r0.xyzw = min(cb0[4].zwww, r0.xyzw);
  r1.x = t0.SampleLevel(s0_s, r0.xw, 0).x;
  r1.y = r1.x * cb1[65].x + cb1[65].y;
  r1.x = r1.x * cb1[65].z + -cb1[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.y + r1.x;
  r1.yz = r0.xw * cb0[6].xy + cb0[6].zw;
  r1.w = cmp(cb1[31].w < 1);
  r1.w = r1.w ? r1.x : 1;
  r1.yz = r1.yz * r1.ww;
  r2.xyz = cb1[53].xyz * r1.zzz;
  r1.yzw = r1.yyy * cb1[52].xyz + r2.xyz;
  r1.xyz = r1.xxx * cb1[54].xyz + r1.yzw;
  r1.xyz = cb1[55].xyz + r1.xyz;
  r2.xyz = t1.SampleLevel(s0_s, r0.xw, 0).xyw;
  r3.xyz = t2.SampleLevel(s0_s, r0.xw, 0).xyw;
  r4.xyz = t3.SampleLevel(s0_s, r0.xw, 0).xyw;
  r5.xyz = t4.SampleLevel(s0_s, r0.xw, 0).xyw;
  r1.w = cmp(r2.y == -2.000000);
  r2.w = r1.w ? 0 : 1;
  r2.x = r2.w * r2.x;
  r3.w = cmp(0.999000013 < r2.x);
  r2.y = r3.w ? -1 : r2.y;
  r2.y = r1.w ? -2 : r2.y;
  r3.w = cmp(r3.y == -2.000000);
  r4.w = r3.w ? 0 : 1;
  r3.x = r4.w * r3.x;
  r5.w = cmp(0.999000013 < r3.x);
  r3.y = r5.w ? -1 : r3.y;
  r3.y = r3.w ? -2 : r3.y;
  r5.w = cmp(r4.y == -2.000000);
  r6.x = r5.w ? 0 : 1;
  r4.x = r6.x * r4.x;
  r6.y = cmp(0.999000013 < r4.x);
  r4.y = r6.y ? -1 : r4.y;
  r4.y = r5.w ? -2 : r4.y;
  r6.y = cmp(r5.y == -2.000000);
  r6.z = r6.y ? 0 : 1;
  r5.x = r6.z * r5.x;
  r6.w = cmp(0.999000013 < r5.x);
  r5.y = r6.w ? -1 : r5.y;
  r5.y = r6.y ? -2 : r5.y;
  if (cb0[31].x == 0) {
    r6.w = cb0[27].x * r2.y;
  } else {
    r7.xy = cmp(asint(cb0[31].xx) == int2(1,2));
    r7.x = (int)r7.y | (int)r7.x;
    r7.yzw = cb1[70].xyz + cb0[19].xyz;
    r7.yzw = r7.yzw + -r1.xyz;
    r7.y = dot(r7.yzw, r7.yzw);
    r7.y = sqrt(r7.y);
    r7.z = cb0[19].w * r2.y;
    r7.y = r7.y + -r2.y;
    r7.y = max(0.00100000005, r7.y);
    r7.z = r7.z / r7.y;
    r8.x = cb0[19].w;
    r8.y = cb0[23].w;
    r8.xy = r8.xy + r8.xy;
    r7.w = min(r8.x, r8.y);
    r7.w = r7.w * r2.y;
    r7.y = r7.w / r7.y;
    r6.w = r7.x ? r7.z : r7.y;
  }
  if (cb0[32].x == 0) {
    r7.x = cb0[28].x * r3.y;
  } else {
    r7.yz = cmp(asint(cb0[32].xx) == int2(1,2));
    r7.y = (int)r7.z | (int)r7.y;
    r8.xyz = cb1[70].xyz + cb0[20].xyz;
    r8.xyz = r8.xyz + -r1.xyz;
    r7.z = dot(r8.xyz, r8.xyz);
    r7.z = sqrt(r7.z);
    r7.w = cb0[20].w * r3.y;
    r7.z = r7.z + -r3.y;
    r7.z = max(0.00100000005, r7.z);
    r7.w = r7.w / r7.z;
    r8.x = cb0[20].w;
    r8.y = cb0[24].w;
    r8.xy = r8.xy + r8.xy;
    r8.x = min(r8.x, r8.y);
    r8.x = r8.x * r3.y;
    r7.z = r8.x / r7.z;
    r7.x = r7.y ? r7.w : r7.z;
  }
  if (cb0[33].x == 0) {
    r7.y = cb0[29].x * r4.y;
  } else {
    r7.zw = cmp(asint(cb0[33].xx) == int2(1,2));
    r7.z = (int)r7.w | (int)r7.z;
    r8.xyz = cb1[70].xyz + cb0[21].xyz;
    r8.xyz = r8.xyz + -r1.xyz;
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = sqrt(r7.w);
    r8.x = cb0[21].w * r4.y;
    r7.w = r7.w + -r4.y;
    r7.w = max(0.00100000005, r7.w);
    r8.x = r8.x / r7.w;
    r9.x = cb0[21].w;
    r9.y = cb0[25].w;
    r8.yz = r9.xy + r9.xy;
    r8.y = min(r8.y, r8.z);
    r8.y = r8.y * r4.y;
    r7.w = r8.y / r7.w;
    r7.y = r7.z ? r8.x : r7.w;
  }
  if (cb0[34].x == 0) {
    r7.z = cb0[30].x * r5.y;
  } else {
    r8.xy = cmp(asint(cb0[34].xx) == int2(1,2));
    r7.w = (int)r8.y | (int)r8.x;
    r8.xyz = cb1[70].xyz + cb0[22].xyz;
    r1.xyz = r8.xyz + -r1.xyz;
    r1.x = dot(r1.xyz, r1.xyz);
    r1.x = sqrt(r1.x);
    r1.y = cb0[22].w * r5.y;
    r1.x = r1.x + -r5.y;
    r1.x = max(0.00100000005, r1.x);
    r1.y = r1.y / r1.x;
    r8.x = cb0[22].w;
    r8.y = cb0[26].w;
    r8.xy = r8.xy + r8.xy;
    r1.z = min(r8.x, r8.y);
    r1.z = r1.z * r5.y;
    r1.x = r1.z / r1.x;
    r7.z = r7.w ? r1.y : r1.x;
  }
  r0.xyzw = cb0[5].xyyy * r0.xyzw;
  r0.xyzw = (uint4)r0.xyzw;
  r1.xy = cmp((uint2)r0.xw < asuint(cb0[1].xy));
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    r1.x = r2.w * r2.z;
    r1.y = r4.w * r3.z;
    r1.z = r6.x * r4.z;
    r2.z = r6.z * r5.z;
    r2.yw = cmp(r2.yy == float2(-2,-1));
    r3.z = r2.y ? -1 : 100000;
    r2.y = (int)r2.w | (int)r2.y;
    r2.y = r2.y ? r3.z : r6.w;
    r3.yz = cmp(r3.yy == float2(-2,-1));
    r2.w = r3.y ? -1 : 100000;
    r3.y = (int)r3.z | (int)r3.y;
    r2.w = r3.y ? r2.w : r7.x;
    r3.yz = cmp(r4.yy == float2(-2,-1));
    r4.y = r3.y ? -1 : 100000;
    r3.y = (int)r3.z | (int)r3.y;
    r3.y = r3.y ? r4.y : r7.y;
    r4.yz = cmp(r5.yy == float2(-2,-1));
    r3.z = r4.y ? -1 : 100000;
    r4.y = (int)r4.z | (int)r4.y;
    r3.z = r4.y ? r3.z : r7.z;
    r2.x = 255 * r2.x;
    r2.x = (uint)r2.x;
    r1.xy = float2(255,255) * r1.xy;
    r1.x = (uint)r1.x;
    r1.x = (uint)r1.x << 8;
    r1.x = (int)r1.x | (int)r2.x;
    r2.x = f32tof16(r2.y);
    r2.x = (uint)r2.x << 16;
    r1.w = r1.w ? -2 : r2.x;
    r7.xzw = (int3)r1.www | (int3)r1.xxx;
    r1.x = 255 * r3.x;
    r1.xy = (uint2)r1.xy;
    r1.y = (uint)r1.y << 8;
    r1.x = (int)r1.y | (int)r1.x;
    r1.y = f32tof16(r2.w);
    r1.y = (uint)r1.y << 16;
    r1.y = r3.w ? -2 : r1.y;
    r7.y = (int)r1.y | (int)r1.x;
    r1.x = 255 * r4.x;
    r1.y = 255 * r1.z;
    r1.xy = (uint2)r1.xy;
    r1.y = (uint)r1.y << 8;
    r1.x = (int)r1.y | (int)r1.x;
    r1.y = f32tof16(r3.y);
    r1.y = (uint)r1.y << 16;
    r1.y = r5.w ? -2 : r1.y;
    r1.xzw = (int3)r1.yyy | (int3)r1.xxx;
    r2.x = 255 * r5.x;
    r2.y = 255 * r2.z;
    r2.xy = (uint2)r2.xy;
    r2.y = (uint)r2.y << 8;
    r2.x = (int)r2.y | (int)r2.x;
    r2.y = f32tof16(r3.z);
    r2.y = (uint)r2.y << 16;
    r2.y = r6.y ? -2 : r2.y;
    r1.y = (int)r2.y | (int)r2.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xwww, r7.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xyzw, r1.xyzw
  }
  return;
}