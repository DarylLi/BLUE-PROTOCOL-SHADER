// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g1[64];
groupshared struct { float val[1]; } g0[128];
Texture2D<float4> t3 : register(t3);

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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xy = cb1[132].zw * r0.xy;
  r0.xy = max(cb1[133].xy, r0.xy);
  r0.xy = min(cb1[133].zw, r0.xy);
  r0.zw = r0.xy * cb1[132].xy + -cb1[129].xy;
  r0.zw = cb1[130].zw * r0.zw;
  r1.xy = r0.zw + r0.zw;
  r0.z = r0.z * 2 + -1;
  r0.w = -r0.w * 2 + 1;
  r2.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r2.y = r2.x * cb1[65].x + cb1[65].y;
  r2.z = r2.x * cb1[65].z + -cb1[65].w;
  r2.z = 1 / r2.z;
  r2.y = r2.y + r2.z;
  r3.xyz = cb1[123].xyw * r0.www;
  r3.xyz = r0.zzz * cb1[122].xyw + r3.xyz;
  r2.xzw = r2.xxx * cb1[124].xyw + r3.xyz;
  r2.xzw = cb1[125].xyw + r2.xzw;
  r0.zw = r2.xz / r2.ww;
  r0.xy = t1.SampleLevel(s0_s, r0.xy, 0).xy;
  r2.x = cmp(0 < r0.x);
  r0.xy = r0.xy * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
  r1.zw = r1.xy * float2(1,-1) + float2(-1,1);
  r0.xy = r1.zw + -r0.xy;
  r0.xy = r2.xx ? r0.xy : r0.zw;
  r0.zw = r0.xy * cb0[1].xy + cb0[1].zw;
  r1.y = cmp(cb1[31].w < 1);
  r1.z = r1.y ? r2.y : 1;
  r1.xw = float2(-1,0) + r1.xw;
  r2.xz = r1.xw * r1.zz;
  r3.xyz = cb1[53].xyz * r2.zzz;
  r2.xzw = r2.xxx * cb1[52].xyz + r3.xyz;
  r2.xzw = r2.yyy * cb1[54].xyz + r2.xzw;
  r2.xzw = cb1[55].xyz + r2.xzw;
  r1.z = cb1[130].z * cb1[36].x;
  r1.z = 100 * r1.z;
  r3.x = r1.z * r2.y;
  r3.x = r3.x * r3.x;
  r3.x = rcp(r3.x);
  r0.zw = max(cb1[133].xy, r0.zw);
  r0.zw = min(cb1[133].zw, r0.zw);
  r3.y = t3.SampleLevel(s0_s, r0.zw, 0).x;
  r3.z = r3.y * cb1[65].x + cb1[65].y;
  r3.y = r3.y * cb1[65].z + -cb1[65].w;
  r3.y = 1 / r3.y;
  r3.y = r3.z + r3.y;
  r1.y = r1.y ? r3.y : 1;
  r3.zw = r1.yy * r0.xy;
  r4.xyz = cb1[119].xyz * r3.www;
  r4.xyz = r3.zzz * cb1[118].xyz + r4.xyz;
  r3.yzw = r3.yyy * cb1[120].xyz + r4.xyz;
  r3.yzw = cb1[121].xyz + r3.yzw;
  r4.xyz = -cb1[113].xyz + cb1[70].xyz;
  r3.yzw = r4.xyz + r3.yzw;
  r2.xzw = -r3.yzw + r2.xzw;
  r1.y = dot(r2.xzw, r2.xzw);
  r3.w = saturate(-r1.y * r3.x + 1);
  r2.xzw = t2.SampleLevel(s0_s, r0.zw, 0).xyz;
  r3.xyz = r2.xzw * r3.www;
  r3.xyzw = min(float4(0,0,0,0), -r3.xyzw);
  r3.xyz = cb0[4].xxx * -r3.xyz;
  r0.zw = saturate(abs(r1.xw) * float2(5,5) + float2(-4,-4));
  r0.z = dot(r0.zw, r0.zw);
  r0.z = 1 + -r0.z;
  r0.xy = saturate(abs(r0.xy) * float2(5,5) + float2(-4,-4));
  r0.x = dot(r0.xy, r0.xy);
  r0.x = 1 + -r0.x;
  r0.xz = max(float2(0,0), r0.xz);
  r0.x = min(r0.z, r0.x);
  r3.w = -r3.w;
  r0.xyzw = r3.xyzw * r0.xxxx;
  r0.xyzw = f32tof16(r0.xyzw);
  r0.xy = mad((int2)r0.yw, int2(0x10000,0x10000), (int2)r0.xz);
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  r0.x = (int)vThreadIDInGroupFlattened.x + 64;
  g0[r0.x].val[0/4] = r0.y;
  g1[vThreadIDInGroupFlattened.x].val[0/4] = r2.y;
  GroupMemoryBarrierWithGroupSync();
  r0.yz = cmp((uint2)vThreadIDInGroupFlattened.xx < int2(16,4));
  if (r0.y != 0) {
    r2.x = (int)vThreadIDInGroupFlattened.x & 3;
    r2.yzw = (uint3)vThreadIDInGroupFlattened.xxx >> int3(2,2,2);
    r0.yw = (uint2)r2.xw << int2(1,1);
    r0.w = (uint)r0.w << 3;
    r1.x = (int)r0.w + (int)r0.y;
    r1.y = g1[r1.x].val[0/4];
    r0.w = mad(1, 8, (int)r0.w);
    r0.y = (int)r0.w + (int)r0.y;
    r0.w = g1[r0.y].val[0/4];
    r1.w = max(r1.y, r0.w);
    r3.xyz = mad((int3)r2.xww, int3(2,16,16), int3(1,0,8));
    r3.xy = (int2)r3.yz + (int2)r3.xx;
    r3.z = g1[r3.x].val[0/4];
    r1.w = max(r3.z, r1.w);
    r3.w = g1[r3.y].val[0/4];
    r1.w = max(r3.w, r1.w);
    r4.x = r1.z * r1.w;
    r4.x = r4.x * r4.x;
    r4.x = rcp(r4.x);
    r4.y = g0[r1.x].val[0/4];
    r1.x = (int)r1.x + 64;
    r1.x = g0[r1.x].val[0/4];
    r5.x = f16tof32(r4.y);
    r4.y = (uint)r4.y >> 16;
    r5.y = f16tof32(r4.y);
    r5.z = f16tof32(r1.x);
    r1.x = (uint)r1.x >> 16;
    r5.w = f16tof32(r1.x);
    r1.x = r1.w + -r1.y;
    r1.x = r1.x * r1.x;
    r1.x = saturate(-r1.x * r4.x + 1);
    r1.y = g0[r0.y].val[0/4];
    r0.y = (int)r0.y | 72;
    r0.y = g0[r0.y].val[0/4];
    r6.x = f16tof32(r1.y);
    r1.y = (uint)r1.y >> 16;
    r6.y = f16tof32(r1.y);
    r6.z = f16tof32(r0.y);
    r0.y = (uint)r0.y >> 16;
    r6.w = f16tof32(r0.y);
    r0.y = r1.w + -r0.w;
    r0.y = r0.y * r0.y;
    r0.y = saturate(-r0.y * r4.x + 1);
    r6.xyzw = r6.xyzw * r0.yyyy;
    r5.xyzw = r5.xyzw * r1.xxxx + r6.xyzw;
    r0.y = g0[r3.x].val[0/4];
    r1.xy = (int2)r3.xy | int2(65,73);
    r0.w = g0[r1.x].val[0/4];
    r6.x = f16tof32(r0.y);
    r0.y = (uint)r0.y >> 16;
    r6.yz = f16tof32(r0.yw);
    r0.y = (uint)r0.w >> 16;
    r6.w = f16tof32(r0.y);
    r0.y = r1.w + -r3.z;
    r0.y = r0.y * r0.y;
    r0.y = saturate(-r0.y * r4.x + 1);
    r5.xyzw = r6.xyzw * r0.yyyy + r5.xyzw;
    r0.y = g0[r3.y].val[0/4];
    r0.w = g0[r1.y].val[0/4];
    r6.x = f16tof32(r0.y);
    r0.y = (uint)r0.y >> 16;
    r6.yz = f16tof32(r0.yw);
    r0.y = (uint)r0.w >> 16;
    r6.w = f16tof32(r0.y);
    r0.y = r1.w + -r3.w;
    r0.y = r0.y * r0.y;
    r0.y = saturate(-r0.y * r4.x + 1);
    r3.xyzw = r6.xyzw * r0.yyyy + r5.xyzw;
    r3.xyzw = float4(0.25,0.25,0.25,0.25) * r3.xyzw;
    r2.xyzw = mad((int4)vThreadGroupID.xyyy, int4(4,4,4,4), (int4)r2.xyzw);
    r4.xyz = r3.xyz;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xwww, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r2.xyzw, r3.wwww
    r2.xyzw = f32tof16(r3.xyzw);
    r0.yw = mad((int2)r2.yw, int2(0x10000,0x10000), (int2)r2.xz);
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r0.y;
    g0[r0.x].val[0/4] = r0.w;
    g1[vThreadIDInGroupFlattened.x].val[0/4] = r1.w;
  }
  if (r0.z != 0) {
    r0.x = (int)vThreadIDInGroupFlattened.x & 1;
    r0.yzw = (uint3)vThreadIDInGroupFlattened.xxx >> int3(1,1,1);
    r1.xy = (uint2)r0.xw << int2(1,1);
    r1.y = (uint)r1.y << 2;
    r1.w = (int)r1.y + (int)r1.x;
    r2.x = g1[r1.w].val[0/4];
    r1.y = mad(1, 4, (int)r1.y);
    r1.x = (int)r1.y + (int)r1.x;
    r1.y = g1[r1.x].val[0/4];
    r2.y = max(r2.x, r1.y);
    r3.xyz = mad((int3)r0.xww, int3(2,8,8), int3(1,0,4));
    r2.zw = (int2)r3.yz + (int2)r3.xx;
    r3.x = g1[r2.z].val[0/4];
    r2.y = max(r3.x, r2.y);
    r3.y = g1[r2.w].val[0/4];
    r2.y = max(r3.y, r2.y);
    r1.z = r2.y * r1.z;
    r1.z = r1.z * r1.z;
    r1.z = rcp(r1.z);
    r3.z = g0[r1.w].val[0/4];
    r1.w = (int)r1.w + 64;
    r1.w = g0[r1.w].val[0/4];
    r4.x = f16tof32(r3.z);
    r3.z = (uint)r3.z >> 16;
    r4.y = f16tof32(r3.z);
    r4.z = f16tof32(r1.w);
    r1.w = (uint)r1.w >> 16;
    r4.w = f16tof32(r1.w);
    r1.w = r2.y + -r2.x;
    r1.w = r1.w * r1.w;
    r1.w = saturate(-r1.w * r1.z + 1);
    r2.x = g0[r1.x].val[0/4];
    r1.x = (int)r1.x | 68;
    r1.x = g0[r1.x].val[0/4];
    r5.x = f16tof32(r2.x);
    r2.x = (uint)r2.x >> 16;
    r5.y = f16tof32(r2.x);
    r5.z = f16tof32(r1.x);
    r1.x = (uint)r1.x >> 16;
    r5.w = f16tof32(r1.x);
    r1.x = r2.y + -r1.y;
    r1.x = r1.x * r1.x;
    r1.x = saturate(-r1.x * r1.z + 1);
    r5.xyzw = r5.xyzw * r1.xxxx;
    r4.xyzw = r4.xyzw * r1.wwww + r5.xyzw;
    r1.x = g0[r2.z].val[0/4];
    r1.yw = (int2)r2.zw | int2(65,69);
    r1.y = g0[r1.y].val[0/4];
    r5.x = f16tof32(r1.x);
    r1.x = (uint)r1.x >> 16;
    r5.yz = f16tof32(r1.xy);
    r1.x = (uint)r1.y >> 16;
    r5.w = f16tof32(r1.x);
    r1.x = r2.y + -r3.x;
    r1.x = r1.x * r1.x;
    r1.x = saturate(-r1.x * r1.z + 1);
    r4.xyzw = r5.xyzw * r1.xxxx + r4.xyzw;
    r1.x = g0[r2.w].val[0/4];
    r1.y = g0[r1.w].val[0/4];
    r5.x = f16tof32(r1.x);
    r1.x = (uint)r1.x >> 16;
    r5.yz = f16tof32(r1.xy);
    r1.x = (uint)r1.y >> 16;
    r5.w = f16tof32(r1.x);
    r1.x = r2.y + -r3.y;
    r1.x = r1.x * r1.x;
    r1.x = saturate(-r1.x * r1.z + 1);
    r1.xyzw = r5.xyzw * r1.xxxx + r4.xyzw;
    r1.xyzw = float4(0.25,0.25,0.25,0.25) * r1.xyzw;
    r0.xyzw = mad((int4)vThreadGroupID.xyyy, int4(2,2,2,2), (int4)r0.xyzw);
    r2.xyz = r1.xyz;
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xwww, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r0.xyzw, r1.wwww
  }
  return;
}