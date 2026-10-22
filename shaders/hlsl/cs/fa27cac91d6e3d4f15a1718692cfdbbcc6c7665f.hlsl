// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[23];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u0
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (uint4)vThreadID.xyyy;
  r0.xyzw = r0.xyzw * cb0[2].xyyy + cb0[2].zwww;
  r0.xyzw = max(cb0[4].xyyy, r0.xyzw);
  r0.xyzw = min(cb0[4].zwww, r0.xyzw);
  r1.xyz = t1.SampleLevel(s0_s, r0.xw, 0).xyw;
  r1.w = cmp(r1.y == -2.000000);
  r2.x = r1.w ? 0 : 1;
  r1.x = r2.x * r1.x;
  r2.y = cmp(0.999000013 < r1.x);
  r1.y = r2.y ? -1 : r1.y;
  r1.y = r1.w ? -2 : r1.y;
  if (cb0[22].x == 0) {
    r2.y = cb0[21].x * r1.y;
  } else {
    r2.z = t0.SampleLevel(s0_s, r0.xw, 0).x;
    r2.w = r2.z * cb1[65].x + cb1[65].y;
    r2.z = r2.z * cb1[65].z + -cb1[65].w;
    r2.z = 1 / r2.z;
    r2.z = r2.w + r2.z;
    r3.xy = r0.xw * cb0[6].xy + cb0[6].zw;
    r2.w = cmp(cb1[31].w < 1);
    r2.w = r2.w ? r2.z : 1;
    r3.xy = r3.xy * r2.ww;
    r3.yzw = cb1[53].xyz * r3.yyy;
    r3.xyz = r3.xxx * cb1[52].xyz + r3.yzw;
    r3.xyz = r2.zzz * cb1[54].xyz + r3.xyz;
    r3.xyz = cb1[55].xyz + r3.xyz;
    r2.zw = cmp(asint(cb0[22].xx) == int2(1,2));
    r2.z = (int)r2.w | (int)r2.z;
    r4.xyz = cb1[70].xyz + cb0[19].xyz;
    r3.xyz = r4.xyz + -r3.xyz;
    r2.w = dot(r3.xyz, r3.xyz);
    r2.w = sqrt(r2.w);
    r3.x = cb0[19].w * r1.y;
    r2.w = r2.w + -r1.y;
    r2.w = max(0.00100000005, r2.w);
    r3.x = r3.x / r2.w;
    r4.x = cb0[19].w;
    r4.y = cb0[20].w;
    r3.yz = r4.xy + r4.xy;
    r3.y = min(r3.y, r3.z);
    r3.y = r3.y * r1.y;
    r2.w = r3.y / r2.w;
    r2.y = r2.z ? r3.x : r2.w;
  }
  r0.xyzw = cb0[5].xyyy * r0.xyzw;
  r0.xyzw = (uint4)r0.xyzw;
  r2.zw = cmp((uint2)r0.xw < asuint(cb0[1].xy));
  r2.z = r2.w ? r2.z : 0;
  if (r2.z != 0) {
    r1.z = r2.x * r1.z;
    r2.xz = cmp(r1.yy == float2(-2,-1));
    r1.y = r2.x ? -1 : 100000;
    r2.x = (int)r2.z | (int)r2.x;
    r1.y = r2.x ? r1.y : r2.y;
    r1.x = 255 * r1.x;
    r1.z = 255 * r1.z;
    r1.xz = (uint2)r1.xz;
    r1.z = (uint)r1.z << 8;
    r1.x = (int)r1.z | (int)r1.x;
    r1.y = f32tof16(r1.y);
    r1.y = (uint)r1.y << 16;
    r1.y = r1.w ? -2 : r1.y;
    r1.xzw = (int3)r1.yyy | (int3)r1.xxx;
    r1.y = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  }
  return;
}