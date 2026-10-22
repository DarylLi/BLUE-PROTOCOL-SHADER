// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t16 : register(t16);

Texture3D<float4> t15 : register(t15);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28;
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
  r2.xyzw = cb0[56].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[55].xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * cb0[57].xyzw + r2.xyzw;
  r2.xyzw = cb0[58].xyzw + r2.xyzw;
  r1.xyw = r2.xyz / r2.www;
  r1.xyw = -cb1[70].xyz + r1.xyw;
  r2.xyz = cb0[60].xyw * r1.yyy;
  r2.xyz = r1.xxx * cb0[59].xyw + r2.xyz;
  r1.xyw = r1.www * cb0[61].xyw + r2.xyz;
  r1.xyw = cb0[62].xyw + r1.xyw;
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
  r0.w = r0.w ? 0 : cb0[71].x;
  r1.x = cmp(r0.w < 0.00100000005);
  r3.xyz = cmp((uint3)vThreadID.xyz < asuint(cb4[0].xyz));
  r1.y = r3.y ? r3.x : 0;
  r1.y = r3.z ? r1.y : 0;
  r1.x = r1.y ? r1.x : 0;
  r1.xw = r1.xx ? float2(5,5) : float2(1,1);
  r2.w = cmp(0 < cb0[93].x);
  r3.xyzw = cmp(float4(0,0,0,0) < cb0[97].zxwy);
  r4.x = dot(cb2[5].xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = cb4[6].xyz * r4.xxx;
  r4.xyz = r3.yyy ? r4.xyz : cb2[5].xyz;
  r3.y = -cb0[88].y * cb0[88].y + 1;
  r4.w = cb0[88].y * cb0[88].y + 1;
  r5.x = -2 * cb0[88].y;
  r5.y = (int)r2.w | (int)r3.z;
  r5.zw = (int2)vThreadID.xy * asint(cb4[3].zw);
  r6.x = 1 + cb1[213].w;
  r6.y = cmp(0 < cb0[88].w);
  r6.z = cmp(0 < cb3[3].z);
  r6.w = 0.318309873 * cb0[97].w;
  r7.x = asint(cb2[1].z) + -1;
  r5.zw = (uint2)r5.zw >> asuint(cb2[2].xx);
  r7.yzw = (int3)vThreadID.xyz + int3(1,1,1);
  r7.yzw = (uint3)r7.yzw;
  r8.w = 0;
  r9.x = 1;
  r10.x = 1;
  r11.xy = float2(1,-1) * cb3[6].yx;
  r12.xyz = float3(0,0,0);
  r11.z = cb2[0].z;
  r11.w = cb2[9].z;
  r13.x = cb2[48].y;
  r13.y = 0;
  while (true) {
    r13.z = cmp((uint)r13.y >= (uint)r1.x);
    if (r13.z != 0) break;
    r14.xyz = cb0[r13.y+72].xyz + r0.xyz;
    r13.zw = r14.xy / cb4[1].xy;
    r13.zw = r13.zw * float2(2,2) + float2(-1,-1);
    r13.zw = float2(1,-1) * r13.zw;
    r14.x = r14.z / cb4[2].z;
    r14.x = exp2(r14.x);
    r14.x = -cb4[2].y + r14.x;
    r14.x = r14.x / cb4[2].x;
    r14.y = cb1[65].w + r14.x;
    r14.y = cb1[65].z * r14.y;
    r14.y = 1 / r14.y;
    r14.z = r14.x * cb1[30].z + cb1[31].z;
    r14.y = r1.z ? r14.y : r14.z;
    r15.xyzw = cb0[56].xyzw * r13.wwww;
    r15.xyzw = r13.zzzz * cb0[55].xyzw + r15.xyzw;
    r15.xyzw = r14.yyyy * cb0[57].xyzw + r15.xyzw;
    r15.xyzw = cb0[58].xyzw + r15.xyzw;
    r14.yzw = r15.xyz / r15.www;
    r14.yzw = -cb1[70].xyz + r14.yzw;
    r15.xyz = -cb1[67].xyz + r14.yzw;
    r13.z = dot(r15.xyz, r15.xyz);
    r13.z = sqrt(r13.z);
    r15.xyz = r15.xyz / r13.zzz;
    if (r11.z != 0) {
      if (r3.x != 0) {
        if (r13.x != 0) {
          r16.xyzw = cb2[51].xyzw * r14.zzzz;
          r16.xyzw = r14.yyyy * cb2[50].xyzw + r16.xyzw;
          r16.xyzw = r14.wwww * cb2[52].xyzw + r16.xyzw;
          r16.xyzw = cb2[53].xyzw + r16.xyzw;
          r16.xy = r16.xy / r16.ww;
          r17.xy = cmp(r16.xy >= float2(0,0));
          r17.zw = cmp(float2(1,1) >= r16.xy);
          r17.xy = r17.zw ? r17.xy : 0;
          r13.w = r17.y ? r17.x : 0;
          if (r13.w != 0) {
            r13.w = t7.SampleLevel(s2_s, r16.xy, 0).x;
            r15.w = cmp(r16.z < r13.w);
            r13.w = cmp(0.99000001 < r13.w);
            r13.w = (int)r13.w | (int)r15.w;
            r13.w = r13.w ? 1.000000 : 0;
          } else {
            r13.w = 1;
          }
        } else {
          r13.w = 1;
        }
        if (r11.w != 0) {
          r15.w = r11.w;
          r16.x = 0;
          while (true) {
            r16.y = cmp((uint)r16.x >= (uint)r11.w);
            if (r16.y != 0) break;
            r16.y = dot(cb2[10].xyzw, icb[r16.x+0].xyzw);
            r16.y = cmp(r14.x < r16.y);
            if (r16.y != 0) {
              r15.w = r16.x;
              break;
            }
            r16.x = (int)r16.x + 1;
          }
          r16.x = cmp((uint)r15.w < (uint)r11.w);
          if (r16.x != 0) {
            r16.x = (uint)r15.w << 2;
            r17.xyzw = cb2[r16.x+12].xyzw * r14.zzzz;
            r17.xyzw = r14.yyyy * cb2[r16.x+11].xyzw + r17.xyzw;
            r17.xyzw = r14.wwww * cb2[r16.x+13].xyzw + r17.xyzw;
            r16.xyzw = cb2[r16.x+14].xyzw + r17.xyzw;
            r16.xy = r16.xy / r16.ww;
            r17.xy = cmp(r16.xy >= cb2[r15.w+27].xy);
            r17.zw = cmp(cb2[r15.w+27].zw >= r16.xy);
            r17.xy = r17.zw ? r17.xy : 0;
            r16.w = r17.y ? r17.x : 0;
            if (r16.w != 0) {
              r16.x = t6.SampleLevel(s1_s, r16.xy, 0).x;
              r16.x = -cb2[48].x + r16.x;
              r16.x = cmp(r16.z < r16.x);
              r16.x = r16.x ? 1.000000 : 0;
            } else {
              r16.x = 1;
            }
          } else {
            r16.x = 1;
          }
        } else {
          r16.x = 1;
        }
        r13.w = r16.x * r13.w;
      } else {
        r13.w = 1;
      }
      r16.xy = cb0[90].xy * r14.zz;
      r16.xy = r14.yy * cb0[89].xy + r16.xy;
      r16.xy = r14.ww * cb0[91].xy + r16.xy;
      r16.xy = cb0[92].xy + r16.xy;
      r16.xy = r16.xy * float2(0.5,0.5) + float2(0.5,0.5);
      r16.z = 1 + -r16.y;
      r16.x = t16.SampleLevel(s5_s, r16.xz, 0).x;
      r13.w = r16.x * r13.w;
      r13.w = cb2[8].y * r13.w;
      r16.x = dot(cb2[4].xyz, -r15.xyz);
      r16.x = -r5.x * r16.x + r4.w;
      r16.x = log2(r16.x);
      r16.x = 1.5 * r16.x;
      r16.x = exp2(r16.x);
      r16.x = 12.566371 * r16.x;
      r16.x = r3.y / r16.x;
      r13.w = r16.x * r13.w;
      r16.xyz = r4.xyz * r13.www + r12.xyz;
    } else {
      r16.xyz = r12.xyz;
    }
    r10.yzw = cb0[88].yyy * r15.yzx;
    if (r5.y != 0) {
      r17.xyz = r14.yzw * cb1[211].xyz + cb1[212].xyz;
      r17.xyz = max(float3(0,0,0), r17.xyz);
      r17.xyz = min(float3(0.99000001,0.99000001,0.99000001), r17.xyz);
      r17.xyz = cb1[213].xyz * r17.xyz;
      r8.xyz = (int3)r17.xyz;
      r18.xyzw = t0.Load(r8.xyzw).xyzw;
      r18.xyzw = (uint4)r18.xyzw;
      r8.xyz = r17.xyz / r18.www;
      r8.xyz = frac(r8.xyz);
      r8.xyz = cb1[213].www * r8.xyz;
      r8.xyz = r18.xyz * r6.xxx + r8.xyz;
      r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
      r8.xyz = cb1[214].xyz * r8.xyz;
    } else {
      r8.xyz = float3(0,0,0);
    }
    if (r2.w != 0) {
      if (r3.w != 0) {
        if (r6.z != 0) {
          r13.z = saturate(r13.z * cb3[7].x + cb3[7].y);
          r17.x = dot(r15.xy, r11.xy);
          r17.y = dot(r15.xy, cb3[6].xy);
          r17.z = r15.z;
          r18.xyz = t11.SampleLevel(s3_s, r17.xyz, 0).xyz;
          r17.xyz = t11.SampleLevel(s3_s, r17.xyz, cb3[7].z).xyz;
          r18.xyz = r18.xyz + -r17.xyz;
          r17.xyz = r13.zzz * r18.xyz + r17.xyz;
          r17.xyz = cb3[2].xyz * r17.xyz;
        } else {
          r17.xyz = cb3[2].xyz;
        }
        r17.xyz = float3(0.282094806,0.282094806,0.282094806) * r17.xyz;
        r17.xyz = max(float3(0,0,0), r17.xyz);
      } else {
        r18.x = dot(cb0[94].xyzw, r10.xyzw);
        r18.y = dot(cb0[95].xyzw, r10.xyzw);
        r18.z = dot(cb0[96].xyzw, r10.xyzw);
        r18.xyz = max(float3(0,0,0), r18.xyz);
        r18.xyz = cb1[187].xyz * r18.xyz;
        r17.xyz = float3(0.318309873,0.318309873,0.318309873) * r18.xyz;
      }
      if (r6.y != 0) {
        r18.xyz = t5.SampleLevel(s0_s, r8.xyz, 0).xyz;
        r18.xyz = r18.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r13.z = dot(r18.xyz, r18.xyz);
        r13.z = sqrt(r13.z);
      } else {
        r13.z = 1;
      }
      r13.z = cb0[93].x * r13.z;
      r16.xyz = r13.zzz * r17.xyz + r16.xyz;
    }
    if (r3.z != 0) {
      r17.xyz = t1.SampleLevel(s0_s, r8.xyz, 0).xyz;
      r18.xyz = t2.SampleLevel(s0_s, r8.xyz, 0).xyz;
      r18.xyz = r18.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r19.xyz = t3.SampleLevel(s0_s, r8.xyz, 0).xyz;
      r19.xyz = r19.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r8.xyz = t4.SampleLevel(s0_s, r8.xyz, 0).xyz;
      r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r18.xyz = r18.xyz * r17.xxx;
      r18.yzw = float3(1.73205125,1.73205125,1.73205125) * r18.xyz;
      r19.xyz = r19.xyz * r17.yyy;
      r19.yzw = float3(1.73205125,1.73205125,1.73205125) * r19.xyz;
      r8.xyz = r8.xyz * r17.zzz;
      r20.yzw = float3(1.73205125,1.73205125,1.73205125) * r8.xyz;
      r18.x = r17.x;
      r9.yzw = r10.yzw;
      r8.x = dot(r18.xyzw, r9.xyzw);
      r19.x = r17.y;
      r8.y = dot(r19.xyzw, r9.xyzw);
      r20.x = r17.z;
      r8.z = dot(r20.xyzw, r9.xyzw);
      r8.xyz = max(float3(0,0,0), r8.xyz);
      r16.xyz = r6.www * r8.xyz + r16.xyz;
    }
    r8.x = r14.x * cb2[3].x + cb2[3].y;
    r8.x = log2(r8.x);
    r8.x = cb2[3].z * r8.x;
    r8.x = max(0, r8.x);
    r8.x = (uint)r8.x;
    r8.x = min((uint)r8.x, (uint)r7.x);
    r8.x = mad((int)r8.x, asint(cb2[1].y), (int)r5.w);
    r8.x = mad((int)r8.x, asint(cb2[1].x), (int)r5.z);
    r8.y = (uint)r8.x << 1;
    r8.y = t9.Load(r8.y).x;
    r8.y = min(asuint(cb2[0].x), (uint)r8.y);
    bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r8.x = (((uint)r8.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
    r8.x = t9.Load(r8.x).x;
    r9.yzw = cb0[r13.y+72].xyz + r7.yzw;
    r9.yz = r9.yz / cb4[1].xy;
    r9.yz = r9.yz * float2(2,2) + float2(-1,-1);
    r9.yz = float2(1,-1) * r9.yz;
    r8.z = r9.w / cb4[2].z;
    r8.z = exp2(r8.z);
    r8.z = -cb4[2].y + r8.z;
    r8.z = r8.z / cb4[2].x;
    r9.w = cb1[65].w + r8.z;
    r9.w = cb1[65].z * r9.w;
    r9.w = 1 / r9.w;
    r8.z = r8.z * cb1[30].z + cb1[31].z;
    r8.z = r1.z ? r9.w : r8.z;
    r17.xyzw = cb0[56].xyzw * r9.zzzz;
    r17.xyzw = r9.yyyy * cb0[55].xyzw + r17.xyzw;
    r17.xyzw = r8.zzzz * cb0[57].xyzw + r17.xyzw;
    r17.xyzw = cb0[58].xyzw + r17.xyzw;
    r9.yzw = r17.xyz / r17.www;
    r9.yzw = -cb1[70].xyz + r9.yzw;
    r9.yzw = r14.yzw + -r9.yzw;
    r8.z = dot(r9.yzw, r9.yzw);
    r8.z = sqrt(r8.z);
    r8.z = cb0[88].z * r8.z;
    r8.z = max(1, r8.z);
    r9.y = r8.z * r8.z;
    r12.xyz = r16.xyz;
    r12.w = 0;
    while (true) {
      r9.z = cmp((uint)r12.w >= (uint)r8.y);
      if (r9.z != 0) break;
      r9.z = (int)r8.x + (int)r12.w;
      r9.z = t10.Load(r9.z).x;
      r9.w = (int)r9.z * 6;
      r10.y = mad((int)r9.z, 6, 3);
      r17.xyzw = t8.Load(r10.y).xyzw;
      r10.y = (uint)r17.w >> 16;
      r10.y = f16tof32(r10.y);
      r10.z = cmp(0 < r10.y);
      if (r10.z != 0) {
        r18.xyzw = t8.Load(r9.w).xyzw;
        r9.w = mad((int)r9.z, 6, 1);
        r19.xyzw = t8.Load(r9.w).xyzw;
        r20.xyz = mad((int3)r9.zzz, int3(6,6,6), int3(2,4,5));
        r21.xyz = t8.Load(r20.x).xyz;
        r20.xyw = t8.Load(r20.y).xyz;
        r9.zw = t8.Load(r20.z).xy;
        r22.y = f16tof32(r17.w);
        r10.z = cmp(r19.w == 0.000000);
        r10.w = cmp(-2 < r17.x);
        r13.z = cmp(-2 < r9.w);
        r18.xyz = r18.xyz + -r14.yzw;
        r13.w = dot(r18.xyz, r18.xyz);
        r14.x = rsqrt(r13.w);
        r23.xyz = r18.xyz * r14.xxx;
        r14.x = r18.w * r18.w;
        r13.w = r14.x * r13.w;
        r13.w = -r13.w * r13.w + 1;
        r13.w = max(0, r13.w);
        r13.w = r13.w * r13.w;
        r24.xyz = r18.xyz * r18.www;
        r14.x = dot(r24.xyz, r24.xyz);
        r14.x = min(1, r14.x);
        r14.x = 1 + -r14.x;
        r14.x = log2(r14.x);
        r14.x = r19.w * r14.x;
        r14.x = exp2(r14.x);
        r13.w = r10.z ? r13.w : r14.x;
        r14.x = dot(r23.xyz, r21.xyz);
        r16.w = r14.x + -r17.x;
        r16.w = saturate(r16.w * r17.y);
        r16.w = r16.w * r16.w;
        r16.w = r16.w * r13.w;
        r10.w = r10.w ? r16.w : r13.w;
        r13.w = cmp(r14.x < 0);
        r13.w = r13.w ? 0 : r10.w;
        r10.w = r13.z ? r13.w : r10.w;
        if (r13.z != 0) {
          r17.xyw = r20.wxy * r21.yzx;
          r17.xyw = r20.ywx * r21.zxy + -r17.xyw;
          r13.z = cmp(0.0350000001 < r9.z);
          r24.x = dot(r17.xyw, r18.xyz);
          r24.y = dot(r20.xyw, r18.xyz);
          r25.z = dot(r21.xyz, r18.xyz);
          r13.w = r9.z * r9.w;
          r9.z = -r9.z * r9.z + 1;
          r9.z = sqrt(r9.z);
          r26.z = min(r25.z, r13.w);
          r13.w = r26.z / r13.w;
          r9.z = r9.z * r9.w;
          r9.w = r9.z * r13.w;
          r22.zw = cmp(float2(0,0) < r24.xy);
          r24.zw = cmp(r24.xy < float2(0,0));
          r22.zw = (int2)-r22.zw + (int2)r24.zw;
          r22.zw = (int2)r22.zw;
          r22.x = r17.z;
          r24.zw = r9.zz * r13.ww + r22.xy;
          r24.xy = max(abs(r24.xy), r24.zw);
          r25.xy = r24.xy * r22.zw;
          r26.xy = r24.zw * r22.zw;
          r24.xyz = -r26.xyz + r25.xyz;
          r9.z = max(0.00100000005, r24.z);
          r24.xy = abs(r24.xy) / r9.zz;
          r9.zw = r26.zz * r24.xy + -r9.ww;
          r24.xy = max(float2(0,0), -r22.zw);
          r24.xy = r9.zw * r24.xy + -r22.xy;
          r24.xy = max(r24.xy, -r22.xy);
          r24.xy = min(r24.xy, r22.xy);
          r22.zw = max(float2(0,0), r22.zw);
          r9.zw = -r9.zw * r22.zw + r22.xy;
          r9.zw = max(r9.zw, -r22.xy);
          r9.zw = min(r9.zw, r22.xy);
          r22.zw = r9.zw + -r24.xy;
          r22.zw = float2(0.5,0.5) * r22.zw;
          r22.xz = r13.zz ? r22.zw : r22.xy;
          r24.zw = cmp(r22.xz == float2(0,0));
          r13.w = (int)r24.w | (int)r24.z;
          if (r13.w == 0) {
            r9.zw = r24.xy + r9.zw;
            r9.zw = float2(0.5,0.5) * r9.zw;
            r24.xyz = -r17.xyw * r9.zzz + r18.xyz;
            r24.xyz = -r20.xyw * r9.www + r24.xyz;
            r24.xyz = r13.zzz ? r24.xyz : r18.xyz;
            r9.z = dot(r17.xyw, r24.xyz);
            r9.w = dot(r20.xyw, r24.xyz);
            r24.w = dot(r21.xyz, r24.xyz);
            r24.x = r9.z + r22.x;
            r24.yz = r9.zw + -r22.xz;
            r25.x = r9.w + r22.z;
            r9.z = dot(r24.yz, r24.yz);
            r9.z = r24.w * r24.w + r9.z;
            r9.z = rsqrt(r9.z);
            r22.xzw = r24.zwy * r9.zzz;
            r9.z = dot(r24.xz, r24.xz);
            r9.z = r24.w * r24.w + r9.z;
            r9.z = rsqrt(r9.z);
            r26.xyz = r24.wxz * r9.zzz;
            r25.yzw = r24.xwy;
            r9.z = dot(r25.xy, r25.xy);
            r9.z = r24.w * r24.w + r9.z;
            r9.z = rsqrt(r9.z);
            r24.xyz = r25.xzy * r9.zzz;
            r9.z = dot(r25.xw, r25.xw);
            r9.z = r24.w * r24.w + r9.z;
            r9.z = rsqrt(r9.z);
            r25.xyz = r25.zwx * r9.zzz;
            r9.z = dot(r22.zwx, r26.xyz);
            r9.w = dot(r26.zxy, r24.xyz);
            r13.z = dot(r24.yzx, r25.xyz);
            r13.w = dot(r25.zxy, r22.xzw);
            r14.x = -r9.z * 0.174999997 + 1.57079995;
            r9.z = 1 + r9.z;
            r9.z = rsqrt(r9.z);
            r9.z = r14.x * r9.z;
            r14.x = -r9.w * 0.174999997 + 1.57079995;
            r9.w = 1 + r9.w;
            r9.w = rsqrt(r9.w);
            r9.w = r14.x * r9.w;
            r14.x = -r13.z * 0.174999997 + 1.57079995;
            r13.z = 1 + r13.z;
            r13.z = rsqrt(r13.z);
            r13.z = r14.x * r13.z;
            r14.x = -r13.w * 0.174999997 + 1.57079995;
            r13.w = 1 + r13.w;
            r13.w = rsqrt(r13.w);
            r13.w = r14.x * r13.w;
            r27.xyz = r9.www * r24.xyz;
            r27.xyz = -r9.zzz * r22.xzw + r27.xyz;
            r28.xyz = r27.xyz * r26.xyz;
            r26.xyz = r26.zxy * r27.yzx + -r28.xyz;
            r24.xyz = -r13.zzz * r24.xyz;
            r22.xzw = r13.www * r22.xzw + r24.xyz;
            r24.xyz = r25.xyz * r22.xzw;
            r22.xzw = r25.zxy * r22.zwx + -r24.xyz;
            r22.xzw = r26.xyz + r22.xzw;
            r24.xyz = r22.zzz * r20.xyw;
            r17.xyz = r22.xxx * r17.xyw + r24.xyz;
            r17.xyz = r22.www * r21.xyz + r17.xyz;
            r9.z = dot(r17.xyz, r17.xyz);
            r9.w = rsqrt(r9.z);
            r9.z = r9.z * r9.w;
            r9.z = 0.5 * r9.z;
          } else {
            r9.z = 0;
          }
        } else {
          r9.w = 0.5 * r22.y;
          r17.xyz = -r9.www * r20.xyw + r18.xyz;
          r13.z = cmp(0 < r22.y);
          if (r13.z != 0) {
            r18.xyz = r9.www * r20.xyw + r18.xyz;
            r9.w = dot(r17.xyz, r17.xyz);
            r13.z = dot(r18.xyz, r18.xyz);
            r9.w = rsqrt(r9.w);
            r13.z = rsqrt(r13.z);
            r9.w = r13.z * r9.w;
            r13.z = dot(r17.xyz, r18.xyz);
            r13.z = r13.z * r9.w;
            r13.z = r13.z * 0.5 + 0.5;
            r13.z = r9.y * r9.w + r13.z;
            r9.w = r9.w / r13.z;
          } else {
            r13.z = dot(r17.xyz, r17.xyz);
            r13.z = r8.z * r8.z + r13.z;
            r9.w = rcp(r13.z);
          }
          r9.z = r10.z ? r9.w : 1;
        }
        r9.z = r9.z * r10.w;
        r9.w = dot(r23.xyz, -r15.xyz);
        r9.w = -r5.x * r9.w + r4.w;
        r9.w = log2(r9.w);
        r9.w = 1.5 * r9.w;
        r9.w = exp2(r9.w);
        r9.w = 12.566371 * r9.w;
        r9.w = r3.y / r9.w;
        r9.z = r9.w * r9.z;
        r9.z = r9.z * r10.y;
        r12.xyz = r19.xyz * r9.zzz + r12.xyz;
      }
      r12.w = (int)r12.w + 1;
    }
    r13.y = (int)r13.y + 1;
  }
  r0.xyz = r12.xyz / r1.www;
  r3.xyz = vThreadID.xyz;
  r3.w = 0;
  r1.xzw = t15.Load(r3.xyzw).xyz;
  r0.xyz = r1.xzw + r0.xyz;
  r4.xyzw = t12.Load(r3.xyzw).xyzw;
  r1.x = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = r4.w + r1.x;
  r1.xzw = t13.Load(r3.xyzw).xyz;
  r5.xyz = r0.xyz * r4.xyz + r1.xzw;
  r0.x = cmp(0 < r0.w);
  if (r0.x != 0) {
    r2.xyzw = t14.SampleLevel(s4_s, r2.xyz, 0).xyzw;
    r2.xyzw = r2.xyzw + -r5.xyzw;
    r5.xyzw = r0.wwww * r2.xyzw + r5.xyzw;
  }
  if (r1.y != 0) {
    r0.xyzw = cmp((uint4)r5.xyzw >= int4(0x7f800000,0x7f800000,0x7f800000,0x7f800000));
    r0.xyzw = r0.xyzw ? float4(0,0,0,0) : r5.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
  }
  return;
}