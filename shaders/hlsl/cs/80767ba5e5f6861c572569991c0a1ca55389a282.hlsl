// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t21 : register(t21);

Texture3D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

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

SamplerState s7_s : register(s7);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32;
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
  r1.x = cmp(r0.w < 0.00100000005);
  r3.xyz = cmp((uint3)vThreadID.xyz < asuint(cb4[0].xyz));
  r1.y = r3.y ? r3.x : 0;
  r1.y = r3.z ? r1.y : 0;
  r1.x = r1.y ? r1.x : 0;
  r1.xw = r1.xx ? float2(9,9) : float2(1,1);
  r2.w = cmp(0 < cb0[99].x);
  r3.xyzw = cmp(float4(0,0,0,0) < cb0[103].zxwy);
  r4.x = dot(cb2[5].xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = cb4[6].xyz * r4.xxx;
  r4.xyz = r3.yyy ? r4.xyz : cb2[5].xyz;
  r3.y = -cb0[94].y * cb0[94].y + 1;
  r4.w = cb0[94].y * cb0[94].y + 1;
  r5.x = -2 * cb0[94].y;
  r5.y = (int)r2.w | (int)r3.z;
  r5.zw = (int2)vThreadID.xy * asint(cb4[3].zw);
  r6.x = 1 + cb1[213].w;
  r6.y = cmp(0 < cb3[3].z);
  r7.xyz = cb0[6].xyz + cb0[6].www;
  r6.z = cmp(0 < cb0[94].w);
  r6.w = 0.0199999996 * cb0[6].w;
  r7.w = 1 / cb0[1].y;
  r8.xyz = cb0[7].xyz + cb0[7].www;
  r8.w = 0.318309873 * cb0[103].w;
  r9.x = 0.0199999996 * cb0[7].w;
  r9.yzw = cb0[8].xyz + cb0[8].www;
  r10.xyz = cb0[9].xyz + cb0[9].www;
  r10.w = asint(cb2[1].z) + -1;
  r11.x = 0.0199999996 * cb0[8].w;
  r5.zw = (uint2)r5.zw >> asuint(cb2[2].xx);
  r11.y = 0.0199999996 * cb0[9].w;
  r12.xyz = (int3)vThreadID.xyz + int3(1,1,1);
  r12.xyz = (uint3)r12.xyz;
  r13.w = 0;
  r14.x = 1;
  r15.x = 1;
  r11.zw = float2(1,-1) * cb3[6].yx;
  r16.xyz = float3(0,0,0);
  r12.w = cb2[0].z;
  r17.x = cb2[9].z;
  r17.y = cb2[48].y;
  r17.z = 0;
  while (true) {
    r17.w = cmp((uint)r17.z >= (uint)r1.x);
    if (r17.w != 0) break;
    r18.xyz = cb0[r17.z+78].xyz + r0.xyz;
    r18.xy = r18.xy / cb4[1].xy;
    r18.xy = r18.xy * float2(2,2) + float2(-1,-1);
    r18.xy = float2(1,-1) * r18.xy;
    r17.w = r18.z / cb4[2].z;
    r17.w = exp2(r17.w);
    r17.w = -cb4[2].y + r17.w;
    r17.w = r17.w / cb4[2].x;
    r18.z = cb1[65].w + r17.w;
    r18.z = cb1[65].z * r18.z;
    r18.z = 1 / r18.z;
    r18.w = r17.w * cb1[30].z + cb1[31].z;
    r18.z = r1.z ? r18.z : r18.w;
    r19.xyzw = cb0[62].xyzw * r18.yyyy;
    r19.xyzw = r18.xxxx * cb0[61].xyzw + r19.xyzw;
    r18.xyzw = r18.zzzz * cb0[63].xyzw + r19.xyzw;
    r18.xyzw = cb0[64].xyzw + r18.xyzw;
    r18.xyz = r18.xyz / r18.www;
    r18.xyz = -cb1[70].xyz + r18.xyz;
    r19.xyz = -cb1[67].xyz + r18.xyz;
    r18.w = dot(r19.xyz, r19.xyz);
    r18.w = sqrt(r18.w);
    r19.xyz = r19.xyz / r18.www;
    if (r12.w != 0) {
      if (r3.x != 0) {
        if (r17.y != 0) {
          r20.xyzw = cb2[51].xyzw * r18.yyyy;
          r20.xyzw = r18.xxxx * cb2[50].xyzw + r20.xyzw;
          r20.xyzw = r18.zzzz * cb2[52].xyzw + r20.xyzw;
          r20.xyzw = cb2[53].xyzw + r20.xyzw;
          r20.xy = r20.xy / r20.ww;
          r21.xy = cmp(r20.xy >= float2(0,0));
          r21.zw = cmp(float2(1,1) >= r20.xy);
          r21.xy = r21.zw ? r21.xy : 0;
          r19.w = r21.y ? r21.x : 0;
          if (r19.w != 0) {
            r19.w = t7.SampleLevel(s2_s, r20.xy, 0).x;
            r20.x = cmp(r20.z < r19.w);
            r19.w = cmp(0.99000001 < r19.w);
            r19.w = (int)r19.w | (int)r20.x;
            r19.w = r19.w ? 1.000000 : 0;
          } else {
            r19.w = 1;
          }
        } else {
          r19.w = 1;
        }
        if (r17.x != 0) {
          r20.x = r17.x;
          r20.y = 0;
          while (true) {
            r20.z = cmp((uint)r20.y >= (uint)r17.x);
            if (r20.z != 0) break;
            r20.z = dot(cb2[10].xyzw, icb[r20.y+0].xyzw);
            r20.z = cmp(r17.w < r20.z);
            if (r20.z != 0) {
              r20.x = r20.y;
              break;
            }
            r20.y = (int)r20.y + 1;
          }
          r20.y = cmp((uint)r20.x < (uint)r17.x);
          if (r20.y != 0) {
            r20.y = (uint)r20.x << 2;
            r21.xyzw = cb2[r20.y+12].xyzw * r18.yyyy;
            r21.xyzw = r18.xxxx * cb2[r20.y+11].xyzw + r21.xyzw;
            r21.xyzw = r18.zzzz * cb2[r20.y+13].xyzw + r21.xyzw;
            r21.xyzw = cb2[r20.y+14].xyzw + r21.xyzw;
            r20.yz = r21.xy / r21.ww;
            r21.xy = cmp(r20.yz >= cb2[r20.x+27].xy);
            r22.xy = cmp(cb2[r20.x+27].zw >= r20.yz);
            r21.xy = r21.xy ? r22.xy : 0;
            r20.w = r21.y ? r21.x : 0;
            if (r20.w != 0) {
              r20.y = t6.SampleLevel(s1_s, r20.yz, 0).x;
              r20.y = -cb2[48].x + r20.y;
              r20.y = cmp(r21.z < r20.y);
              r20.y = r20.y ? 1.000000 : 0;
            } else {
              r20.y = 1;
            }
          } else {
            r20.y = 1;
          }
        } else {
          r20.y = 1;
        }
        r19.w = r20.y * r19.w;
        r21.xyzw = cb0[57].xyzw * r18.yyyy;
        r21.xyzw = r18.xxxx * cb0[56].xyzw + r21.xyzw;
        r21.xyzw = r18.zzzz * cb0[58].xyzw + r21.xyzw;
        r21.xyzw = cb0[59].xyzw + r21.xyzw;
        r20.yzw = r21.xyz / r21.www;
        r20.yz = r20.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r21.xyz = t16.SampleLevel(s5_s, r20.yz, 0).xyz;
        r20.y = saturate(1 + -r20.w);
        r20.y = r20.y * cb0[55].x + -r21.x;
        r20.y = max(0, r20.y);
        r20.y = r20.y * r21.y;
        r20.y = 1000 * r20.y;
        r20.y = min(r21.z, r20.y);
        r20.y = -1.44269502 * r20.y;
        r20.y = exp2(r20.y);
        r20.y = min(1, r20.y);
        r20.y = -1 + r20.y;
        r20.y = cb0[60].x * r20.y + 1;
        r19.w = r20.y * r19.w;
      } else {
        r19.w = 1;
      }
      r20.yz = cb0[96].xy * r18.yy;
      r20.yz = r18.xx * cb0[95].xy + r20.yz;
      r20.yz = r18.zz * cb0[97].xy + r20.yz;
      r20.yz = cb0[98].xy + r20.yz;
      r21.xy = r20.yz * float2(0.5,0.5) + float2(0.5,0.5);
      r21.z = 1 + -r21.y;
      r20.y = t21.SampleLevel(s7_s, r21.xz, 0).x;
      r19.w = r20.y * r19.w;
      r19.w = cb2[8].y * r19.w;
      r20.y = dot(cb2[4].xyz, -r19.xyz);
      r20.y = -r5.x * r20.y + r4.w;
      r20.y = log2(r20.y);
      r20.y = 1.5 * r20.y;
      r20.y = exp2(r20.y);
      r20.y = 12.566371 * r20.y;
      r20.y = r3.y / r20.y;
      r19.w = r20.y * r19.w;
      r20.yzw = r4.xyz * r19.www + r16.xyz;
    } else {
      r20.yzw = r16.xyz;
    }
    r15.yzw = cb0[94].yyy * r19.yzx;
    if (r5.y != 0) {
      r21.xyz = r18.xyz * cb1[211].xyz + cb1[212].xyz;
      r21.xyz = max(float3(0,0,0), r21.xyz);
      r21.xyz = min(float3(0.99000001,0.99000001,0.99000001), r21.xyz);
      r21.xyz = cb1[213].xyz * r21.xyz;
      r13.xyz = (int3)r21.xyz;
      r22.xyzw = t0.Load(r13.xyzw).xyzw;
      r22.xyzw = (uint4)r22.xyzw;
      r13.xyz = r21.xyz / r22.www;
      r13.xyz = frac(r13.xyz);
      r13.xyz = cb1[213].www * r13.xyz;
      r13.xyz = r22.xyz * r6.xxx + r13.xyz;
      r13.xyz = float3(0.5,0.5,0.5) + r13.xyz;
      r13.xyz = cb1[214].xyz * r13.xyz;
    } else {
      r13.xyz = float3(0,0,0);
    }
    if (r2.w != 0) {
      if (r3.w != 0) {
        if (r6.y != 0) {
          r18.w = saturate(r18.w * cb3[7].x + cb3[7].y);
          r21.x = dot(r19.xy, r11.zw);
          r21.y = dot(r19.xy, cb3[6].xy);
          r21.z = r19.z;
          r22.xyz = t11.SampleLevel(s3_s, r21.xyz, 0).xyz;
          r21.xyz = t11.SampleLevel(s3_s, r21.xyz, cb3[7].z).xyz;
          r22.xyz = r22.xyz + -r21.xyz;
          r21.xyz = r18.www * r22.xyz + r21.xyz;
          r21.xyz = cb3[2].xyz * r21.xyz;
        } else {
          r21.xyz = cb3[2].xyz;
        }
        r21.xyz = float3(0.282094806,0.282094806,0.282094806) * r21.xyz;
        r21.xyz = max(float3(0,0,0), r21.xyz);
      } else {
        r22.x = dot(cb0[100].xyzw, r15.xyzw);
        r22.y = dot(cb0[101].xyzw, r15.xyzw);
        r22.z = dot(cb0[102].xyzw, r15.xyzw);
        r22.xyz = max(float3(0,0,0), r22.xyz);
        r22.xyz = cb1[187].xyz * r22.xyz;
        r21.xyz = float3(0.318309873,0.318309873,0.318309873) * r22.xyz;
      }
      r22.xyz = -cb0[6].xyz + r18.xyz;
      r22.xyz = cb0[6].www + r22.xyz;
      r22.xyz = max(float3(0,0,0), r22.xyz);
      r23.xyz = -r18.xyz + r7.xyz;
      r23.xyz = max(float3(0,0,0), r23.xyz);
      r22.xyz = min(r23.xyz, r22.xyz);
      r18.w = min(r22.y, r22.z);
      r18.w = min(r22.x, r18.w);
      r18.w = cmp(cb0[1].y < r18.w);
      if (r18.w != 0) {
        r18.w = 1;
        r19.w = 2;
        r21.w = 0;
        while (true) {
          r22.x = cmp((uint)r21.w < 10);
          r22.y = cmp(r19.w < cb0[1].y);
          r22.x = r22.y ? r22.x : 0;
          if (r22.x == 0) break;
          r22.xyz = r19.www * float3(0,0,1) + r18.xyz;
          r22.xyz = r22.xyz * cb0[10].www + cb0[10].xyz;
          r22.x = t12.SampleLevel(s4_s, r22.xyz, 0).x;
          r22.y = (int)-r19.w + 0x7ef311c2;
          r22.y = saturate(r22.x * r22.y);
          r22.z = r22.x + r19.w;
          r22.z = r22.z * r7.w;
          r22.z = r22.z * r22.z;
          r22.z = 0.600000024 * r22.z;
          r22.z = min(1, r22.z);
          r22.y = max(r22.y, r22.z);
          r18.w = min(r22.y, r18.w);
          r22.x = max(r22.x, r6.w);
          r19.w = r22.x + r19.w;
          r21.w = (int)r21.w + 1;
        }
      } else {
        r22.xyz = -cb0[7].xyz + r18.xyz;
        r22.xyz = cb0[7].www + r22.xyz;
        r22.xyz = max(float3(0,0,0), r22.xyz);
        r23.xyz = -r18.xyz + r8.xyz;
        r23.xyz = max(float3(0,0,0), r23.xyz);
        r22.xyz = min(r23.xyz, r22.xyz);
        r19.w = min(r22.y, r22.z);
        r19.w = min(r22.x, r19.w);
        r19.w = cmp(cb0[1].y < r19.w);
        if (r19.w != 0) {
          r18.w = 1;
          r19.w = 2;
          r21.w = 0;
          while (true) {
            r22.x = cmp((uint)r21.w < 10);
            r22.y = cmp(r19.w < cb0[1].y);
            r22.x = r22.y ? r22.x : 0;
            if (r22.x == 0) break;
            r22.xyz = r19.www * float3(0,0,1) + r18.xyz;
            r22.xyz = r22.xyz * cb0[11].www + cb0[11].xyz;
            r22.x = t13.SampleLevel(s4_s, r22.xyz, 0).x;
            r22.y = (int)-r19.w + 0x7ef311c2;
            r22.y = saturate(r22.x * r22.y);
            r22.z = r22.x + r19.w;
            r22.z = r22.z * r7.w;
            r22.z = r22.z * r22.z;
            r22.z = 0.600000024 * r22.z;
            r22.z = min(1, r22.z);
            r22.y = max(r22.y, r22.z);
            r18.w = min(r22.y, r18.w);
            r22.x = max(r22.x, r9.x);
            r19.w = r22.x + r19.w;
            r21.w = (int)r21.w + 1;
          }
        } else {
          r22.xyz = -cb0[8].xyz + r18.xyz;
          r22.xyz = cb0[8].www + r22.xyz;
          r22.xyz = max(float3(0,0,0), r22.xyz);
          r23.xyz = -r18.xyz + r9.yzw;
          r23.xyz = max(float3(0,0,0), r23.xyz);
          r22.xyz = min(r23.xyz, r22.xyz);
          r19.w = min(r22.y, r22.z);
          r19.w = min(r22.x, r19.w);
          r22.xyz = -cb0[9].xyz + r18.xyz;
          r22.xyz = cb0[9].www + r22.xyz;
          r22.xyz = max(float3(0,0,0), r22.xyz);
          r23.xyz = -r18.xyz + r10.xyz;
          r23.xyz = max(float3(0,0,0), r23.xyz);
          r22.xyz = min(r23.xyz, r22.xyz);
          r21.w = min(r22.y, r22.z);
          r21.w = min(r22.x, r21.w);
          r19.w = cmp(cb0[1].y < r19.w);
          if (r19.w != 0) {
            r18.w = 1;
            r19.w = 2;
            r22.x = 0;
            while (true) {
              r22.y = cmp((uint)r22.x < 10);
              r22.z = cmp(r19.w < cb0[1].y);
              r22.y = r22.z ? r22.y : 0;
              if (r22.y == 0) break;
              r22.yzw = r19.www * float3(0,0,1) + r18.xyz;
              r22.yzw = r22.yzw * cb0[12].www + cb0[12].xyz;
              r22.y = t14.SampleLevel(s4_s, r22.yzw, 0).x;
              r22.z = (int)-r19.w + 0x7ef311c2;
              r22.z = saturate(r22.y * r22.z);
              r22.w = r22.y + r19.w;
              r22.w = r22.w * r7.w;
              r22.w = r22.w * r22.w;
              r22.w = 0.600000024 * r22.w;
              r22.w = min(1, r22.w);
              r22.z = max(r22.z, r22.w);
              r18.w = min(r22.z, r18.w);
              r22.y = max(r22.y, r11.x);
              r19.w = r22.y + r19.w;
              r22.x = (int)r22.x + 1;
            }
          } else {
            r19.w = cmp(cb0[1].y < r21.w);
            if (r19.w != 0) {
              r18.w = 1;
              r19.w = 2;
              r21.w = 0;
              while (true) {
                r22.x = cmp((uint)r21.w < 10);
                r22.y = cmp(r19.w < cb0[1].y);
                r22.x = r22.y ? r22.x : 0;
                if (r22.x == 0) break;
                r22.xyz = r19.www * float3(0,0,1) + r18.xyz;
                r22.xyz = r22.xyz * cb0[13].www + cb0[13].xyz;
                r22.x = t15.SampleLevel(s4_s, r22.xyz, 0).x;
                r22.y = (int)-r19.w + 0x7ef311c2;
                r22.y = saturate(r22.x * r22.y);
                r22.z = r22.x + r19.w;
                r22.z = r22.z * r7.w;
                r22.z = r22.z * r22.z;
                r22.z = 0.600000024 * r22.z;
                r22.z = min(1, r22.z);
                r22.y = max(r22.y, r22.z);
                r18.w = min(r22.y, r18.w);
                r22.x = max(r22.x, r11.y);
                r19.w = r22.x + r19.w;
                r21.w = (int)r21.w + 1;
              }
            } else {
              r18.w = 1;
            }
          }
        }
      }
      if (r6.z != 0) {
        r22.xyz = t5.SampleLevel(s0_s, r13.xyz, 0).xyz;
        r22.xyz = r22.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r19.w = dot(r22.xyz, r22.xyz);
        r18.w = sqrt(r19.w);
      }
      r19.w = cb0[99].x * r18.w;
      r20.yzw = r19.www * r21.xyz + r20.yzw;
    }
    if (r3.z != 0) {
      r21.xyz = t1.SampleLevel(s0_s, r13.xyz, 0).xyz;
      r22.xyz = t2.SampleLevel(s0_s, r13.xyz, 0).xyz;
      r22.xyz = r22.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r23.xyz = t3.SampleLevel(s0_s, r13.xyz, 0).xyz;
      r23.xyz = r23.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r13.xyz = t4.SampleLevel(s0_s, r13.xyz, 0).xyz;
      r13.xyz = r13.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r22.xyz = r22.xyz * r21.xxx;
      r22.yzw = float3(1.73205125,1.73205125,1.73205125) * r22.xyz;
      r23.xyz = r23.xyz * r21.yyy;
      r23.yzw = float3(1.73205125,1.73205125,1.73205125) * r23.xyz;
      r13.xyz = r13.xyz * r21.zzz;
      r24.yzw = float3(1.73205125,1.73205125,1.73205125) * r13.xyz;
      r22.x = r21.x;
      r14.yzw = r15.yzw;
      r13.x = dot(r22.xyzw, r14.xyzw);
      r23.x = r21.y;
      r13.y = dot(r23.xyzw, r14.xyzw);
      r24.x = r21.z;
      r13.z = dot(r24.xyzw, r14.xyzw);
      r13.xyz = max(float3(0,0,0), r13.xyz);
      r20.yzw = r8.www * r13.xyz + r20.yzw;
    }
    r13.x = r17.w * cb2[3].x + cb2[3].y;
    r13.x = log2(r13.x);
    r13.x = cb2[3].z * r13.x;
    r13.x = max(0, r13.x);
    r13.x = (uint)r13.x;
    r13.x = min((uint)r13.x, (uint)r10.w);
    r13.x = mad((int)r13.x, asint(cb2[1].y), (int)r5.w);
    r13.x = mad((int)r13.x, asint(cb2[1].x), (int)r5.z);
    r13.y = (uint)r13.x << 1;
    r13.y = t9.Load(r13.y).x;
    r13.y = min(asuint(cb2[0].x), (uint)r13.y);
    bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r13.x = (((uint)r13.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
    r13.x = t9.Load(r13.x).x;
    r14.yzw = cb0[r17.z+78].xyz + r12.xyz;
    r14.yz = r14.yz / cb4[1].xy;
    r14.yz = r14.yz * float2(2,2) + float2(-1,-1);
    r14.yz = float2(1,-1) * r14.yz;
    r13.z = r14.w / cb4[2].z;
    r13.z = exp2(r13.z);
    r13.z = -cb4[2].y + r13.z;
    r13.z = r13.z / cb4[2].x;
    r14.w = cb1[65].w + r13.z;
    r14.w = cb1[65].z * r14.w;
    r14.w = 1 / r14.w;
    r13.z = r13.z * cb1[30].z + cb1[31].z;
    r13.z = r1.z ? r14.w : r13.z;
    r21.xyzw = cb0[62].xyzw * r14.zzzz;
    r21.xyzw = r14.yyyy * cb0[61].xyzw + r21.xyzw;
    r21.xyzw = r13.zzzz * cb0[63].xyzw + r21.xyzw;
    r21.xyzw = cb0[64].xyzw + r21.xyzw;
    r14.yzw = r21.xyz / r21.www;
    r14.yzw = -cb1[70].xyz + r14.yzw;
    r14.yzw = r18.xyz + -r14.yzw;
    r13.z = dot(r14.yzw, r14.yzw);
    r13.z = sqrt(r13.z);
    r13.z = cb0[94].z * r13.z;
    r13.z = max(1, r13.z);
    r14.y = r13.z * r13.z;
    r16.xyz = r20.yzw;
    r16.w = 0;
    while (true) {
      r14.z = cmp((uint)r16.w >= (uint)r13.y);
      if (r14.z != 0) break;
      r14.z = (int)r13.x + (int)r16.w;
      r14.z = t10.Load(r14.z).x;
      r14.w = (int)r14.z * 6;
      r15.y = mad((int)r14.z, 6, 3);
      r21.xyzw = t8.Load(r15.y).xyzw;
      r15.y = (uint)r21.w >> 16;
      r15.y = f16tof32(r15.y);
      r15.z = cmp(0 < r15.y);
      if (r15.z != 0) {
        r22.xyzw = t8.Load(r14.w).xyzw;
        r14.w = mad((int)r14.z, 6, 1);
        r23.xyzw = t8.Load(r14.w).xyzw;
        r24.xyz = mad((int3)r14.zzz, int3(6,6,6), int3(2,4,5));
        r25.xyz = t8.Load(r24.x).xyz;
        r24.xyw = t8.Load(r24.y).xyz;
        r14.zw = t8.Load(r24.z).xy;
        r26.y = f16tof32(r21.w);
        r15.z = cmp(r23.w == 0.000000);
        r15.w = cmp(-2 < r21.x);
        r17.w = cmp(-2 < r14.w);
        r22.xyz = r22.xyz + -r18.xyz;
        r19.w = dot(r22.xyz, r22.xyz);
        r21.w = rsqrt(r19.w);
        r27.xyz = r22.xyz * r21.www;
        r21.w = r22.w * r22.w;
        r19.w = r21.w * r19.w;
        r19.w = -r19.w * r19.w + 1;
        r19.w = max(0, r19.w);
        r19.w = r19.w * r19.w;
        r28.xyz = r22.xyz * r22.www;
        r21.w = dot(r28.xyz, r28.xyz);
        r21.w = min(1, r21.w);
        r21.w = 1 + -r21.w;
        r21.w = log2(r21.w);
        r21.w = r23.w * r21.w;
        r21.w = exp2(r21.w);
        r19.w = r15.z ? r19.w : r21.w;
        r21.w = dot(r27.xyz, r25.xyz);
        r21.x = r21.w + -r21.x;
        r21.x = saturate(r21.x * r21.y);
        r21.x = r21.x * r21.x;
        r21.x = r21.x * r19.w;
        r15.w = r15.w ? r21.x : r19.w;
        r19.w = cmp(r21.w < 0);
        r19.w = r19.w ? 0 : r15.w;
        r15.w = r17.w ? r19.w : r15.w;
        if (r17.w != 0) {
          r21.xyw = r24.wxy * r25.yzx;
          r21.xyw = r24.ywx * r25.zxy + -r21.xyw;
          r17.w = cmp(0.0350000001 < r14.z);
          r28.x = dot(r21.xyw, r22.xyz);
          r28.y = dot(r24.xyw, r22.xyz);
          r29.z = dot(r25.xyz, r22.xyz);
          r19.w = r14.z * r14.w;
          r14.z = -r14.z * r14.z + 1;
          r14.z = sqrt(r14.z);
          r30.z = min(r29.z, r19.w);
          r19.w = r30.z / r19.w;
          r14.z = r14.z * r14.w;
          r14.w = r14.z * r19.w;
          r26.zw = cmp(float2(0,0) < r28.xy);
          r28.zw = cmp(r28.xy < float2(0,0));
          r26.zw = (int2)-r26.zw + (int2)r28.zw;
          r26.zw = (int2)r26.zw;
          r26.x = r21.z;
          r28.zw = r14.zz * r19.ww + r26.xy;
          r28.xy = max(abs(r28.xy), r28.zw);
          r29.xy = r28.xy * r26.zw;
          r30.xy = r28.zw * r26.zw;
          r28.xyz = -r30.xyz + r29.xyz;
          r14.z = max(0.00100000005, r28.z);
          r28.xy = abs(r28.xy) / r14.zz;
          r14.zw = r30.zz * r28.xy + -r14.ww;
          r28.xy = max(float2(0,0), -r26.zw);
          r28.xy = r14.zw * r28.xy + -r26.xy;
          r28.xy = max(r28.xy, -r26.xy);
          r28.xy = min(r28.xy, r26.xy);
          r26.zw = max(float2(0,0), r26.zw);
          r14.zw = -r14.zw * r26.zw + r26.xy;
          r14.zw = max(r14.zw, -r26.xy);
          r14.zw = min(r14.zw, r26.xy);
          r26.zw = r14.zw + -r28.xy;
          r26.zw = float2(0.5,0.5) * r26.zw;
          r26.xz = r17.ww ? r26.zw : r26.xy;
          r28.zw = cmp(r26.xz == float2(0,0));
          r19.w = (int)r28.w | (int)r28.z;
          if (r19.w == 0) {
            r14.zw = r28.xy + r14.zw;
            r14.zw = float2(0.5,0.5) * r14.zw;
            r28.xyz = -r21.xyw * r14.zzz + r22.xyz;
            r28.xyz = -r24.xyw * r14.www + r28.xyz;
            r28.xyz = r17.www ? r28.xyz : r22.xyz;
            r14.z = dot(r21.xyw, r28.xyz);
            r14.w = dot(r24.xyw, r28.xyz);
            r28.w = dot(r25.xyz, r28.xyz);
            r28.x = r14.z + r26.x;
            r28.yz = r14.zw + -r26.xz;
            r29.x = r14.w + r26.z;
            r14.z = dot(r28.yz, r28.yz);
            r14.z = r28.w * r28.w + r14.z;
            r14.z = rsqrt(r14.z);
            r26.xzw = r28.zwy * r14.zzz;
            r14.z = dot(r28.xz, r28.xz);
            r14.z = r28.w * r28.w + r14.z;
            r14.z = rsqrt(r14.z);
            r30.xyz = r28.wxz * r14.zzz;
            r29.yzw = r28.xwy;
            r14.z = dot(r29.xy, r29.xy);
            r14.z = r28.w * r28.w + r14.z;
            r14.z = rsqrt(r14.z);
            r28.xyz = r29.xzy * r14.zzz;
            r14.z = dot(r29.xw, r29.xw);
            r14.z = r28.w * r28.w + r14.z;
            r14.z = rsqrt(r14.z);
            r29.xyz = r29.zwx * r14.zzz;
            r14.z = dot(r26.zwx, r30.xyz);
            r14.w = dot(r30.zxy, r28.xyz);
            r17.w = dot(r28.yzx, r29.xyz);
            r19.w = dot(r29.zxy, r26.xzw);
            r21.z = -r14.z * 0.174999997 + 1.57079995;
            r14.z = 1 + r14.z;
            r14.z = rsqrt(r14.z);
            r14.z = r21.z * r14.z;
            r21.z = -r14.w * 0.174999997 + 1.57079995;
            r14.w = 1 + r14.w;
            r14.w = rsqrt(r14.w);
            r14.w = r21.z * r14.w;
            r21.z = -r17.w * 0.174999997 + 1.57079995;
            r17.w = 1 + r17.w;
            r17.w = rsqrt(r17.w);
            r17.w = r21.z * r17.w;
            r21.z = -r19.w * 0.174999997 + 1.57079995;
            r19.w = 1 + r19.w;
            r19.w = rsqrt(r19.w);
            r19.w = r21.z * r19.w;
            r31.xyz = r14.www * r28.xyz;
            r31.xyz = -r14.zzz * r26.xzw + r31.xyz;
            r32.xyz = r31.xyz * r30.xyz;
            r30.xyz = r30.zxy * r31.yzx + -r32.xyz;
            r28.xyz = -r17.www * r28.xyz;
            r26.xzw = r19.www * r26.xzw + r28.xyz;
            r28.xyz = r29.xyz * r26.xzw;
            r26.xzw = r29.zxy * r26.zwx + -r28.xyz;
            r26.xzw = r30.xyz + r26.xzw;
            r28.xyz = r26.zzz * r24.xyw;
            r21.xyz = r26.xxx * r21.xyw + r28.xyz;
            r21.xyz = r26.www * r25.xyz + r21.xyz;
            r14.z = dot(r21.xyz, r21.xyz);
            r14.w = rsqrt(r14.z);
            r14.z = r14.z * r14.w;
            r14.z = 0.5 * r14.z;
          } else {
            r14.z = 0;
          }
        } else {
          r14.w = 0.5 * r26.y;
          r21.xyz = -r14.www * r24.xyw + r22.xyz;
          r17.w = cmp(0 < r26.y);
          if (r17.w != 0) {
            r22.xyz = r14.www * r24.xyw + r22.xyz;
            r14.w = dot(r21.xyz, r21.xyz);
            r17.w = dot(r22.xyz, r22.xyz);
            r14.w = rsqrt(r14.w);
            r17.w = rsqrt(r17.w);
            r14.w = r17.w * r14.w;
            r17.w = dot(r21.xyz, r22.xyz);
            r17.w = r17.w * r14.w;
            r17.w = r17.w * 0.5 + 0.5;
            r17.w = r14.y * r14.w + r17.w;
            r14.w = r14.w / r17.w;
          } else {
            r17.w = dot(r21.xyz, r21.xyz);
            r17.w = r13.z * r13.z + r17.w;
            r14.w = rcp(r17.w);
          }
          r14.z = r15.z ? r14.w : 1;
        }
        r14.z = r14.z * r15.w;
        r14.w = dot(r27.xyz, -r19.xyz);
        r14.w = -r5.x * r14.w + r4.w;
        r14.w = log2(r14.w);
        r14.w = 1.5 * r14.w;
        r14.w = exp2(r14.w);
        r14.w = 12.566371 * r14.w;
        r14.w = r3.y / r14.w;
        r14.z = r14.w * r14.z;
        r14.z = r14.z * r15.y;
        r16.xyz = r23.xyz * r14.zzz + r16.xyz;
      }
      r16.w = (int)r16.w + 1;
    }
    r17.z = (int)r17.z + 1;
  }
  r0.xyz = r16.xyz / r1.www;
  r3.xyz = vThreadID.xyz;
  r3.w = 0;
  r1.xzw = t20.Load(r3.xyzw).xyz;
  r0.xyz = r1.xzw + r0.xyz;
  r4.xyzw = t17.Load(r3.xyzw).xyzw;
  r1.x = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = r4.w + r1.x;
  r1.xzw = t18.Load(r3.xyzw).xyz;
  r5.xyz = r0.xyz * r4.xyz + r1.xzw;
  r0.x = cmp(0 < r0.w);
  if (r0.x != 0) {
    r2.xyzw = t19.SampleLevel(s6_s, r2.xyz, 0).xyzw;
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