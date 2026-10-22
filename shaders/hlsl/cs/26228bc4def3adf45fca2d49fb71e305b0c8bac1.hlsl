// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

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
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u2
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u3
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
    r3.xy = cb1[132].xy * r2.xy;
    r3.xy = (uint2)r3.xy;
    r0.w = (uint)cb1[152].x;
    r3.x = (int)r3.y + (int)r3.x;
    r0.w = (int)r0.w + (int)r3.x;
    r0.w = (int)r0.w & 1;
    r3.xyz = t3.SampleLevel(s2_s, r2.xy, 0).xyz;
    r4.xyz = t3.SampleLevel(s2_s, r2.xy, 0, int2(1, 0)).xyz;
    r5.xyz = t3.SampleLevel(s2_s, r2.xy, 0, int2(-1, 0)).xyz;
    r4.xyz = r5.xyz + r4.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r4.xyz;
    r0.w = r0.w ? 1 : 0;
    r3.xyz = -r4.xyz * float3(0.5,0.5,0.5) + r3.xyz;
    r3.xyz = r0.www * r3.xyz + r5.xyz;
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
    r2.xy = cb1[132].xy * r2.zw;
    r2.xy = (uint2)r2.xy;
    r0.w = (uint)cb1[152].x;
    r2.x = (int)r2.y + (int)r2.x;
    r0.w = (int)r0.w + (int)r2.x;
    r0.w = (int)r0.w & 1;
    r4.xyz = t3.SampleLevel(s2_s, r2.zw, 0).xyz;
    r5.xyz = t3.SampleLevel(s2_s, r2.zw, 0, int2(1, 0)).xyz;
    r2.xyz = t3.SampleLevel(s2_s, r2.zw, 0, int2(-1, 0)).xyz;
    r2.xyz = r5.xyz + r2.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r2.xyz;
    r0.w = r0.w ? 1 : 0;
    r2.xyz = -r2.xyz * float3(0.5,0.5,0.5) + r4.xyz;
    r2.xyz = r0.www * r2.xyz + r5.xyz;
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
    r5.xy = cb1[132].xy * r4.xy;
    r5.xy = (uint2)r5.xy;
    r0.w = (uint)cb1[152].x;
    r5.x = (int)r5.y + (int)r5.x;
    r0.w = (int)r0.w + (int)r5.x;
    r0.w = (int)r0.w & 1;
    r5.xyz = t3.SampleLevel(s2_s, r4.xy, 0).xyz;
    r6.xyz = t3.SampleLevel(s2_s, r4.xy, 0, int2(1, 0)).xyz;
    r7.xyz = t3.SampleLevel(s2_s, r4.xy, 0, int2(-1, 0)).xyz;
    r6.xyz = r7.xyz + r6.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r0.w = r0.w ? 1 : 0;
    r5.xyz = -r6.xyz * float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = r0.www * r5.xyz + r7.xyz;
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
    r4.xy = cb1[132].xy * r4.zw;
    r4.xy = (uint2)r4.xy;
    r0.w = (uint)cb1[152].x;
    r4.x = (int)r4.y + (int)r4.x;
    r0.w = (int)r0.w + (int)r4.x;
    r0.w = (int)r0.w & 1;
    r6.xyz = t3.SampleLevel(s2_s, r4.zw, 0).xyz;
    r7.xyz = t3.SampleLevel(s2_s, r4.zw, 0, int2(1, 0)).xyz;
    r4.xyz = t3.SampleLevel(s2_s, r4.zw, 0, int2(-1, 0)).xyz;
    r4.xyz = r7.xyz + r4.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r4.xyz;
    r0.w = r0.w ? 1 : 0;
    r4.xyz = -r4.xyz * float3(0.5,0.5,0.5) + r6.xyz;
    r4.xyz = r0.www * r4.xyz + r7.xyz;
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
  r2.xy = r7.xy * cb1[65].xx + cb1[65].yy;
  r3.xy = r7.xy * cb1[65].zz + -cb1[65].ww;
  r3.xy = float2(1,1) / r3.xy;
  r8.xy = r3.xy + r2.xy;
  r2.xy = r7.zw * cb1[65].xx + cb1[65].yy;
  r3.xy = r7.zw * cb1[65].zz + -cb1[65].ww;
  r3.xy = float2(1,1) / r3.xy;
  r8.zw = r3.xy + r2.xy;
  r4.x = r3.w;
  r4.y = r2.w;
  r4.z = r5.w;
  r2.x = dot(r8.xyzw, r4.xyzw);
  r2.w = r2.x * r0.w;
  r3.x = cmp(0 < r2.w);
  r3.x = r3.x ? 0.000000 : 0;
  r3.yz = cmp((uint2)r1.xw < asuint(cb0[44].zw));
  r3.y = r3.z ? r3.y : 0;
  if (r3.y != 0) {
    r2.xyz = r6.xyz * r0.www;
    r0.yz = max(cb0[34].xy, r0.yz);
    r0.yz = min(cb0[34].zw, r0.yz);
    r0.w = t1.SampleLevel(s1_s, r0.yz, 0).w;
    r0.y = t2.SampleLevel(s1_s, r0.yz, 0).x;
    r0.z = 255 * r0.w;
    r0.z = round(r0.z);
    r0.z = (uint)r0.z;
    r0.z = (int)r0.z & 15;
    r4.xyzw = cmp((int4)r0.zzzz == int4(2,3,4,5));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
    r0.w = (int)r4.w | (int)r0.w;
    r4.xyzw = cmp((int4)r0.zzzz == int4(6,7,8,12));
    r0.w = (int)r0.w | (int)r4.x;
    r0.w = (int)r4.y | (int)r0.w;
    r0.w = (int)r4.z | (int)r0.w;
    r0.w = (int)r4.w | (int)r0.w;
    r3.yz = cmp((int2)r0.zz == int2(13,9));
    r0.z = (int)r0.w | (int)r3.y;
    r0.z = (int)r3.z | (int)r0.z;
    r0.y = (int)r0.y & (int)r0.z;
    r0.y = r0.y * 255 + 0.5;
    r0.y = (uint)r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r1.xwww, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyzw, r0.yyyy
  }
  // Needs manual fix for instruction:
