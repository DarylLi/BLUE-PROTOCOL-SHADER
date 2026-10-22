// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture3D<float4> t15 : register(t15);

Texture3D<float4> t14 : register(t14);

Texture3D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

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
  float4 cb0[104];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyz = (uint3)vThreadID.xyz;
  r1.xyz = float3(0.5,0.5,0.5) + r0.xyz;
  r1.xy = r1.xy / cb4[1].xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r1.xy = float2(1,-1) * r1.xy;
  r0.w = r1.z / cb4[2].z;
  r0.w = exp2(r0.w);
  r0.w = -cb4[2].y + r0.w;
  r0.w = r0.w / cb4[2].x;
  r1.z = cmp(cb1[31].w < 1);
  r1.w = cb1[65].w + r0.w;
  r1.w = cb1[65].z * r1.w;
  r1.w = 1 / r1.w;
  r0.w = r0.w * cb1[30].z + cb1[31].z;
  r0.w = r1.z ? r1.w : r0.w;
  r2.xyzw = cb0[62].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[61].xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * cb0[63].xyzw + r2.xyzw;
  r2.xyzw = cb0[64].xyzw + r2.xyzw;
  r1.xyw = r2.xyz / r2.www;
  r1.xyw = -cb1[70].xyz + r1.xyw;
  r2.xyz = cb0[66].xyw * r1.yyy;
  r2.xyz = r1.xxx * cb0[65].xyw + r2.xyz;
  r1.xyw = r1.www * cb0[67].xyw + r2.xyz;
  r1.xyw = cb0[68].xyw + r1.xyw;
  r1.xy = r1.xy / r1.ww;
  r2.xy = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r0.w = r1.w * cb1[209].x + cb1[209].y;
  r0.w = log2(r0.w);
  r0.w = cb1[209].z * r0.w;
  r2.z = cb1[208].z * r0.w;
  r1.xyw = cmp(r2.xyz < float3(0,0,0));
  r0.w = (int)r1.y | (int)r1.x;
  r0.w = (int)r1.w | (int)r0.w;
  r1.xyw = cmp(float3(1,1,1) < r2.xyz);
  r1.x = (int)r1.y | (int)r1.x;
  r1.x = (int)r1.w | (int)r1.x;
  r0.w = (int)r0.w | (int)r1.x;
  r0.w = r0.w ? 0 : cb0[77].x;
  r0.xyz = cb0[78].xyz + r0.xyz;
  r0.xy = r0.xy / cb4[1].xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = float2(1,-1) * r0.xy;
  r0.z = r0.z / cb4[2].z;
  r0.z = exp2(r0.z);
  r0.z = -cb4[2].y + r0.z;
  r0.z = r0.z / cb4[2].x;
  r1.x = cb1[65].w + r0.z;
  r1.x = cb1[65].z * r1.x;
  r1.x = 1 / r1.x;
  r1.y = r0.z * cb1[30].z + cb1[31].z;
  r1.x = r1.z ? r1.x : r1.y;
  r3.xyzw = cb0[62].xyzw * r0.yyyy;
  r3.xyzw = r0.xxxx * cb0[61].xyzw + r3.xyzw;
  r3.xyzw = r1.xxxx * cb0[63].xyzw + r3.xyzw;
  r3.xyzw = cb0[64].xyzw + r3.xyzw;
  r1.xyw = r3.xyz / r3.www;
  r1.xyw = -cb1[70].xyz + r1.xyw;
  r3.xyz = -cb1[67].xyz + r1.xyw;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r3.xyz = r3.xyz / r0.xxx;
  if (cb2[0].z != 0) {
    r4.xy = cmp(float2(0,0) < cb0[103].zx);
    if (r4.x != 0) {
      if (cb2[48].y != 0) {
        r5.xyzw = cb2[51].xyzw * r1.yyyy;
        r5.xyzw = r1.xxxx * cb2[50].xyzw + r5.xyzw;
        r5.xyzw = r1.wwww * cb2[52].xyzw + r5.xyzw;
        r5.xyzw = cb2[53].xyzw + r5.xyzw;
        r4.xz = r5.xy / r5.ww;
        r5.xy = cmp(r4.xz >= float2(0,0));
        r6.xy = cmp(float2(1,1) >= r4.xz);
        r5.xy = r5.xy ? r6.xy : 0;
        r0.y = r5.y ? r5.x : 0;
        if (r0.y != 0) {
          r0.y = t7.SampleLevel(s2_s, r4.xz, 0).x;
          r2.w = cmp(r5.z < r0.y);
          r0.y = cmp(0.99000001 < r0.y);
          r0.y = (int)r0.y | (int)r2.w;
          r0.y = r0.y ? 1.000000 : 0;
        } else {
          r0.y = 1;
        }
      } else {
        r0.y = 1;
      }
      if (cb2[9].z != 0) {
        r2.w = cb2[9].z;
        r3.w = 0;
        while (true) {
          r4.x = cmp((uint)r3.w >= asuint(cb2[9].z));
          if (r4.x != 0) break;
          r4.x = dot(cb2[10].xyzw, icb[r3.w+0].xyzw);
          r4.x = cmp(r0.z < r4.x);
          if (r4.x != 0) {
            r2.w = r3.w;
            break;
          }
          r3.w = (int)r3.w + 1;
        }
        r3.w = cmp((uint)r2.w < asuint(cb2[9].z));
        if (r3.w != 0) {
          r3.w = (uint)r2.w << 2;
          r5.xyzw = cb2[r3.w+12].xyzw * r1.yyyy;
          r5.xyzw = r1.xxxx * cb2[r3.w+11].xyzw + r5.xyzw;
          r5.xyzw = r1.wwww * cb2[r3.w+13].xyzw + r5.xyzw;
          r5.xyzw = cb2[r3.w+14].xyzw + r5.xyzw;
          r4.xz = r5.xy / r5.ww;
          r5.xy = cmp(r4.xz >= cb2[r2.w+27].xy);
          r6.xy = cmp(cb2[r2.w+27].zw >= r4.xz);
          r5.xy = r5.xy ? r6.xy : 0;
          r2.w = r5.y ? r5.x : 0;
          if (r2.w != 0) {
            r2.w = t6.SampleLevel(s1_s, r4.xz, 0).x;
            r2.w = -cb2[48].x + r2.w;
            r2.w = cmp(r5.z < r2.w);
            r2.w = r2.w ? 1.000000 : 0;
          } else {
            r2.w = 1;
          }
        } else {
          r2.w = 1;
        }
      } else {
        r2.w = 1;
      }
      r0.y = r2.w * r0.y;
      r5.xyzw = cb0[57].xyzw * r1.yyyy;
      r5.xyzw = r1.xxxx * cb0[56].xyzw + r5.xyzw;
      r5.xyzw = r1.wwww * cb0[58].xyzw + r5.xyzw;
      r5.xyzw = cb0[59].xyzw + r5.xyzw;
      r4.xzw = r5.xyz / r5.www;
      r4.xz = r4.xz * float2(0.5,-0.5) + float2(0.5,0.5);
      r5.xyz = t12.SampleLevel(s4_s, r4.xz, 0).xyz;
      r2.w = saturate(1 + -r4.w);
      r2.w = r2.w * cb0[55].x + -r5.x;
      r2.w = max(0, r2.w);
      r2.w = r2.w * r5.y;
      r2.w = 1000 * r2.w;
      r2.w = min(r5.z, r2.w);
      r2.w = -1.44269502 * r2.w;
      r2.w = exp2(r2.w);
      r2.w = min(1, r2.w);
      r2.w = -1 + r2.w;
      r2.w = cb0[60].x * r2.w + 1;
      r0.y = r2.w * r0.y;
    } else {
      r0.y = 1;
    }
    r4.xz = cb0[96].xy * r1.yy;
    r4.xz = r1.xx * cb0[95].xy + r4.xz;
    r4.xz = r1.ww * cb0[97].xy + r4.xz;
    r4.xz = cb0[98].xy + r4.xz;
    r5.xy = r4.xz * float2(0.5,0.5) + float2(0.5,0.5);
    r5.z = 1 + -r5.y;
    r2.w = t17.SampleLevel(s6_s, r5.xz, 0).x;
    r0.y = r2.w * r0.y;
    r2.w = dot(cb2[5].xyz, float3(0.300000012,0.589999974,0.109999999));
    r4.xzw = cb4[6].xyz * r2.www;
    r4.xyz = r4.yyy ? r4.xzw : cb2[5].xyz;
    r0.y = cb2[8].y * r0.y;
    r2.w = dot(cb2[4].xyz, -r3.xyz);
    r3.w = -cb0[94].y * cb0[94].y + 1;
    r4.w = cb0[94].y * cb0[94].y + 1;
    r2.w = dot(r2.ww, -cb0[94].yy);
    r2.w = r4.w + -r2.w;
    r2.w = log2(r2.w);
    r2.w = 1.5 * r2.w;
    r2.w = exp2(r2.w);
    r2.w = 12.566371 * r2.w;
    r2.w = r3.w / r2.w;
    r0.y = r2.w * r0.y;
    r4.xyz = r4.xyz * r0.yyy;
  } else {
    r4.xyz = float3(0,0,0);
  }
  r5.yzw = cb0[94].yyy * r3.yzx;
  r0.y = cmp(0 < cb0[99].x);
  r2.w = cmp(0 < cb0[103].w);
  r3.w = (int)r0.y | (int)r2.w;
  if (r3.w != 0) {
    r6.xyz = r1.xyw * cb1[211].xyz + cb1[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb1[213].xyz * r6.xyz;
    r7.xyz = (int3)r6.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r3.w = 1 + cb1[213].w;
    r6.xyz = r6.xyz / r7.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb1[213].www * r6.xyz;
    r6.xyz = r7.xyz * r3.www + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb1[214].xyz * r6.xyz;
  } else {
    r6.xyz = float3(0,0,0);
  }
  if (r0.y != 0) {
    r0.y = cmp(0 < cb0[103].y);
    if (r0.y != 0) {
      r0.y = cmp(0 < cb3[3].z);
      if (r0.y != 0) {
        r0.x = saturate(r0.x * cb3[7].x + cb3[7].y);
        r7.xy = float2(1,-1) * cb3[6].yx;
        r7.x = dot(r3.xy, r7.xy);
        r7.y = dot(r3.xy, cb3[6].xy);
        r7.z = r3.z;
        r8.xyz = t11.SampleLevel(s3_s, r7.xyz, 0).xyz;
        r7.xyz = t11.SampleLevel(s3_s, r7.xyz, cb3[7].z).xyz;
        r8.xyz = r8.xyz + -r7.xyz;
        r7.xyz = r0.xxx * r8.xyz + r7.xyz;
        r7.xyz = cb3[2].xyz * r7.xyz;
      } else {
        r7.xyz = cb3[2].xyz;
      }
      r7.xyz = float3(0.282094806,0.282094806,0.282094806) * r7.xyz;
      r7.xyz = max(float3(0,0,0), r7.xyz);
    } else {
      r5.x = 1;
      r8.x = dot(cb0[100].xyzw, r5.xyzw);
      r8.y = dot(cb0[101].xyzw, r5.xyzw);
      r8.z = dot(cb0[102].xyzw, r5.xyzw);
      r8.xyz = max(float3(0,0,0), r8.xyz);
      r8.xyz = cb1[187].xyz * r8.xyz;
      r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r8.xyz;
    }
    r0.x = cmp(0 < cb0[94].w);
    if (r0.x != 0) {
      r8.xyz = t5.SampleLevel(s0_s, r6.xyz, 0).xyz;
      r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r0.x = dot(r8.xyz, r8.xyz);
      r0.x = sqrt(r0.x);
    } else {
      r0.x = 1;
    }
    r0.x = cb0[99].x * r0.x;
    r4.xyz = r0.xxx * r7.xyz + r4.xyz;
  }
  if (r2.w != 0) {
    r7.xyz = t1.SampleLevel(s0_s, r6.xyz, 0).xyz;
    r8.xyz = t2.SampleLevel(s0_s, r6.xyz, 0).xyz;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.xyz = t3.SampleLevel(s0_s, r6.xyz, 0).xyz;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r6.xyz = t4.SampleLevel(s0_s, r6.xyz, 0).xyz;
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.xyz = r8.xyz * r7.xxx;
    r8.yzw = float3(1.73205125,1.73205125,1.73205125) * r8.xyz;
    r9.xyz = r9.xyz * r7.yyy;
    r9.yzw = float3(1.73205125,1.73205125,1.73205125) * r9.xyz;
    r6.xyz = r6.xyz * r7.zzz;
    r6.yzw = float3(1.73205125,1.73205125,1.73205125) * r6.xyz;
    r0.x = 0.318309873 * cb0[103].w;
    r8.x = r7.x;
    r5.x = 1;
    r8.x = dot(r8.xyzw, r5.xyzw);
    r9.x = r7.y;
    r8.y = dot(r9.xyzw, r5.xyzw);
    r6.x = r7.z;
    r8.z = dot(r6.xyzw, r5.xyzw);
    r5.xyz = max(float3(0,0,0), r8.xyz);
    r4.xyz = r0.xxx * r5.xyz + r4.xyz;
  }
  r0.xy = (int2)vThreadID.xy * asint(cb4[3].zw);
  r0.z = r0.z * cb2[3].x + cb2[3].y;
  r0.z = log2(r0.z);
  r0.z = cb2[3].z * r0.z;
  r0.z = max(0, r0.z);
  r0.z = (uint)r0.z;
  r2.w = asint(cb2[1].z) + -1;
  r0.z = min((uint)r2.w, (uint)r0.z);
  r0.xy = (uint2)r0.xy >> asuint(cb2[2].xx);
  r0.y = mad((int)r0.z, asint(cb2[1].y), (int)r0.y);
  r0.x = mad((int)r0.y, asint(cb2[1].x), (int)r0.x);
  r0.y = (uint)r0.x << 1;
  r0.y = t9.Load(r0.y).x;
  r0.y = min(asuint(cb2[0].x), (uint)r0.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = t9.Load(r0.x).x;
  r5.xyz = (int3)vThreadID.xyz + int3(1,1,1);
  r5.xyz = (uint3)r5.xyz;
  r5.xyz = cb0[78].xyz + r5.xyz;
  r5.xy = r5.xy / cb4[1].xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r5.xy = float2(1,-1) * r5.xy;
  r0.z = r5.z / cb4[2].z;
  r0.z = exp2(r0.z);
  r0.z = -cb4[2].y + r0.z;
  r0.z = r0.z / cb4[2].x;
  r2.w = cb1[65].w + r0.z;
  r2.w = cb1[65].z * r2.w;
  r2.w = 1 / r2.w;
  r0.z = r0.z * cb1[30].z + cb1[31].z;
  r0.z = r1.z ? r2.w : r0.z;
  r6.xyzw = cb0[62].xyzw * r5.yyyy;
  r5.xyzw = r5.xxxx * cb0[61].xyzw + r6.xyzw;
  r5.xyzw = r0.zzzz * cb0[63].xyzw + r5.xyzw;
  r5.xyzw = cb0[64].xyzw + r5.xyzw;
  r5.xyz = r5.xyz / r5.www;
  r5.xyz = -cb1[70].xyz + r5.xyz;
  r5.xyz = -r5.xyz + r1.xyw;
  r0.z = dot(r5.xyz, r5.xyz);
  r0.z = sqrt(r0.z);
  r0.z = cb0[94].z * r0.z;
  r0.z = max(1, r0.z);
  r1.z = r0.z * r0.z;
  r2.w = -cb0[94].y * cb0[94].y + 1;
  r3.w = cb0[94].y * cb0[94].y + 1;
  r4.w = -2 * cb0[94].y;
  r5.xyz = r4.xyz;
  r5.w = 0;
  while (true) {
    r6.x = cmp((uint)r5.w >= (uint)r0.y);
    if (r6.x != 0) break;
    r6.x = (int)r0.x + (int)r5.w;
    r6.x = t10.Load(r6.x).x;
    r6.y = (int)r6.x * 6;
    r6.z = mad((int)r6.x, 6, 3);
    r7.xyzw = t8.Load(r6.z).xyzw;
    r6.z = (uint)r7.w >> 16;
    r6.z = f16tof32(r6.z);
    r6.w = cmp(0 < r6.z);
    if (r6.w != 0) {
      r8.xyzw = t8.Load(r6.y).xyzw;
      r6.y = mad((int)r6.x, 6, 1);
      r9.xyzw = t8.Load(r6.y).xyzw;
      r6.xyw = mad((int3)r6.xxx, int3(6,6,6), int3(2,4,5));
      r10.xyz = t8.Load(r6.x).xyz;
      r11.xyz = t8.Load(r6.y).xyz;
      r6.xy = t8.Load(r6.w).xy;
      r12.y = f16tof32(r7.w);
      r6.w = cmp(r9.w == 0.000000);
      r7.w = cmp(-2 < r7.x);
      r10.w = cmp(-2 < r6.y);
      r8.xyz = r8.xyz + -r1.xyw;
      r11.w = dot(r8.xyz, r8.xyz);
      r12.z = rsqrt(r11.w);
      r13.xyz = r12.zzz * r8.xyz;
      r12.z = r8.w * r8.w;
      r11.w = r12.z * r11.w;
      r11.w = -r11.w * r11.w + 1;
      r11.w = max(0, r11.w);
      r11.w = r11.w * r11.w;
      r14.xyz = r8.xyz * r8.www;
      r8.w = dot(r14.xyz, r14.xyz);
      r8.w = min(1, r8.w);
      r8.w = 1 + -r8.w;
      r8.w = log2(r8.w);
      r8.w = r9.w * r8.w;
      r8.w = exp2(r8.w);
      r8.w = r6.w ? r11.w : r8.w;
      r9.w = dot(r13.xyz, r10.xyz);
      r7.x = r9.w + -r7.x;
      r7.x = saturate(r7.x * r7.y);
      r7.x = r7.x * r7.x;
      r7.x = r8.w * r7.x;
      r7.x = r7.w ? r7.x : r8.w;
      r7.y = cmp(r9.w < 0);
      r7.y = r7.y ? 0 : r7.x;
      r7.x = r10.w ? r7.y : r7.x;
      if (r10.w != 0) {
        r14.xyz = r11.zxy * r10.yzx;
        r14.xyz = r11.yzx * r10.zxy + -r14.xyz;
        r7.y = cmp(0.0350000001 < r6.x);
        r15.x = dot(r14.xyz, r8.xyz);
        r15.y = dot(r11.xyz, r8.xyz);
        r16.z = dot(r10.xyz, r8.xyz);
        r7.w = r6.x * r6.y;
        r6.x = -r6.x * r6.x + 1;
        r6.x = sqrt(r6.x);
        r17.z = min(r16.z, r7.w);
        r7.w = r17.z / r7.w;
        r6.x = r6.x * r6.y;
        r6.y = r6.x * r7.w;
        r12.zw = cmp(float2(0,0) < r15.xy);
        r15.zw = cmp(r15.xy < float2(0,0));
        r12.zw = (int2)-r12.zw + (int2)r15.zw;
        r12.zw = (int2)r12.zw;
        r12.x = r7.z;
        r7.zw = r6.xx * r7.ww + r12.xy;
        r15.xy = max(abs(r15.xy), r7.zw);
        r16.xy = r15.xy * r12.zw;
        r17.xy = r12.zw * r7.zw;
        r15.xyz = -r17.xyz + r16.xyz;
        r6.x = max(0.00100000005, r15.z);
        r7.zw = abs(r15.xy) / r6.xx;
        r6.xy = r17.zz * r7.zw + -r6.yy;
        r7.zw = max(float2(0,0), -r12.zw);
        r7.zw = r6.xy * r7.zw + -r12.xy;
        r7.zw = max(r7.zw, -r12.xy);
        r7.zw = min(r7.zw, r12.xy);
        r12.zw = max(float2(0,0), r12.zw);
        r6.xy = -r6.xy * r12.zw + r12.xy;
        r6.xy = max(r6.xy, -r12.xy);
        r6.xy = min(r6.xy, r12.xy);
        r12.zw = r6.xy + -r7.zw;
        r12.zw = float2(0.5,0.5) * r12.zw;
        r12.xz = r7.yy ? r12.zw : r12.xy;
        r15.xy = cmp(r12.xz == float2(0,0));
        r8.w = (int)r15.y | (int)r15.x;
        if (r8.w == 0) {
          r6.xy = r7.zw + r6.xy;
          r6.xy = float2(0.5,0.5) * r6.xy;
          r15.xyz = -r14.xyz * r6.xxx + r8.xyz;
          r15.xyz = -r11.xyz * r6.yyy + r15.xyz;
          r7.yzw = r7.yyy ? r15.xyz : r8.xyz;
          r6.x = dot(r14.xyz, r7.yzw);
          r6.y = dot(r11.xyz, r7.yzw);
          r15.w = dot(r10.xyz, r7.yzw);
          r15.x = r6.x + r12.x;
          r15.yz = r6.xy + -r12.xz;
          r16.x = r6.y + r12.z;
          r6.x = dot(r15.yz, r15.yz);
          r6.x = r15.w * r15.w + r6.x;
          r6.x = rsqrt(r6.x);
          r7.yzw = r15.zwy * r6.xxx;
          r6.x = dot(r15.xz, r15.xz);
          r6.x = r15.w * r15.w + r6.x;
          r6.x = rsqrt(r6.x);
          r12.xzw = r15.wxz * r6.xxx;
          r16.yzw = r15.xwy;
          r6.x = dot(r16.xy, r16.xy);
          r6.x = r15.w * r15.w + r6.x;
          r6.x = rsqrt(r6.x);
          r15.xyz = r16.xzy * r6.xxx;
          r6.x = dot(r16.xw, r16.xw);
          r6.x = r15.w * r15.w + r6.x;
          r6.x = rsqrt(r6.x);
          r16.xyz = r16.zwx * r6.xxx;
          r6.x = dot(r7.zwy, r12.xzw);
          r6.y = dot(r12.wxz, r15.xyz);
          r8.w = dot(r15.yzx, r16.xyz);
          r9.w = dot(r16.zxy, r7.yzw);
          r10.w = -r6.x * 0.174999997 + 1.57079995;
          r6.x = 1 + r6.x;
          r6.x = rsqrt(r6.x);
          r6.x = r10.w * r6.x;
          r10.w = -r6.y * 0.174999997 + 1.57079995;
          r6.y = 1 + r6.y;
          r6.y = rsqrt(r6.y);
          r6.y = r10.w * r6.y;
          r10.w = -r8.w * 0.174999997 + 1.57079995;
          r8.w = 1 + r8.w;
          r8.w = rsqrt(r8.w);
          r8.w = r10.w * r8.w;
          r10.w = -r9.w * 0.174999997 + 1.57079995;
          r9.w = 1 + r9.w;
          r9.w = rsqrt(r9.w);
          r9.w = r10.w * r9.w;
          r17.xyz = r6.yyy * r15.xyz;
          r17.xyz = -r6.xxx * r7.yzw + r17.xyz;
          r18.xyz = r17.xyz * r12.xzw;
          r12.xzw = r12.wxz * r17.yzx + -r18.xyz;
          r15.xyz = -r8.www * r15.xyz;
          r7.yzw = r9.www * r7.yzw + r15.xyz;
          r15.xyz = r16.xyz * r7.yzw;
          r7.yzw = r16.zxy * r7.zwy + -r15.xyz;
          r7.yzw = r12.xzw + r7.yzw;
          r12.xzw = r7.zzz * r11.xyz;
          r12.xzw = r7.yyy * r14.xyz + r12.xzw;
          r7.yzw = r7.www * r10.xyz + r12.xzw;
          r6.x = dot(r7.yzw, r7.yzw);
          r6.y = rsqrt(r6.x);
          r6.x = r6.x * r6.y;
          r6.x = 0.5 * r6.x;
        } else {
          r6.x = 0;
        }
      } else {
        r6.y = 0.5 * r12.y;
        r7.yzw = -r6.yyy * r11.xyz + r8.xyz;
        r8.w = cmp(0 < r12.y);
        if (r8.w != 0) {
          r8.xyz = r6.yyy * r11.xyz + r8.xyz;
          r6.y = dot(r7.yzw, r7.yzw);
          r8.w = dot(r8.xyz, r8.xyz);
          r6.y = rsqrt(r6.y);
          r8.w = rsqrt(r8.w);
          r6.y = r8.w * r6.y;
          r8.x = dot(r7.yzw, r8.xyz);
          r8.x = r8.x * r6.y;
          r8.x = r8.x * 0.5 + 0.5;
          r8.x = r1.z * r6.y + r8.x;
          r6.y = r6.y / r8.x;
        } else {
          r7.y = dot(r7.yzw, r7.yzw);
          r7.y = r0.z * r0.z + r7.y;
          r6.y = rcp(r7.y);
        }
        r6.x = r6.w ? r6.y : 1;
      }
      r6.x = r6.x * r7.x;
      r6.y = dot(r13.xyz, -r3.xyz);
      r6.y = -r4.w * r6.y + r3.w;
      r6.y = log2(r6.y);
      r6.y = 1.5 * r6.y;
      r6.y = exp2(r6.y);
      r6.y = 12.566371 * r6.y;
      r6.y = r2.w / r6.y;
      r6.x = r6.y * r6.x;
      r6.x = r6.x * r6.z;
      r5.xyz = r9.xyz * r6.xxx + r5.xyz;
    }
    r5.w = (int)r5.w + 1;
  }
  r1.xyz = vThreadID.xyz;
  r1.w = 0;
  r0.xyz = t16.Load(r1.xyzw).xyz;
  r0.xyz = r5.xyz + r0.xyz;
  r3.xyzw = t13.Load(r1.xyzw).xyzw;
  r2.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r3.w + r2.w;
  r1.xyz = t14.Load(r1.xyzw).xyz;
  r4.xyz = r0.xyz * r3.xyz + r1.xyz;
  r0.x = cmp(0 < r0.w);
  if (r0.x != 0) {
    r1.xyzw = t15.SampleLevel(s5_s, r2.xyz, 0).xyzw;
    r1.xyzw = r1.xyzw + -r4.xyzw;
    r4.xyzw = r0.wwww * r1.xyzw + r4.xyzw;
  }
  r0.xyz = cmp((uint3)vThreadID.xyz < asuint(cb4[0].xyz));
  r0.x = r0.y ? r0.x : 0;
  r0.x = r0.z ? r0.x : 0;
  if (r0.x != 0) {
    r0.xyzw = cmp((uint4)r4.xyzw >= int4(0x7f800000,0x7f800000,0x7f800000,0x7f800000));
    r0.xyzw = r0.xyzw ? float4(0,0,0,0) : r4.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
  }
  return;
}