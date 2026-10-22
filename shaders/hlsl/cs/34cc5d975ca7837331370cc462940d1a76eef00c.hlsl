// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[4]; } g2[64];
struct u5_t {
  float val[4];
};
RWStructuredBuffer<u5_t> u5 : register(u5);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
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
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u2
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u3
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u4
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
// No code for instruction (needs manual fix):
store_raw g0.x, l(0), l(0)
  GroupMemoryBarrierWithGroupSync();
  bitmask.x = ((~(-1 << 1)) << 2) & 0xffffffff;  r0.x = (((uint)vThreadIDInGroupFlattened.x << 2) & bitmask.x) | ((uint)0 & ~bitmask.x);
  r0.y = (uint)vThreadIDInGroupFlattened.x << 1;
  r0.y = (int)r0.y & 4;
  r1.xyzw = (uint4)vThreadIDInGroupFlattened.xxxx >> int4(1,2,4,5);
  r0.zw = (int2)r1.xy & int2(2,2);
  r0.xy = (int2)r0.xy + (int2)r0.zw;
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.x = (((uint)r1.z << 0) & bitmask.x) | ((uint)r0.x & ~bitmask.x);
  r1.y = (int)r0.y + (int)r1.w;
  r0.x = (int)vThreadIDInGroupFlattened.x & 15;
  r0.yz = mad((int2)vThreadGroupID.xy, int2(8,8), (int2)r1.xy);
  r1.xy = (uint2)r0.yz;
  r2.xy = float2(0.5,0.5) + r1.xy;
  r1.xy = cb0[4].zw * r2.xy;
  r1.xy = min(cb0[2].yz, r1.xy);
  r3.xyzw = t1.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r0.w = t0.Load(float4(0,0,0,0)).x;
  r0.w = cb1[135].z * r0.w;
  r1.w = cb0[3].x * r3.w;
  r4.xy = r3.yx + r3.yz;
  r4.x = r4.x + r4.y;
  r4.x = r4.x * r0.w;
  r4.x = saturate(r4.x * 2.5 + -1);
  r4.y = saturate(-r3.w * cb0[3].x + -cb0[2].w);
  r4.x = r4.x * r4.y;
  r4.y = min(r2.x, r2.y);
  r4.zw = asuint(cb0[1].zw);
  r4.zw = r4.zw + -r2.xy;
  r4.z = min(r4.z, r4.w);
  r4.y = min(r4.y, r4.z);
  r5.w = abs(r1.w);
  r4.y = saturate(-r5.w + r4.y);
  r4.x = r4.x * r4.y;
  r4.y = cmp(0.5 < r4.x);
  if (r4.y != 0) {
    r4.y = rcp(r0.w);
    r4.y = cb0[0].x * r4.y;
    r6.xyz = min(r4.yyy, r3.xyz);
    r4.zw = -cb0[5].zw + r1.xy;
    r7.xyz = t2.SampleLevel(s0_s, r4.zw, 0).xyz;
    r7.xyz = min(r7.xyz, r4.yyy);
    r7.xyz = -r7.xyz + r6.xyz;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r4.z = max(r7.y, r7.z);
    r4.z = max(r7.x, r4.z);
    r4.z = r4.z * r0.w;
    r4.z = saturate(r4.z * 1.42857146 + -1);
    r7.xyzw = cb0[5].zwwz * float4(1,1,-1,-1) + r1.xyyx;
    r7.xy = min(cb0[2].yz, r7.xy);
    r8.xyz = t2.SampleLevel(s0_s, r7.xz, 0).xyz;
    r8.xyz = min(r8.xyz, r4.yyy);
    r8.xyz = -r8.xyz + r6.xyz;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r4.w = max(r8.y, r8.z);
    r4.w = max(r8.x, r4.w);
    r4.w = r4.w * r0.w;
    r4.w = saturate(r4.w * 1.42857146 + -1);
    r4.z = max(r4.z, r4.w);
    r7.xyz = t2.SampleLevel(s0_s, r7.wy, 0).xyz;
    r7.xyz = min(r7.xyz, r4.yyy);
    r7.xyz = -r7.xyz + r6.xyz;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r4.w = max(r7.y, r7.z);
    r4.w = max(r7.x, r4.w);
    r4.w = r4.w * r0.w;
    r4.w = saturate(r4.w * 1.42857146 + -1);
    r4.z = max(r4.z, r4.w);
    r1.xy = cb0[5].zw + r1.xy;
    r1.xy = min(cb0[2].yz, r1.xy);
    r7.xyz = t2.SampleLevel(s0_s, r1.xy, 0).xyz;
    r7.xyz = min(r7.xyz, r4.yyy);
    r6.xyz = -r7.xyz + r6.xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r1.x = max(r6.y, r6.z);
    r1.x = max(r6.x, r1.x);
    r0.w = r1.x * r0.w;
    r0.w = saturate(r0.w * 1.42857146 + -1);
    r0.w = max(r4.z, r0.w);
    r4.x = r4.x * r0.w;
  }
  r0.w = r4.x * 2 + -1;
  r0.w = max(0, r0.w);
  r1.x = 1 << (int)r0.x;
  r1.y = cmp(0.00999999978 < r0.w);
  r4.x = cmp(r3.w < 0);
  r1.y = r1.y ? r4.x : 0;
  if (r1.y != 0) {
    // Needs manual fix for instruction:
    atomic_or g0, l(0), r1.x
    InterlockedOr(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r1.y, l(0), g0.xxxx
  if (vThreadIDInGroupFlattened.x == 0) {
    if (r1.y != 0) {
      r4.x = countbits((uint)r1.y);
      // Needs manual fix for instruction:
        imm_atomic_iadd r4.x, u4, l(1), r4.x
      InterlockedAdd(dest, imm_value, orig_value);
    // No code for instruction (needs manual fix):
        store_raw g1.x, l(0), r4.x
    }
  }
  GroupMemoryBarrierWithGroupSync();
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    if (r0.x == 0) r0.x = 0; else if (r0.x+0 < 32) {     r0.x = (uint)r1.y << (32-(r0.x + 0)); r0.x = (uint)r0.x >> (32-r0.x);    } else r0.x = (uint)r1.y >> 0;
    r0.x = countbits((uint)r0.x);
  // No code for instruction (needs manual fix):
    ld_raw r1.x, l(0), g1.xxxx
    r0.x = (int)r0.x + (int)r1.x;
    r1.x = cmp((uint)r0.x < asuint(cb0[2].x));
    if (r1.x != 0) {
      r1.x = r3.w * r3.w;
      r1.y = 3.14159274 * r1.x;
      r1.x = cmp(0 < r1.x);
      r1.y = rcp(r1.y);
      r1.y = min(1, r1.y);
      r1.x = r1.x ? r1.y : 1;
      if (r1.z == 0) {
        r1.y = (int)r0.x * 5;
        r2.zw = float2(0,0);
        u5[r1.y].val[0/4] = r2.x;
        u5[r1.y].val[0/4+1] = r2.y;
        u5[r1.y].val[0/4+2] = r2.z;
        u5[r1.y].val[0/4+3] = r2.w;
      }
      r1.x = r1.x * r0.w;
      r1.y = cmp(r1.w < 0);
      r1.y = r1.y ? 1.000000 : 0;
      r1.x = r1.x * r1.y;
      r5.xyz = r3.xyz * r1.xxx;
      r0.x = mad(5, (int)r0.x, (int)r1.z);
      r0.x = (int)r0.x + 1;
      u5[r0.x].val[0/4] = r5.x;
      u5[r0.x].val[0/4+1] = r5.y;
      u5[r0.x].val[0/4+2] = r5.z;
      u5[r0.x].val[0/4+3] = r5.w;
    } else {
      r0.w = 0;
    }
  }
  r0.x = 1 + -r0.w;
  r3.xyz = r3.xyz * r0.xxx;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.yzzz, r3.xyzw
  g2[vThreadIDInGroupFlattened.x].val[0/4] = r3.x;
  g2[vThreadIDInGroupFlattened.x].val[0/4+1] = r3.y;
  g2[vThreadIDInGroupFlattened.x].val[0/4+2] = r3.z;
  g2[vThreadIDInGroupFlattened.x].val[0/4+3] = r3.w;
  GroupMemoryBarrierWithGroupSync();
  r1.xyz = cmp((uint3)vThreadIDInGroupFlattened.xxx < int3(16,4,1));
  if (r1.x != 0) {
    r2.xyz = (int3)vThreadIDInGroupFlattened.xxx + int3(16,32,48);
    r4.x = g2[r2.x].val[0/4];
    r4.y = g2[r2.x].val[0/4+1];
    r4.z = g2[r2.x].val[0/4+2];
    r4.w = g2[r2.x].val[0/4+3];
    r5.x = g2[r2.y].val[0/4];
    r5.y = g2[r2.y].val[0/4+1];
    r5.z = g2[r2.y].val[0/4+2];
    r5.w = g2[r2.y].val[0/4+3];
    r2.x = g2[r2.z].val[0/4];
    r2.y = g2[r2.z].val[0/4+1];
    r2.z = g2[r2.z].val[0/4+2];
    r2.w = g2[r2.z].val[0/4+3];
    r0.x = cmp(r4.w < abs(r3.w));
    r0.x = r0.x ? r4.w : r3.w;
    r0.w = cmp(r5.w < abs(r0.x));
    r0.x = r0.w ? r5.w : r0.x;
    r0.w = cmp(r2.w < abs(r0.x));
    r6.w = r0.w ? r2.w : r0.x;
    r0.x = r6.w + -r3.w;
    r7.x = saturate(-r0.x * 32 + 1);
    r0.x = r6.w + -r4.w;
    r7.y = saturate(-r0.x * 32 + 1);
    r0.x = r6.w + -r5.w;
    r7.z = saturate(-r0.x * 32 + 1);
    r0.x = r6.w + -r2.w;
    r7.w = saturate(-r0.x * 32 + 1);
    r0.x = dot(float4(1,1,1,1), r7.xyzw);
    r0.x = rcp(r0.x);
    r4.xyz = r7.yyy * r4.xyz;
    r3.xyz = r3.xyz * r7.xxx + r4.xyz;
    r3.xyz = r5.xyz * r7.zzz + r3.xyz;
    r2.xyz = r2.xyz * r7.www + r3.xyz;
    r6.xyz = r2.xyz * r0.xxx;
    g2[vThreadIDInGroupFlattened.x].val[0/4] = r6.x;
    g2[vThreadIDInGroupFlattened.x].val[0/4+1] = r6.y;
    g2[vThreadIDInGroupFlattened.x].val[0/4+2] = r6.z;
    g2[vThreadIDInGroupFlattened.x].val[0/4+3] = r6.w;
    r0.yz = (uint2)r0.yz >> int2(1,1);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.yzzz, r6.xyzw
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.y != 0) {
    r2.x = g2[vThreadIDInGroupFlattened.x].val[0/4];
    r2.y = g2[vThreadIDInGroupFlattened.x].val[0/4+1];
    r2.z = g2[vThreadIDInGroupFlattened.x].val[0/4+2];
    r2.w = g2[vThreadIDInGroupFlattened.x].val[0/4+3];
    r1.xyw = (int3)vThreadIDInGroupFlattened.xxx + int3(4,8,12);
    r3.x = g2[r1.x].val[0/4];
    r3.y = g2[r1.x].val[0/4+1];
    r3.z = g2[r1.x].val[0/4+2];
    r3.w = g2[r1.x].val[0/4+3];
    r4.x = g2[r1.y].val[0/4];
    r4.y = g2[r1.y].val[0/4+1];
    r4.z = g2[r1.y].val[0/4+2];
    r4.w = g2[r1.y].val[0/4+3];
    r5.x = g2[r1.w].val[0/4];
    r5.y = g2[r1.w].val[0/4+1];
    r5.z = g2[r1.w].val[0/4+2];
    r5.w = g2[r1.w].val[0/4+3];
    r0.x = cmp(r3.w < abs(r2.w));
    r0.x = r0.x ? r3.w : r2.w;
    r0.w = cmp(r4.w < abs(r0.x));
    r0.x = r0.w ? r4.w : r0.x;
    r0.w = cmp(r5.w < abs(r0.x));
    r6.w = r0.w ? r5.w : r0.x;
    r0.x = r6.w + -r2.w;
    r7.x = saturate(-r0.x * 16 + 1);
    r0.x = r6.w + -r3.w;
    r7.y = saturate(-r0.x * 16 + 1);
    r0.x = r6.w + -r4.w;
    r7.z = saturate(-r0.x * 16 + 1);
    r0.x = r6.w + -r5.w;
    r7.w = saturate(-r0.x * 16 + 1);
    r0.x = dot(float4(1,1,1,1), r7.xyzw);
    r0.x = rcp(r0.x);
    r1.xyw = r7.yyy * r3.xyz;
    r1.xyw = r2.xyz * r7.xxx + r1.xyw;
    r1.xyw = r4.xyz * r7.zzz + r1.xyw;
    r1.xyw = r5.xyz * r7.www + r1.xyw;
    r6.xyz = r1.xyw * r0.xxx;
    g2[vThreadIDInGroupFlattened.x].val[0/4] = r6.x;
    g2[vThreadIDInGroupFlattened.x].val[0/4+1] = r6.y;
    g2[vThreadIDInGroupFlattened.x].val[0/4+2] = r6.z;
    g2[vThreadIDInGroupFlattened.x].val[0/4+3] = r6.w;
    r0.yz = (uint2)r0.yz >> int2(1,1);
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r0.yzzz, r6.xyzw
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.z != 0) {
    r1.x = g2[0].val[0/4];
    r1.y = g2[0].val[0/4+1];
    r1.z = g2[0].val[0/4+2];
    r1.w = g2[0].val[0/4+3];
    r2.x = g2[1].val[0/4];
    r2.y = g2[1].val[0/4+1];
    r2.z = g2[1].val[0/4+2];
    r2.w = g2[1].val[0/4+3];
    r3.x = g2[2].val[0/4];
    r3.y = g2[2].val[0/4+1];
    r3.z = g2[2].val[0/4+2];
    r3.w = g2[2].val[0/4+3];
    r4.x = g2[3].val[0/4];
    r4.y = g2[3].val[0/4+1];
    r4.z = g2[3].val[0/4+2];
    r4.w = g2[3].val[0/4+3];
    r0.x = cmp(r2.w < abs(r1.w));
    r0.x = r0.x ? r2.w : r1.w;
    r0.w = cmp(r3.w < abs(r0.x));
    r0.x = r0.w ? r3.w : r0.x;
    r0.w = cmp(r4.w < abs(r0.x));
    r5.w = r0.w ? r4.w : r0.x;
    r0.x = r5.w + -r1.w;
    r6.x = saturate(-r0.x * 8 + 1);
    r0.x = r5.w + -r2.w;
    r6.y = saturate(-r0.x * 8 + 1);
    r0.x = r5.w + -r3.w;
    r6.z = saturate(-r0.x * 8 + 1);
    r0.x = r5.w + -r4.w;
    r6.w = saturate(-r0.x * 8 + 1);
    r0.x = dot(float4(1,1,1,1), r6.xyzw);
    r0.x = rcp(r0.x);
    r2.xyz = r6.yyy * r2.xyz;
    r1.xyz = r1.xyz * r6.xxx + r2.xyz;
    r1.xyz = r3.xyz * r6.zzz + r1.xyz;
    r1.xyz = r4.xyz * r6.www + r1.xyz;
    r5.xyz = r1.xyz * r0.xxx;
    r0.xyzw = (uint4)r0.yzzz >> int4(1,1,1,1);
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r0.xyzw, r5.xyzw
  }
  return;
}