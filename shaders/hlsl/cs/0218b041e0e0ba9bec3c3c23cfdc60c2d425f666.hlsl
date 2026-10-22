// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[2048];
struct t4_t {
  float val[4];
};
StructuredBuffer<t4_t> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[34];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r0.w = r0.w ? r1.z : 0;
  if (r0.w != 0) {
    // Needs manual fix for instruction:
    atomic_umax g4, l(0), r1.y
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r4.z, l(0), g3.xxxx
// No code for instruction (needs manual fix):
ld_raw r5.z, l(0), g4.xxxx
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
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r2.xyz = r4.xyz + r3.xyz;
  r4.xyz = float3(0.5,0.5,0.5) * r2.xyz;
  r5.xyw = cb1[17].xyz * r4.yyy;
  r4.xyw = r4.xxx * cb1[16].xyz + r5.xyw;
  r4.xyz = r4.zzz * cb1[18].xyz + r4.xyw;
  r4.xyz = cb1[19].xyz + r4.xyz;
  r4.xyz = -cb1[70].xyz + r4.xyz;
  r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + -r3.xyz;
  r1.z = dot(r2.xyz, r2.xyz);
  r2.xyz = cb0[29].xyz + -r6.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.zw = sqrt(r1.zw);
  r3.xyz = cb0[29].xyz + -r4.xyz;
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = sqrt(r2.w);
  r3.w = 1 / cb0[29].w;
  r4.w = r3.w + r0.w;
  r4.w = cmp(r1.w < r4.w);
  r3.w = r3.w + r1.z;
  r3.w = cmp(r2.w < r3.w);
  r3.w = (int)r3.w | (int)r4.w;
  if (r3.w != 0) {
    r2.xyz = r2.xyz / r1.www;
    r3.xyz = r3.xyz / r2.www;
    r4.w = t2.Load(float4(1,1,1,1)).x;
    r5.x = r0.x;
    while (true) {
      r5.y = cmp((uint)r5.x >= (uint)r4.w);
      if (r5.y != 0) break;
      r7.x = t3[r5.x].val[0/4];
      r7.y = t3[r5.x].val[0/4+1];
      r7.z = t3[r5.x].val[0/4+2];
      r7.w = t3[r5.x].val[0/4+3];
      r5.y = r7.w + r0.w;
      r8.xyz = r7.xyz + -r6.xyz;
      r5.w = dot(r8.xyz, r2.xyz);
      r8.xyz = r5.www * r2.xyz + r6.xyz;
      r8.xyz = r8.xyz + -r7.xyz;
      r6.w = dot(r8.xyz, r8.xyz);
      r8.x = r5.y * r5.y;
      r6.w = cmp(r8.x >= r6.w);
      r8.x = cmp(-r5.y < r5.w);
      r6.w = r6.w ? r8.x : 0;
      r5.y = r5.w + -r5.y;
      r5.y = cmp(r5.y < r1.w);
      r5.y = r5.y ? r6.w : 0;
      if (r5.y != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r8.x, g5, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r5.y = min(1023, (uint)r8.x);
        g0[r5.y].val[0/4] = r5.x;
      }
      r5.y = r7.w + r1.z;
      r8.xyz = r7.xyz + -r4.xyz;
      r5.w = dot(r8.xyz, r3.xyz);
      r8.xyz = r5.www * r3.xyz + r4.xyz;
      r7.xyz = r8.xyz + -r7.xyz;
      r6.w = dot(r7.xyz, r7.xyz);
      r7.x = r5.y * r5.y;
      r6.w = cmp(r7.x >= r6.w);
      r7.x = cmp(-r5.y < r5.w);
      r6.w = r6.w ? r7.x : 0;
      r5.y = r5.w + -r5.y;
      r5.y = cmp(r5.y < r2.w);
      r5.y = r5.y ? r6.w : 0;
      if (r5.y != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r7.x, g6, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r5.y = min(1023, (uint)r7.x);
        r5.y = (int)r5.y + 1024;
        g0[r5.y].val[0/4] = r5.x;
      }
      r5.x = (int)r5.x + 64;
    }
  }
  GroupMemoryBarrierWithGroupSync();
  if (r3.w != 0) {
    r0.xy = r0.yz * cb1[132].zw + -cb1[66].wz;
    r0.xy = r0.xy / cb1[66].xy;
    r0.xy = r0.xy * r1.yy;
    r0.yzw = cb1[49].xyz * r0.yyy;
    r0.xyz = r0.xxx * cb1[48].xyz + r0.yzw;
    r0.xyz = r1.yyy * cb1[50].xyz + r0.xyz;
    r0.xyz = cb1[51].xyz + r0.xyz;
    r0.w = cmp(r5.z < r1.y);
  // No code for instruction (needs manual fix):
    ld_raw r1.z, l(0), g5.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r1.w, l(0), g6.xxxx
    r1.z = r0.w ? r1.w : r1.z;
    r1.z = min(1024, (uint)r1.z);
    r1.w = cb0[30].y * r1.y + 2;
    r2.xyz = cb0[29].xyz + -r0.xyz;
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = sqrt(r2.w);
    r2.xyz = r2.xyz / r2.www;
    r3.xyz = r2.xyz * r1.www + r0.xyz;
    r0.x = cb0[30].x / r2.w;
    r0.x = min(0.176326975, r0.x);
    bitmask.y = ((~(-1 << 1)) << 10) & 0xffffffff;  r0.y = (((uint)r0.w << 10) & bitmask.y) | ((uint)0 & ~bitmask.y);
    r3.w = 1;
    r2.xyz = cb0[29].xyz;
    r2.w = 1;
    r0.zw = float2(1,0);
    while (true) {
      r1.w = cmp((uint)r0.w >= (uint)r1.z);
      if (r1.w != 0) break;
      r1.w = (int)r0.w + (int)r0.y;
      r1.w = g0[r1.w].val[0/4];
      r4.x = (int)r1.w * 17;
      r5.xyzw = mad((int4)r1.wwww, int4(17,17,17,17), int4(3,1,2,4));
      r4.y = t4[r5.x].val[0/4];
      r4.z = t4[r5.x].val[0/4+1];
      r4.w = t4[r5.x].val[0/4+2];
      r6.x = t4[r4.x].val[0/4];
      r6.y = t4[r4.x].val[0/4+1];
      r6.z = t4[r4.x].val[0/4+2];
      r6.w = t4[r4.x].val[0/4+3];
      r7.x = t4[r5.y].val[0/4];
      r7.y = t4[r5.y].val[0/4+1];
      r7.z = t4[r5.y].val[0/4+2];
      r7.w = t4[r5.y].val[0/4+3];
      r8.x = t4[r5.z].val[0/4];
      r8.y = t4[r5.z].val[0/4+1];
      r8.z = t4[r5.z].val[0/4+2];
      r8.w = t4[r5.z].val[0/4+3];
      r5.x = t4[r5.w].val[0/4];
      r5.y = t4[r5.w].val[0/4+1];
      r5.z = t4[r5.w].val[0/4+2];
      r5.w = t4[r5.w].val[0/4+3];
      r9.x = dot(r3.xyzw, r6.xyzw);
      r9.y = dot(r3.xyzw, r7.xyzw);
      r9.z = dot(r3.xyzw, r8.xyzw);
      r6.x = dot(r2.xyzw, r6.xyzw);
      r6.y = dot(r2.xyzw, r7.xyzw);
      r6.z = dot(r2.xyzw, r8.xyzw);
      r6.xyz = r6.xyz + -r9.xyz;
      r4.x = dot(r6.xyz, r6.xyz);
      r4.x = sqrt(r4.x);
      r7.xyz = r6.xyz / r4.xxx;
      r6.w = 1 / abs(r5.w);
      r7.w = 100 * r6.w;
      r8.x = dot(-r9.xyz, r7.xyz);
      r8.x = max(0, r8.x);
      r8.x = r8.x * r0.x;
      r8.x = min(r8.x, r7.w);
      r8.yzw = r4.yzw * float3(-0.699999988,-0.699999988,-0.699999988) + -r8.xxx;
      r10.xyz = r4.yzw * float3(0.699999988,0.699999988,0.699999988) + r8.xxx;
      r6.xyz = float3(1,1,1) / r6.xyz;
      r8.xyz = r8.yzw + -r9.xyz;
      r8.xyz = r8.xyz * r6.xyz;
      r10.xyz = r10.xyz + -r9.xyz;
      r6.xyz = r10.xyz * r6.xyz;
      r10.xyz = min(r8.xyz, r6.xyz);
      r6.xyz = max(r8.xyz, r6.xyz);
      r8.x = max(r10.y, r10.z);
      r8.x = saturate(max(r10.x, r8.x));
      r6.y = min(r6.y, r6.z);
      r8.y = saturate(min(r6.x, r6.y));
      r6.x = cmp(r8.x < r8.y);
      if (r6.x != 0) {
        r5.w = cmp(r5.w < 0);
        r6.xy = mad((int2)r1.ww, int2(17,17), int2(5,6));
        r10.x = t4[r6.x].val[0/4];
        r10.y = t4[r6.x].val[0/4+1];
        r10.z = t4[r6.x].val[0/4+2];
        r10.w = t4[r6.x].val[0/4+3];
        r6.x = t4[r6.y].val[0/4];
        r6.y = t4[r6.y].val[0/4+1];
        r1.w = 0.400000006 * r6.w;
        r6.z = r10.w * r6.w;
        r6.z = max(9.99999975e-005, r6.z);
        r6.z = 1 / r6.z;
        r8.xy = r8.xy * r4.xx;
        r4.x = r0.z;
        r8.z = r8.x;
        r8.w = 0;
        while (true) {
          r9.w = cmp((uint)r8.w >= 32);
          if (r9.w != 0) break;
          r11.xyz = r7.xyz * r8.zzz + r9.xyz;
          r12.xyz = max(r11.xyz, -r4.yzw);
          r12.xyz = min(r12.xyz, r4.yzw);
          r11.xyz = r12.xyz + -r11.xyz;
          r9.w = dot(r11.xyz, r11.xyz);
          r9.w = sqrt(r9.w);
          r11.xyz = r12.xyz * r5.xyz + r10.xyz;
          r10.w = t1.SampleLevel(s1_s, r11.xyz, 0).x;
          r10.w = r10.w * r6.x + r6.y;
          r9.w = r10.w + r9.w;
          r10.w = -cb0[13].x * r6.w + r9.w;
          r9.w = r5.w ? r10.w : r9.w;
          r10.w = saturate(r8.z * r6.z);
          r10.w = 1 + -r10.w;
          r11.x = r8.z * r0.x;
          r11.x = max(r11.x, r1.w);
          r11.x = min(r11.x, r7.w);
          r11.x = saturate(r9.w / r11.x);
          r10.w = max(r11.x, r10.w);
          r10.w = min(r10.w, r4.x);
          r9.w = max(0.0078125, abs(r9.w));
          r8.z = r9.w + r8.z;
          r9.w = cmp(r10.w < 0.00999999978);
          r11.x = cmp(r8.y < r8.z);
          r9.w = (int)r9.w | (int)r11.x;
          if (r9.w != 0) {
            r4.x = r10.w;
            break;
          }
          r8.w = (int)r8.w + 1;
          r4.x = r10.w;
        }
        r1.w = (uint)r8.w;
        r1.w = -r1.w * 0.03125 + 1;
        r0.z = min(r4.x, r1.w);
      }
      r1.w = cmp(r0.z < 0.00999999978);
      if (r1.w != 0) {
        r0.z = 0;
        break;
      }
      r0.w = (int)r0.w + 1;
    }
    r1.x = r0.z;
  } else {
    r1.x = 1;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyxx
  return;
}