// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[2048];
Texture2D<float4> t5 : register(t5);

struct t4_t {
  float val[4];
};
StructuredBuffer<t4_t> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
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
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g2, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g3, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g4, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g5, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g6, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad((int)vThreadIDInGroup.y, 8, (int)vThreadIDInGroup.x);
  r0.yz = mad((int2)vThreadID.xy, asint(cb0[33].zz), asint(cb0[32].xy));
  r0.yz = (uint2)r0.yz;
  r0.yz = float2(0.5,0.5) + r0.yz;
  r1.xy = cb1[132].zw * r0.yz;
  r0.w = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r1.x = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r1.y = r1.x + r0.w;
  if (r0.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), l(340282346638528860000000000000000000000.000000)
  // No code for instruction (needs manual fix):
    store_raw g2.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g3.x, l(0), l(340282346638528860000000000000000000000.000000)
  // No code for instruction (needs manual fix):
    store_raw g4.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g5.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g6.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  r0.w = cmp(0 < r1.y);
  if (r0.w != 0) {
    // Needs manual fix for instruction:
    atomic_umin g1, l(0), r1.y
    InterlockedMin(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(0), r1.y
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r2.z, l(0), g1.xxxx
// No code for instruction (needs manual fix):
ld_raw r3.z, l(0), g2.xxxx
  r1.z = r3.z + r2.z;
  r1.z = 0.5 * r1.z;
  r1.w = cmp(r1.y >= r1.z);
  r1.w = r0.w ? r1.w : 0;
  if (r1.w != 0) {
    // Needs manual fix for instruction:
    atomic_umin g3, l(0), r1.y
    InterlockedMin(dest, value, orig_value);
  }
  r1.z = cmp(r1.z >= r1.y);
  r1.z = r0.w ? r1.z : 0;
  if (r1.z != 0) {
    // Needs manual fix for instruction:
    atomic_umax g4, l(0), r1.y
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r4.z, l(0), g3.xxxx
// No code for instruction (needs manual fix):
ld_raw r5.z, l(0), g4.xxxx
  if (r0.w != 0) {
    r6.x = cb1[36].x;
    r6.y = cb1[37].y;
    r1.zw = r6.xy + r6.xy;
    r7.xyzw = asint(cb0[32].zwxy);
    r6.zw = r7.xy * r1.zw;
    r7.xy = cb1[130].xy * cb0[27].zw;
    r6.zw = r6.zw / r7.xy;
    r7.xy = -cb1[129].xy + r7.zw;
    r1.zw = r7.xy * r1.zw;
    r1.zw = r1.zw * cb1[130].zw + -r6.xy;
    r6.xy = (uint2)vThreadGroupID.xy;
    r6.xy = r6.xy * r6.zw + r1.zw;
    r6.xy = float2(1,-1) * r6.xy;
    r7.xy = (int2)vThreadGroupID.xy + int2(1,1);
    r7.xy = (uint2)r7.xy;
    r1.zw = r7.xy * r6.zw + r1.zw;
    r1.zw = float2(1,-1) * r1.zw;
    r6.zw = r6.xy * r2.zz;
    r7.xy = r6.xy * r5.zz;
    r2.xy = min(r7.xy, r6.zw);
    r6.zw = r2.zz * r1.zw;
    r7.xy = r5.zz * r1.zw;
    r5.xy = max(r7.xy, r6.zw);
    r6.zw = r6.xy * r4.zz;
    r6.xy = r6.xy * r3.zz;
    r4.xy = min(r6.zw, r6.xy);
    r6.xy = r4.zz * r1.zw;
    r1.zw = r3.zz * r1.zw;
    r3.xy = max(r6.xy, r1.zw);
    r2.xyz = r5.xyz + r2.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r2.xyz;
    r7.xyz = cb1[17].xyz * r6.yyy;
    r6.xyw = r6.xxx * cb1[16].xyz + r7.xyz;
    r6.xyz = r6.zzz * cb1[18].xyz + r6.xyw;
    r6.xyz = cb1[19].xyz + r6.xyz;
    r6.xyz = -cb1[70].xyz + r6.xyz;
    r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + -r5.xyz;
    r1.z = dot(r2.xyz, r2.xyz);
    r2.xyz = r4.xyz + r3.xyz;
    r4.xyz = float3(0.5,0.5,0.5) * r2.xyz;
    r5.xyw = cb1[17].xyz * r4.yyy;
    r4.xyw = r4.xxx * cb1[16].xyz + r5.xyw;
    r4.xyz = r4.zzz * cb1[18].xyz + r4.xyw;
    r4.xyz = cb1[19].xyz + r4.xyz;
    r4.xyz = -cb1[70].xyz + r4.xyz;
    r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + -r3.xyz;
    r1.w = dot(r2.xyz, r2.xyz);
    r1.zw = sqrt(r1.zw);
    r2.x = t2.Load(float4(1,1,1,1)).x;
    r2.y = r0.x;
    while (true) {
      r2.z = cmp((uint)r2.y >= (uint)r2.x);
      if (r2.z != 0) break;
      r2.z = (uint)r2.y << 1;
      r3.x = t3[r2.z].val[0/4];
      r3.y = t3[r2.z].val[0/4+1];
      r3.z = t3[r2.z].val[0/4+2];
      r3.w = t3[r2.z].val[0/4+3];
      r2.z = r3.w + r1.z;
      r5.xyw = r3.xyz + -r6.xyz;
      r2.w = dot(r5.xyw, cb0[28].xyz);
      r5.xyw = r2.www * cb0[28].xyz + r6.xyz;
      r5.xyw = r5.xyw + -r3.xyz;
      r4.w = dot(r5.xyw, r5.xyw);
      r5.x = r2.z * r2.z;
      r4.w = cmp(r5.x >= r4.w);
      r5.x = cmp(-r2.z < r2.w);
      r4.w = r4.w ? r5.x : 0;
      r2.z = r2.w + -r2.z;
      r2.z = cmp(r2.z < cb0[31].z);
      r2.z = r2.z ? r4.w : 0;
      if (r2.z != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r7.x, g5, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r2.z = min(1023, (uint)r7.x);
        g0[r2.z].val[0/4] = r2.y;
      }
      r2.z = r3.w + r1.w;
      r5.xyw = r3.xyz + -r4.xyz;
      r2.w = dot(r5.xyw, cb0[28].xyz);
      r5.xyw = r2.www * cb0[28].xyz + r4.xyz;
      r3.xyz = r5.xyw + -r3.xyz;
      r3.x = dot(r3.xyz, r3.xyz);
      r3.y = r2.z * r2.z;
      r3.x = cmp(r3.y >= r3.x);
      r3.y = cmp(-r2.z < r2.w);
      r3.x = r3.y ? r3.x : 0;
      r2.z = r2.w + -r2.z;
      r2.z = cmp(r2.z < cb0[31].z);
      r2.z = r2.z ? r3.x : 0;
      if (r2.z != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r3.x, g6, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r2.z = min(1023, (uint)r3.x);
        r2.z = (int)r2.z + 1024;
        g0[r2.z].val[0/4] = r2.y;
      }
      r2.y = (int)r2.y + 64;
    }
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.w != 0) {
    r0.xy = r0.yz * cb1[132].zw + -cb1[66].wz;
    r0.xy = r0.xy / cb1[66].xy;
    r0.xy = r0.xy * r1.yy;
    r0.yzw = cb1[49].xyz * r0.yyy;
    r0.xyz = r0.xxx * cb1[48].xyz + r0.yzw;
    r0.xyz = r1.yyy * cb1[50].xyz + r0.xyz;
    r0.xyz = cb1[51].xyz + r0.xyz;
    r1.z = cmp(r5.z < r1.y);
  // No code for instruction (needs manual fix):
    ld_raw r1.w, l(0), g5.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r2.x, l(0), g6.xxxx
    r1.w = r1.z ? r2.x : r1.w;
    r1.w = min(1024, (uint)r1.w);
    r2.xy = (uint2)vThreadID.xy;
    r2.xy = float2(0.5,0.5) + r2.xy;
    r2.xy = cb0[34].xy * r2.xy;
    r2.x = t5.SampleLevel(s2_s, r2.xy, 0).x;
    r0.w = 100 + r0.z;
    r0.xyz = -cb1[60].xyz * float3(50,50,50) + r0.xyw;
    r0.w = cb0[30].y * r1.y + 2;
    r3.xyz = cb0[28].xyz * r0.www + r0.xyz;
    r0.xyz = cb0[28].xyz * cb0[31].zzz + r0.xyz;
    bitmask.z = ((~(-1 << 1)) << 10) & 0xffffffff;  r1.z = (((uint)r1.z << 10) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r3.w = 1;
    r0.w = 1;
    r4.w = 255.992188;
    r2.yz = float2(1,0);
    while (true) {
      r2.w = cmp((uint)r2.z >= (uint)r1.w);
      if (r2.w != 0) break;
      r2.w = (int)r1.z + (int)r2.z;
      r2.w = g0[r2.w].val[0/4];
      r5.x = (int)r2.w * 6;
      r5.x = t4[r5.x].val[0/4];
      r5.y = t4[r5.x].val[0/4+1];
      r5.z = t4[r5.x].val[0/4+2];
      r5.w = t4[r5.x].val[0/4+3];
      r6.x = mad((int)r2.w, 6, 1);
      r6.x = t4[r6.x].val[0/4];
      r6.y = t4[r6.x].val[0/4+1];
      r6.z = t4[r6.x].val[0/4+2];
      r6.w = t4[r6.x].val[0/4+3];
      r7.xy = mad((int2)r2.ww, int2(6,6), int2(2,3));
      r8.x = t4[r7.x].val[0/4];
      r8.y = t4[r7.x].val[0/4+1];
      r8.z = t4[r7.x].val[0/4+2];
      r8.w = t4[r7.x].val[0/4+3];
      r4.x = t4[r7.y].val[0/4];
      r4.y = t4[r7.y].val[0/4+1];
      r4.z = t4[r7.y].val[0/4+2];
      r7.x = dot(r3.xyzw, r5.xyzw);
      r7.y = dot(r3.xyzw, r6.xyzw);
      r7.z = dot(r3.xyzw, r8.xyzw);
      r5.x = dot(r0.xyzw, r5.xyzw);
      r5.y = dot(r0.xyzw, r6.xyzw);
      r5.z = dot(r0.xyzw, r8.xyzw);
      r5.xyz = r5.xyz + -r7.xyz;
      r6.xyz = float3(1,1,1) / r5.xyz;
      r8.xyz = float3(0,0,-256) + -r7.xyz;
      r8.xyz = r8.xyz * r6.xyz;
      r9.xyz = -r7.xyz + r4.xyw;
      r6.xyz = r9.xyz * r6.xyz;
      r9.xyz = min(r8.xyz, r6.xyz);
      r6.xyz = max(r8.xyz, r6.xyz);
      r4.x = max(r9.y, r9.z);
      r4.x = saturate(max(r9.x, r4.x));
      r4.y = min(r6.y, r6.z);
      r4.y = saturate(min(r6.x, r4.y));
      r5.w = cmp(r4.x < r4.y);
      if (r5.w != 0) {
        r2.w = mad((int)r2.w, 6, 4);
        r6.x = t4[r2.w].val[0/4];
        r6.y = t4[r2.w].val[0/4+1];
        r6.z = t4[r2.w].val[0/4+2];
        r6.w = t4[r2.w].val[0/4+3];
        r2.w = dot(r5.xyz, r5.xyz);
        r2.w = sqrt(r2.w);
        r5.xyz = r5.xyz / r2.www;
        r4.x = r2.w * r4.x;
        r8.xy = float2(100,500) * r4.zz;
        r4.z = 1 / r8.x;
        r2.w = r2.w * r4.y + -r4.x;
        r4.y = r4.x;
        r5.w = 1;
        r7.w = 0;
        while (true) {
          r8.x = cmp(r7.w >= 8);
          if (r8.x != 0) break;
          r8.xzw = r5.xyz * r4.yyy + r7.xyz;
          r8.xz = r8.xz * r6.xy + r6.zw;
          r8.xz = t1.SampleLevel(s1_s, r8.xz, 0).xy;
          r8.x = dot(r8.xz, float2(65280,255));
          r8.x = -32768 + r8.x;
          r8.z = saturate(r4.y * r4.z);
          r8.z = 1 + -r8.z;
          r9.x = cb0[31].x * r4.y;
          r9.x = max(9.99999975e-005, r9.x);
          r9.x = min(r9.x, r8.y);
          r4.y = r2.w * 0.125 + r4.y;
          r8.x = -r8.x * 0.0078125 + r8.w;
          r8.x = saturate(r8.x / r9.x);
          r8.x = max(r8.x, r8.z);
          r8.x = min(r8.x, r5.w);
          r8.z = cmp(r8.x < 0.00999999978);
          if (r8.z != 0) {
            r5.w = r8.x;
            break;
          }
          r7.w = 1 + r7.w;
          r5.w = r8.x;
        }
        r2.y = min(r5.w, r2.y);
        r2.w = cmp(r2.y < 0.00999999978);
        if (r2.w != 0) {
          r2.y = 0;
          break;
        }
      }
      r2.z = (int)r2.z + 1;
    }
    r1.x = min(r2.y, r2.x);
  } else {
    r1.x = 1;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyxx
  return;
}