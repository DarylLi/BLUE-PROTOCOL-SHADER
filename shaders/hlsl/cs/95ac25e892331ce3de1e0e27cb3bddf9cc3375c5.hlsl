// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[143];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[26];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4,r5;
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
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.x = mad((int)vThreadIDInGroup.y, 16, (int)vThreadIDInGroup.x);
  r0.yz = (uint2)vThreadID.xy;
  r0.yz = float2(0.5,0.5) + r0.yz;
  r0.yz = cb1[132].zw * r0.yz;
  r0.yz = r0.yz + r0.yz;
  r0.y = t0.SampleLevel(s0_s, r0.yz, 0).w;
  r0.y = abs(r0.y);
  if (r0.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), l(340282346638528860000000000000000000000.000000)
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g2.x, l(0), l(340282346638528860000000000000000000000.000000)
  // No code for instruction (needs manual fix):
    store_raw g3.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  r0.z = cmp(r0.y < cb0[8].w);
  if (r0.z != 0) {
    // Needs manual fix for instruction:
    atomic_umin g0, l(0), r0.y
    InterlockedMin(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g1, l(0), r0.y
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r0.w, l(0), g0.xxxx
// No code for instruction (needs manual fix):
ld_raw r1.x, l(0), g1.xxxx
  r1.y = r1.x + r0.w;
  r1.y = 0.5 * r1.y;
  r1.z = cmp(r0.y >= r1.y);
  r0.z = r0.z ? r1.z : 0;
  if (r0.z != 0) {
    // Needs manual fix for instruction:
    atomic_umin g2, l(0), r0.y
    InterlockedMin(dest, value, orig_value);
  }
  r0.z = cmp(r1.y >= r0.y);
  if (r0.z != 0) {
    // Needs manual fix for instruction:
    atomic_umax g3, l(0), r0.y
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.x == 0) {
    r0.xy = (uint2)vThreadGroupID.xy;
    r0.z = r0.y * cb0[25].x + r0.x;
    r0.z = (uint)r0.z;
    r1.y = cmp((uint)r1.x < (uint)r0.w);
    if (r1.y != 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.zzzz, l(0,0,0,1.000000)
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.zzzz, l(0,0,0,0)
    } else {
    // No code for instruction (needs manual fix):
        ld_raw r1.y, l(0), g2.xxxx
    // No code for instruction (needs manual fix):
        ld_raw r1.z, l(0), g3.xxxx
      r1.w = 1 / cb1[28].x;
      r2.x = 1 / cb1[29].y;
      r0.xy = r0.xy / cb0[25].xy;
      r0.x = dot(r0.xx, r1.ww);
      r3.y = r0.x + -r1.w;
      r0.x = dot(r0.yy, r2.xx);
      r3.w = r2.x + -r0.x;
      r3.z = 1;
      r0.x = dot(r3.yzw, r3.yzw);
      r0.x = rsqrt(r0.x);
      r2.yzw = r3.ywz * r0.xxx;
      r0.xy = (int2)vThreadGroupID.xy + int2(1,1);
      r0.xy = (uint2)r0.xy;
      r0.xy = r0.xy / cb0[25].xy;
      r0.x = dot(r0.xx, r1.ww);
      r3.x = r0.x + -r1.w;
      r0.x = dot(r3.xzw, r3.xzw);
      r0.x = rsqrt(r0.x);
      r0.y = dot(r0.yy, r2.xx);
      r4.y = r2.x + -r0.y;
      r4.xz = r3.yz;
      r0.y = dot(r4.xyz, r4.xyz);
      r0.y = rsqrt(r0.y);
      r3.y = r4.y;
      r1.w = dot(r3.xyz, r3.xyz);
      r1.w = rsqrt(r1.w);
      r5.xyz = r3.xwz * r0.xxx + r2.yzw;
      r4.xyz = r4.xyz * r0.yyy + r5.xyz;
      r3.xyz = r3.xyz * r1.www + r4.xyz;
      r0.x = dot(r3.xyz, r3.xyz);
      r0.x = rsqrt(r0.x);
      r3.xyz = r3.xyz * r0.xxx;
      r3.w = dot(r3.xyz, r2.yzw);
      r2.xyz = r3.xyz / r3.zzz;
      r2.xyz = cb1[142].xxx * r2.xyz;
      r0.x = dot(r2.xyz, r2.xyz);
      r0.x = sqrt(r0.x);
      r0.y = 1 / r3.z;
      r2.x = r0.y * r0.w + r0.x;
      r2.y = r0.y * r1.z + r0.x;
      r2.z = r0.y * r1.y + r0.x;
      r2.w = r0.y * r1.x + r0.x;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.zzzz, r2.xyzw
    }
  }
  return;
}