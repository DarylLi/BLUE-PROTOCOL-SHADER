// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g1[64];
groupshared struct { float val[1]; } g0[128];
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[134];
}

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
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u3
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u4
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u5
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r1.xyzw = r0.xyxy * float4(2,2,2,2) + float4(1,1,0.5,0.5);
  r1.xyzw = cb0[4].zzzz * r1.xyzw;
  r2.xyzw = cb1[132].zwzw * r1.xyxy;
  r2.xyzw = max(cb1[133].xyxy, r2.xyzw);
  r2.xyzw = min(cb1[133].zwzw, r2.xyzw);
  r2.xyzw = r2.xyzw * cb1[132].xyxy + -cb1[129].xyxy;
  r2.xyzw = cb1[130].zwzw * r2.xyzw;
  r0.zw = cb0[2].xy * r2.zw;
  r0.z = t0.SampleLevel(s0_s, r0.zw, 2).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r0.z = r0.w + r0.z;
  r0.w = cb1[130].z * cb1[36].x;
  r0.w = 100 * r0.w;
  r1.x = r0.w * r0.z;
  r1.x = r1.x * r1.x;
  r1.x = rcp(r1.x);
  r3.xyzw = float4(-0.5,-0.5,0.5,-0.5) * cb0[4].zzzz;
  r4.xyzw = r3.xyzw * cb1[130].zwzw + r2.zwzw;
  r4.xyzw = cb0[2].xyxy * r4.xyzw;
  r1.y = t0.SampleLevel(s0_s, r4.xy, 1).x;
  r3.x = r1.y * cb1[65].x + cb1[65].y;
  r1.y = r1.y * cb1[65].z + -cb1[65].w;
  r1.y = 1 / r1.y;
  r1.y = r3.x + r1.y;
  r1.y = -r1.y + r0.z;
  r1.y = r1.y * r1.y;
  r1.y = saturate(-r1.y * r1.x + 1);
  r1.y = 0.25 * r1.y;
  r1.zw = cb0[3].xy * r1.zw;
  r1.zw = float2(0.5,0.5) * r1.zw;
  r1.zw = min(cb0[3].zw, r1.zw);
  r5.xyz = t1.SampleLevel(s0_s, r1.zw, 0).xyz;
  r5.w = t2.SampleLevel(s0_s, r1.zw, 0).w;
  r1.z = t0.SampleLevel(s0_s, r4.zw, 1).x;
  r1.w = r1.z * cb1[65].x + cb1[65].y;
  r1.z = r1.z * cb1[65].z + -cb1[65].w;
  r1.z = 1 / r1.z;
  r1.z = r1.w + r1.z;
  r1.z = -r1.z + r0.z;
  r1.z = r1.z * r1.z;
  r1.z = saturate(-r1.z * r1.x + 1);
  r1.z = 0.25 * r1.z;
  r4.xyzw = r0.xyxy * float4(2,2,2,2) + float4(1.5,0.5,0.5,1.5);
  r4.xyzw = cb0[4].zzzz * r4.xyzw;
  r4.xyzw = cb0[3].xyxy * r4.xyzw;
  r4.xyzw = float4(0.5,0.5,0.5,0.5) * r4.xyzw;
  r4.xyzw = min(cb0[3].zwzw, r4.xyzw);
  r6.xyz = t1.SampleLevel(s0_s, r4.xy, 0).xyz;
  r6.w = t2.SampleLevel(s0_s, r4.xy, 0).w;
  r6.xyzw = r6.xyzw * r1.zzzz;
  r5.xyzw = r5.xyzw * r1.yyyy + r6.xyzw;
  r2.xyzw = r3.wzzz * cb1[130].zwzw + r2.xyzw;
  r2.xyzw = cb0[2].xyxy * r2.xyzw;
  r1.y = t0.SampleLevel(s0_s, r2.xy, 1).x;
  r1.z = r1.y * cb1[65].x + cb1[65].y;
  r1.y = r1.y * cb1[65].z + -cb1[65].w;
  r1.y = 1 / r1.y;
  r1.y = r1.z + r1.y;
  r1.y = -r1.y + r0.z;
  r1.y = r1.y * r1.y;
  r1.y = saturate(-r1.y * r1.x + 1);
  r1.y = 0.25 * r1.y;
  r3.xyz = t1.SampleLevel(s0_s, r4.zw, 0).xyz;
  r3.w = t2.SampleLevel(s0_s, r4.zw, 0).w;
  r3.xyzw = r3.xyzw * r1.yyyy + r5.xyzw;
  r1.y = t0.SampleLevel(s0_s, r2.zw, 1).x;
  r1.z = r1.y * cb1[65].x + cb1[65].y;
  r1.y = r1.y * cb1[65].z + -cb1[65].w;
  r1.y = 1 / r1.y;
  r1.y = r1.z + r1.y;
  r1.y = -r1.y + r0.z;
  r1.y = r1.y * r1.y;
  r1.x = saturate(-r1.y * r1.x + 1);
  r1.x = 0.25 * r1.x;
  r0.xy = r0.xy * float2(2,2) + float2(1.5,1.5);
  r0.xy = cb0[4].zz * r0.xy;
  r0.xy = cb0[3].xy * r0.xy;
  r0.xy = float2(0.5,0.5) * r0.xy;
  r0.xy = min(cb0[3].zw, r0.xy);
  r2.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r2.w = t2.SampleLevel(s0_s, r0.xy, 0).w;
  r1.xyzw = r2.xyzw * r1.xxxx + r3.xyzw;
  r2.xyz = r1.xyz;
  r2.w = 0;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r2.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u3.xyzw, vThreadID.xyyy, r1.wwww
  r1.xyzw = f32tof16(r1.xyzw);
  r0.xy = mad((int2)r1.yw, int2(0x10000,0x10000), (int2)r1.xz);
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  r0.x = (int)vThreadIDInGroupFlattened.x + 64;
  g0[r0.x].val[0/4] = r0.y;
  g1[vThreadIDInGroupFlattened.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r0.yz = cmp((uint2)vThreadIDInGroupFlattened.xx < int2(16,4));
  if (r0.y != 0) {
    r1.x = (int)vThreadIDInGroupFlattened.x & 3;
    r1.yzw = (uint3)vThreadIDInGroupFlattened.xxx >> int3(2,2,2);
    r2.xy = (uint2)r1.xw << int2(1,1);
    r0.y = (uint)r2.y << 3;
    r2.y = (int)r0.y + (int)r2.x;
    r2.z = g1[r2.y].val[0/4];
    r0.y = mad(1, 8, (int)r0.y);
    r0.y = (int)r0.y + (int)r2.x;
    r2.x = g1[r0.y].val[0/4];
    r2.w = max(r2.z, r2.x);
    r3.xyz = mad((int3)r1.xww, int3(2,16,16), int3(1,0,8));
    r3.xy = (int2)r3.yz + (int2)r3.xx;
    r3.z = g1[r3.x].val[0/4];
    r2.w = max(r3.z, r2.w);
    r3.w = g1[r3.y].val[0/4];
    r2.w = max(r3.w, r2.w);
    r4.x = r2.w * r0.w;
    r4.x = r4.x * r4.x;
    r4.x = rcp(r4.x);
    r4.y = g0[r2.y].val[0/4];
    r2.y = (int)r2.y + 64;
    r2.y = g0[r2.y].val[0/4];
    r5.x = f16tof32(r4.y);
    r4.y = (uint)r4.y >> 16;
    r5.y = f16tof32(r4.y);
    r5.z = f16tof32(r2.y);
    r2.y = (uint)r2.y >> 16;
    r5.w = f16tof32(r2.y);
    r2.y = r2.w + -r2.z;
    r2.y = r2.y * r2.y;
    r2.y = saturate(-r2.y * r4.x + 1);
    r2.z = g0[r0.y].val[0/4];
    r0.y = (int)r0.y | 72;
    r0.y = g0[r0.y].val[0/4];
    r6.x = f16tof32(r2.z);
    r2.z = (uint)r2.z >> 16;
    r6.y = f16tof32(r2.z);
    r6.z = f16tof32(r0.y);
    r0.y = (uint)r0.y >> 16;
    r6.w = f16tof32(r0.y);
    r0.y = r2.w + -r2.x;
    r0.y = r0.y * r0.y;
    r0.y = saturate(-r0.y * r4.x + 1);
    r6.xyzw = r6.xyzw * r0.yyyy;
    r5.xyzw = r5.xyzw * r2.yyyy + r6.xyzw;
    r0.y = g0[r3.x].val[0/4];
    r2.xy = (int2)r3.xy | int2(65,73);
    r2.x = g0[r2.x].val[0/4];
    r6.x = f16tof32(r0.y);
    r0.y = (uint)r0.y >> 16;
    r6.y = f16tof32(r0.y);
    r6.z = f16tof32(r2.x);
    r0.y = (uint)r2.x >> 16;
    r6.w = f16tof32(r0.y);
    r0.y = r2.w + -r3.z;
    r0.y = r0.y * r0.y;
    r0.y = saturate(-r0.y * r4.x + 1);
    r5.xyzw = r6.xyzw * r0.yyyy + r5.xyzw;
    r0.y = g0[r3.y].val[0/4];
    r2.x = g0[r2.y].val[0/4];
    r6.x = f16tof32(r0.y);
    r0.y = (uint)r0.y >> 16;
    r6.y = f16tof32(r0.y);
    r6.z = f16tof32(r2.x);
    r0.y = (uint)r2.x >> 16;
    r6.w = f16tof32(r0.y);
    r0.y = r2.w + -r3.w;
    r0.y = r0.y * r0.y;
    r0.y = saturate(-r0.y * r4.x + 1);
    r3.xyzw = r6.xyzw * r0.yyyy + r5.xyzw;
    r3.xyzw = float4(0.25,0.25,0.25,0.25) * r3.xyzw;
    r1.xyzw = mad((int4)vThreadGroupID.xyyy, int4(4,4,4,4), (int4)r1.xyzw);
    r4.xyz = r3.xyz;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xwww, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u4.xyzw, r1.xyzw, r3.wwww
    r1.xyzw = f32tof16(r3.xyzw);
    r1.xy = mad((int2)r1.yw, int2(0x10000,0x10000), (int2)r1.xz);
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r1.x;
    g0[r0.x].val[0/4] = r1.y;
    g1[vThreadIDInGroupFlattened.x].val[0/4] = r2.w;
  }
  if (r0.z != 0) {
    r1.x = (int)vThreadIDInGroupFlattened.x & 1;
    r1.yzw = (uint3)vThreadIDInGroupFlattened.xxx >> int3(1,1,1);
    r0.xy = (uint2)r1.xw << int2(1,1);
    r0.y = (uint)r0.y << 2;
    r0.z = (int)r0.y + (int)r0.x;
    r2.x = g1[r0.z].val[0/4];
    r0.y = mad(1, 4, (int)r0.y);
    r0.x = (int)r0.y + (int)r0.x;
    r0.y = g1[r0.x].val[0/4];
    r2.y = max(r2.x, r0.y);
    r3.xyz = mad((int3)r1.xww, int3(2,8,8), int3(1,0,4));
    r2.zw = (int2)r3.yz + (int2)r3.xx;
    r3.x = g1[r2.z].val[0/4];
    r2.y = max(r3.x, r2.y);
    r3.y = g1[r2.w].val[0/4];
    r2.y = max(r3.y, r2.y);
    r0.w = r2.y * r0.w;
    r0.w = r0.w * r0.w;
    r0.w = rcp(r0.w);
    r3.z = g0[r0.z].val[0/4];
    r0.z = (int)r0.z + 64;
    r0.z = g0[r0.z].val[0/4];
    r4.x = f16tof32(r3.z);
    r3.z = (uint)r3.z >> 16;
    r4.y = f16tof32(r3.z);
    r4.z = f16tof32(r0.z);
    r0.z = (uint)r0.z >> 16;
    r4.w = f16tof32(r0.z);
    r0.z = r2.y + -r2.x;
    r0.z = r0.z * r0.z;
    r0.z = saturate(-r0.z * r0.w + 1);
    r2.x = g0[r0.x].val[0/4];
    r0.x = (int)r0.x | 68;
    r0.x = g0[r0.x].val[0/4];
    r5.x = f16tof32(r2.x);
    r2.x = (uint)r2.x >> 16;
    r5.y = f16tof32(r2.x);
    r5.z = f16tof32(r0.x);
    r0.x = (uint)r0.x >> 16;
    r5.w = f16tof32(r0.x);
    r0.x = r2.y + -r0.y;
    r0.x = r0.x * r0.x;
    r0.x = saturate(-r0.x * r0.w + 1);
    r5.xyzw = r5.xyzw * r0.xxxx;
    r4.xyzw = r4.xyzw * r0.zzzz + r5.xyzw;
    r0.x = g0[r2.z].val[0/4];
    r0.yz = (int2)r2.zw | int2(65,69);
    r0.y = g0[r0.y].val[0/4];
    r5.x = f16tof32(r0.x);
    r0.x = (uint)r0.x >> 16;
    r5.yz = f16tof32(r0.xy);
    r0.x = (uint)r0.y >> 16;
    r5.w = f16tof32(r0.x);
    r0.x = r2.y + -r3.x;
    r0.x = r0.x * r0.x;
    r0.x = saturate(-r0.x * r0.w + 1);
    r4.xyzw = r5.xyzw * r0.xxxx + r4.xyzw;
    r0.x = g0[r2.w].val[0/4];
    r0.y = g0[r0.z].val[0/4];
    r5.x = f16tof32(r0.x);
    r0.x = (uint)r0.x >> 16;
    r5.yz = f16tof32(r0.xy);
    r0.x = (uint)r0.y >> 16;
    r5.w = f16tof32(r0.x);
    r0.x = r2.y + -r3.y;
    r0.x = r0.x * r0.x;
    r0.x = saturate(-r0.x * r0.w + 1);
    r0.xyzw = r5.xyzw * r0.xxxx + r4.xyzw;
    r0.xyzw = float4(0.25,0.25,0.25,0.25) * r0.xyzw;
    r1.xyzw = mad((int4)vThreadGroupID.xyyy, int4(2,2,2,2), (int4)r1.xyzw);
    r2.xyz = r0.xyz;
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r1.xwww, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u5.xyzw, r1.xyzw, r0.wwww
  }
  return;
}