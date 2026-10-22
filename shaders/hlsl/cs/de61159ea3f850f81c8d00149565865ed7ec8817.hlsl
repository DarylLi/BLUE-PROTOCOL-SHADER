// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[126];
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
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = (uint)vThreadGroupID.x << 1;
  r0.x = (int)r0.x + 2;
  r0.y = t7.Load(r0.x).x;
  r0.x = (int)r0.x + 1;
  r0.x = t7.Load(r0.x).x;
  r1.xyzw = (uint4)r0.yxxx;
  r0.x = (int)vThreadIDInGroupFlattened.x & 7;
  r0.y = (uint)vThreadIDInGroupFlattened.x >> 3;
  r2.xyzw = (uint4)r0.xyyy;
  r0.xyzw = r1.xyzw * float4(8,8,8,8) + r2.xyzw;
  r0.xyzw = (uint4)r0.xyzw;
  if (29 == 0) r0.x = 0; else if (29+0 < 32) {   r0.x = (uint)r0.x << (32-(29 + 0)); r0.x = (uint)r0.x >> (32-29);  } else r0.x = (uint)r0.x >> 0;
  if (29 == 0) r0.y = 0; else if (29+0 < 32) {   r0.y = (uint)r0.y << (32-(29 + 0)); r0.y = (uint)r0.y >> (32-29);  } else r0.y = (uint)r0.y >> 0;
  if (29 == 0) r0.z = 0; else if (29+0 < 32) {   r0.z = (uint)r0.z << (32-(29 + 0)); r0.z = (uint)r0.z >> (32-29);  } else r0.z = (uint)r0.z >> 0;
  if (29 == 0) r0.w = 0; else if (29+0 < 32) {   r0.w = (uint)r0.w << (32-(29 + 0)); r0.w = (uint)r0.w >> (32-29);  } else r0.w = (uint)r0.w >> 0;
  r0.xyzw = (int4)r0.xyzw + asint(cb0[44].xyyy);
  r1.xy = (uint2)r0.xw;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = cb0[42].zw * r1.xy;
  r2.xy = max(cb0[34].xy, r1.zw);
  r2.xy = min(cb0[34].zw, r2.xy);
  r2.z = t1.SampleLevel(s0_s, r2.xy, 0).w;
  r2.x = t2.SampleLevel(s0_s, r2.xy, 0).x;
  r2.y = 255 * r2.z;
  r2.y = round(r2.y);
  r2.y = (uint)r2.y;
  r2.y = (int)r2.y & 15;
  r3.xyzw = cmp((int4)r2.yyyy == int4(2,3,4,5));
  r2.z = (int)r3.y | (int)r3.x;
  r2.z = (int)r3.z | (int)r2.z;
  r2.z = (int)r3.w | (int)r2.z;
  r3.xyzw = cmp((int4)r2.yyyy == int4(6,7,8,12));
  r2.z = (int)r2.z | (int)r3.x;
  r2.z = (int)r3.y | (int)r2.z;
  r2.z = (int)r3.z | (int)r2.z;
  r2.z = (int)r3.w | (int)r2.z;
  r2.yw = cmp((int2)r2.yy == int2(13,9));
  r2.y = (int)r2.y | (int)r2.z;
  r2.y = (int)r2.w | (int)r2.y;
  r2.x = r2.y ? r2.x : 0;
  r2.x = r2.x * 255 + 0.5;
  r2.y = (uint)r2.x;
  r2.xzw = float3(4,0,0);
  r2.x = t3.Load(r2.xyz).w;
  r2.x = cmp(abs(r2.x) < 0.00999999978);
  if (r2.x != 0) {
    r2.xyzw = t4.SampleLevel(s1_s, r1.zw, 0).xyzw;
    r1.xy = cb0[42].zw * r1.xy + -cb0[32].xy;
    r1.xy = cb0[33].zw * r1.xy;
    r3.xy = r1.xy + r1.xy;
    r1.x = r1.x * 2 + -1;
    r1.y = -r1.y * 2 + 1;
    r4.x = t0.SampleLevel(s0_s, r1.zw, 0).x;
    r4.yzw = cb1[123].xyw * r1.yyy;
    r4.yzw = r1.xxx * cb1[122].xyw + r4.yzw;
    r4.xyz = r4.xxx * cb1[124].xyw + r4.yzw;
    r4.xyz = cb1[125].xyw + r4.xyz;
    r1.xy = r4.xy / r4.zz;
    r3.zw = r3.xy * float2(1,-1) + float2(-1,1);
    r1.xy = r3.zw + -r1.xy;
    r1.zw = t6.SampleLevel(s3_s, r1.zw, 0).xy;
    r3.y = cmp(0 < r1.z);
    r1.zw = r1.zw * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
    r1.xy = r3.yy ? r1.zw : r1.xy;
    r1.zw = float2(-1,0) + r3.xw;
    r1.xy = r1.zw + -r1.xy;
    r1.z = max(abs(r1.x), abs(r1.y));
    r1.z = cmp(r1.z < 1);
    if (r1.z != 0) {
      r1.xy = float2(0.5,0.5) * r1.xy;
      r1.xy = r1.xy * float2(1,-1) + float2(0.5,0.5);
      r1.xy = r1.xy * cb0[33].xy + cb0[32].xy;
      r1.yzw = t5.SampleLevel(s2_s, r1.xy, 0).xzw;
      r1.x = 0.200000003;
    } else {
      r1.xyzw = float4(1,0,0,0);
    }
    r3.x = cmp(0 >= r2.w);
    if (r3.x != 0) {
      r3.xyzw = float4(0,0,0,0);
    } else {
      r4.xyz = log2(r2.xyz);
      r4.xyz = float3(0.454545468,0.454545468,0.454545468) * r4.xyz;
      r4.xyz = exp2(r4.xyz);
      r4.x = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
      r4.y = 1 + -r1.x;
      r5.xyzw = r4.yyyy * r1.wzxy;
      r3.w = r1.x * r4.x + r5.x;
      r1.y = r4.x + -r1.w;
      r1.y = r1.y * r1.y;
      r3.z = r1.y * r5.z + r5.y;
      r3.xy = r1.xz * r2.ww;
      r3.x = r3.x * 0.015625 + r5.w;
    }
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xwww, r3.xyzw
    r2.w = 1;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r2.xyzw
  }
  return;
}