atomic_or g0, l(0), r3.x
  InterlockedOr(dest, value, orig_value);
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r0.y, l(0), g0.xxxx
  r0.yz = (int2)r0.yy & int2(1,2);
  r0.yz = cmp((int2)r0.yz != int2(0,0));
  r0.xy = r0.yz ? r0.xx : 0;
  if (r0.x != 0) {
    // Needs manual fix for instruction:
    imm_atomic_iadd r1.x, u1, l(0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.x = cmp((uint)r1.x < asuint(cb2[0].x));
    if (r0.x != 0) {
      r0.x = (uint)r1.x << 1;
      r0.x = (int)r0.x + 2;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.xxxx, vThreadGroupID.xxxx
      r0.z = (int)r0.x + 1;
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.zzzz, vThreadGroupID.yyyy
    }
  }
  if (r0.y != 0) {
    // Needs manual fix for instruction:
    imm_atomic_iadd r0.x, u2, l(0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.y = cmp((uint)r0.x < asuint(cb2[0].x));
    if (r0.y != 0) {
      r0.x = (uint)r0.x << 1;
      r0.x = (int)r0.x + 2;
    // No code for instruction (needs manual fix):
        store_uav_typed u2.xyzw, r0.xxxx, vThreadGroupID.xxxx
      r0.y = (int)r0.x + 1;
    // No code for instruction (needs manual fix):
        store_uav_typed u2.xyzw, r0.yyyy, vThreadGroupID.yyyy
    }
  }
  return;
}