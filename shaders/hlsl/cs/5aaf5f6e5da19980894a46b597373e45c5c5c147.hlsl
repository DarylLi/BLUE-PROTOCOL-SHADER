// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb0[27];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u0
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r1.w = cmp(r2.y == -2.000000);
  r2.w = r1.w ? 0 : 1;
  r2.x = r2.w * r2.x;
  r3.w = cmp(0.999000013 < r2.x);
  r2.y = r3.w ? -1 : r2.y;
  r2.y = r1.w ? -2 : r2.y;
  r3.w = cmp(r3.y == -2.000000);
  r4.x = r3.w ? 0 : 1;
  r3.x = r4.x * r3.x;
  r4.y = cmp(0.999000013 < r3.x);
  r3.y = r4.y ? -1 : r3.y;
  r3.y = r3.w ? -2 : r3.y;
  if (cb0[25].x == 0) {
    r4.y = cb0[23].x * r2.y;
  } else {
    r4.zw = cmp(asint(cb0[25].xx) == int2(1,2));
    r4.z = (int)r4.w | (int)r4.z;
    r5.xyz = cb1[70].xyz + cb0[19].xyz;
    r5.xyz = r5.xyz + -r1.xyz;
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = sqrt(r4.w);
    r5.x = cb0[19].w * r2.y;
    r4.w = r4.w + -r2.y;
    r4.w = max(0.00100000005, r4.w);
    r5.x = r5.x / r4.w;
    r6.x = cb0[19].w;
    r6.y = cb0[21].w;
    r5.yz = r6.xy + r6.xy;
    r5.y = min(r5.y, r5.z);
    r5.y = r5.y * r2.y;
    r4.w = r5.y / r4.w;
    r4.y = r4.z ? r5.x : r4.w;
  }
  if (cb0[26].x == 0) {
    r4.z = cb0[24].x * r3.y;
  } else {
    r5.xy = cmp(asint(cb0[26].xx) == int2(1,2));
    r4.w = (int)r5.y | (int)r5.x;
    r5.xyz = cb1[70].xyz + cb0[20].xyz;
    r1.xyz = r5.xyz + -r1.xyz;
    r1.x = dot(r1.xyz, r1.xyz);
    r1.x = sqrt(r1.x);
    r1.y = cb0[20].w * r3.y;
    r1.x = r1.x + -r3.y;
    r1.x = max(0.00100000005, r1.x);
    r1.y = r1.y / r1.x;
    r5.x = cb0[20].w;
    r5.y = cb0[22].w;
    r5.xy = r5.xy + r5.xy;
    r1.z = min(r5.x, r5.y);
    r1.z = r1.z * r3.y;
    r1.x = r1.z / r1.x;
    r4.z = r4.w ? r1.y : r1.x;
  }
  r0.xyzw = cb0[5].xyyy * r0.xyzw;
  r0.xyzw = (uint4)r0.xyzw;
  r1.xy = cmp((uint2)r0.xw < asuint(cb0[1].xy));
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    r1.x = r2.w * r2.z;
    r1.y = r4.x * r3.z;
    r2.yz = cmp(r2.yy == float2(-2,-1));
    r1.z = r2.y ? -1 : 100000;
    r2.y = (int)r2.z | (int)r2.y;
    r1.z = r2.y ? r1.z : r4.y;
    r2.yz = cmp(r3.yy == float2(-2,-1));
    r2.w = r2.y ? -1 : 100000;
    r2.y = (int)r2.z | (int)r2.y;
    r2.y = r2.y ? r2.w : r4.z;
    r2.x = 255 * r2.x;
    r2.x = (uint)r2.x;
    r1.xy = float2(255,255) * r1.xy;
    r1.x = (uint)r1.x;
    r1.x = (uint)r1.x << 8;
    r1.x = (int)r1.x | (int)r2.x;
    r1.z = f32tof16(r1.z);
    r1.z = (uint)r1.z << 16;
    r1.z = r1.w ? -2 : r1.z;
    r4.xzw = (int3)r1.zzz | (int3)r1.xxx;
    r1.x = 255 * r3.x;
    r1.xy = (uint2)r1.xy;
    r1.y = (uint)r1.y << 8;
    r1.x = (int)r1.y | (int)r1.x;
    r1.y = f32tof16(r2.y);
    r1.y = (uint)r1.y << 16;
    r1.y = r3.w ? -2 : r1.y;
    r4.y = (int)r1.y | (int)r1.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r4.xyzw
  }
  return;
}