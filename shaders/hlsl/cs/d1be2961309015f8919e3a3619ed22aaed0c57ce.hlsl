// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t15 : register(t15);

Texture3D<float4> t14 : register(t14);

Texture3D<float4> t13 : register(t13);

Texture3D<float4> t12 : register(t12);

TextureCube<float4> t11 : register(t11);

Buffer<uint4> t10 : register(t10);

Buffer<uint4> t9 : register(t9);

Buffer<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[54];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[215];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[98];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyz = (uint3)vThreadID.xyz;
  r0.xyz = cb0[72].xyz + r0.xyz;
  r0.xy = r0.xy / cb4[1].xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = float2(1,-1) * r0.xy;
  r0.z = r0.z / cb4[2].z;
  r0.z = exp2(r0.z);
  r0.z = -cb4[2].y + r0.z;
  r0.z = r0.z / cb4[2].x;
  r0.w = cmp(cb1[31].w < 1);
  r1.x = cb1[65].w + r0.z;
  r1.x = cb1[65].z * r1.x;
  r1.x = 1 / r1.x;
  r1.y = r0.z * cb1[30].z + cb1[31].z;
  r1.x = r0.w ? r1.x : r1.y;
  r2.xyzw = cb0[56].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[55].xyzw + r2.xyzw;
  r1.xyzw = r1.xxxx * cb0[57].xyzw + r2.xyzw;
  r1.xyzw = cb0[58].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb1[70].xyz + r1.xyz;
  r2.xyz = -cb1[67].xyz + r1.xyz;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = sqrt(r0.x);
  r2.xyz = r2.xyz / r0.xxx;
  if (cb2[0].z != 0) {
    r3.xy = cmp(float2(0,0) < cb0[97].zx);
    if (r3.x != 0) {
      if (cb2[48].y != 0) {
        r4.xyzw = cb2[51].xyzw * r1.yyyy;
        r4.xyzw = r1.xxxx * cb2[50].xyzw + r4.xyzw;
        r4.xyzw = r1.zzzz * cb2[52].xyzw + r4.xyzw;
        r4.xyzw = cb2[53].xyzw + r4.xyzw;
        r3.xz = r4.xy / r4.ww;
        r4.xy = cmp(r3.xz >= float2(0,0));
        r5.xy = cmp(float2(1,1) >= r3.xz);
        r4.xy = r4.xy ? r5.xy : 0;
        r0.y = r4.y ? r4.x : 0;
        if (r0.y != 0) {
          r0.y = t7.SampleLevel(s2_s, r3.xz, 0).x;
          r1.w = cmp(r4.z < r0.y);
          r0.y = cmp(0.99000001 < r0.y);
          r0.y = (int)r0.y | (int)r1.w;
          r0.y = r0.y ? 1.000000 : 0;
        } else {
          r0.y = 1;
        }
      } else {
        r0.y = 1;
      }
      if (cb2[9].z != 0) {
        r1.w = cb2[9].z;
        r2.w = 0;
        while (true) {
          r3.x = cmp((uint)r2.w >= asuint(cb2[9].z));
          if (r3.x != 0) break;
          r3.x = dot(cb2[10].xyzw, icb[r2.w+0].xyzw);
          r3.x = cmp(r0.z < r3.x);
          if (r3.x != 0) {
            r1.w = r2.w;
            break;
          }
          r2.w = (int)r2.w + 1;
        }
        r2.w = cmp((uint)r1.w < asuint(cb2[9].z));
        if (r2.w != 0) {
          r2.w = (uint)r1.w << 2;
          r4.xyzw = cb2[r2.w+12].xyzw * r1.yyyy;
          r4.xyzw = r1.xxxx * cb2[r2.w+11].xyzw + r4.xyzw;
          r4.xyzw = r1.zzzz * cb2[r2.w+13].xyzw + r4.xyzw;
          r4.xyzw = cb2[r2.w+14].xyzw + r4.xyzw;
          r3.xz = r4.xy / r4.ww;
          r4.xy = cmp(r3.xz >= cb2[r1.w+27].xy);
          r5.xy = cmp(cb2[r1.w+27].zw >= r3.xz);
          r4.xy = r4.xy ? r5.xy : 0;
          r1.w = r4.y ? r4.x : 0;
          if (r1.w != 0) {
            r1.w = t6.SampleLevel(s1_s, r3.xz, 0).x;
            r1.w = -cb2[48].x + r1.w;
            r1.w = cmp(r4.z < r1.w);
            r1.w = r1.w ? 1.000000 : 0;
          } else {
            r1.w = 1;
          }
        } else {
          r1.w = 1;
        }
      } else {
        r1.w = 1;
      }
      r0.y = r1.w * r0.y;
    } else {
      r0.y = 1;
    }
    r3.xz = cb0[90].xy * r1.yy;
    r3.xz = r1.xx * cb0[89].xy + r3.xz;
    r3.xz = r1.zz * cb0[91].xy + r3.xz;
    r3.xz = cb0[92].xy + r3.xz;
    r4.xy = r3.xz * float2(0.5,0.5) + float2(0.5,0.5);
    r4.z = 1 + -r4.y;
    r1.w = t15.SampleLevel(s4_s, r4.xz, 0).x;
    r0.y = r1.w * r0.y;
    r1.w = dot(cb2[5].xyz, float3(0.300000012,0.589999974,0.109999999));
    r3.xzw = cb4[6].xyz * r1.www;
    r3.xyz = r3.yyy ? r3.xzw : cb2[5].xyz;
    r0.y = cb2[8].y * r0.y;
    r1.w = dot(cb2[4].xyz, -r2.xyz);
    r2.w = -cb0[88].y * cb0[88].y + 1;
    r3.w = cb0[88].y * cb0[88].y + 1;
    r1.w = dot(r1.ww, -cb0[88].yy);
    r1.w = r3.w + -r1.w;
    r1.w = log2(r1.w);
    r1.w = 1.5 * r1.w;
    r1.w = exp2(r1.w);
    r1.w = 12.566371 * r1.w;
    r1.w = r2.w / r1.w;
    r0.y = r1.w * r0.y;
    r3.xyz = r3.xyz * r0.yyy;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r4.yzw = cb0[88].yyy * r2.yzx;
  r0.y = cmp(0 < cb0[93].x);
  r1.w = cmp(0 < cb0[97].w);
  r2.w = (int)r0.y | (int)r1.w;
  if (r2.w != 0) {
    r5.xyz = r1.xyz * cb1[211].xyz + cb1[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb1[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r2.w = 1 + cb1[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb1[213].www * r5.xyz;
    r5.xyz = r6.xyz * r2.www + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb1[214].xyz * r5.xyz;
  } else {
    r5.xyz = float3(0,0,0);
  }
  if (r0.y != 0) {
    r0.y = cmp(0 < cb0[97].y);
    if (r0.y != 0) {
      r0.y = cmp(0 < cb3[3].z);
      if (r0.y != 0) {
        r0.x = saturate(r0.x * cb3[7].x + cb3[7].y);
        r6.xy = float2(1,-1) * cb3[6].yx;
        r6.x = dot(r2.xy, r6.xy);
        r6.y = dot(r2.xy, cb3[6].xy);
        r6.z = r2.z;
        r7.xyz = t11.SampleLevel(s3_s, r6.xyz, 0).xyz;
        r6.xyz = t11.SampleLevel(s3_s, r6.xyz, cb3[7].z).xyz;
        r7.xyz = r7.xyz + -r6.xyz;
        r6.xyz = r0.xxx * r7.xyz + r6.xyz;
        r6.xyz = cb3[2].xyz * r6.xyz;
      } else {
        r6.xyz = cb3[2].xyz;
      }
      r6.xyz = float3(0.282094806,0.282094806,0.282094806) * r6.xyz;
      r6.xyz = max(float3(0,0,0), r6.xyz);
    } else {
      r4.x = 1;
      r7.x = dot(cb0[94].xyzw, r4.xyzw);
      r7.y = dot(cb0[95].xyzw, r4.xyzw);
      r7.z = dot(cb0[96].xyzw, r4.xyzw);
      r7.xyz = max(float3(0,0,0), r7.xyz);
      r7.xyz = cb1[187].xyz * r7.xyz;
      r6.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
    }
    r0.x = cmp(0 < cb0[88].w);
    if (r0.x != 0) {
      r7.xyz = t5.SampleLevel(s0_s, r5.xyz, 0).xyz;
      r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r0.x = dot(r7.xyz, r7.xyz);
      r0.x = sqrt(r0.x);
    } else {
      r0.x = 1;
    }
    r0.x = cb0[93].x * r0.x;
    r3.xyz = r0.xxx * r6.xyz + r3.xyz;
  }
  if (r1.w != 0) {
    r6.xyz = t1.SampleLevel(s0_s, r5.xyz, 0).xyz;
    r7.xyz = t2.SampleLevel(s0_s, r5.xyz, 0).xyz;
    r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.xyz = t3.SampleLevel(s0_s, r5.xyz, 0).xyz;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.xyz = t4.SampleLevel(s0_s, r5.xyz, 0).xyz;
    r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r7.xyz = r7.xyz * r6.xxx;
    r7.yzw = float3(1.73205125,1.73205125,1.73205125) * r7.xyz;
    r8.xyz = r8.xyz * r6.yyy;
    r8.yzw = float3(1.73205125,1.73205125,1.73205125) * r8.xyz;
    r5.xyz = r5.xyz * r6.zzz;
    r5.yzw = float3(1.73205125,1.73205125,1.73205125) * r5.xyz;
    r0.x = 0.318309873 * cb0[97].w;
    r7.x = r6.x;
    r4.x = 1;
    r7.x = dot(r7.xyzw, r4.xyzw);
    r8.x = r6.y;
    r7.y = dot(r8.xyzw, r4.xyzw);
    r5.x = r6.z;
    r7.z = dot(r5.xyzw, r4.xyzw);
    r4.xyz = max(float3(0,0,0), r7.xyz);
    r3.xyz = r0.xxx * r4.xyz + r3.xyz;
  }
  r0.xy = (int2)vThreadID.xy * asint(cb4[3].zw);
  r0.z = r0.z * cb2[3].x + cb2[3].y;
  r0.z = log2(r0.z);
  r0.z = cb2[3].z * r0.z;
  r0.z = max(0, r0.z);
  r0.z = (uint)r0.z;
  r1.w = asint(cb2[1].z) + -1;
  r0.z = min((uint)r1.w, (uint)r0.z);
  r0.xy = (uint2)r0.xy >> asuint(cb2[2].xx);
  r0.y = mad((int)r0.z, asint(cb2[1].y), (int)r0.y);
  r0.x = mad((int)r0.y, asint(cb2[1].x), (int)r0.x);
  r0.y = (uint)r0.x << 1;
  r0.y = t9.Load(r0.y).x;
  r0.y = min(asuint(cb2[0].x), (uint)r0.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = t9.Load(r0.x).x;
  r4.xyz = (int3)vThreadID.xyz + int3(1,1,1);
  r4.xyz = (uint3)r4.xyz;
  r4.xyz = cb0[72].xyz + r4.xyz;
  r4.xy = r4.xy / cb4[1].xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r4.xy = float2(1,-1) * r4.xy;
  r0.z = r4.z / cb4[2].z;
  r0.z = exp2(r0.z);
  r0.z = -cb4[2].y + r0.z;
  r0.z = r0.z / cb4[2].x;
  r1.w = cb1[65].w + r0.z;
  r1.w = cb1[65].z * r1.w;
  r1.w = 1 / r1.w;
  r0.z = r0.z * cb1[30].z + cb1[31].z;
  r0.z = r0.w ? r1.w : r0.z;
  r5.xyzw = cb0[56].xyzw * r4.yyyy;
  r4.xyzw = r4.xxxx * cb0[55].xyzw + r5.xyzw;
  r4.xyzw = r0.zzzz * cb0[57].xyzw + r4.xyzw;
  r4.xyzw = cb0[58].xyzw + r4.xyzw;
  r4.xyz = r4.xyz / r4.www;
  r4.xyz = -cb1[70].xyz + r4.xyz;
  r4.xyz = -r4.xyz + r1.xyz;
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = sqrt(r0.z);
  r0.z = cb0[88].z * r0.z;
  r0.z = max(1, r0.z);
  r0.w = r0.z * r0.z;
  r1.w = -cb0[88].y * cb0[88].y + 1;
  r2.w = cb0[88].y * cb0[88].y + 1;
  r3.w = -2 * cb0[88].y;
  r4.xyz = r3.xyz;
  r4.w = 0;
  while (true) {
    r5.x = cmp((uint)r4.w >= (uint)r0.y);
    if (r5.x != 0) break;
    r5.x = (int)r0.x + (int)r4.w;
    r5.x = t10.Load(r5.x).x;
    r5.y = (int)r5.x * 6;
    r5.z = mad((int)r5.x, 6, 3);
    r6.xyzw = t8.Load(r5.z).xyzw;
    r5.z = (uint)r6.w >> 16;
    r5.z = f16tof32(r5.z);
    r5.w = cmp(0 < r5.z);
    if (r5.w != 0) {
      r7.xyzw = t8.Load(r5.y).xyzw;
      r5.y = mad((int)r5.x, 6, 1);
      r8.xyzw = t8.Load(r5.y).xyzw;
      r5.xyw = mad((int3)r5.xxx, int3(6,6,6), int3(2,4,5));
      r9.xyz = t8.Load(r5.x).xyz;
      r10.xyz = t8.Load(r5.y).xyz;
      r5.xy = t8.Load(r5.w).xy;
      r11.y = f16tof32(r6.w);
      r5.w = cmp(r8.w == 0.000000);
      r6.w = cmp(-2 < r6.x);
      r9.w = cmp(-2 < r5.y);
      r7.xyz = r7.xyz + -r1.xyz;
      r10.w = dot(r7.xyz, r7.xyz);
      r11.z = rsqrt(r10.w);
      r12.xyz = r11.zzz * r7.xyz;
      r11.z = r7.w * r7.w;
      r10.w = r11.z * r10.w;
      r10.w = -r10.w * r10.w + 1;
      r10.w = max(0, r10.w);
      r10.w = r10.w * r10.w;
      r13.xyz = r7.xyz * r7.www;
      r7.w = dot(r13.xyz, r13.xyz);
      r7.w = min(1, r7.w);
      r7.w = 1 + -r7.w;
      r7.w = log2(r7.w);
      r7.w = r8.w * r7.w;
      r7.w = exp2(r7.w);
      r7.w = r5.w ? r10.w : r7.w;
      r8.w = dot(r12.xyz, r9.xyz);
      r6.x = r8.w + -r6.x;
      r6.x = saturate(r6.x * r6.y);
      r6.x = r6.x * r6.x;
      r6.x = r7.w * r6.x;
      r6.x = r6.w ? r6.x : r7.w;
      r6.y = cmp(r8.w < 0);
      r6.y = r6.y ? 0 : r6.x;
      r6.x = r9.w ? r6.y : r6.x;
      if (r9.w != 0) {
        r13.xyz = r10.zxy * r9.yzx;
        r13.xyz = r10.yzx * r9.zxy + -r13.xyz;
        r6.y = cmp(0.0350000001 < r5.x);
        r14.x = dot(r13.xyz, r7.xyz);
        r14.y = dot(r10.xyz, r7.xyz);
        r15.z = dot(r9.xyz, r7.xyz);
        r6.w = r5.x * r5.y;
        r5.x = -r5.x * r5.x + 1;
        r5.x = sqrt(r5.x);
        r16.z = min(r15.z, r6.w);
        r6.w = r16.z / r6.w;
        r5.x = r5.x * r5.y;
        r5.y = r5.x * r6.w;
        r11.zw = cmp(float2(0,0) < r14.xy);
        r14.zw = cmp(r14.xy < float2(0,0));
        r11.zw = (int2)-r11.zw + (int2)r14.zw;
        r11.zw = (int2)r11.zw;
        r11.x = r6.z;
        r6.zw = r5.xx * r6.ww + r11.xy;
        r14.xy = max(abs(r14.xy), r6.zw);
        r15.xy = r14.xy * r11.zw;
        r16.xy = r11.zw * r6.zw;
        r14.xyz = -r16.xyz + r15.xyz;
        r5.x = max(0.00100000005, r14.z);
        r6.zw = abs(r14.xy) / r5.xx;
        r5.xy = r16.zz * r6.zw + -r5.yy;
        r6.zw = max(float2(0,0), -r11.zw);
        r6.zw = r5.xy * r6.zw + -r11.xy;
        r6.zw = max(r6.zw, -r11.xy);
        r6.zw = min(r6.zw, r11.xy);
        r11.zw = max(float2(0,0), r11.zw);
        r5.xy = -r5.xy * r11.zw + r11.xy;
        r5.xy = max(r5.xy, -r11.xy);
        r5.xy = min(r5.xy, r11.xy);
        r11.zw = r5.xy + -r6.zw;
        r11.zw = float2(0.5,0.5) * r11.zw;
        r11.xz = r6.yy ? r11.zw : r11.xy;
        r14.xy = cmp(r11.xz == float2(0,0));
        r7.w = (int)r14.y | (int)r14.x;
        if (r7.w == 0) {
          r5.xy = r6.zw + r5.xy;
          r5.xy = float2(0.5,0.5) * r5.xy;
          r14.xyz = -r13.xyz * r5.xxx + r7.xyz;
          r14.xyz = -r10.xyz * r5.yyy + r14.xyz;
          r6.yzw = r6.yyy ? r14.xyz : r7.xyz;
          r5.x = dot(r13.xyz, r6.yzw);
          r5.y = dot(r10.xyz, r6.yzw);
          r14.w = dot(r9.xyz, r6.yzw);
          r14.x = r5.x + r11.x;
          r14.yz = r5.xy + -r11.xz;
          r15.x = r5.y + r11.z;
          r5.x = dot(r14.yz, r14.yz);
          r5.x = r14.w * r14.w + r5.x;
          r5.x = rsqrt(r5.x);
          r6.yzw = r14.zwy * r5.xxx;
          r5.x = dot(r14.xz, r14.xz);
          r5.x = r14.w * r14.w + r5.x;
          r5.x = rsqrt(r5.x);
          r11.xzw = r14.wxz * r5.xxx;
          r15.yzw = r14.xwy;
          r5.x = dot(r15.xy, r15.xy);
          r5.x = r14.w * r14.w + r5.x;
          r5.x = rsqrt(r5.x);
          r14.xyz = r15.xzy * r5.xxx;
          r5.x = dot(r15.xw, r15.xw);
          r5.x = r14.w * r14.w + r5.x;
          r5.x = rsqrt(r5.x);
          r15.xyz = r15.zwx * r5.xxx;
          r5.x = dot(r6.zwy, r11.xzw);
          r5.y = dot(r11.wxz, r14.xyz);
          r7.w = dot(r14.yzx, r15.xyz);
          r8.w = dot(r15.zxy, r6.yzw);
          r9.w = -r5.x * 0.174999997 + 1.57079995;
          r5.x = 1 + r5.x;
          r5.x = rsqrt(r5.x);
          r5.x = r9.w * r5.x;
          r9.w = -r5.y * 0.174999997 + 1.57079995;
          r5.y = 1 + r5.y;
          r5.y = rsqrt(r5.y);
          r5.y = r9.w * r5.y;
          r9.w = -r7.w * 0.174999997 + 1.57079995;
          r7.w = 1 + r7.w;
          r7.w = rsqrt(r7.w);
          r7.w = r9.w * r7.w;
          r9.w = -r8.w * 0.174999997 + 1.57079995;
          r8.w = 1 + r8.w;
          r8.w = rsqrt(r8.w);
          r8.w = r9.w * r8.w;
          r16.xyz = r5.yyy * r14.xyz;
          r16.xyz = -r5.xxx * r6.yzw + r16.xyz;
          r17.xyz = r16.xyz * r11.xzw;
          r11.xzw = r11.wxz * r16.yzx + -r17.xyz;
          r14.xyz = -r7.www * r14.xyz;
          r6.yzw = r8.www * r6.yzw + r14.xyz;
          r14.xyz = r15.xyz * r6.yzw;
          r6.yzw = r15.zxy * r6.zwy + -r14.xyz;
          r6.yzw = r11.xzw + r6.yzw;
          r11.xzw = r6.zzz * r10.xyz;
          r11.xzw = r6.yyy * r13.xyz + r11.xzw;
          r6.yzw = r6.www * r9.xyz + r11.xzw;
          r5.x = dot(r6.yzw, r6.yzw);
          r5.y = rsqrt(r5.x);
          r5.x = r5.x * r5.y;
          r5.x = 0.5 * r5.x;
        } else {
          r5.x = 0;
        }
      } else {
        r5.y = 0.5 * r11.y;
        r6.yzw = -r5.yyy * r10.xyz + r7.xyz;
        r7.w = cmp(0 < r11.y);
        if (r7.w != 0) {
          r7.xyz = r5.yyy * r10.xyz + r7.xyz;
          r5.y = dot(r6.yzw, r6.yzw);
          r7.w = dot(r7.xyz, r7.xyz);
          r5.y = rsqrt(r5.y);
          r7.w = rsqrt(r7.w);
          r5.y = r7.w * r5.y;
          r7.x = dot(r6.yzw, r7.xyz);
          r7.x = r7.x * r5.y;
          r7.x = r7.x * 0.5 + 0.5;
          r7.x = r0.w * r5.y + r7.x;
          r5.y = r5.y / r7.x;
        } else {
          r6.y = dot(r6.yzw, r6.yzw);
          r6.y = r0.z * r0.z + r6.y;
          r5.y = rcp(r6.y);
        }
        r5.x = r5.w ? r5.y : 1;
      }
      r5.x = r5.x * r6.x;
      r5.y = dot(r12.xyz, -r2.xyz);
      r5.y = -r3.w * r5.y + r2.w;
      r5.y = log2(r5.y);
      r5.y = 1.5 * r5.y;
      r5.y = exp2(r5.y);
      r5.y = 12.566371 * r5.y;
      r5.y = r1.w / r5.y;
      r5.x = r5.y * r5.x;
      r5.x = r5.x * r5.z;
      r4.xyz = r8.xyz * r5.xxx + r4.xyz;
    }
    r4.w = (int)r4.w + 1;
  }
  r0.xyz = cmp((uint3)vThreadID.xyz < asuint(cb4[0].xyz));
  r0.x = r0.y ? r0.x : 0;
  r0.x = r0.z ? r0.x : 0;
  if (r0.x != 0) {
    r0.xyz = vThreadID.xyz;
    r0.w = 0;
    r1.xyz = t14.Load(r0.xyzw).xyz;
    r1.xyz = r4.xyz + r1.xyz;
    r2.xyzw = t12.Load(r0.xyzw).xyzw;
    r1.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
    r3.w = r2.w + r1.w;
    r0.xyz = t13.Load(r0.xyzw).xyz;
    r3.xyz = r1.xyz * r2.xyz + r0.xyz;
    r0.xyzw = cmp((uint4)r3.xyzw >= int4(0x7f800000,0x7f800000,0x7f800000,0x7f800000));
    r0.xyzw = r0.xyzw ? float4(0,0,0,0) : r3.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
  }
  return;
}