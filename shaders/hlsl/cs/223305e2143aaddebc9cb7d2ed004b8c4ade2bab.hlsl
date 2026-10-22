// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[2048];
struct t6_t {
  float val[4];
};
StructuredBuffer<t6_t> t6 : register(t6);

struct t5_t {
  float val[4];
};
StructuredBuffer<t5_t> t5 : register(t5);

Buffer<uint4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
  r1.z = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r2.y = r1.z + r0.w;
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
  r0.w = cmp(0 < r2.y);
  if (r0.w != 0) {
    // Needs manual fix for instruction:
    atomic_umin g1, l(0), r2.y
    InterlockedMin(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(0), r2.y
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r3.z, l(0), g1.xxxx
// No code for instruction (needs manual fix):
ld_raw r4.z, l(0), g2.xxxx
  r1.z = r4.z + r3.z;
  r1.z = 0.5 * r1.z;
  r1.w = cmp(r2.y >= r1.z);
  r1.w = r0.w ? r1.w : 0;
  if (r1.w != 0) {
    // Needs manual fix for instruction:
    atomic_umin g3, l(0), r2.y
    InterlockedMin(dest, value, orig_value);
  }
  r1.z = cmp(r1.z >= r2.y);
  r1.z = r0.w ? r1.z : 0;
  if (r1.z != 0) {
    // Needs manual fix for instruction:
    atomic_umax g4, l(0), r2.y
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r5.z, l(0), g3.xxxx
// No code for instruction (needs manual fix):
ld_raw r6.z, l(0), g4.xxxx
  if (r0.w != 0) {
    r7.x = cb1[36].x;
    r7.y = cb1[37].y;
    r1.zw = r7.xy + r7.xy;
    r8.xyzw = asint(cb0[32].zwxy);
    r2.zw = r8.xy * r1.zw;
    r7.zw = cb1[130].xy * cb0[27].zw;
    r2.zw = r2.zw / r7.zw;
    r7.zw = -cb1[129].xy + r8.zw;
    r1.zw = r7.zw * r1.zw;
    r1.zw = r1.zw * cb1[130].zw + -r7.xy;
    r7.xy = (uint2)vThreadGroupID.xy;
    r7.xy = r7.xy * r2.zw + r1.zw;
    r7.xy = float2(1,-1) * r7.xy;
    r7.zw = (int2)vThreadGroupID.xy + int2(1,1);
    r7.zw = (uint2)r7.zw;
    r1.zw = r7.zw * r2.zw + r1.zw;
    r1.zw = float2(1,-1) * r1.zw;
    r2.zw = r7.xy * r3.zz;
    r7.zw = r7.xy * r6.zz;
    r3.xy = min(r7.zw, r2.zw);
    r2.zw = r3.zz * r1.zw;
    r7.zw = r6.zz * r1.zw;
    r6.xy = max(r7.zw, r2.zw);
    r2.zw = r7.xy * r5.zz;
    r7.xy = r7.xy * r4.zz;
    r5.xy = min(r7.xy, r2.zw);
    r2.zw = r5.zz * r1.zw;
    r1.zw = r4.zz * r1.zw;
    r4.xy = max(r2.zw, r1.zw);
    r3.xyz = r6.xyz + r3.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r3.xyz;
    r8.xyz = cb1[17].xyz * r7.yyy;
    r7.xyw = r7.xxx * cb1[16].xyz + r8.xyz;
    r7.xyz = r7.zzz * cb1[18].xyz + r7.xyw;
    r7.xyz = cb1[19].xyz + r7.xyz;
    r7.xyz = -cb1[70].xyz + r7.xyz;
    r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + -r6.xyz;
    r1.z = dot(r3.xyz, r3.xyz);
    r3.xyz = r5.xyz + r4.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r3.xyz;
    r6.xyw = cb1[17].xyz * r5.yyy;
    r5.xyw = r5.xxx * cb1[16].xyz + r6.xyw;
    r5.xyz = r5.zzz * cb1[18].xyz + r5.xyw;
    r5.xyz = cb1[19].xyz + r5.xyz;
    r5.xyz = -cb1[70].xyz + r5.xyz;
    r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + -r4.xyz;
    r1.w = dot(r3.xyz, r3.xyz);
    r1.zw = sqrt(r1.zw);
    r2.z = t4.Load(float4(1,1,1,1)).x;
    r2.w = r0.x;
    while (true) {
      r3.x = cmp((uint)r2.w >= (uint)r2.z);
      if (r3.x != 0) break;
      r3.x = t5[r2.w].val[0/4];
      r3.y = t5[r2.w].val[0/4+1];
      r3.z = t5[r2.w].val[0/4+2];
      r3.w = t5[r2.w].val[0/4+3];
      r4.x = r3.w + r1.z;
      r4.yzw = r3.xyz + -r7.xyz;
      r4.y = dot(r4.yzw, cb0[28].xyz);
      r6.xyw = r4.yyy * cb0[28].xyz + r7.xyz;
      r6.xyw = r6.xyw + -r3.xyz;
      r4.z = dot(r6.xyw, r6.xyw);
      r4.w = r4.x * r4.x;
      r4.z = cmp(r4.w >= r4.z);
      r4.w = cmp(-r4.x < r4.y);
      r4.z = r4.w ? r4.z : 0;
      r4.x = r4.y + -r4.x;
      r4.x = cmp(r4.x < cb0[31].z);
      r4.x = r4.x ? r4.z : 0;
      if (r4.x != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r4.x, g5, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r4.x = min(1023, (uint)r4.x);
        g0[r4.x].val[0/4] = r2.w;
      }
      r3.w = r3.w + r1.w;
      r4.xyz = r3.xyz + -r5.xyz;
      r4.x = dot(r4.xyz, cb0[28].xyz);
      r4.yzw = r4.xxx * cb0[28].xyz + r5.xyz;
      r3.xyz = r4.yzw + -r3.xyz;
      r3.x = dot(r3.xyz, r3.xyz);
      r3.y = r3.w * r3.w;
      r3.x = cmp(r3.y >= r3.x);
      r3.y = cmp(-r3.w < r4.x);
      r3.x = r3.y ? r3.x : 0;
      r3.y = r4.x + -r3.w;
      r3.y = cmp(r3.y < cb0[31].z);
      r3.x = r3.y ? r3.x : 0;
      if (r3.x != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r3.x, g6, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r3.x = min(1023, (uint)r3.x);
        r3.x = (int)r3.x + 1024;
        g0[r3.x].val[0/4] = r2.w;
      }
      r2.w = (int)r2.w + 64;
    }
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.w != 0) {
    r0.xy = r0.yz * cb1[132].zw + -cb1[66].wz;
    r0.xy = r0.xy / cb1[66].xy;
    r0.xy = r0.xy * r2.yy;
    r0.yzw = cb1[49].xyz * r0.yyy;
    r0.xyz = r0.xxx * cb1[48].xyz + r0.yzw;
    r0.xyz = r2.yyy * cb1[50].xyz + r0.xyz;
    r0.xyz = cb1[51].xyz + r0.xyz;
    r0.w = cmp(r6.z < r2.y);
  // No code for instruction (needs manual fix):
    ld_raw r1.z, l(0), g5.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r1.w, l(0), g6.xxxx
    r1.z = r0.w ? r1.w : r1.z;
    r1.z = min(1024, (uint)r1.z);
    r1.w = cb0[30].y * r2.y + 2;
    r3.xyz = cb0[28].xyz * r1.www + r0.xyz;
    r4.xyz = cb0[28].xyz * cb0[31].zzz + r0.xyz;
    r0.x = t1.SampleLevel(s0_s, r1.xy, 0).w;
    r0.y = t2.SampleLevel(s0_s, r1.xy, 0).w;
    r0.x = 255 * r0.x;
    r0.x = round(r0.x);
    r0.x = (uint)r0.x;
    r0.x = (int)r0.x & 15;
    r5.xyzw = cmp((int4)r0.xxxx == int4(2,3,4,5));
    r0.z = (int)r5.y | (int)r5.x;
    r1.xy = (int2)r5.zw | (int2)r0.zz;
    r0.z = (int)r5.w | (int)r1.x;
    r5.xyzw = cmp((int4)r0.xxxx == int4(6,7,8,12));
    r0.z = (int)r0.z | (int)r5.x;
    r0.z = (int)r5.y | (int)r0.z;
    r0.z = (int)r5.z | (int)r0.z;
    r0.z = (int)r5.w | (int)r0.z;
    r1.xw = cmp((int2)r0.xx == int2(13,9));
    r0.x = (int)r0.z | (int)r1.x;
    r0.x = (int)r1.w | (int)r0.x;
    r0.x = (int)r0.y & (int)r0.x;
    r0.y = (int)r1.y | (int)r5.x;
    r0.y = (int)r5.y | (int)r0.y;
    r0.y = (int)r1.w | (int)r0.y;
    if (r0.y != 0) {
      r0.x = min(0.999000013, r0.x);
      r0.x = 1 + -r0.x;
      r0.x = log2(r0.x);
      r0.x = -0.0346573591 * r0.x;
    } else {
      r0.x = 0;
    }
    bitmask.z = ((~(-1 << 1)) << 10) & 0xffffffff;  r0.z = (((uint)r0.w << 10) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r3.w = 1;
    r4.w = 1;
    r1.xy = float2(1,0);
    while (true) {
      r0.w = cmp((uint)r1.y >= (uint)r1.z);
      if (r0.w != 0) break;
      r0.w = (int)r0.z + (int)r1.y;
      r0.w = g0[r0.w].val[0/4];
      r1.w = (int)r0.w * 17;
      r5.xyzw = mad((int4)r0.wwww, int4(17,17,17,17), int4(3,1,2,4));
      r6.x = t6[r5.x].val[0/4];
      r6.y = t6[r5.x].val[0/4+1];
      r6.z = t6[r5.x].val[0/4+2];
      r7.x = t6[r1.w].val[0/4];
      r7.y = t6[r1.w].val[0/4+1];
      r7.z = t6[r1.w].val[0/4+2];
      r7.w = t6[r1.w].val[0/4+3];
      r8.x = t6[r5.y].val[0/4];
      r8.y = t6[r5.y].val[0/4+1];
      r8.z = t6[r5.y].val[0/4+2];
      r8.w = t6[r5.y].val[0/4+3];
      r9.x = t6[r5.z].val[0/4];
      r9.y = t6[r5.z].val[0/4+1];
      r9.z = t6[r5.z].val[0/4+2];
      r9.w = t6[r5.z].val[0/4+3];
      r5.x = t6[r5.w].val[0/4];
      r5.y = t6[r5.w].val[0/4+1];
      r5.z = t6[r5.w].val[0/4+2];
      r5.w = t6[r5.w].val[0/4+3];
      r10.x = dot(r3.xyzw, r7.xyzw);
      r10.y = dot(r3.xyzw, r8.xyzw);
      r10.z = dot(r3.xyzw, r9.xyzw);
      r7.x = dot(r4.xyzw, r7.xyzw);
      r7.y = dot(r4.xyzw, r8.xyzw);
      r7.z = dot(r4.xyzw, r9.xyzw);
      r7.xyz = r7.xyz + -r10.xyz;
      r1.w = dot(r7.xyz, r7.xyz);
      r1.w = sqrt(r1.w);
      r8.xyz = r7.xyz / r1.www;
      r2.z = 1 / abs(r5.w);
      r2.w = 100 * r2.z;
      r6.w = dot(-r10.xyz, r8.xyz);
      r6.w = max(0, r6.w);
      r6.w = cb0[31].x * r6.w;
      r6.w = min(r6.w, r2.w);
      r9.xyz = r6.xyz * float3(-0.699999988,-0.699999988,-0.699999988) + -r6.www;
      r11.xyz = r6.xyz * float3(0.699999988,0.699999988,0.699999988) + r6.www;
      r7.xyz = float3(1,1,1) / r7.xyz;
      r9.xyz = r9.xyz + -r10.xyz;
      r9.xyz = r9.xyz * r7.xyz;
      r11.xyz = r11.xyz + -r10.xyz;
      r7.xyz = r11.xyz * r7.xyz;
      r11.xyz = min(r9.xyz, r7.xyz);
      r7.xyz = max(r9.xyz, r7.xyz);
      r6.w = max(r11.y, r11.z);
      r9.x = saturate(max(r11.x, r6.w));
      r6.w = min(r7.y, r7.z);
      r9.y = saturate(min(r7.x, r6.w));
      r6.w = cmp(r9.x < r9.y);
      if (r6.w != 0) {
        r6.w = cmp(r5.w < 0);
        r7.xy = mad((int2)r0.ww, int2(17,17), int2(5,6));
        r11.x = t6[r7.x].val[0/4];
        r11.y = t6[r7.x].val[0/4+1];
        r11.z = t6[r7.x].val[0/4+2];
        r11.w = t6[r7.x].val[0/4+3];
        r7.x = t6[r7.y].val[0/4];
        r7.y = t6[r7.y].val[0/4+1];
        r0.w = 0.400000006 * r2.z;
        r7.z = r11.w * r2.z;
        r7.z = max(9.99999975e-005, r7.z);
        r7.z = 1 / r7.z;
        r9.xy = r9.xy * r1.ww;
        r1.w = r1.x;
        r7.w = r9.x;
        r8.w = 0;
        while (true) {
          r9.z = cmp((uint)r8.w >= 64);
          if (r9.z != 0) break;
          r12.xyz = r8.xyz * r7.www + r10.xyz;
          r13.xyz = max(r12.xyz, -r6.xyz);
          r13.xyz = min(r13.xyz, r6.xyz);
          r12.xyz = r13.xyz + -r12.xyz;
          r9.z = dot(r12.xyz, r12.xyz);
          r9.z = sqrt(r9.z);
          r12.xyz = r13.xyz * r5.xyz + r11.xyz;
          r9.w = t3.SampleLevel(s1_s, r12.xyz, 0).x;
          r9.w = r9.w * r7.x + r7.y;
          r9.z = r9.w + r9.z;
          r9.w = -cb0[13].x * r2.z + r9.z;
          r9.z = r6.w ? r9.w : r9.z;
          r9.w = saturate(r7.w * r7.z);
          r9.w = 1 + -r9.w;
          r10.w = cb0[31].x * r7.w;
          r10.w = max(r10.w, r0.w);
          r10.w = min(r10.w, r2.w);
          r10.w = saturate(r9.z / r10.w);
          r9.w = max(r10.w, r9.w);
          r10.w = r7.w * abs(r5.w);
          r10.w = -r10.w * r0.x;
          r10.w = 1.44269502 * r10.w;
          r10.w = exp2(r10.w);
          r10.w = min(1, r10.w);
          r10.w = max(r10.w, r9.w);
          r9.w = r0.y ? r10.w : r9.w;
          r9.w = min(r9.w, r1.w);
          r9.z = max(0.00390625, abs(r9.z));
          r7.w = r9.z + r7.w;
          r9.z = cmp(r9.w < 0.00999999978);
          r10.w = cmp(r9.y < r7.w);
          r9.z = (int)r9.z | (int)r10.w;
          if (r9.z != 0) {
            r1.w = r9.w;
            break;
          }
          r8.w = (int)r8.w + 1;
          r1.w = r9.w;
        }
        r0.w = (uint)r8.w;
        r0.w = -r0.w * 0.015625 + 1;
        r1.x = min(r1.w, r0.w);
      }
      r0.w = cmp(r1.x < 0.00999999978);
      if (r0.w != 0) {
        r1.x = 0;
        break;
      }
      r1.y = (int)r1.y + 1;
    }
    r2.x = r1.x;
  } else {
    r2.x = 1;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r2.xyxx
  return;
}