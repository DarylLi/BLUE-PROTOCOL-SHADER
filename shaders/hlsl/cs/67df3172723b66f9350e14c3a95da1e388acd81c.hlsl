// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[128];
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u2
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xy = cb0[4].zz * r0.xy;
  r0.xy = cb0[3].xy * r0.xy;
  r0.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.w = 0;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xyzw
  r0.xyz = f32tof16(r0.xyz);
  r0.x = mad((int)r0.y, 0x00010000, (int)r0.x);
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  r0.x = (int)vThreadIDInGroupFlattened.x + 64;
  r0.y = (int)r0.z + 0x3c000000;
  g0[r0.x].val[0/4] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  r0.yz = cmp((uint2)vThreadIDInGroupFlattened.xx < int2(16,4));
  if (r0.y != 0) {
    r1.x = (int)vThreadIDInGroupFlattened.x & 3;
    r1.yzw = (uint3)vThreadIDInGroupFlattened.xxx >> int3(2,2,2);
    r0.yw = (uint2)r1.xw << int2(1,1);
    r0.w = (uint)r0.w << 3;
    r2.x = (int)r0.w + (int)r0.y;
    r2.y = g0[r2.x].val[0/4];
    r2.x = (int)r2.x + 64;
    r2.x = g0[r2.x].val[0/4];
    r3.x = f16tof32(r2.y);
    r2.y = (uint)r2.y >> 16;
    r3.yz = f16tof32(r2.yx);
    r2.x = (uint)r2.x >> 16;
    r3.w = f16tof32(r2.x);
    r0.w = mad(1, 8, (int)r0.w);
    r0.y = (int)r0.w + (int)r0.y;
    r0.w = g0[r0.y].val[0/4];
    r0.y = (int)r0.y | 72;
    r0.y = g0[r0.y].val[0/4];
    r2.x = f16tof32(r0.w);
    r0.w = (uint)r0.w >> 16;
    r2.yz = f16tof32(r0.wy);
    r0.y = (uint)r0.y >> 16;
    r2.w = f16tof32(r0.y);
    r2.xyzw = r3.xyzw + r2.xyzw;
    r3.xyz = mad((int3)r1.xww, int3(2,16,16), int3(1,0,8));
    r0.yw = (int2)r3.yz + (int2)r3.xx;
    r3.x = g0[r0.y].val[0/4];
    r3.yz = (int2)r0.yw | int2(65,73);
    r0.y = g0[r3.y].val[0/4];
    r4.x = f16tof32(r3.x);
    r3.x = (uint)r3.x >> 16;
    r4.y = f16tof32(r3.x);
    r4.z = f16tof32(r0.y);
    r0.y = (uint)r0.y >> 16;
    r4.w = f16tof32(r0.y);
    r2.xyzw = r4.xyzw + r2.xyzw;
    r0.y = g0[r0.w].val[0/4];
    r0.w = g0[r3.z].val[0/4];
    r3.x = f16tof32(r0.y);
    r0.y = (uint)r0.y >> 16;
    r3.yz = f16tof32(r0.yw);
    r0.y = (uint)r0.w >> 16;
    r3.w = f16tof32(r0.y);
    r2.xyzw = r3.xyzw + r2.xyzw;
    r2.xyzw = float4(0.25,0.25,0.25,0.25) * r2.xyzw;
    r1.xyzw = mad((int4)vThreadGroupID.xyyy, int4(4,4,4,4), (int4)r1.xyzw);
    r3.xyz = r2.xyz;
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xyzw, r3.xyzw
    r1.xyzw = f32tof16(r2.xyzw);
    r0.yw = mad((int2)r1.yw, int2(0x10000,0x10000), (int2)r1.xz);
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r0.y;
    g0[r0.x].val[0/4] = r0.w;
  }
  if (r0.z != 0) {
    r0.x = (int)vThreadIDInGroupFlattened.x & 1;
    r0.yzw = (uint3)vThreadIDInGroupFlattened.xxx >> int3(1,1,1);
    r1.xy = (uint2)r0.xw << int2(1,1);
    r1.y = (uint)r1.y << 2;
    r1.z = (int)r1.y + (int)r1.x;
    r1.w = g0[r1.z].val[0/4];
    r1.z = (int)r1.z + 64;
    r1.z = g0[r1.z].val[0/4];
    r2.x = f16tof32(r1.w);
    r1.w = (uint)r1.w >> 16;
    r2.yz = f16tof32(r1.wz);
    r1.y = mad(1, 4, (int)r1.y);
    r1.x = (int)r1.y + (int)r1.x;
    r1.y = g0[r1.x].val[0/4];
    r1.x = (int)r1.x | 68;
    r1.x = g0[r1.x].val[0/4];
    r3.x = f16tof32(r1.y);
    r1.y = (uint)r1.y >> 16;
    r3.yz = f16tof32(r1.yx);
    r1.xyz = r3.xyz + r2.xyz;
    r2.xyz = mad((int3)r0.xww, int3(2,8,8), int3(1,0,4));
    r2.xy = (int2)r2.yz + (int2)r2.xx;
    r1.w = g0[r2.x].val[0/4];
    r2.xz = (int2)r2.xy | int2(65,69);
    r2.x = g0[r2.x].val[0/4];
    r3.x = f16tof32(r1.w);
    r1.w = (uint)r1.w >> 16;
    r3.y = f16tof32(r1.w);
    r3.z = f16tof32(r2.x);
    r1.xyz = r3.xyz + r1.xyz;
    r1.w = g0[r2.y].val[0/4];
    r2.x = g0[r2.z].val[0/4];
    r3.x = f16tof32(r1.w);
    r1.w = (uint)r1.w >> 16;
    r3.y = f16tof32(r1.w);
    r3.z = f16tof32(r2.x);
    r1.xyz = r3.xyz + r1.xyz;
    r1.xyz = float3(0.25,0.25,0.25) * r1.xyz;
    r0.xyzw = mad((int4)vThreadGroupID.xyyy, int4(2,2,2,2), (int4)r0.xyzw);
    r1.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r0.xyzw, r1.xyzw
  }
  return;
}