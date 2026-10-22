// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[4]; } g4[64];
struct u4_t {
  float val[4];
};
RWStructuredBuffer<u4_t> u4 : register(u4);

struct u3_t {
  float val[4];
};
RWStructuredBuffer<u3_t> u3 : register(u3);

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
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u2
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g2, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g3, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
// No code for instruction (needs manual fix):
store_raw g0.x, l(0), l(0)
// No code for instruction (needs manual fix):
store_raw g1.x, l(0), l(0)
  GroupMemoryBarrierWithGroupSync();
  bitmask.x = ((~(-1 << 1)) << 2) & 0xffffffff;  r0.x = (((uint)vThreadIDInGroupFlattened.x << 2) & bitmask.x) | ((uint)0 & ~bitmask.x);
  r0.y = (uint)vThreadIDInGroupFlattened.x << 1;
  r0.y = (int)r0.y & 4;
  r1.xyzw = (uint4)vThreadIDInGroupFlattened.xxxx >> int4(1,2,4,5);
  r0.zw = (int2)r1.xy & int2(2,2);
  r0.xy = (int2)r0.xy + (int2)r0.zw;
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r2.x = (((uint)r1.z << 0) & bitmask.x) | ((uint)r0.x & ~bitmask.x);
  r2.yzw = (int3)r0.yyy + (int3)r1.www;
  r0.x = (int)vThreadIDInGroupFlattened.x & 15;
  r2.xyzw = mad((int4)vThreadGroupID.xyyy, int4(8,8,8,8), (int4)r2.xyzw);
  r0.yz = (uint2)r2.xw;
  r3.xy = float2(0.5,0.5) + r0.yz;
  r0.yz = cb0[4].zw * r3.xy;
  r0.yz = min(cb0[2].yz, r0.yz);
  r4.xyzw = t1.SampleLevel(s0_s, r0.yz, 0).xyzw;
  r0.w = t0.Load(float4(0,0,0,0)).x;
  r0.w = cb1[135].z * r0.w;
  r1.x = cb0[3].x * r4.w;
  r1.yw = r4.yx + r4.yz;
  r1.y = r1.y + r1.w;
  r1.y = r1.y * r0.w;
  r1.y = saturate(r1.y * 2.5 + -1);
  r5.w = abs(r1.x);
  r1.w = saturate(-cb0[2].w + r5.w);
  r1.y = r1.y * r1.w;
  r1.w = min(r3.x, r3.y);
  r6.xy = asuint(cb0[1].zw);
  r6.xy = r6.xy + -r3.xy;
  r6.x = min(r6.x, r6.y);
  r1.w = min(r6.x, r1.w);
  r1.w = saturate(r1.w + -r5.w);
  r1.y = r1.y * r1.w;
  r1.w = cmp(0.5 < r1.y);
  if (r1.w != 0) {
    r1.w = rcp(r0.w);
    r1.w = cb0[0].x * r1.w;
    r6.xyz = min(r4.xyz, r1.www);
    r7.xy = -cb0[5].zw + r0.yz;
    r7.xyz = t2.SampleLevel(s0_s, r7.xy, 0).xyz;
    r7.xyz = min(r7.xyz, r1.www);
    r7.xyz = -r7.xyz + r6.xyz;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r6.w = max(r7.y, r7.z);
    r6.w = max(r7.x, r6.w);
    r6.w = r6.w * r0.w;
    r6.w = saturate(r6.w * 1.42857146 + -1);
    r7.xyzw = cb0[5].zwwz * float4(1,1,-1,-1) + r0.yzzy;
    r7.xy = min(cb0[2].yz, r7.xy);
    r8.xyz = t2.SampleLevel(s0_s, r7.xz, 0).xyz;
    r8.xyz = min(r8.xyz, r1.www);
    r8.xyz = -r8.xyz + r6.xyz;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r7.x = max(r8.y, r8.z);
    r7.x = max(r8.x, r7.x);
    r7.x = r7.x * r0.w;
    r7.x = saturate(r7.x * 1.42857146 + -1);
    r6.w = max(r7.x, r6.w);
    r7.xyz = t2.SampleLevel(s0_s, r7.wy, 0).xyz;
    r7.xyz = min(r7.xyz, r1.www);
    r7.xyz = -r7.xyz + r6.xyz;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r7.y = max(r7.y, r7.z);
    r7.x = max(r7.x, r7.y);
    r7.x = r7.x * r0.w;
    r7.x = saturate(r7.x * 1.42857146 + -1);
    r6.w = max(r7.x, r6.w);
    r0.yz = cb0[5].zw + r0.yz;
    r0.yz = min(cb0[2].yz, r0.yz);
    r7.xyz = t2.SampleLevel(s0_s, r0.yz, 0).xyz;
    r7.xyz = min(r7.xyz, r1.www);
    r6.xyz = -r7.xyz + r6.xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r0.y = max(r6.y, r6.z);
    r0.y = max(r6.x, r0.y);
    r0.y = r0.y * r0.w;
    r0.y = saturate(r0.y * 1.42857146 + -1);
    r0.y = max(r6.w, r0.y);
    r1.y = r1.y * r0.y;
  }
  r0.y = r1.y * 2 + -1;
  r0.y = max(0, r0.y);
  r0.z = 1 << (int)r0.x;
  r0.w = cmp(0.00999999978 < r0.y);
  r1.y = cmp(r4.w < 0);
  r1.w = r0.w ? r1.y : 0;
  if (r1.w != 0) {
    // Needs manual fix for instruction:
    atomic_or g0, l(0), r0.z
    InterlockedOr(dest, value, orig_value);
  }
  r1.y = ~(int)r1.y;
  r0.w = r0.w ? r1.y : 0;
  if (r0.w != 0) {
    // Needs manual fix for instruction:
    atomic_or g1, l(0), r0.z
    InterlockedOr(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r0.w, l(0), g0.xxxx
// No code for instruction (needs manual fix):
ld_raw r1.y, l(0), g1.xxxx
  if (vThreadIDInGroupFlattened.x == 0) {
    if (r0.w != 0) {
      r1.w = countbits((uint)r0.w);
      // Needs manual fix for instruction:
        imm_atomic_iadd r6.x, u2, l(1), r1.w
      InterlockedAdd(dest, imm_value, orig_value);
    // No code for instruction (needs manual fix):
        store_raw g2.x, l(0), r6.x
    }
    if (r1.y != 0) {
      r1.w = countbits((uint)r1.y);
      // Needs manual fix for instruction:
        imm_atomic_iadd r6.x, u2, l(6), r1.w
      InterlockedAdd(dest, imm_value, orig_value);
    // No code for instruction (needs manual fix):
        store_raw g3.x, l(0), r6.x
    }
  }
  GroupMemoryBarrierWithGroupSync();
  r1.w = r4.w * r4.w;
  r6.x = 3.14159274 * r1.w;
  r1.w = cmp(0 < r1.w);
  r6.x = rcp(r6.x);
  r6.x = min(1, r6.x);
  r1.w = r1.w ? r6.x : 1;
  r6.x = r0.w ? r0.z : 0;
  if (r6.x != 0) {
    if (r0.x == 0) r0.w = 0; else if (r0.x+0 < 32) {     r0.w = (uint)r0.w << (32-(r0.x + 0)); r0.w = (uint)r0.w >> (32-r0.x);    } else r0.w = (uint)r0.w >> 0;
    r0.w = countbits((uint)r0.w);
  // No code for instruction (needs manual fix):
    ld_raw r6.x, l(0), g2.xxxx
    r0.w = (int)r0.w + (int)r6.x;
    r6.x = cmp((uint)r0.w < asuint(cb0[2].x));
    if (r6.x != 0) {
      if (r1.z == 0) {
        r6.x = (int)r0.w * 5;
        r3.z = 0;
        u3[r6.x].val[0/4] = r3.x;
        u3[r6.x].val[0/4+1] = r3.y;
        u3[r6.x].val[0/4+2] = r3.z;
        u3[r6.x].val[0/4+3] = r3.z;
      }
      r3.z = r1.w * r0.y;
      r6.x = cmp(r1.x < 0);
      r6.x = r6.x ? 1.000000 : 0;
      r3.z = r6.x * r3.z;
      r5.xyz = r4.xyz * r3.zzz;
      r0.w = mad(5, (int)r0.w, (int)r1.z);
      r0.w = (int)r0.w + 1;
      u3[r0.w].val[0/4] = r5.x;
      u3[r0.w].val[0/4+1] = r5.y;
      u3[r0.w].val[0/4+2] = r5.z;
      u3[r0.w].val[0/4+3] = r5.w;
    } else {
      r0.y = 0;
    }
  }
  r0.z = r1.y ? r0.z : 0;
  if (r0.z != 0) {
    if (r0.x == 0) r0.x = 0; else if (r0.x+0 < 32) {     r0.x = (uint)r1.y << (32-(r0.x + 0)); r0.x = (uint)r0.x >> (32-r0.x);    } else r0.x = (uint)r1.y >> 0;
    r0.x = countbits((uint)r0.x);
  // No code for instruction (needs manual fix):
    ld_raw r0.z, l(0), g3.xxxx
    r0.x = (int)r0.x + (int)r0.z;
    r0.z = cmp((uint)r0.x < asuint(cb0[2].x));
    if (r0.z != 0) {
      if (r1.z == 0) {
        r0.z = (int)r0.x * 5;
        r3.w = 0;
        u4[r0.z].val[0/4] = r3.x;
        u4[r0.z].val[0/4+1] = r3.y;
        u4[r0.z].val[0/4+2] = r3.w;
        u4[r0.z].val[0/4+3] = r3.w;
      }
      r0.z = r0.y * r1.w;
      r0.w = cmp(r1.x < 0);
      r0.w = r0.w ? 0 : 1;
      r0.z = r0.z * r0.w;
      r5.xyz = r4.xyz * r0.zzz;
      r0.x = mad(5, (int)r0.x, (int)r1.z);
      r0.x = (int)r0.x + 1;
      u4[r0.x].val[0/4] = r5.x;
      u4[r0.x].val[0/4+1] = r5.y;
      u4[r0.x].val[0/4+2] = r5.z;
      u4[r0.x].val[0/4+3] = r5.w;
    } else {
      r0.y = 0;
    }
  }
  r0.x = 1 + -r0.y;
  r4.xyz = r4.xyz * r0.xxx;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r2.xwww, r4.xyzw
  g4[vThreadIDInGroupFlattened.x].val[0/4] = r4.x;
  g4[vThreadIDInGroupFlattened.x].val[0/4+1] = r4.y;
  g4[vThreadIDInGroupFlattened.x].val[0/4+2] = r4.z;
  g4[vThreadIDInGroupFlattened.x].val[0/4+3] = r4.w;
  GroupMemoryBarrierWithGroupSync();
  r0.x = cmp((uint)vThreadIDInGroupFlattened.x < 16);
  if (r0.x != 0) {
    r0.xyz = (int3)vThreadIDInGroupFlattened.xxx + int3(16,32,48);
    r1.x = g4[r0.x].val[0/4];
    r1.y = g4[r0.x].val[0/4+1];
    r1.z = g4[r0.x].val[0/4+2];
    r1.w = g4[r0.x].val[0/4+3];
    r3.x = g4[r0.y].val[0/4];
    r3.y = g4[r0.y].val[0/4+1];
    r3.z = g4[r0.y].val[0/4+2];
    r3.w = g4[r0.y].val[0/4+3];
    r0.x = g4[r0.z].val[0/4];
    r0.y = g4[r0.z].val[0/4+1];
    r0.z = g4[r0.z].val[0/4+2];
    r0.w = g4[r0.z].val[0/4+3];
    r5.x = cmp(r1.w < abs(r4.w));
    r5.x = r5.x ? r1.w : r4.w;
    r5.y = cmp(r3.w < abs(r5.x));
    r5.x = r5.y ? r3.w : r5.x;
    r5.y = cmp(r0.w < abs(r5.x));
    r5.w = r5.y ? r0.w : r5.x;
    r4.w = r5.w + -r4.w;
    r6.x = saturate(-r4.w * 32 + 1);
    r1.w = r5.w + -r1.w;
    r6.y = saturate(-r1.w * 32 + 1);
    r1.w = r5.w + -r3.w;
    r6.z = saturate(-r1.w * 32 + 1);
    r0.w = r5.w + -r0.w;
    r6.w = saturate(-r0.w * 32 + 1);
    r0.w = dot(float4(1,1,1,1), r6.xyzw);
    r0.w = rcp(r0.w);
    r1.xyz = r6.yyy * r1.xyz;
    r1.xyz = r4.xyz * r6.xxx + r1.xyz;
    r1.xyz = r3.xyz * r6.zzz + r1.xyz;
    r0.xyz = r0.xyz * r6.www + r1.xyz;
    r5.xyz = r0.www * r0.xyz;
    r0.xyzw = (uint4)r2.xyzw >> int4(1,1,1,1);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xyzw, r5.xyzw
  }
  return;
}