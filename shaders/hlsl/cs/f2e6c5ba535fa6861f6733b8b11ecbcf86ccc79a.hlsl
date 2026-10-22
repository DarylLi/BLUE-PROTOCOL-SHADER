// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[66];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
  r0.yz = float2(0.5,0.5) + r0.yz;
  r0.yz = cb0[42].zw * r0.yz;
  r2.xyzw = cb0[28].zwzw * float4(-0.5,0.5,0.5,0.5) + r0.yzyz;
  r2.xyzw = min(cb0[34].zwzw, r2.xyzw);
  r0.w = t1.SampleLevel(s1_s, r2.xy, 0).w;
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r0.w = (int)r0.w & 15;
  r3.xy = cmp((int2)r0.ww == int2(5,9));
  r0.w = (int)r3.y | (int)r3.x;
  if (r0.w != 0) {
    r3.xyzw = t2.SampleLevel(s2_s, r2.xy, 0).xyzw;
    r0.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
    r0.w = saturate(r3.w / r0.w);
    r3.xyz = r3.xyz * r0.www;
    r3.w = 1;
  } else {
    r3.xyzw = float4(0,0,0,0);
  }
  r0.w = t1.SampleLevel(s1_s, r2.zw, 0).w;
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r0.w = (int)r0.w & 15;
  r2.xy = cmp((int2)r0.ww == int2(5,9));
  r0.w = (int)r2.y | (int)r2.x;
  if (r0.w != 0) {
    r2.xyzw = t2.SampleLevel(s2_s, r2.zw, 0).xyzw;
    r0.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
    r0.w = saturate(r2.w / r0.w);
    r2.xyz = r2.xyz * r0.www;
    r2.w = 1;
  } else {
    r2.xyzw = float4(0,0,0,0);
  }
  r4.xyzw = cb0[28].zwzw * float4(0.5,-0.5,-0.5,-0.5) + r0.yzyz;
  r4.xyzw = min(cb0[34].zwzw, r4.xyzw);
  r0.w = t1.SampleLevel(s1_s, r4.xy, 0).w;
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r0.w = (int)r0.w & 15;
  r5.xy = cmp((int2)r0.ww == int2(5,9));
  r0.w = (int)r5.y | (int)r5.x;
  if (r0.w != 0) {
    r5.xyzw = t2.SampleLevel(s2_s, r4.xy, 0).xyzw;
    r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
    r0.w = saturate(r5.w / r0.w);
    r5.xyz = r5.xyz * r0.www;
    r5.w = 1;
  } else {
    r5.xyzw = float4(0,0,0,0);
  }
  r0.w = t1.SampleLevel(s1_s, r4.zw, 0).w;
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r0.w = (int)r0.w & 15;
  r4.xy = cmp((int2)r0.ww == int2(5,9));
  r0.w = (int)r4.y | (int)r4.x;
  if (r0.w != 0) {
    r4.xyzw = t2.SampleLevel(s2_s, r4.zw, 0).xyzw;
    r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
    r0.w = saturate(r4.w / r0.w);
    r4.xyz = r4.xyz * r0.www;
    r4.w = 1;
  } else {
    r4.xyzw = float4(0,0,0,0);
  }
  r6.xyzw = r3.xyzw + r2.xyzw;
  r7.xyzw = r5.xyzw + r4.xyzw;
  r6.xyzw = r7.xyzw + r6.xyzw;
  r0.w = max(9.99999975e-006, r6.w);
  r0.w = 1 / r0.w;
  r7.xyzw = t0.Gather(s0_s, r0.yz).xyzw;
  r0.yz = r7.xy * cb1[65].xx + cb1[65].yy;
  r2.xy = r7.xy * cb1[65].zz + -cb1[65].ww;
  r2.xy = float2(1,1) / r2.xy;
  r8.xy = r2.xy + r0.yz;
  r0.yz = r7.zw * cb1[65].xx + cb1[65].yy;
  r2.xy = r7.zw * cb1[65].zz + -cb1[65].ww;
  r2.xy = float2(1,1) / r2.xy;
  r8.zw = r2.xy + r0.yz;
  r4.x = r3.w;
  r4.y = r2.w;
  r4.z = r5.w;
  r0.y = dot(r8.xyzw, r4.xyzw);
  r2.w = r0.y * r0.w;
  r0.y = cmp(0 < r2.w);
  r0.y = r0.y ? 0.000000 : 0;
  r3.xy = cmp((uint2)r1.xw < asuint(cb0[44].zw));
  r0.z = r3.y ? r3.x : 0;
  if (r0.z != 0) {
    r2.xyz = r6.xyz * r0.www;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r1.xyzw, r2.xyzw
  }
  // Needs manual fix for instruction:
atomic_or g0, l(0), r0.y
  InterlockedOr(dest, value, orig_value);
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r0.y, l(0), g0.xxxx
  r0.yz = r0.yy ? float2(0,0) : 0;
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