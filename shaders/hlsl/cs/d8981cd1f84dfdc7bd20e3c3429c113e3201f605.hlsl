// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[512];
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[158];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 4, 8
  r0.x = (int)vThreadIDInGroupFlattened.x & 31;
  r0.y = (uint)vThreadIDInGroupFlattened.x >> 5;
  if (r0.y == 0) {
    r1.x = (int)vThreadIDInGroupFlattened.x & 7;
    if (2 == 0) r1.y = 0; else if (2+3 < 32) {     r1.y = (uint)vThreadIDInGroupFlattened.x << (32-(2 + 3)); r1.y = (uint)r1.y >> (32-2);    } else r1.y = (uint)vThreadIDInGroupFlattened.x >> 3;
    r0.zw = mad((int2)vThreadGroupID.xy, int2(8,4), (int2)r1.xy);
    r0.zw = (uint2)r0.zw;
    r0.zw = r0.zw * cb0[4].zz + cb0[5].xy;
    r0.zw = cb1[132].zw * r0.zw;
    r1.xyz = t1.SampleLevel(s0_s, r0.zw, 0).xyz;
    r1.w = t2.SampleLevel(s0_s, r0.zw, 0).w;
    r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.x = dot(r1.xyz, r1.xyz);
    r2.x = rsqrt(r2.x);
    r1.xyz = r2.xxx * r1.xyz;
    r1.w = 255 * r1.w;
    r1.w = round(r1.w);
    r1.w = (uint)r1.w;
    r1.w = (int)r1.w & 15;
    r2.xyz = cb1[13].xyz * r1.yyy;
    r2.xyz = r1.xxx * cb1[12].xyz + r2.xyz;
    r1.xyz = r1.zzz * cb1[14].xyz + r2.xyz;
    r0.z = t0.SampleLevel(s0_s, r0.zw, 0).x;
    r1.xyz = saturate(r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5));
    r1.xyz = float3(255,255,255) * r1.xyz;
    r1.xyz = (uint3)r1.xyz;
    r0.w = mad((int)r1.y, 256, (int)r1.x);
    r0.w = mad((int)r1.z, 0x00010000, (int)r0.w);
    g0[r0.x].val[0/4] = r0.w;
    bitmask.w = ((~(-1 << 5)) << 0) & 0xffffffff;  r0.w = (((uint)vThreadIDInGroupFlattened.x << 0) & bitmask.w) | ((uint)32 & ~bitmask.w);
    r0.z = r1.w ? r0.z : -1;
    g0[r0.w].val[0/4] = r0.z;
  } else {
    r0.z = (uint)vThreadIDInGroupFlattened.x >> 6;
    r0.z = cmp((int)r0.z == 1);
    if (r0.z != 0) {
      r0.z = (int)r0.x + 64;
      g0[r0.z].val[0/4] = 0;
    }
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = g0[r0.x].val[0/4];
  bitmask.z = ((~(-1 << 5)) << 0) & 0xffffffff;  r0.z = (((uint)vThreadIDInGroupFlattened.x << 0) & bitmask.z) | ((uint)32 & ~bitmask.z);
  bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r0.w = (((uint)vThreadIDInGroupFlattened.x << 0) & bitmask.w) | ((uint)256 & ~bitmask.w);
  r1.z = g0[r0.z].val[0/4];
  r0.z = cmp(0 < r1.z);
  GroupMemoryBarrierWithGroupSync();
  if (r0.z != 0) {
    r2.x = (int)vThreadIDInGroupFlattened.x & 7;
    if (2 == 0) r2.y = 0; else if (2+3 < 32) {     r2.y = (uint)vThreadIDInGroupFlattened.x << (32-(2 + 3)); r2.y = (uint)r2.y >> (32-2);    } else r2.y = (uint)vThreadIDInGroupFlattened.x >> 3;
    r2.xy = mad((int2)vThreadGroupID.xy, int2(8,4), (int2)r2.xy);
    r3.xy = (uint2)r2.xy;
    r3.zw = r3.xy * cb0[4].zz + cb0[5].xy;
    r3.zw = cb1[130].zw * r3.zw;
    r3.zw = r3.zw + r3.zw;
    r2.z = cb1[144].y;
    r2.xyz = mad((int3)r2.xyz, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
    r0.z = mad((int)r2.y, (int)r2.z, (int)r2.x);
    r2.x = mad((int)r2.z, (int)r0.z, (int)r2.y);
    r2.y = mad((int)r0.z, (int)r2.x, (int)r2.z);
    r0.z = mad((int)r2.x, (int)r2.y, (int)r0.z);
    r2.x = mad((int)r2.y, (int)r0.z, (int)r2.x);
    r0.z = (uint)r0.z >> 16;
    r2.y = (uint)r0.y;
    r0.z = (uint)r0.z;
    r0.z = 1.52587891e-005 * r0.z;
    r0.z = r2.y * 0.125 + r0.z;
    r4.x = frac(r0.z);
    r0.y = reversebits((uint)r0.y);
    r0.y = (int)r2.x ^ (int)r0.y;
    r0.y = (uint)r0.y >> 16;
    r4.y = (uint)r0.y;
    r0.y = (int)r0.x & 255;
    if (8 == 0) r0.x = 0; else if (8+8 < 32) {     r0.x = (uint)r0.x << (32-(8 + 8)); r0.x = (uint)r0.x >> (32-8);    } else r0.x = (uint)r0.x >> 8;
    if (8 == 0) r0.z = 0; else if (8+16 < 32) {     r0.z = (uint)r0.x << (32-(8 + 16)); r0.z = (uint)r0.z >> (32-8);    } else r0.z = (uint)r0.x >> 16;
    r2.xyz = (uint3)r0.yxz;
    r0.xyz = r2.xyz * float3(0.00784313772,0.00784313772,0.00784313772) + float3(-1,-1,-1);
    r2.x = cmp(r0.z >= 0);
    r2.xy = r2.xx ? float2(1,-1) : float2(-1,1);
    r2.z = r2.x + r0.z;
    r2.z = rcp(r2.z);
    r5.xyz = r0.xxy * r0.yxy;
    r6.y = r5.x * -r2.z;
    r2.w = r2.x * -r2.z;
    r6.x = r2.w * r5.y + 1;
    r7.x = r6.y * r2.x;
    r8.x = r2.y * r0.x;
    r7.y = r5.z * -r2.z + r2.x;
    r2.xy = r4.xy * float2(2,3.05175781e-005) + float2(-1,-1);
    r2.z = min(abs(r2.x), abs(r2.y));
    r2.w = max(abs(r2.x), abs(r2.y));
    r4.x = 5.42101086e-020 + r2.w;
    r2.z = r2.z / r4.x;
    r4.x = cmp(abs(r2.y) >= abs(r2.x));
    r4.x = r4.x ? 2.000000 : 0;
    r2.z = r4.x + r2.z;
    r2.z = 0.785398185 * r2.z;
    sincos(r2.z, r4.x, r5.x);
    r5.y = r4.x;
    bitmask.x = ((~(-1 << 31)) << 0) & 0xffffffff;  r2.x = (((uint)r5.x << 0) & bitmask.x) | ((uint)r2.x & ~bitmask.x);
    bitmask.y = ((~(-1 << 31)) << 0) & 0xffffffff;  r2.y = (((uint)r5.y << 0) & bitmask.y) | ((uint)r2.y & ~bitmask.y);
    r2.xy = r2.xy * r2.ww;
    r2.w = dot(r2.xy, r2.xy);
    r2.w = 1 + -r2.w;
    r2.z = sqrt(r2.w);
    r6.w = r0.x;
    r0.x = dot(r2.xyz, r6.xyw);
    r7.z = r0.y;
    r2.w = dot(r2.xyz, r7.xyz);
    r8.yz = float2(-1,1) * r0.yz;
    r4.w = dot(r2.xyz, r8.xyz);
    r0.yz = float2(0.5,0.5) + r3.xy;
    r2.x = asuint(cb1[144].y);
    r0.yz = r2.xx * float2(32.6650009,11.8149996) + r0.yz;
    r0.y = dot(r0.yz, float2(0.0671105608,0.00583714992));
    r0.y = frac(r0.y);
    r0.y = 52.9829178 * r0.y;
    r0.y = frac(r0.y);
    r0.y = -0.899999976 + r0.y;
    r4.x = cb1[28].x * r0.x;
    r4.y = cb1[29].y * r2.w;
    r4.z = cb1[30].z * r4.w;
    r1.xy = r3.zw * float2(1,-1) + float2(-1,1);
    r1.w = 1;
    r2.xyzw = r4.xyzw + r1.xyzw;
    r0.x = rcp(r2.w);
    r0.z = cb1[30].z + r1.z;
    r2.xyz = r2.xyz * r0.xxx + -r1.xyz;
    r0.x = dot(r2.xy, r2.xy);
    r0.x = sqrt(r0.x);
    r1.w = 0.5 * r0.x;
    r3.xy = r1.xy * r1.ww + r2.xy;
    r3.xy = -r0.xx * float2(0.5,0.5) + abs(r3.xy);
    r3.xy = max(float2(0,0), r3.xy);
    r3.xy = r3.xy / abs(r2.xy);
    r3.xy = float2(1,1) + -r3.xy;
    r0.x = min(r3.x, r3.y);
    r0.x = r0.x / r1.w;
    r2.xyz = r2.xyz * r0.xxx;
    r0.x = -r0.z * 0.5 + r1.z;
    r0.x = r0.x + r0.x;
    r0.x = max(abs(r2.z), r0.x);
    r1.xy = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r3.yz = cb0[2].xy * r1.xy;
    r4.yz = cb0[2].xy * r2.xy;
    r0.z = 0.125 * r0.x;
    r4.xw = r2.zz;
    r2.xyzw = float4(0.125,0.0625,-0.0625,0.125) * r4.xyzw;
    r3.xw = r1.zz;
    r1.xyzw = r2.wyzw * r0.yyyy + r3.xyzw;
    r3.xyzw = float4(0,0,0,0);
    r0.y = 1;
    r4.xy = float2(0,0);
    while (true) {
      r4.z = cmp((uint)r4.y >= 8);
      if (r4.z != 0) break;
      r4.z = (uint)r4.y;
      r5.xyzw = float4(1,2,3,4) + r4.zzzz;
      r6.xyzw = r5.xxxy * r2.yzww + r1.yzww;
      r7.xyzw = r5.yyzz * r2.yzyz + r1.yzyz;
      r5.xyzw = r5.wwzw * r2.yzxw + r1.yzxw;
      r4.zw = float2(1,2) + r0.yy;
      r8.x = t3.SampleLevel(s0_s, r6.xy, r0.y).x;
      r8.y = t3.SampleLevel(s0_s, r7.xy, r0.y).x;
      r8.z = t3.SampleLevel(s0_s, r7.zw, r4.z).x;
      r8.w = t3.SampleLevel(s0_s, r5.xy, r4.z).x;
      r5.xy = r6.zw;
      r5.xyzw = r5.xyzw + -r8.xyzw;
      r5.xyzw = r0.xxxx * float4(0.125,0.125,0.125,0.125) + r5.xyzw;
      r5.xyzw = cmp(abs(r5.xyzw) < r0.zzzz);
      r6.xy = (int2)r5.zw | (int2)r5.xy;
      r4.z = (int)r6.y | (int)r6.x;
      if (r4.z != 0) {
        r3.xyzw = r5.xyzw;
        r0.y = r4.w;
        r4.x = -1;
        break;
      }
      r4.y = (int)r4.y + 4;
      r3.xyzw = r5.xyzw;
      r0.y = r4.w;
      r4.xy = r4.zy;
    }
    if (r4.x != 0) {
      r3.xyzw = r3.xyzw ? float4(1,2,3,4) : float4(5,5,5,5);
      r0.x = (uint)r4.y;
      r0.z = min(r3.y, r3.z);
      r0.z = min(r3.x, r0.z);
      r0.z = min(r0.z, r3.w);
      r0.x = r0.x + r0.z;
      r0.xz = r2.yz * r0.xx + r1.yz;
      r0.xz = cb0[2].zw * r0.xz;
      r0.xz = r0.xz * float2(2,-2) + float2(-1,1);
      r0.xz = r0.xz * cb1[66].xy + cb1[66].wz;
      r0.xz = r0.xz * cb0[3].xy + cb0[3].zw;
      r0.xz = min(cb0[4].xy, r0.xz);
      r0.xyz = t4.SampleLevel(s0_s, r0.xz, r0.y).xyz;
      r1.x = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
      r1.x = 1 + r1.x;
      r1.x = rcp(r1.x);
      r0.xyz = r1.xxx * r0.xyz;
      r0.xyz = f32tof16(r0.xyz);
      r0.x = mad((int)r0.x, 0x00010000, (int)r0.y);
      r0.y = mad((int)r0.z, 0x00010000, 0x00003c00);
    } else {
      r0.xy = float2(0,0);
    }
  } else {
    r0.xy = float2(0,0);
  }
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  g0[r0.w].val[0/4] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  r0.x = cmp((uint)vThreadIDInGroupFlattened.x < 32);
  if (r0.x != 0) {
    r0.x = g0[vThreadIDInGroupFlattened.x].val[0/4];
    r0.y = g0[r0.w].val[0/4];
    r0.zw = (uint2)r0.xy >> int2(16,16);
    r0.xyzw = f16tof32(r0.xyzw);
    r1.xyzw = (int4)vThreadIDInGroupFlattened.xxxx + int4(32,64,96,128);
    r2.x = g0[r1.x].val[0/4];
    r3.xyzw = (int4)r1.xyzw | int4(288,320,352,384);
    r1.x = g0[r3.x].val[0/4];
    r2.y = (uint)r2.x >> 16;
    r2.xy = f16tof32(r2.xy);
    r0.xz = r2.xy + r0.xz;
    r2.x = (uint)r1.x >> 16;
    r2.x = f16tof32(r2.x);
    r0.w = r2.x + r0.w;
    r1.x = f16tof32(r1.x);
    r0.y = r1.x + r0.y;
    r1.x = g0[r1.y].val[0/4];
    r1.y = g0[r3.y].val[0/4];
    r2.x = (uint)r1.x >> 16;
    r2.x = f16tof32(r2.x);
    r0.z = r2.x + r0.z;
    r1.x = f16tof32(r1.x);
    r0.x = r1.x + r0.x;
    r1.x = (uint)r1.y >> 16;
    r1.x = f16tof32(r1.x);
    r0.w = r1.x + r0.w;
    r1.x = f16tof32(r1.y);
    r0.y = r1.x + r0.y;
    r1.x = g0[r1.z].val[0/4];
    r1.y = g0[r3.z].val[0/4];
    r1.z = (uint)r1.x >> 16;
    r1.xz = f16tof32(r1.xz);
    r0.xz = r1.xz + r0.xz;
    r1.x = (uint)r1.y >> 16;
    r1.x = f16tof32(r1.x);
    r0.w = r1.x + r0.w;
    r1.x = f16tof32(r1.y);
    r0.y = r1.x + r0.y;
    r1.x = g0[r1.w].val[0/4];
    r1.y = g0[r3.w].val[0/4];
    r1.z = (uint)r1.x >> 16;
    r1.xz = f16tof32(r1.xz);
    r0.xz = r1.xz + r0.xz;
    r1.x = (uint)r1.y >> 16;
    r1.x = f16tof32(r1.x);
    r0.w = r1.x + r0.w;
    r1.x = f16tof32(r1.y);
    r0.y = r1.x + r0.y;
    r1.xyz = (int3)vThreadIDInGroupFlattened.xxx + int3(160,192,224);
    r1.w = g0[r1.x].val[0/4];
    r2.xyz = (int3)r1.xyz | int3(416,448,480);
    r1.x = g0[r2.x].val[0/4];
    r2.x = (uint)r1.w >> 16;
    r2.x = f16tof32(r2.x);
    r0.z = r2.x + r0.z;
    r1.w = f16tof32(r1.w);
    r0.x = r1.w + r0.x;
    r1.w = (uint)r1.x >> 16;
    r1.xw = f16tof32(r1.xw);
    r0.yw = r1.xw + r0.yw;
    r1.x = g0[r1.y].val[0/4];
    r1.y = g0[r2.y].val[0/4];
    r1.w = (uint)r1.x >> 16;
    r1.xw = f16tof32(r1.xw);
    r0.xz = r1.xw + r0.xz;
    r1.x = (uint)r1.y >> 16;
    r1.x = f16tof32(r1.x);
    r0.w = r1.x + r0.w;
    r1.x = f16tof32(r1.y);
    r0.y = r1.x + r0.y;
    r1.x = g0[r1.z].val[0/4];
    r1.y = g0[r2.z].val[0/4];
    r1.z = (uint)r1.x >> 16;
    r1.z = f16tof32(r1.z);
    r2.x = r1.z + r0.z;
    r0.z = f16tof32(r1.x);
    r2.y = r0.x + r0.z;
    r0.x = (uint)r1.y >> 16;
    r0.x = f16tof32(r0.x);
    r2.z = r0.w + r0.x;
    r0.x = f16tof32(r1.y);
    r0.x = r0.y + r0.x;
    r0.yzw = float3(0.125,0.125,0.125) * r2.xyz;
    r1.x = dot(r0.yzw, float3(0.300000012,0.589999974,0.109999999));
    r1.x = 1 + -r1.x;
    r1.x = rcp(r1.x);
    r0.yzw = r1.xxx * r0.yzw;
    r1.xyz = cb1[157].xyz * r0.yzw;
    r0.x = -r0.x * 0.125 + 1;
    r2.x = (int)vThreadIDInGroupFlattened.x & 7;
    r2.yzw = (uint3)vThreadIDInGroupFlattened.xxx >> int3(3,3,3);
    r2.xyzw = mad((int4)vThreadGroupID.xyyy, int4(8,4,4,4), (int4)r2.xyzw);
    r1.w = 1;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xwww, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xyzw, r0.xxxx
  }
  return;
}