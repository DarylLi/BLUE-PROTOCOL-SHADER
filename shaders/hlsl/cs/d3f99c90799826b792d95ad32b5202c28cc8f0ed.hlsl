// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g5[1024];
groupshared struct { float val[1]; } g3[1024];
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[2048];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3072];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[208];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
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
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g2, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g4, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.x = mad((int)vThreadIDInGroup.y, 16, (int)vThreadIDInGroup.x);
  r1.xy = (int2)vThreadID.xy + asint(cb0[0].xy);
  r0.yz = asint(-cb0[0].xy) + asint(cb0[0].zw);
  r0.yz = (uint2)r0.yz;
  r1.zw = float2(0,0);
  r0.w = t0.Load(r1.xyw).x;
  r2.x = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.w = r2.x + r0.w;
  if (r0.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), l(340282346638528860000000000000000000000.000000)
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g2.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g4.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  // Needs manual fix for instruction:
atomic_umin g0, l(0), r0.w
  InterlockedMin(dest, value, orig_value);
  // Needs manual fix for instruction:
atomic_umax g1, l(0), r0.w
  InterlockedMax(dest, value, orig_value);
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r2.x, l(0), g0.xxxx
// No code for instruction (needs manual fix):
ld_raw r3.y, l(0), g1.xxxx
  r2.yz = float2(0.03125,0.03125) * r0.yz;
  r3.zw = (uint2)vThreadGroupID.xy;
  r3.zw = r0.yz * float2(0.03125,0.03125) + -r3.zw;
  r4.y = cb1[28].x * r2.y;
  r4.x = -cb1[29].y * r2.z;
  r4.zw = cb1[30].xy * r2.yz + r3.zw;
  r5.xyzw = float4(0,1,0,1) + -r4.yzxw;
  r4.xyzw = float4(0,1,0,1) + r4.yzxw;
  r2.w = -r2.x;
  r3.z = dot(r5.xy, r5.xy);
  r3.z = sqrt(r3.z);
  r3.z = rcp(r3.z);
  r3.zw = r5.xy * r3.zz;
  r5.x = dot(r4.xy, r4.xy);
  r5.x = sqrt(r5.x);
  r5.x = rcp(r5.x);
  r4.xy = r5.xx * r4.xy;
  r5.x = dot(r5.zw, r5.zw);
  r5.x = sqrt(r5.x);
  r5.x = rcp(r5.x);
  r5.xy = r5.zw * r5.xx;
  r5.z = dot(r4.zw, r4.zw);
  r5.z = sqrt(r5.z);
  r5.z = rcp(r5.z);
  r4.zw = r5.zz * r4.zw;
  r5.z = r0.x;
  while (true) {
    r5.w = cmp((uint)r5.z < asuint(cb0[1].x));
    r6.x = cmp((uint)r5.z < 1024);
    r5.w = r5.w ? r6.x : 0;
    if (r5.w == 0) break;
    r5.w = 1 / cb3[r5.z+0].w;
    r6.xyz = cb3[r5.z+0].xyz + cb1[70].xyz;
    r7.xyz = cb1[13].xyz * r6.yyy;
    r6.xyw = r6.xxx * cb1[12].xyz + r7.xyz;
    r6.xyz = r6.zzz * cb1[14].xyz + r6.xyw;
    r2.xyz = cb1[15].xyz + r6.xyz;
    r6.x = dot(r3.zw, r2.xz);
    r6.x = cmp(r6.x >= -r5.w);
    r2.x = dot(r4.xy, r2.xz);
    r2.x = cmp(r2.x >= -r5.w);
    r2.x = r2.x ? r6.x : 0;
    r6.x = dot(r5.xy, r2.yz);
    r6.x = cmp(r6.x >= -r5.w);
    r2.x = r2.x ? r6.x : 0;
    r2.y = dot(r4.zw, r2.yz);
    r2.y = cmp(r2.y >= -r5.w);
    r2.x = r2.y ? r2.x : 0;
    if (r2.x != 0) {
      r2.x = dot(float2(1,1), r2.zw);
      r3.x = r2.z;
      r2.y = dot(float2(-1,1), r3.xy);
      r2.xy = cmp(r2.xy >= -r5.ww);
      r2.x = r2.y ? r2.x : 0;
      if (r2.x != 0) {
        r2.x = cmp(0 < cb2[r5.z+1024].w);
        if (r2.x != 0) {
          // Needs manual fix for instruction:
                imm_atomic_iadd r6.x, g4, l(0), l(1)
          InterlockedAdd(dest, imm_value, orig_value);
          g5[r6.x].val[0/4] = r5.z;
        } else {
          // Needs manual fix for instruction:
                imm_atomic_iadd r6.x, g2, l(0), l(1)
          InterlockedAdd(dest, imm_value, orig_value);
          g3[r6.x].val[0/4] = r5.z;
        }
      }
    }
    r5.z = (int)r5.z + 256;
  }
  GroupMemoryBarrierWithGroupSync();
  r2.xyzw = t2.Load(r1.xyw).xyzw;
  r0.x = 255 * r2.w;
  r0.x = round(r0.x);
  r0.x = (uint)r0.x;
  r2.w = (int)r0.x & 15;
  r3.xy = cmp((int2)r2.ww != int2(0,14));
  r3.x = r3.y ? r3.x : 0;
  if (r3.x != 0) {
    r3.xy = (uint2)vThreadID.xy;
    r3.xy = float2(0.5,0.5) + r3.xy;
    r0.yz = r3.xy / r0.yz;
    r0.yz = r0.yz * float2(2,-2) + float2(-1,1);
    r3.x = cmp(cb1[31].w < 1);
    r3.x = r3.x ? r0.w : 1;
    r0.yz = r3.xx * r0.yz;
    r3.xyz = cb1[49].xyz * r0.zzz;
    r3.xyz = r0.yyy * cb1[48].xyz + r3.xyz;
    r0.yzw = r0.www * cb1[50].xyz + r3.xyz;
    r0.yzw = cb1[51].xyz + r0.yzw;
  // No code for instruction (needs manual fix):
    ld_raw r3.x, l(0), g2.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r3.y, l(0), g4.xxxx
    r4.xyz = -cb1[67].xyz + r0.yzw;
    r3.z = dot(r4.xyz, r4.xyz);
    r3.z = rsqrt(r3.z);
    r4.xyz = r4.xyz * r3.zzz;
    r5.xyzw = cmp((int4)r2.wwww == int4(1,2,3,4));
    if (r5.x != 0) {
      r6.xyz = t1.Load(r1.xyw).xyz;
      r7.xyz = t3.Load(r1.xyw).xyz;
      r8.xyzw = t4.Load(r1.xyw).xyzw;
      r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r6.xyz, r6.xyz);
      r3.z = rsqrt(r3.z);
      r6.xyz = r6.xyz * r3.zzz;
      r3.zw = (int2)r0.xx & int2(32,64);
      r3.w = r3.w ? 0 : 1;
      r8.xyzw = r3.zzzz ? r3.wwww : r8.xyzw;
      r3.z = 0.0799999982 * r2.y;
      r9.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
      r9.xyz = r2.xxx * r9.xyz + r3.zzz;
      r7.xyz = -r7.xyz * r2.xxx + r7.xyz;
      r7.xyz = r7.xyz * cb1[136].www + cb1[136].xyz;
      r9.xyz = r9.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t5.SampleLevel(s0_s, r3.zw, 0).x;
      r3.w = 1;
      r10.xyz = float3(0,0,0);
      r4.w = 0;
      while (true) {
        r5.x = cmp((uint)r4.w >= (uint)r3.x);
        if (r5.x != 0) break;
        r5.x = g3[r4.w].val[0/4];
        r6.w = cmp(-2 < cb2[r5.x+1024].x);
        r7.w = cmp(0.000000 == cb3[r5.x+1024].w);
        r11.xyz = cb3[r5.x+0].xyz + -r0.yzw;
        r9.w = dot(r11.xyz, r11.xyz);
        r10.w = rsqrt(r9.w);
        r12.xyz = r11.xyz * r10.www;
        r10.w = cb3[r5.x+0].w * cb3[r5.x+0].w;
        r9.w = r10.w * r9.w;
        r9.w = -r9.w * r9.w + 1;
        r9.w = max(0, r9.w);
        r9.w = r9.w * r9.w;
        r11.xyz = cb3[r5.x+0].www * r11.xyz;
        r10.w = dot(r11.xyz, r11.xyz);
        r10.w = min(1, r10.w);
        r10.w = 1 + -r10.w;
        r10.w = log2(r10.w);
        r10.w = cb3[r5.x+1024].w * r10.w;
        r10.w = exp2(r10.w);
        r7.w = r7.w ? r9.w : r10.w;
        r9.w = dot(r12.xyz, cb2[r5.x+0].xyz);
        r9.w = -cb2[r5.x+1024].x + r9.w;
        r9.w = saturate(cb2[r5.x+1024].y * r9.w);
        r9.w = r9.w * r9.w;
        r9.w = r9.w * r7.w;
        r6.w = r6.w ? r9.w : r7.w;
        r6.w = cmp(0 < r6.w);
        if (r6.w != 0) {
          r6.w = dot(cb2[r5.x+2048].xyzw, float4(1,1,1,1));
          r7.w = (uint)r6.w;
          if (r7.w != 0) {
            r5.x = dot(r8.xyzw, cb2[r5.x+2048].xyzw);
            r5.x = -1 + r5.x;
            r11.xy = r6.ww * r5.xx + float2(1,1);
          } else {
            r11.xy = r3.zw;
          }
          r5.x = r11.x + r11.y;
          r5.x = cmp(0 < r5.x);
          if (r5.x != 0) {
            r5.x = 1;
          } else {
            r5.x = 0.600000024;
          }
        } else {
          r5.x = 0.300000012;
        }
        r10.xyz = r5.xxx * float3(0.200000003,0.0500000007,0.0149999997) + r10.xyz;
        r4.w = (int)r4.w + 1;
      }
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r8.xyz = r10.xyz;
      r4.w = 0;
      while (true) {
        r5.x = cmp((uint)r4.w >= (uint)r3.y);
        if (r5.x != 0) break;
        r5.x = g5[r4.w].val[0/4];
        r6.w = cmp(0.000000 == cb3[r5.x+1024].w);
        r11.xyz = cb3[r5.x+0].xyz + -r0.yzw;
        r7.w = dot(r11.xyz, r11.xyz);
        r9.w = 1 + r7.w;
        r9.w = 1 / r9.w;
        r10.w = cb3[r5.x+0].w * cb3[r5.x+0].w;
        r10.w = r10.w * r7.w;
        r10.w = -r10.w * r10.w + 1;
        r10.w = max(0, r10.w);
        r10.w = r10.w * r10.w;
        r9.w = r10.w * r9.w;
        r12.xyz = cb3[r5.x+0].www * r11.xyz;
        r10.w = dot(r12.xyz, r12.xyz);
        r10.w = min(1, r10.w);
        r10.w = 1 + -r10.w;
        r10.w = log2(r10.w);
        r10.w = cb3[r5.x+1024].w * r10.w;
        r10.w = exp2(r10.w);
        r6.w = r6.w ? r9.w : r10.w;
        r9.w = cmp(0 < r6.w);
        if (r9.w != 0) {
          r7.w = rsqrt(r7.w);
          r12.xyz = r11.xyz * r7.www;
          r9.w = saturate(dot(r6.xyz, r12.xyz));
          r6.w = r6.w * r3.z;
          r6.w = r9.w * r6.w;
          r12.xyz = cb3[r5.x+1024].xyz * r6.www;
          r11.xyz = r11.xyz * r7.www + -r4.xyz;
          r5.x = dot(r11.xyz, r11.xyz);
          r5.x = rsqrt(r5.x);
          r11.xyz = r11.xyz * r5.xxx;
          r5.x = saturate(dot(r6.xyz, r11.xyz));
          r6.w = r5.x * r3.w + -r5.x;
          r5.x = r6.w * r5.x + 1;
          r5.x = r5.x * r5.x;
          r5.x = 3.14159274 * r5.x;
          r5.x = r3.w / r5.x;
          r5.x = 0.25 * r5.x;
          r11.xyz = r5.xxx * r9.xyz;
          r11.xyz = r7.xyz * float3(0.318309873,0.318309873,0.318309873) + r11.xyz;
          r11.xyz = r12.xyz * r11.xyz;
        } else {
          r11.xyz = float3(0,0,0);
        }
        r8.xyz = r11.xyz + r8.xyz;
        r4.w = (int)r4.w + 1;
      }
    } else {
      r8.xyz = float3(0,0,0);
    }
    if (r5.y != 0) {
      r6.xyz = t1.Load(r1.xyw).xyz;
      r7.xyz = t3.Load(r1.xyw).xyz;
      r9.xyzw = t4.Load(r1.xyw).xyzw;
      r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r6.xyz, r6.xyz);
      r3.z = rsqrt(r3.z);
      r6.xyz = r6.xyz * r3.zzz;
      r3.zw = (int2)r0.xx & int2(32,64);
      r3.w = r3.w ? 0 : 1;
      r9.xyzw = r3.zzzz ? r3.wwww : r9.xyzw;
      r3.z = 0.0799999982 * r2.y;
      r10.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
      r10.xyz = r2.xxx * r10.xyz + r3.zzz;
      r7.xyz = -r7.xyz * r2.xxx + r7.xyz;
      r7.xyz = r7.xyz * cb1[136].www + cb1[136].xyz;
      r10.xyz = r10.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t5.SampleLevel(s0_s, r3.zw, 0).x;
      r3.w = 1;
      r11.xyz = r8.xyz;
      r4.w = 0;
      while (true) {
        r5.x = cmp((uint)r4.w >= (uint)r3.x);
        if (r5.x != 0) break;
        r5.x = g3[r4.w].val[0/4];
        r5.y = cmp(-2 < cb2[r5.x+1024].x);
        r6.w = cmp(0.000000 == cb3[r5.x+1024].w);
        r12.xyz = cb3[r5.x+0].xyz + -r0.yzw;
        r7.w = dot(r12.xyz, r12.xyz);
        r10.w = rsqrt(r7.w);
        r13.xyz = r12.xyz * r10.www;
        r10.w = cb3[r5.x+0].w * cb3[r5.x+0].w;
        r7.w = r10.w * r7.w;
        r7.w = -r7.w * r7.w + 1;
        r7.w = max(0, r7.w);
        r7.w = r7.w * r7.w;
        r12.xyz = cb3[r5.x+0].www * r12.xyz;
        r10.w = dot(r12.xyz, r12.xyz);
        r10.w = min(1, r10.w);
        r10.w = 1 + -r10.w;
        r10.w = log2(r10.w);
        r10.w = cb3[r5.x+1024].w * r10.w;
        r10.w = exp2(r10.w);
        r6.w = r6.w ? r7.w : r10.w;
        r7.w = dot(r13.xyz, cb2[r5.x+0].xyz);
        r7.w = -cb2[r5.x+1024].x + r7.w;
        r7.w = saturate(cb2[r5.x+1024].y * r7.w);
        r7.w = r7.w * r7.w;
        r7.w = r7.w * r6.w;
        r5.y = r5.y ? r7.w : r6.w;
        r5.y = cmp(0 < r5.y);
        if (r5.y != 0) {
          r5.y = dot(cb2[r5.x+2048].xyzw, float4(1,1,1,1));
          r6.w = (uint)r5.y;
          if (r6.w != 0) {
            r5.x = dot(r9.xyzw, cb2[r5.x+2048].xyzw);
            r5.x = -1 + r5.x;
            r5.xy = r5.yy * r5.xx + float2(1,1);
          } else {
            r5.xy = r3.zw;
          }
          r5.x = r5.x + r5.y;
          r5.x = cmp(0 < r5.x);
          if (r5.x != 0) {
            r5.x = 1;
          } else {
            r5.x = 0.600000024;
          }
        } else {
          r5.x = 0.300000012;
        }
        r11.xyz = r5.xxx * float3(0.200000003,0.0500000007,0.0149999997) + r11.xyz;
        r4.w = (int)r4.w + 1;
      }
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r8.xyz = r11.xyz;
      r4.w = 0;
      while (true) {
        r5.x = cmp((uint)r4.w >= (uint)r3.y);
        if (r5.x != 0) break;
        r5.x = g5[r4.w].val[0/4];
        r5.y = cmp(0.000000 == cb3[r5.x+1024].w);
        r9.xyz = cb3[r5.x+0].xyz + -r0.yzw;
        r6.w = dot(r9.xyz, r9.xyz);
        r7.w = 1 + r6.w;
        r7.w = 1 / r7.w;
        r9.w = cb3[r5.x+0].w * cb3[r5.x+0].w;
        r9.w = r9.w * r6.w;
        r9.w = -r9.w * r9.w + 1;
        r9.w = max(0, r9.w);
        r9.w = r9.w * r9.w;
        r7.w = r9.w * r7.w;
        r12.xyz = cb3[r5.x+0].www * r9.xyz;
        r9.w = dot(r12.xyz, r12.xyz);
        r9.w = min(1, r9.w);
        r9.w = 1 + -r9.w;
        r9.w = log2(r9.w);
        r9.w = cb3[r5.x+1024].w * r9.w;
        r9.w = exp2(r9.w);
        r5.y = r5.y ? r7.w : r9.w;
        r7.w = cmp(0 < r5.y);
        if (r7.w != 0) {
          r6.w = rsqrt(r6.w);
          r12.xyz = r9.xyz * r6.www;
          r7.w = saturate(dot(r6.xyz, r12.xyz));
          r5.y = r5.y * r3.z;
          r5.y = r7.w * r5.y;
          r12.xyz = cb3[r5.x+1024].xyz * r5.yyy;
          r9.xyz = r9.xyz * r6.www + -r4.xyz;
          r5.x = dot(r9.xyz, r9.xyz);
          r5.x = rsqrt(r5.x);
          r9.xyz = r9.xyz * r5.xxx;
          r5.x = saturate(dot(r6.xyz, r9.xyz));
          r5.y = r5.x * r3.w + -r5.x;
          r5.x = r5.y * r5.x + 1;
          r5.x = r5.x * r5.x;
          r5.x = 3.14159274 * r5.x;
          r5.x = r3.w / r5.x;
          r5.x = 0.25 * r5.x;
          r9.xyz = r5.xxx * r10.xyz;
          r9.xyz = r7.xyz * float3(0.318309873,0.318309873,0.318309873) + r9.xyz;
          r9.xyz = r12.xyz * r9.xyz;
        } else {
          r9.xyz = float3(0,0,0);
        }
        r8.xyz = r9.xyz + r8.xyz;
        r4.w = (int)r4.w + 1;
      }
    }
    if (r5.z != 0) {
      r5.xyz = t1.Load(r1.xyw).xyz;
      r6.xyz = t3.Load(r1.xyw).xyz;
      r7.xyzw = t4.Load(r1.xyw).xyzw;
      r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r5.xyz, r5.xyz);
      r3.z = rsqrt(r3.z);
      r5.xyz = r5.xyz * r3.zzz;
      r3.zw = (int2)r0.xx & int2(32,64);
      r3.w = r3.w ? 0 : 1;
      r7.xyzw = r3.zzzz ? r3.wwww : r7.xyzw;
      r3.z = 0.0799999982 * r2.y;
      r9.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
      r9.xyz = r2.xxx * r9.xyz + r3.zzz;
      r6.xyz = -r6.xyz * r2.xxx + r6.xyz;
      r6.xyz = r6.xyz * cb1[136].www + cb1[136].xyz;
      r9.xyz = r9.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t5.SampleLevel(s0_s, r3.zw, 0).x;
      r3.w = 1;
      r10.xyz = r8.xyz;
      r4.w = 0;
      while (true) {
        r6.w = cmp((uint)r4.w >= (uint)r3.x);
        if (r6.w != 0) break;
        r6.w = g3[r4.w].val[0/4];
        r9.w = cmp(-2 < cb2[r6.w+1024].x);
        r10.w = cmp(0.000000 == cb3[r6.w+1024].w);
        r11.xyz = cb3[r6.w+0].xyz + -r0.yzw;
        r11.w = dot(r11.xyz, r11.xyz);
        r12.x = rsqrt(r11.w);
        r12.xyz = r12.xxx * r11.xyz;
        r12.w = cb3[r6.w+0].w * cb3[r6.w+0].w;
        r11.w = r12.w * r11.w;
        r11.w = -r11.w * r11.w + 1;
        r11.w = max(0, r11.w);
        r11.w = r11.w * r11.w;
        r11.xyz = cb3[r6.w+0].www * r11.xyz;
        r11.x = dot(r11.xyz, r11.xyz);
        r11.x = min(1, r11.x);
        r11.x = 1 + -r11.x;
        r11.x = log2(r11.x);
        r11.x = cb3[r6.w+1024].w * r11.x;
        r11.x = exp2(r11.x);
        r10.w = r10.w ? r11.w : r11.x;
        r11.x = dot(r12.xyz, cb2[r6.w+0].xyz);
        r11.x = -cb2[r6.w+1024].x + r11.x;
        r11.x = saturate(cb2[r6.w+1024].y * r11.x);
        r11.x = r11.x * r11.x;
        r11.x = r11.x * r10.w;
        r9.w = r9.w ? r11.x : r10.w;
        r9.w = cmp(0 < r9.w);
        if (r9.w != 0) {
          r9.w = dot(cb2[r6.w+2048].xyzw, float4(1,1,1,1));
          r10.w = (uint)r9.w;
          if (r10.w != 0) {
            r6.w = dot(r7.xyzw, cb2[r6.w+2048].xyzw);
            r6.w = -1 + r6.w;
            r11.xy = r9.ww * r6.ww + float2(1,1);
          } else {
            r11.xy = r3.zw;
          }
          r6.w = r11.x + r11.y;
          r6.w = cmp(0 < r6.w);
          if (r6.w != 0) {
            r6.w = 1;
          } else {
            r6.w = 0.600000024;
          }
        } else {
          r6.w = 0.300000012;
        }
        r10.xyz = r6.www * float3(0.200000003,0.0500000007,0.0149999997) + r10.xyz;
        r4.w = (int)r4.w + 1;
      }
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r8.xyz = r10.xyz;
      r4.w = 0;
      while (true) {
        r6.w = cmp((uint)r4.w >= (uint)r3.y);
        if (r6.w != 0) break;
        r6.w = g5[r4.w].val[0/4];
        r7.x = cmp(0.000000 == cb3[r6.w+1024].w);
        r7.yzw = cb3[r6.w+0].xyz + -r0.yzw;
        r9.w = dot(r7.yzw, r7.yzw);
        r10.w = 1 + r9.w;
        r10.w = 1 / r10.w;
        r11.x = cb3[r6.w+0].w * cb3[r6.w+0].w;
        r11.x = r11.x * r9.w;
        r11.x = -r11.x * r11.x + 1;
        r11.x = max(0, r11.x);
        r11.x = r11.x * r11.x;
        r10.w = r11.x * r10.w;
        r11.xyz = cb3[r6.w+0].www * r7.yzw;
        r11.x = dot(r11.xyz, r11.xyz);
        r11.x = min(1, r11.x);
        r11.x = 1 + -r11.x;
        r11.x = log2(r11.x);
        r11.x = cb3[r6.w+1024].w * r11.x;
        r11.x = exp2(r11.x);
        r7.x = r7.x ? r10.w : r11.x;
        r10.w = cmp(0 < r7.x);
        if (r10.w != 0) {
          r9.w = rsqrt(r9.w);
          r11.xyz = r9.www * r7.yzw;
          r10.w = saturate(dot(r5.xyz, r11.xyz));
          r7.x = r7.x * r3.z;
          r7.x = r10.w * r7.x;
          r11.xyz = cb3[r6.w+1024].xyz * r7.xxx;
          r7.xyz = r7.yzw * r9.www + -r4.xyz;
          r6.w = dot(r7.xyz, r7.xyz);
          r6.w = rsqrt(r6.w);
          r7.xyz = r7.xyz * r6.www;
          r6.w = saturate(dot(r5.xyz, r7.xyz));
          r7.x = r6.w * r3.w + -r6.w;
          r6.w = r7.x * r6.w + 1;
          r6.w = r6.w * r6.w;
          r6.w = 3.14159274 * r6.w;
          r6.w = r3.w / r6.w;
          r6.w = 0.25 * r6.w;
          r7.xyz = r6.www * r9.xyz;
          r7.xyz = r6.xyz * float3(0.318309873,0.318309873,0.318309873) + r7.xyz;
          r7.xyz = r11.xyz * r7.xyz;
        } else {
          r7.xyz = float3(0,0,0);
        }
        r8.xyz = r8.xyz + r7.xyz;
        r4.w = (int)r4.w + 1;
      }
    }
    if (r5.w != 0) {
      r5.xyz = t1.Load(r1.xyw).xyz;
      r6.xyz = t3.Load(r1.xyw).xyz;
      r7.xyzw = t4.Load(r1.xyw).xyzw;
      r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r5.xyz, r5.xyz);
      r3.z = rsqrt(r3.z);
      r5.xyz = r5.xyz * r3.zzz;
      r3.zw = (int2)r0.xx & int2(32,64);
      r3.w = r3.w ? 0 : 1;
      r7.xyzw = r3.zzzz ? r3.wwww : r7.xyzw;
      r3.z = 0.0799999982 * r2.y;
      r9.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
      r9.xyz = r2.xxx * r9.xyz + r3.zzz;
      r6.xyz = -r6.xyz * r2.xxx + r6.xyz;
      r6.xyz = r6.xyz * cb1[136].www + cb1[136].xyz;
      r9.xyz = r9.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t5.SampleLevel(s0_s, r3.zw, 0).x;
      r3.w = 1;
      r10.xyz = r8.xyz;
      r4.w = 0;
      while (true) {
        r5.w = cmp((uint)r4.w >= (uint)r3.x);
        if (r5.w != 0) break;
        r5.w = g3[r4.w].val[0/4];
        r6.w = cmp(-2 < cb2[r5.w+1024].x);
        r9.w = cmp(0.000000 == cb3[r5.w+1024].w);
        r11.xyz = cb3[r5.w+0].xyz + -r0.yzw;
        r10.w = dot(r11.xyz, r11.xyz);
        r11.w = rsqrt(r10.w);
        r12.xyz = r11.xyz * r11.www;
        r11.w = cb3[r5.w+0].w * cb3[r5.w+0].w;
        r10.w = r11.w * r10.w;
        r10.w = -r10.w * r10.w + 1;
        r10.w = max(0, r10.w);
        r10.w = r10.w * r10.w;
        r11.xyz = cb3[r5.w+0].www * r11.xyz;
        r11.x = dot(r11.xyz, r11.xyz);
        r11.x = min(1, r11.x);
        r11.x = 1 + -r11.x;
        r11.x = log2(r11.x);
        r11.x = cb3[r5.w+1024].w * r11.x;
        r11.x = exp2(r11.x);
        r9.w = r9.w ? r10.w : r11.x;
        r10.w = dot(r12.xyz, cb2[r5.w+0].xyz);
        r10.w = -cb2[r5.w+1024].x + r10.w;
        r10.w = saturate(cb2[r5.w+1024].y * r10.w);
        r10.w = r10.w * r10.w;
        r10.w = r10.w * r9.w;
        r6.w = r6.w ? r10.w : r9.w;
        r6.w = cmp(0 < r6.w);
        if (r6.w != 0) {
          r6.w = dot(cb2[r5.w+2048].xyzw, float4(1,1,1,1));
          r9.w = (uint)r6.w;
          if (r9.w != 0) {
            r5.w = dot(r7.xyzw, cb2[r5.w+2048].xyzw);
            r5.w = -1 + r5.w;
            r11.xy = r6.ww * r5.ww + float2(1,1);
          } else {
            r11.xy = r3.zw;
          }
          r5.w = r11.x + r11.y;
          r5.w = cmp(0 < r5.w);
          if (r5.w != 0) {
            r5.w = 1;
          } else {
            r5.w = 0.600000024;
          }
        } else {
          r5.w = 0.300000012;
        }
        r10.xyz = r5.www * float3(0.200000003,0.0500000007,0.0149999997) + r10.xyz;
        r4.w = (int)r4.w + 1;
      }
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r8.xyz = r10.xyz;
      r4.w = 0;
      while (true) {
        r5.w = cmp((uint)r4.w >= (uint)r3.y);
        if (r5.w != 0) break;
        r5.w = g5[r4.w].val[0/4];
        r6.w = cmp(0.000000 == cb3[r5.w+1024].w);
        r7.xyz = cb3[r5.w+0].xyz + -r0.yzw;
        r7.w = dot(r7.xyz, r7.xyz);
        r9.w = 1 + r7.w;
        r9.w = 1 / r9.w;
        r10.w = cb3[r5.w+0].w * cb3[r5.w+0].w;
        r10.w = r10.w * r7.w;
        r10.w = -r10.w * r10.w + 1;
        r10.w = max(0, r10.w);
        r10.w = r10.w * r10.w;
        r9.w = r10.w * r9.w;
        r11.xyz = cb3[r5.w+0].www * r7.xyz;
        r10.w = dot(r11.xyz, r11.xyz);
        r10.w = min(1, r10.w);
        r10.w = 1 + -r10.w;
        r10.w = log2(r10.w);
        r10.w = cb3[r5.w+1024].w * r10.w;
        r10.w = exp2(r10.w);
        r6.w = r6.w ? r9.w : r10.w;
        r9.w = cmp(0 < r6.w);
        if (r9.w != 0) {
          r7.w = rsqrt(r7.w);
          r11.xyz = r7.xyz * r7.www;
          r9.w = saturate(dot(r5.xyz, r11.xyz));
          r6.w = r6.w * r3.z;
          r6.w = r9.w * r6.w;
          r11.xyz = cb3[r5.w+1024].xyz * r6.www;
          r7.xyz = r7.xyz * r7.www + -r4.xyz;
          r5.w = dot(r7.xyz, r7.xyz);
          r5.w = rsqrt(r5.w);
          r7.xyz = r7.xyz * r5.www;
          r5.w = saturate(dot(r5.xyz, r7.xyz));
          r6.w = r5.w * r3.w + -r5.w;
          r5.w = r6.w * r5.w + 1;
          r5.w = r5.w * r5.w;
          r5.w = 3.14159274 * r5.w;
          r5.w = r3.w / r5.w;
          r5.w = 0.25 * r5.w;
          r7.xyz = r5.www * r9.xyz;
          r7.xyz = r6.xyz * float3(0.318309873,0.318309873,0.318309873) + r7.xyz;
          r7.xyz = r11.xyz * r7.xyz;
        } else {
          r7.xyz = float3(0,0,0);
        }
        r8.xyz = r8.xyz + r7.xyz;
        r4.w = (int)r4.w + 1;
      }
    }
    r5.xyzw = cmp((int4)r2.wwww == int4(5,6,7,8));
    if (r5.x != 0) {
      r6.xyz = t1.Load(r1.xyw).xyz;
      r7.xyz = t3.Load(r1.xyw).xyz;
      r9.xyzw = t4.Load(r1.xyw).xyzw;
      r3.z = (uint)cb1[152].x;
      r3.w = (int)r1.y + (int)r1.x;
      r3.z = (int)r3.z + (int)r3.w;
      r3.z = (int)r3.z & 1;
      r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.w = dot(r6.xyz, r6.xyz);
      r3.w = rsqrt(r3.w);
      r6.xyz = r6.xyz * r3.www;
      r10.xy = (int2)r0.xx & int2(32,64);
      r3.w = r10.y ? 0 : 1;
      r9.xyzw = r10.xxxx ? r3.wwww : r9.xyzw;
      r3.w = 0.0799999982 * r2.y;
      r10.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
      r10.xyz = r2.xxx * r10.xyz + r3.www;
      r3.w = cmp(0 < cb1[156].y);
      r4.w = cmp(0 < cb1[207].z);
      r3.w = r3.w ? r4.w : 0;
      r4.w = cmp(0 != cb1[156].y);
      r7.xyz = r4.www ? float3(1,1,1) : r7.xyz;
      r11.xy = r3.zz ? float2(1,0) : float2(0,1);
      r11.yzw = r11.yyy * r10.xyz;
      r7.xyz = r3.www ? r11.xxx : r7.xyz;
      r10.xyz = r3.www ? r11.yzw : r10.xyz;
      r7.xyz = -r7.xyz * r2.xxx + r7.xyz;
      r7.xyz = r7.xyz * cb1[136].www + cb1[136].xyz;
      r10.xyz = r10.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t5.SampleLevel(s0_s, r3.zw, 0).x;
      r3.w = 1;
      r11.xyz = r8.xyz;
      r4.w = 0;
      while (true) {
        r5.x = cmp((uint)r4.w >= (uint)r3.x);
        if (r5.x != 0) break;
        r5.x = g3[r4.w].val[0/4];
        r6.w = cmp(-2 < cb2[r5.x+1024].x);
        r7.w = cmp(0.000000 == cb3[r5.x+1024].w);
        r12.xyz = cb3[r5.x+0].xyz + -r0.yzw;
        r10.w = dot(r12.xyz, r12.xyz);
        r11.w = rsqrt(r10.w);
        r13.xyz = r12.xyz * r11.www;
        r11.w = cb3[r5.x+0].w * cb3[r5.x+0].w;
        r10.w = r11.w * r10.w;
        r10.w = -r10.w * r10.w + 1;
        r10.w = max(0, r10.w);
        r10.w = r10.w * r10.w;
        r12.xyz = cb3[r5.x+0].www * r12.xyz;
        r11.w = dot(r12.xyz, r12.xyz);
        r11.w = min(1, r11.w);
        r11.w = 1 + -r11.w;
        r11.w = log2(r11.w);
        r11.w = cb3[r5.x+1024].w * r11.w;
        r11.w = exp2(r11.w);
        r7.w = r7.w ? r10.w : r11.w;
        r10.w = dot(r13.xyz, cb2[r5.x+0].xyz);
        r10.w = -cb2[r5.x+1024].x + r10.w;
        r10.w = saturate(cb2[r5.x+1024].y * r10.w);
        r10.w = r10.w * r10.w;
        r10.w = r10.w * r7.w;
        r6.w = r6.w ? r10.w : r7.w;
        r6.w = cmp(0 < r6.w);
        if (r6.w != 0) {
          r6.w = dot(cb2[r5.x+2048].xyzw, float4(1,1,1,1));
          r7.w = (uint)r6.w;
          if (r7.w != 0) {
            r5.x = dot(r9.xyzw, cb2[r5.x+2048].xyzw);
            r5.x = -1 + r5.x;
            r12.xy = r6.ww * r5.xx + float2(1,1);
          } else {
            r12.xy = r3.zw;
          }
          r5.x = r12.x + r12.y;
          r5.x = cmp(0 < r5.x);
          if (r5.x != 0) {
            r5.x = 1;
          } else {
            r5.x = 0.600000024;
          }
        } else {
          r5.x = 0.300000012;
        }
        r11.xyz = r5.xxx * float3(0.200000003,0.0500000007,0.0149999997) + r11.xyz;
        r4.w = (int)r4.w + 1;
      }
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r8.xyz = r11.xyz;
      r4.w = 0;
      while (true) {
        r5.x = cmp((uint)r4.w >= (uint)r3.y);
        if (r5.x != 0) break;
        r5.x = g5[r4.w].val[0/4];
        r6.w = cmp(0.000000 == cb3[r5.x+1024].w);
        r9.xyz = cb3[r5.x+0].xyz + -r0.yzw;
        r7.w = dot(r9.xyz, r9.xyz);
        r9.w = 1 + r7.w;
        r9.w = 1 / r9.w;
        r10.w = cb3[r5.x+0].w * cb3[r5.x+0].w;
        r10.w = r10.w * r7.w;
        r10.w = -r10.w * r10.w + 1;
        r10.w = max(0, r10.w);
        r10.w = r10.w * r10.w;
        r9.w = r10.w * r9.w;
        r12.xyz = cb3[r5.x+0].www * r9.xyz;
        r10.w = dot(r12.xyz, r12.xyz);
        r10.w = min(1, r10.w);
        r10.w = 1 + -r10.w;
        r10.w = log2(r10.w);
        r10.w = cb3[r5.x+1024].w * r10.w;
        r10.w = exp2(r10.w);
        r6.w = r6.w ? r9.w : r10.w;
        r9.w = cmp(0 < r6.w);
        if (r9.w != 0) {
          r7.w = rsqrt(r7.w);
          r12.xyz = r9.xyz * r7.www;
          r9.w = saturate(dot(r6.xyz, r12.xyz));
          r6.w = r6.w * r3.z;
          r6.w = r9.w * r6.w;
          r12.xyz = cb3[r5.x+1024].xyz * r6.www;
          r9.xyz = r9.xyz * r7.www + -r4.xyz;
          r5.x = dot(r9.xyz, r9.xyz);
          r5.x = rsqrt(r5.x);
          r9.xyz = r9.xyz * r5.xxx;
          r5.x = saturate(dot(r6.xyz, r9.xyz));
          r6.w = r5.x * r3.w + -r5.x;
          r5.x = r6.w * r5.x + 1;
          r5.x = r5.x * r5.x;
          r5.x = 3.14159274 * r5.x;
          r5.x = r3.w / r5.x;
          r5.x = 0.25 * r5.x;
          r9.xyz = r5.xxx * r10.xyz;
          r9.xyz = r7.xyz * float3(0.318309873,0.318309873,0.318309873) + r9.xyz;
          r9.xyz = r12.xyz * r9.xyz;
        } else {
          r9.xyz = float3(0,0,0);
        }
        r8.xyz = r9.xyz + r8.xyz;
        r4.w = (int)r4.w + 1;
      }
    }
    if (r5.y != 0) {
      r6.xyz = t1.Load(r1.xyw).xyz;
      r7.xyz = t3.Load(r1.xyw).xyz;
      r9.xyzw = t4.Load(r1.xyw).xyzw;
      r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r6.xyz, r6.xyz);
      r3.z = rsqrt(r3.z);
      r6.xyz = r6.xyz * r3.zzz;
      r3.zw = (int2)r0.xx & int2(32,64);
      r3.w = r3.w ? 0 : 1;
      r9.xyzw = r3.zzzz ? r3.wwww : r9.xyzw;
      r3.z = 0.0799999982 * r2.y;
      r10.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
      r10.xyz = r2.xxx * r10.xyz + r3.zzz;
      r7.xyz = -r7.xyz * r2.xxx + r7.xyz;
      r7.xyz = r7.xyz * cb1[136].www + cb1[136].xyz;
      r10.xyz = r10.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t5.SampleLevel(s0_s, r3.zw, 0).x;
      r3.w = 1;
      r11.xyz = r8.xyz;
      r4.w = 0;
      while (true) {
        r5.x = cmp((uint)r4.w >= (uint)r3.x);
        if (r5.x != 0) break;
        r5.x = g3[r4.w].val[0/4];
        r5.y = cmp(-2 < cb2[r5.x+1024].x);
        r6.w = cmp(0.000000 == cb3[r5.x+1024].w);
        r12.xyz = cb3[r5.x+0].xyz + -r0.yzw;
        r7.w = dot(r12.xyz, r12.xyz);
        r10.w = rsqrt(r7.w);
        r13.xyz = r12.xyz * r10.www;
        r10.w = cb3[r5.x+0].w * cb3[r5.x+0].w;
        r7.w = r10.w * r7.w;
        r7.w = -r7.w * r7.w + 1;
        r7.w = max(0, r7.w);
        r7.w = r7.w * r7.w;
        r12.xyz = cb3[r5.x+0].www * r12.xyz;
        r10.w = dot(r12.xyz, r12.xyz);
        r10.w = min(1, r10.w);
        r10.w = 1 + -r10.w;
        r10.w = log2(r10.w);
        r10.w = cb3[r5.x+1024].w * r10.w;
        r10.w = exp2(r10.w);
        r6.w = r6.w ? r7.w : r10.w;
        r7.w = dot(r13.xyz, cb2[r5.x+0].xyz);
        r7.w = -cb2[r5.x+1024].x + r7.w;
        r7.w = saturate(cb2[r5.x+1024].y * r7.w);
        r7.w = r7.w * r7.w;
        r7.w = r7.w * r6.w;
        r5.y = r5.y ? r7.w : r6.w;
        r5.y = cmp(0 < r5.y);
        if (r5.y != 0) {
          r5.y = dot(cb2[r5.x+2048].xyzw, float4(1,1,1,1));
          r6.w = (uint)r5.y;
          if (r6.w != 0) {
            r5.x = dot(r9.xyzw, cb2[r5.x+2048].xyzw);
            r5.x = -1 + r5.x;
            r5.xy = r5.yy * r5.xx + float2(1,1);
          } else {
            r5.xy = r3.zw;
          }
          r5.x = r5.x + r5.y;
          r5.x = cmp(0 < r5.x);
          if (r5.x != 0) {
            r5.x = 1;
          } else {
            r5.x = 0.600000024;
          }
        } else {
          r5.x = 0.300000012;
        }
        r11.xyz = r5.xxx * float3(0.200000003,0.0500000007,0.0149999997) + r11.xyz;
        r4.w = (int)r4.w + 1;
      }
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r8.xyz = r11.xyz;
      r4.w = 0;
      while (true) {
        r5.x = cmp((uint)r4.w >= (uint)r3.y);
        if (r5.x != 0) break;
        r5.x = g5[r4.w].val[0/4];
        r5.y = cmp(0.000000 == cb3[r5.x+1024].w);
        r9.xyz = cb3[r5.x+0].xyz + -r0.yzw;
        r6.w = dot(r9.xyz, r9.xyz);
        r7.w = 1 + r6.w;
        r7.w = 1 / r7.w;
        r9.w = cb3[r5.x+0].w * cb3[r5.x+0].w;
        r9.w = r9.w * r6.w;
        r9.w = -r9.w * r9.w + 1;
        r9.w = max(0, r9.w);
        r9.w = r9.w * r9.w;
        r7.w = r9.w * r7.w;
        r12.xyz = cb3[r5.x+0].www * r9.xyz;
        r9.w = dot(r12.xyz, r12.xyz);
        r9.w = min(1, r9.w);
        r9.w = 1 + -r9.w;
        r9.w = log2(r9.w);
        r9.w = cb3[r5.x+1024].w * r9.w;
        r9.w = exp2(r9.w);
        r5.y = r5.y ? r7.w : r9.w;
        r7.w = cmp(0 < r5.y);
        if (r7.w != 0) {
          r6.w = rsqrt(r6.w);
          r12.xyz = r9.xyz * r6.www;
          r7.w = saturate(dot(r6.xyz, r12.xyz));
          r5.y = r5.y * r3.z;
          r5.y = r7.w * r5.y;
          r12.xyz = cb3[r5.x+1024].xyz * r5.yyy;
          r9.xyz = r9.xyz * r6.www + -r4.xyz;
          r5.x = dot(r9.xyz, r9.xyz);
          r5.x = rsqrt(r5.x);
          r9.xyz = r9.xyz * r5.xxx;
          r5.x = saturate(dot(r6.xyz, r9.xyz));
          r5.y = r5.x * r3.w + -r5.x;
          r5.x = r5.y * r5.x + 1;
          r5.x = r5.x * r5.x;
          r5.x = 3.14159274 * r5.x;
          r5.x = r3.w / r5.x;
          r5.x = 0.25 * r5.x;
          r9.xyz = r5.xxx * r10.xyz;
          r9.xyz = r7.xyz * float3(0.318309873,0.318309873,0.318309873) + r9.xyz;
          r9.xyz = r12.xyz * r9.xyz;
        } else {
          r9.xyz = float3(0,0,0);
        }
        r8.xyz = r9.xyz + r8.xyz;
        r4.w = (int)r4.w + 1;
      }
    }
    if (r5.z != 0) {
      r5.xyz = t1.Load(r1.xyw).xyz;
      r6.xyz = t3.Load(r1.xyw).xyz;
      r7.xyzw = t4.Load(r1.xyw).xyzw;
      r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r5.xyz, r5.xyz);
      r3.z = rsqrt(r3.z);
      r5.xyz = r5.xyz * r3.zzz;
      r3.zw = (int2)r0.xx & int2(32,64);
      r3.w = r3.w ? 0 : 1;
      r7.xyzw = r3.zzzz ? r3.wwww : r7.xyzw;
      r3.z = 0.0799999982 * r2.y;
      r9.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
      r9.xyz = r2.xxx * r9.xyz + r3.zzz;
      r6.xyz = -r6.xyz * r2.xxx + r6.xyz;
      r6.xyz = r6.xyz * cb1[136].www + cb1[136].xyz;
      r9.xyz = r9.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t5.SampleLevel(s0_s, r3.zw, 0).x;
      r3.w = 1;
      r10.xyz = r8.xyz;
      r4.w = 0;
      while (true) {
        r6.w = cmp((uint)r4.w >= (uint)r3.x);
        if (r6.w != 0) break;
        r6.w = g3[r4.w].val[0/4];
        r9.w = cmp(-2 < cb2[r6.w+1024].x);
        r10.w = cmp(0.000000 == cb3[r6.w+1024].w);
        r11.xyz = cb3[r6.w+0].xyz + -r0.yzw;
        r11.w = dot(r11.xyz, r11.xyz);
        r12.x = rsqrt(r11.w);
        r12.xyz = r12.xxx * r11.xyz;
        r12.w = cb3[r6.w+0].w * cb3[r6.w+0].w;
        r11.w = r12.w * r11.w;
        r11.w = -r11.w * r11.w + 1;
        r11.w = max(0, r11.w);
        r11.w = r11.w * r11.w;
        r11.xyz = cb3[r6.w+0].www * r11.xyz;
        r11.x = dot(r11.xyz, r11.xyz);
        r11.x = min(1, r11.x);
        r11.x = 1 + -r11.x;
        r11.x = log2(r11.x);
        r11.x = cb3[r6.w+1024].w * r11.x;
        r11.x = exp2(r11.x);
        r10.w = r10.w ? r11.w : r11.x;
        r11.x = dot(r12.xyz, cb2[r6.w+0].xyz);
        r11.x = -cb2[r6.w+1024].x + r11.x;
        r11.x = saturate(cb2[r6.w+1024].y * r11.x);
        r11.x = r11.x * r11.x;
        r11.x = r11.x * r10.w;
        r9.w = r9.w ? r11.x : r10.w;
        r9.w = cmp(0 < r9.w);
        if (r9.w != 0) {
          r9.w = dot(cb2[r6.w+2048].xyzw, float4(1,1,1,1));
          r10.w = (uint)r9.w;
          if (r10.w != 0) {
            r6.w = dot(r7.xyzw, cb2[r6.w+2048].xyzw);
            r6.w = -1 + r6.w;
            r11.xy = r9.ww * r6.ww + float2(1,1);
          } else {
            r11.xy = r3.zw;
          }
          r6.w = r11.x + r11.y;
          r6.w = cmp(0 < r6.w);
          if (r6.w != 0) {
            r6.w = 1;
          } else {
            r6.w = 0.600000024;
          }
        } else {
          r6.w = 0.300000012;
        }
        r10.xyz = r6.www * float3(0.200000003,0.0500000007,0.0149999997) + r10.xyz;
        r4.w = (int)r4.w + 1;
      }
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r8.xyz = r10.xyz;
      r4.w = 0;
      while (true) {
        r6.w = cmp((uint)r4.w >= (uint)r3.y);
        if (r6.w != 0) break;
        r6.w = g5[r4.w].val[0/4];
        r7.x = cmp(0.000000 == cb3[r6.w+1024].w);
        r7.yzw = cb3[r6.w+0].xyz + -r0.yzw;
        r9.w = dot(r7.yzw, r7.yzw);
        r10.w = 1 + r9.w;
        r10.w = 1 / r10.w;
        r11.x = cb3[r6.w+0].w * cb3[r6.w+0].w;
        r11.x = r11.x * r9.w;
        r11.x = -r11.x * r11.x + 1;
        r11.x = max(0, r11.x);
        r11.x = r11.x * r11.x;
        r10.w = r11.x * r10.w;
        r11.xyz = cb3[r6.w+0].www * r7.yzw;
        r11.x = dot(r11.xyz, r11.xyz);
        r11.x = min(1, r11.x);
        r11.x = 1 + -r11.x;
        r11.x = log2(r11.x);
        r11.x = cb3[r6.w+1024].w * r11.x;
        r11.x = exp2(r11.x);
        r7.x = r7.x ? r10.w : r11.x;
        r10.w = cmp(0 < r7.x);
        if (r10.w != 0) {
          r9.w = rsqrt(r9.w);
          r11.xyz = r9.www * r7.yzw;
          r10.w = saturate(dot(r5.xyz, r11.xyz));
          r7.x = r7.x * r3.z;
          r7.x = r10.w * r7.x;
          r11.xyz = cb3[r6.w+1024].xyz * r7.xxx;
          r7.xyz = r7.yzw * r9.www + -r4.xyz;
          r6.w = dot(r7.xyz, r7.xyz);
          r6.w = rsqrt(r6.w);
          r7.xyz = r7.xyz * r6.www;
          r6.w = saturate(dot(r5.xyz, r7.xyz));
          r7.x = r6.w * r3.w + -r6.w;
          r6.w = r7.x * r6.w + 1;
          r6.w = r6.w * r6.w;
          r6.w = 3.14159274 * r6.w;
          r6.w = r3.w / r6.w;
          r6.w = 0.25 * r6.w;
          r7.xyz = r6.www * r9.xyz;
          r7.xyz = r6.xyz * float3(0.318309873,0.318309873,0.318309873) + r7.xyz;
          r7.xyz = r11.xyz * r7.xyz;
        } else {
          r7.xyz = float3(0,0,0);
        }
        r8.xyz = r8.xyz + r7.xyz;
        r4.w = (int)r4.w + 1;
      }
    }
    if (r5.w != 0) {
      r5.xyz = t1.Load(r1.xyw).xyz;
      r6.xyz = t3.Load(r1.xyw).xyz;
      r7.xyzw = t4.Load(r1.xyw).xyzw;
      r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r5.xyz, r5.xyz);
      r3.z = rsqrt(r3.z);
      r5.xyz = r5.xyz * r3.zzz;
      r3.zw = (int2)r0.xx & int2(32,64);
      r3.w = r3.w ? 0 : 1;
      r7.xyzw = r3.zzzz ? r3.wwww : r7.xyzw;
      r3.z = 0.0799999982 * r2.y;
      r9.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
      r9.xyz = r2.xxx * r9.xyz + r3.zzz;
      r6.xyz = -r6.xyz * r2.xxx + r6.xyz;
      r6.xyz = r6.xyz * cb1[136].www + cb1[136].xyz;
      r9.xyz = r9.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t5.SampleLevel(s0_s, r3.zw, 0).x;
      r3.w = 1;
      r10.xyz = r8.xyz;
      r4.w = 0;
      while (true) {
        r5.w = cmp((uint)r4.w >= (uint)r3.x);
        if (r5.w != 0) break;
        r5.w = g3[r4.w].val[0/4];
        r6.w = cmp(-2 < cb2[r5.w+1024].x);
        r9.w = cmp(0.000000 == cb3[r5.w+1024].w);
        r11.xyz = cb3[r5.w+0].xyz + -r0.yzw;
        r10.w = dot(r11.xyz, r11.xyz);
        r11.w = rsqrt(r10.w);
        r12.xyz = r11.xyz * r11.www;
        r11.w = cb3[r5.w+0].w * cb3[r5.w+0].w;
        r10.w = r11.w * r10.w;
        r10.w = -r10.w * r10.w + 1;
        r10.w = max(0, r10.w);
        r10.w = r10.w * r10.w;
        r11.xyz = cb3[r5.w+0].www * r11.xyz;
        r11.x = dot(r11.xyz, r11.xyz);
        r11.x = min(1, r11.x);
        r11.x = 1 + -r11.x;
        r11.x = log2(r11.x);
        r11.x = cb3[r5.w+1024].w * r11.x;
        r11.x = exp2(r11.x);
        r9.w = r9.w ? r10.w : r11.x;
        r10.w = dot(r12.xyz, cb2[r5.w+0].xyz);
        r10.w = -cb2[r5.w+1024].x + r10.w;
        r10.w = saturate(cb2[r5.w+1024].y * r10.w);
        r10.w = r10.w * r10.w;
        r10.w = r10.w * r9.w;
        r6.w = r6.w ? r10.w : r9.w;
        r6.w = cmp(0 < r6.w);
        if (r6.w != 0) {
          r6.w = dot(cb2[r5.w+2048].xyzw, float4(1,1,1,1));
          r9.w = (uint)r6.w;
          if (r9.w != 0) {
            r5.w = dot(r7.xyzw, cb2[r5.w+2048].xyzw);
            r5.w = -1 + r5.w;
            r11.xy = r6.ww * r5.ww + float2(1,1);
          } else {
            r11.xy = r3.zw;
          }
          r5.w = r11.x + r11.y;
          r5.w = cmp(0 < r5.w);
          if (r5.w != 0) {
            r5.w = 1;
          } else {
            r5.w = 0.600000024;
          }
        } else {
          r5.w = 0.300000012;
        }
        r10.xyz = r5.www * float3(0.200000003,0.0500000007,0.0149999997) + r10.xyz;
        r4.w = (int)r4.w + 1;
      }
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r8.xyz = r10.xyz;
      r4.w = 0;
      while (true) {
        r5.w = cmp((uint)r4.w >= (uint)r3.y);
        if (r5.w != 0) break;
        r5.w = g5[r4.w].val[0/4];
        r6.w = cmp(0.000000 == cb3[r5.w+1024].w);
        r7.xyz = cb3[r5.w+0].xyz + -r0.yzw;
        r7.w = dot(r7.xyz, r7.xyz);
        r9.w = 1 + r7.w;
        r9.w = 1 / r9.w;
        r10.w = cb3[r5.w+0].w * cb3[r5.w+0].w;
        r10.w = r10.w * r7.w;
        r10.w = -r10.w * r10.w + 1;
        r10.w = max(0, r10.w);
        r10.w = r10.w * r10.w;
        r9.w = r10.w * r9.w;
        r11.xyz = cb3[r5.w+0].www * r7.xyz;
        r10.w = dot(r11.xyz, r11.xyz);
        r10.w = min(1, r10.w);
        r10.w = 1 + -r10.w;
        r10.w = log2(r10.w);
        r10.w = cb3[r5.w+1024].w * r10.w;
        r10.w = exp2(r10.w);
        r6.w = r6.w ? r9.w : r10.w;
        r9.w = cmp(0 < r6.w);
        if (r9.w != 0) {
          r7.w = rsqrt(r7.w);
          r11.xyz = r7.xyz * r7.www;
          r9.w = saturate(dot(r5.xyz, r11.xyz));
          r6.w = r6.w * r3.z;
          r6.w = r9.w * r6.w;
          r11.xyz = cb3[r5.w+1024].xyz * r6.www;
          r7.xyz = r7.xyz * r7.www + -r4.xyz;
          r5.w = dot(r7.xyz, r7.xyz);
          r5.w = rsqrt(r5.w);
          r7.xyz = r7.xyz * r5.www;
          r5.w = saturate(dot(r5.xyz, r7.xyz));
          r6.w = r5.w * r3.w + -r5.w;
          r5.w = r6.w * r5.w + 1;
          r5.w = r5.w * r5.w;
          r5.w = 3.14159274 * r5.w;
          r5.w = r3.w / r5.w;
          r5.w = 0.25 * r5.w;
          r7.xyz = r5.www * r9.xyz;
          r7.xyz = r6.xyz * float3(0.318309873,0.318309873,0.318309873) + r7.xyz;
          r7.xyz = r11.xyz * r7.xyz;
        } else {
          r7.xyz = float3(0,0,0);
        }
        r8.xyz = r8.xyz + r7.xyz;
        r4.w = (int)r4.w + 1;
      }
    }
    r3.zw = cmp((int2)r2.ww == int2(9,10));
    if (r3.z != 0) {
      r5.xyz = t1.Load(r1.xyw).xyz;
      r6.xyz = t3.Load(r1.xyw).xyz;
      r7.xyzw = t4.Load(r1.xyw).xyzw;
      r2.w = (uint)cb1[152].x;
      r3.z = (int)r1.y + (int)r1.x;
      r2.w = (int)r2.w + (int)r3.z;
      r2.w = (int)r2.w & 1;
      r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r5.xyz, r5.xyz);
      r3.z = rsqrt(r3.z);
      r5.xyz = r5.xyz * r3.zzz;
      r9.xy = (int2)r0.xx & int2(32,64);
      r3.z = r9.y ? 0 : 1;
      r7.xyzw = r9.xxxx ? r3.zzzz : r7.xyzw;
      r3.z = 0.0799999982 * r2.y;
      r4.w = cmp(0 < cb1[156].y);
      r5.w = cmp(0 < cb1[207].z);
      r4.w = r4.w ? r5.w : 0;
      r5.w = cmp(0 != cb1[156].y);
      r6.xyz = r5.www ? float3(1,1,1) : r6.xyz;
      r9.xy = r2.ww ? float2(1,0) : float2(0,1);
      r2.w = r9.y * r3.z;
      r6.xyz = r4.www ? r9.xxx : r6.xyz;
      r2.w = r4.w ? r2.w : r3.z;
      r6.xyz = r6.xyz * cb1[136].www + cb1[136].xyz;
      r9.xyz = r2.www * cb1[137].www + cb1[137].xyz;
      r10.xy = (uint2)r1.xy;
      r10.xy = float2(0.5,0.5) + r10.xy;
      r10.xy = cb1[132].zw * r10.xy;
      r10.x = t5.SampleLevel(s0_s, r10.xy, 0).x;
      r10.y = 1;
      r11.xyz = r8.xyz;
      r2.w = 0;
      while (true) {
        r3.z = cmp((uint)r2.w >= (uint)r3.x);
        if (r3.z != 0) break;
        r3.z = g3[r2.w].val[0/4];
        r4.w = cmp(-2 < cb2[r3.z+1024].x);
        r5.w = cmp(0.000000 == cb3[r3.z+1024].w);
        r12.xyz = cb3[r3.z+0].xyz + -r0.yzw;
        r6.w = dot(r12.xyz, r12.xyz);
        r9.w = rsqrt(r6.w);
        r13.xyz = r12.xyz * r9.www;
        r9.w = cb3[r3.z+0].w * cb3[r3.z+0].w;
        r6.w = r9.w * r6.w;
        r6.w = -r6.w * r6.w + 1;
        r6.w = max(0, r6.w);
        r6.w = r6.w * r6.w;
        r12.xyz = cb3[r3.z+0].www * r12.xyz;
        r9.w = dot(r12.xyz, r12.xyz);
        r9.w = min(1, r9.w);
        r9.w = 1 + -r9.w;
        r9.w = log2(r9.w);
        r9.w = cb3[r3.z+1024].w * r9.w;
        r9.w = exp2(r9.w);
        r5.w = r5.w ? r6.w : r9.w;
        r6.w = dot(r13.xyz, cb2[r3.z+0].xyz);
        r6.w = -cb2[r3.z+1024].x + r6.w;
        r6.w = saturate(cb2[r3.z+1024].y * r6.w);
        r6.w = r6.w * r6.w;
        r6.w = r6.w * r5.w;
        r4.w = r4.w ? r6.w : r5.w;
        r4.w = cmp(0 < r4.w);
        if (r4.w != 0) {
          r4.w = dot(cb2[r3.z+2048].xyzw, float4(1,1,1,1));
          r5.w = (uint)r4.w;
          if (r5.w != 0) {
            r3.z = dot(r7.xyzw, cb2[r3.z+2048].xyzw);
            r3.z = -1 + r3.z;
            r10.zw = r4.ww * r3.zz + float2(1,1);
          } else {
            r10.zw = r10.xy;
          }
          r3.z = r10.z + r10.w;
          r3.z = cmp(0 < r3.z);
          if (r3.z != 0) {
            r3.z = 1;
          } else {
            r3.z = 0.600000024;
          }
        } else {
          r3.z = 0.300000012;
        }
        r11.xyz = r3.zzz * float3(0.200000003,0.0500000007,0.0149999997) + r11.xyz;
        r2.w = (int)r2.w + 1;
      }
      r2.w = max(0.0399999991, r2.z);
      r2.w = r2.w * r2.w;
      r2.w = r2.w * r2.w;
      r8.xyz = r11.xyz;
      r3.z = 0;
      while (true) {
        r4.w = cmp((uint)r3.z >= (uint)r3.y);
        if (r4.w != 0) break;
        r4.w = g5[r3.z].val[0/4];
        r5.w = cmp(0.000000 == cb3[r4.w+1024].w);
        r7.xyz = cb3[r4.w+0].xyz + -r0.yzw;
        r6.w = dot(r7.xyz, r7.xyz);
        r7.w = 1 + r6.w;
        r7.w = 1 / r7.w;
        r9.w = cb3[r4.w+0].w * cb3[r4.w+0].w;
        r9.w = r9.w * r6.w;
        r9.w = -r9.w * r9.w + 1;
        r9.w = max(0, r9.w);
        r9.w = r9.w * r9.w;
        r7.w = r9.w * r7.w;
        r10.yzw = cb3[r4.w+0].www * r7.xyz;
        r9.w = dot(r10.yzw, r10.yzw);
        r9.w = min(1, r9.w);
        r9.w = 1 + -r9.w;
        r9.w = log2(r9.w);
        r9.w = cb3[r4.w+1024].w * r9.w;
        r9.w = exp2(r9.w);
        r5.w = r5.w ? r7.w : r9.w;
        r7.w = cmp(0 < r5.w);
        if (r7.w != 0) {
          r6.w = rsqrt(r6.w);
          r10.yzw = r7.xyz * r6.www;
          r7.w = saturate(dot(r5.xyz, r10.yzw));
          r5.w = r5.w * r10.x;
          r5.w = r7.w * r5.w;
          r10.yzw = cb3[r4.w+1024].xyz * r5.www;
          r7.xyz = r7.xyz * r6.www + -r4.xyz;
          r4.w = dot(r7.xyz, r7.xyz);
          r4.w = rsqrt(r4.w);
          r7.xyz = r7.xyz * r4.www;
          r4.w = saturate(dot(r5.xyz, r7.xyz));
          r5.w = r4.w * r2.w + -r4.w;
          r4.w = r5.w * r4.w + 1;
          r4.w = r4.w * r4.w;
          r4.w = 3.14159274 * r4.w;
          r4.w = r2.w / r4.w;
          r4.w = 0.25 * r4.w;
          r7.xyz = r4.www * r9.xyz;
          r7.xyz = r6.xyz * float3(0.318309873,0.318309873,0.318309873) + r7.xyz;
          r7.xyz = r10.yzw * r7.xyz;
        } else {
          r7.xyz = float3(0,0,0);
        }
        r8.xyz = r8.xyz + r7.xyz;
        r3.z = (int)r3.z + 1;
      }
    }
    if (r3.w != 0) {
      r5.xyz = t1.Load(r1.xyw).xyz;
      r6.xyz = t3.Load(r1.xyw).xyz;
      r7.xyzw = t4.Load(r1.xyw).xyzw;
      r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r2.w = dot(r5.xyz, r5.xyz);
      r2.w = rsqrt(r2.w);
      r5.xyz = r5.xyz * r2.www;
      r3.zw = (int2)r0.xx & int2(32,64);
      r0.x = r3.w ? 0 : 1;
      r7.xyzw = r3.zzzz ? r0.xxxx : r7.xyzw;
      r0.x = 0.0799999982 * r2.y;
      r9.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
      r9.xyz = r2.xxx * r9.xyz + r0.xxx;
      r2.xyw = -r6.xyz * r2.xxx + r6.xyz;
      r2.xyw = r2.xyw * cb1[136].www + cb1[136].xyz;
      r6.xyz = r9.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t5.SampleLevel(s0_s, r3.zw, 0).x;
      r3.w = 1;
      r9.xyz = r8.xyz;
      r0.x = 0;
      while (true) {
        r4.w = cmp((uint)r0.x >= (uint)r3.x);
        if (r4.w != 0) break;
        r4.w = g3[r0.x].val[0/4];
        r5.w = cmp(-2 < cb2[r4.w+1024].x);
        r6.w = cmp(0.000000 == cb3[r4.w+1024].w);
        r10.xyz = cb3[r4.w+0].xyz + -r0.yzw;
        r9.w = dot(r10.xyz, r10.xyz);
        r10.w = rsqrt(r9.w);
        r11.xyz = r10.xyz * r10.www;
        r10.w = cb3[r4.w+0].w * cb3[r4.w+0].w;
        r9.w = r10.w * r9.w;
        r9.w = -r9.w * r9.w + 1;
        r9.w = max(0, r9.w);
        r9.w = r9.w * r9.w;
        r10.xyz = cb3[r4.w+0].www * r10.xyz;
        r10.x = dot(r10.xyz, r10.xyz);
        r10.x = min(1, r10.x);
        r10.x = 1 + -r10.x;
        r10.x = log2(r10.x);
        r10.x = cb3[r4.w+1024].w * r10.x;
        r10.x = exp2(r10.x);
        r6.w = r6.w ? r9.w : r10.x;
        r9.w = dot(r11.xyz, cb2[r4.w+0].xyz);
        r9.w = -cb2[r4.w+1024].x + r9.w;
        r9.w = saturate(cb2[r4.w+1024].y * r9.w);
        r9.w = r9.w * r9.w;
        r9.w = r9.w * r6.w;
        r5.w = r5.w ? r9.w : r6.w;
        r5.w = cmp(0 < r5.w);
        if (r5.w != 0) {
          r5.w = dot(cb2[r4.w+2048].xyzw, float4(1,1,1,1));
          r6.w = (uint)r5.w;
          if (r6.w != 0) {
            r4.w = dot(r7.xyzw, cb2[r4.w+2048].xyzw);
            r4.w = -1 + r4.w;
            r10.xy = r5.ww * r4.ww + float2(1,1);
          } else {
            r10.xy = r3.zw;
          }
          r4.w = r10.x + r10.y;
          r4.w = cmp(0 < r4.w);
          if (r4.w != 0) {
            r4.w = 1;
          } else {
            r4.w = 0.600000024;
          }
        } else {
          r4.w = 0.300000012;
        }
        r9.xyz = r4.www * float3(0.200000003,0.0500000007,0.0149999997) + r9.xyz;
        r0.x = (int)r0.x + 1;
      }
      r0.x = max(0.0399999991, r2.z);
      r0.x = r0.x * r0.x;
      r0.x = r0.x * r0.x;
      r8.xyz = r9.xyz;
      r2.z = 0;
      while (true) {
        r3.x = cmp((uint)r2.z >= (uint)r3.y);
        if (r3.x != 0) break;
        r3.x = g5[r2.z].val[0/4];
        r3.w = cmp(0.000000 == cb3[r3.x+1024].w);
        r7.xyz = cb3[r3.x+0].xyz + -r0.yzw;
        r4.w = dot(r7.xyz, r7.xyz);
        r5.w = 1 + r4.w;
        r5.w = 1 / r5.w;
        r6.w = cb3[r3.x+0].w * cb3[r3.x+0].w;
        r6.w = r6.w * r4.w;
        r6.w = -r6.w * r6.w + 1;
        r6.w = max(0, r6.w);
        r6.w = r6.w * r6.w;
        r5.w = r6.w * r5.w;
        r10.xyz = cb3[r3.x+0].www * r7.xyz;
        r6.w = dot(r10.xyz, r10.xyz);
        r6.w = min(1, r6.w);
        r6.w = 1 + -r6.w;
        r6.w = log2(r6.w);
        r6.w = cb3[r3.x+1024].w * r6.w;
        r6.w = exp2(r6.w);
        r3.w = r3.w ? r5.w : r6.w;
        r5.w = cmp(0 < r3.w);
        if (r5.w != 0) {
          r4.w = rsqrt(r4.w);
          r10.xyz = r7.xyz * r4.www;
          r5.w = saturate(dot(r5.xyz, r10.xyz));
          r3.w = r3.w * r3.z;
          r3.w = r5.w * r3.w;
          r10.xyz = cb3[r3.x+1024].xyz * r3.www;
          r7.xyz = r7.xyz * r4.www + -r4.xyz;
          r3.x = dot(r7.xyz, r7.xyz);
          r3.x = rsqrt(r3.x);
          r7.xyz = r7.xyz * r3.xxx;
          r3.x = saturate(dot(r5.xyz, r7.xyz));
          r3.w = r3.x * r0.x + -r3.x;
          r3.x = r3.w * r3.x + 1;
          r3.x = r3.x * r3.x;
          r3.x = 3.14159274 * r3.x;
          r3.x = r0.x / r3.x;
          r3.x = 0.25 * r3.x;
          r7.xyz = r3.xxx * r6.xyz;
          r7.xyz = r2.xyw * float3(0.318309873,0.318309873,0.318309873) + r7.xyz;
          r7.xyz = r10.xyz * r7.xyz;
        } else {
          r7.xyz = float3(0,0,0);
        }
        r8.xyz = r8.xyz + r7.xyz;
        r2.z = (int)r2.z + 1;
      }
    }
  } else {
    r8.xyz = float3(0,0,0);
  }
  r0.xy = cmp((uint2)vThreadID.xy < asuint(cb0[0].zw));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xyzw = t6.Load(r1.xyz).xyzw;
    r8.w = 0;
    r0.xyzw = r8.xyzw + r0.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r0.xyzw
  }
  return;
}