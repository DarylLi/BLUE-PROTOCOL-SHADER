// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[45];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u2
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = cmp((int)vThreadIDInGroupFlattened.x == 0);
  if (vThreadIDInGroupFlattened.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  r1.xyzw = (int4)vThreadID.xyyy + asint(cb0[44].xyyy);
  r0.yz = (uint2)r1.xw;
  r2.xy = float2(0.5,0.5) + r0.yz;
  r2.xy = cb0[42].zw * r2.xy;
  r0.w = t1.SampleLevel(s0_s, r2.xy, 0).w;
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r0.w = (int)r0.w & 15;
  r2.zw = cmp((int2)r0.ww == int2(5,9));
  r0.w = (int)r2.w | (int)r2.z;
  if (r0.w != 0) {
    r2.zw = cb1[132].xy * r2.xy;
    r2.zw = (uint2)r2.zw;
    r0.w = (uint)cb1[152].x;
    r2.z = (int)r2.w + (int)r2.z;
    r0.w = (int)r0.w + (int)r2.z;
    r0.w = (int)r0.w & 1;
    r3.xyz = t2.SampleLevel(s1_s, r2.xy, 0).xyz;
    r4.xyz = t2.SampleLevel(s1_s, r2.xy, 0, int2(1, 0)).xyz;
    r5.xyz = t2.SampleLevel(s1_s, r2.xy, 0, int2(-1, 0)).xyz;
    r4.xyz = r5.xyz + r4.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r4.xyz;
    r0.w = r0.w ? 1 : 0;
    r3.xyz = -r4.xyz * float3(0.5,0.5,0.5) + r3.xyz;
    r3.xyz = r0.www * r3.xyz + r5.xyz;
    r0.w = 1;
  } else {
    r3.xyz = float3(0,0,0);
    r0.w = 0;
  }
  r0.w = cmp(0 < r0.w);
  if (r0.w != 0) {
    r2.x = t0.SampleLevel(s0_s, r2.xy, 0).x;
    r2.y = r2.x * cb1[65].x + cb1[65].y;
    r2.x = r2.x * cb1[65].z + -cb1[65].w;
    r2.x = 1 / r2.x;
    r2.x = r2.y + r2.x;
    r2.y = asuint(cb1[144].y);
    r0.yz = r2.yy * float2(32.6650009,11.8149996) + r0.yz;
    r0.y = dot(r0.yz, float2(0.0671105608,0.00583714992));
    r0.y = frac(r0.y);
    r0.y = 52.9829178 * r0.y;
    r0.y = frac(r0.y);
    r0.y = r2.x * r0.y;
    r3.w = r0.y * 0.0009765625 + r2.x;
  } else {
    r3.w = 0;
  }
  r0.y = r0.w ? 0.000000 : 0;
  r0.zw = cmp((uint2)r1.xw < asuint(cb0[44].zw));
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r1.xyzw, r3.xyzw
  }
  // Needs manual fix for instruction:
atomic_or g0, l(0), r0.y
  InterlockedOr(dest, value, orig_value);
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r0.y, l(0), g0.xxxx
  r0.yz = (int2)r0.yy & int2(1,2);
  r0.yz = cmp((int2)r0.yz != int2(0,0));
  r0.xy = r0.yz ? r0.xx : 0;
  if (r0.x != 0) {
    // Needs manual fix for instruction:
    imm_atomic_iadd r1.x, u0, l(0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.x = cmp((uint)r1.x < asuint(cb2[0].x));
    if (r0.x != 0) {
      r0.x = (uint)r1.x << 1;
      r0.x = (int)r0.x + 2;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xxxx, vThreadGroupID.xxxx
      r0.z = (int)r0.x + 1;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.zzzz, vThreadGroupID.yyyy
    }
  }
  if (r0.y != 0) {
    // Needs manual fix for instruction:
    imm_atomic_iadd r0.x, u1, l(0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.y = cmp((uint)r0.x < asuint(cb2[0].x));
    if (r0.y != 0) {
      r0.x = (uint)r0.x << 1;
      r0.x = (int)r0.x + 2;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.xxxx, vThreadGroupID.xxxx
      r0.y = (int)r0.x + 1;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.yyyy, vThreadGroupID.yyyy
    }
  }
  return;
}