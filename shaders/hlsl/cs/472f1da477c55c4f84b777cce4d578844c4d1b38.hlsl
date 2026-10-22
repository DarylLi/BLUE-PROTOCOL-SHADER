// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g5[1024];
groupshared struct { float val[1]; } g3[1024];
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 cb1[227];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21;
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
  r0.w = t1.Load(r1.xyw).x;
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
  r2.xyzw = t3.Load(r1.xyw).xyzw;
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
      r6.xyz = t2.Load(r1.xyw).xyz;
      r7.xyz = t4.Load(r1.xyw).xyz;
      r8.xyzw = t6.Load(r1.xyw).xyzw;
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
      r3.z = t7.SampleLevel(s1_s, r3.zw, 0).x;
      r4.w = max(cb1[226].y, r2.z);
      r5.x = r4.w * r4.w;
      r4.w = -r4.w * r4.w + 1;
      r6.w = dot(r6.xyz, -r4.xyz);
      r7.w = r6.w * r6.w;
      r9.w = r7.w * 2 + -1;
      r10.x = 9.99999975e-006 + abs(r6.w);
      r10.x = min(1, r10.x);
      r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
      r10.y = r5.x * r5.x;
      r10.z = (uint)r10.y >> 1;
      r10.z = (int)r10.z + 0x1fbd1df5;
      r10.w = r10.x * r4.w + r5.x;
      r11.x = saturate(50 * r9.y);
      r3.w = 1;
      r11.yzw = float3(0,0,0);
      r12.x = 0;
      while (true) {
        r12.y = cmp((uint)r12.x >= (uint)r3.x);
        if (r12.y != 0) break;
        r12.y = g3[r12.x].val[0/4];
        r12.z = cmp(-2 < cb2[r12.y+1024].x);
        r12.w = cmp(0.000000 == cb3[r12.y+1024].w);
        r13.xyz = cb3[r12.y+0].xyz + -r0.yzw;
        r13.w = dot(r13.xyz, r13.xyz);
        r14.x = rsqrt(r13.w);
        r14.yzw = r14.xxx * r13.xyz;
        r15.x = cb3[r12.y+0].w * cb3[r12.y+0].w;
        r15.x = r15.x * r13.w;
        r15.x = -r15.x * r15.x + 1;
        r15.x = max(0, r15.x);
        r15.x = r15.x * r15.x;
        r13.xyz = cb3[r12.y+0].www * r13.xyz;
        r13.x = dot(r13.xyz, r13.xyz);
        r13.x = min(1, r13.x);
        r13.x = 1 + -r13.x;
        r13.x = log2(r13.x);
        r13.x = cb3[r12.y+1024].w * r13.x;
        r13.x = exp2(r13.x);
        r13.x = r12.w ? r15.x : r13.x;
        r13.y = dot(r14.yzw, cb2[r12.y+0].xyz);
        r13.y = -cb2[r12.y+1024].x + r13.y;
        r13.y = saturate(cb2[r12.y+1024].y * r13.y);
        r13.y = r13.y * r13.y;
        r13.y = r13.x * r13.y;
        r12.z = r12.z ? r13.y : r13.x;
        r13.x = cmp(0 < r12.z);
        if (r13.x != 0) {
          r13.x = dot(cb2[r12.y+2048].xyzw, float4(1,1,1,1));
          r13.y = (uint)r13.x;
          if (r13.y != 0) {
            r13.y = dot(r8.xyzw, cb2[r12.y+2048].xyzw);
            r13.y = -1 + r13.y;
            r13.xy = r13.xx * r13.yy + float2(1,1);
          } else {
            r13.xy = r3.zw;
          }
          r13.y = r13.x + r13.y;
          r13.y = cmp(0 < r13.y);
          if (r13.y != 0) {
            r13.y = 1 + r13.w;
            r13.y = rcp(r13.y);
            r13.z = dot(r6.xyz, r14.yzw);
            r13.w = cmp(0 < cb2[r12.y+1024].z);
            r15.x = cb2[r12.y+1024].z * cb2[r12.y+1024].z;
            r15.x = r15.x * r13.y;
            r15.x = min(1, r15.x);
            r15.x = sqrt(r15.x);
            r15.y = cmp(r13.z < r15.x);
            r15.z = max(-r15.x, r13.z);
            r15.z = r15.x + r15.z;
            r15.z = r15.z * r15.z;
            r15.x = 4 * r15.x;
            r15.x = r15.z / r15.x;
            r15.x = r15.y ? r15.x : r13.z;
            r13.w = saturate(r13.w ? r15.x : r13.z);
            r12.w = r12.w ? r13.y : 1;
            r13.y = cb2[r12.y+1024].z * r14.x;
            r13.y = saturate(r13.y * r4.w);
            r14.x = dot(-r4.xyz, r14.yzw);
            r14.y = r14.x * 2 + 2;
            r14.y = rsqrt(r14.y);
            r14.z = r13.z + r6.w;
            r14.z = saturate(r14.z * r14.y);
            r14.y = saturate(r14.y * r14.x + r14.y);
            r14.w = cmp(0 < r13.y);
            if (r14.w != 0) {
              r15.x = -r13.y * r13.y + 1;
              r15.x = sqrt(r15.x);
              r15.y = dot(r6.ww, r13.zz);
              r15.z = r15.y + -r14.x;
              r15.w = cmp(r15.z >= r15.x);
              if (r15.w != 0) {
                r14.z = 1;
                r14.y = abs(r6.w);
              } else {
                r15.w = -r15.z * r15.z + 1;
                r15.w = rsqrt(r15.w);
                r15.w = r15.w * r13.y;
                r16.x = -r15.z * r13.z + r6.w;
                r16.y = r16.x * r15.w;
                r15.z = -r15.z * r14.x + r9.w;
                r16.z = -r13.z * r13.z + -r7.w;
                r16.z = 1 + r16.z;
                r16.z = -r14.x * r14.x + r16.z;
                r15.y = saturate(r15.y * r14.x + r16.z);
                r15.y = sqrt(r15.y);
                r15.yz = r15.ww * r15.yz;
                r16.z = r15.y * r6.w;
                r16.w = r16.z + r16.z;
                r17.x = r13.z * r15.x + r6.w;
                r15.w = r15.w * r16.x + r17.x;
                r16.x = r14.x * r15.x + r15.z;
                r16.x = 1 + r16.x;
                r17.yz = r16.xx * r15.yw;
                r17.w = r16.w * r15.w;
                r16.z = r15.w * r16.z;
                r16.z = 0.5 * r16.z;
                r16.z = r17.y * -0.5 + r16.z;
                r18.x = -r17.y * 2 + r17.w;
                r17.w = r18.x * r17.w;
                r17.y = r17.y * r17.y + r17.w;
                r17.w = r16.x * r16.x;
                r16.x = r14.x * r15.x + r16.x;
                r16.x = r16.x * -0.5 + -0.5;
                r16.xz = r17.zz * r16.xz;
                r16.x = r17.x * r17.w + r16.x;
                r15.w = r15.w * r16.x + r17.y;
                r16.x = r16.z + r16.z;
                r17.x = r16.z * r16.z;
                r17.x = r15.w * r15.w + r17.x;
                r16.x = r16.x / r17.x;
                r15.w = r16.x * r15.w;
                r16.x = -r16.x * r16.z + 1;
                r15.y = r15.w * r15.y;
                r15.y = r16.x * r16.y + r15.y;
                r15.w = r15.w * r16.w;
                r15.z = r16.x * r15.z + r15.w;
                r13.z = r13.z * r15.x + r15.y;
                r14.x = r14.x * r15.x + r15.z;
                r15.x = r14.x * 2 + 2;
                r15.x = rsqrt(r15.x);
                r13.z = r13.z + r6.w;
                r14.z = saturate(r13.z * r15.x);
                r14.y = saturate(r15.x * r14.x + r15.x);
              }
            }
            r12.w = r12.w * r13.w;
            r15.xyz = r12.www * r7.xyz;
            r13.z = 0.25 * r13.y;
            r13.y = r10.z * 3 + r13.y;
            r13.y = r13.z * r13.y;
            r13.z = 0.00100000005 + r14.y;
            r13.y = r13.y / r13.z;
            r13.y = r5.x * r5.x + r13.y;
            r13.y = r10.y / r13.y;
            r13.y = r14.w ? r13.y : 1;
            r13.z = r14.z * r10.y + -r14.z;
            r13.z = r13.z * r14.z + 1;
            r13.z = r13.z * r13.z;
            r13.z = 3.14159274 * r13.z;
            r13.z = r10.y / r13.z;
            r13.y = r13.z * r13.y;
            r13.z = r13.w * r4.w + r5.x;
            r13.z = r13.z * r10.x;
            r13.z = r13.w * r10.w + r13.z;
            r13.z = rcp(r13.z);
            r13.y = r13.y * r13.z;
            r13.z = 1 + -r14.y;
            r13.w = r13.z * r13.z;
            r13.w = r13.w * r13.w;
            r14.x = r13.w * r13.z;
            r13.z = -r13.w * r13.z + 1;
            r14.yzw = r13.zzz * r9.xyz;
            r14.xyz = r11.xxx * r14.xxx + r14.yzw;
            r13.y = 0.5 * r13.y;
            r13.yzw = r13.yyy * r14.xyz;
            r13.yzw = r13.yzw * r12.www;
            r13.yzw = cb2[r12.y+0].www * r13.yzw;
            r12.yzw = cb3[r12.y+1024].xyz * r12.zzz;
            r12.yzw = r12.yzw * r13.xxx;
            r14.xyz = r15.xyz * r12.yzw;
            r12.yzw = r13.yzw * r12.yzw;
          } else {
            r14.xyz = float3(0,0,0);
            r12.yzw = float3(0,0,0);
          }
        } else {
          r14.xyz = float3(0,0,0);
          r12.yzw = float3(0,0,0);
        }
        r12.yzw = r12.yzw + r14.xyz;
        r11.yzw = r12.yzw + r11.yzw;
        r12.x = (int)r12.x + 1;
      }
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r8.xyz = r11.yzw;
      r4.w = 0;
      while (true) {
        r5.x = cmp((uint)r4.w >= (uint)r3.y);
        if (r5.x != 0) break;
        r5.x = g5[r4.w].val[0/4];
        r6.w = cmp(0.000000 == cb3[r5.x+1024].w);
        r10.xyz = cb3[r5.x+0].xyz + -r0.yzw;
        r7.w = dot(r10.xyz, r10.xyz);
        r8.w = 1 + r7.w;
        r8.w = 1 / r8.w;
        r9.w = cb3[r5.x+0].w * cb3[r5.x+0].w;
        r9.w = r9.w * r7.w;
        r9.w = -r9.w * r9.w + 1;
        r9.w = max(0, r9.w);
        r9.w = r9.w * r9.w;
        r8.w = r9.w * r8.w;
        r12.xyz = cb3[r5.x+0].www * r10.xyz;
        r9.w = dot(r12.xyz, r12.xyz);
        r9.w = min(1, r9.w);
        r9.w = 1 + -r9.w;
        r9.w = log2(r9.w);
        r9.w = cb3[r5.x+1024].w * r9.w;
        r9.w = exp2(r9.w);
        r6.w = r6.w ? r8.w : r9.w;
        r8.w = cmp(0 < r6.w);
        if (r8.w != 0) {
          r7.w = rsqrt(r7.w);
          r12.xyz = r10.xyz * r7.www;
          r8.w = saturate(dot(r6.xyz, r12.xyz));
          r6.w = r6.w * r3.z;
          r6.w = r8.w * r6.w;
          r12.xyz = cb3[r5.x+1024].xyz * r6.www;
          r10.xyz = r10.xyz * r7.www + -r4.xyz;
          r5.x = dot(r10.xyz, r10.xyz);
          r5.x = rsqrt(r5.x);
          r10.xyz = r10.xyz * r5.xxx;
          r5.x = saturate(dot(r6.xyz, r10.xyz));
          r6.w = r5.x * r3.w + -r5.x;
          r5.x = r6.w * r5.x + 1;
          r5.x = r5.x * r5.x;
          r5.x = 3.14159274 * r5.x;
          r5.x = r3.w / r5.x;
          r5.x = 0.25 * r5.x;
          r10.xyz = r5.xxx * r9.xyz + r7.xyz;
          r10.xyz = r12.xyz * r10.xyz;
        } else {
          r10.xyz = float3(0,0,0);
        }
        r8.xyz = r10.xyz + r8.xyz;
        r4.w = (int)r4.w + 1;
      }
    } else {
      r8.xyz = float3(0,0,0);
    }
    if (r5.y != 0) {
      r6.xyz = t2.Load(r1.xyw).xyz;
      r7.xyz = t4.Load(r1.xyw).xyz;
      r9.xyzw = t5.Load(r1.xyw).xyzw;
      r10.xyzw = t6.Load(r1.xyw).xyzw;
      r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r6.xyz, r6.xyz);
      r3.z = rsqrt(r3.z);
      r6.xyz = r6.xyz * r3.zzz;
      r3.zw = (int2)r0.xx & int2(32,64);
      r3.w = r3.w ? 0 : 1;
      r10.xyzw = r3.zzzz ? r3.wwww : r10.xyzw;
      r3.z = 0.0799999982 * r2.y;
      r11.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
      r11.xyz = r2.xxx * r11.xyz + r3.zzz;
      r7.xyz = -r7.xyz * r2.xxx + r7.xyz;
      r7.xyz = r7.xyz * cb1[136].www + cb1[136].xyz;
      r11.xyz = r11.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t7.SampleLevel(s1_s, r3.zw, 0).x;
      r4.w = max(cb1[226].y, r2.z);
      r5.x = r4.w * r4.w;
      r4.w = -r4.w * r4.w + 1;
      r5.y = dot(r6.xyz, -r4.xyz);
      r6.w = r5.y * r5.y;
      r7.w = r6.w * 2 + -1;
      r8.w = 9.99999975e-006 + abs(r5.y);
      r8.w = min(1, r8.w);
      r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
      r11.w = r5.x * r5.x;
      r12.x = (uint)r11.w >> 1;
      r12.x = (int)r12.x + 0x1fbd1df5;
      r12.y = r8.w * r4.w + r5.x;
      r12.z = saturate(50 * r11.y);
      r9.xyz = r9.xyz * r9.xyz;
      r12.w = r9.w * -2.9000001 + 3;
      r3.w = 1;
      r13.xyz = r8.xyz;
      r13.w = 0;
      while (true) {
        r14.x = cmp((uint)r13.w >= (uint)r3.x);
        if (r14.x != 0) break;
        r14.x = g3[r13.w].val[0/4];
        r14.y = cmp(-2 < cb2[r14.x+1024].x);
        r14.z = cmp(0.000000 == cb3[r14.x+1024].w);
        r15.xyz = cb3[r14.x+0].xyz + -r0.yzw;
        r14.w = dot(r15.xyz, r15.xyz);
        r15.w = rsqrt(r14.w);
        r16.xyz = r15.xyz * r15.www;
        r16.w = cb3[r14.x+0].w * cb3[r14.x+0].w;
        r16.w = r16.w * r14.w;
        r16.w = -r16.w * r16.w + 1;
        r16.w = max(0, r16.w);
        r16.w = r16.w * r16.w;
        r17.xyz = cb3[r14.x+0].www * r15.xyz;
        r17.x = dot(r17.xyz, r17.xyz);
        r17.x = min(1, r17.x);
        r17.x = 1 + -r17.x;
        r17.x = log2(r17.x);
        r17.x = cb3[r14.x+1024].w * r17.x;
        r17.x = exp2(r17.x);
        r16.w = r14.z ? r16.w : r17.x;
        r17.x = dot(r16.xyz, cb2[r14.x+0].xyz);
        r17.x = -cb2[r14.x+1024].x + r17.x;
        r17.x = saturate(cb2[r14.x+1024].y * r17.x);
        r17.x = r17.x * r17.x;
        r17.x = r17.x * r16.w;
        r14.y = r14.y ? r17.x : r16.w;
        r16.w = cmp(0 < r14.y);
        if (r16.w != 0) {
          r16.w = dot(cb2[r14.x+2048].xyzw, float4(1,1,1,1));
          r17.x = (uint)r16.w;
          if (r17.x != 0) {
            r17.x = dot(r10.xyzw, cb2[r14.x+2048].xyzw);
            r17.x = -1 + r17.x;
            r17.xy = r16.ww * r17.xx + float2(1,1);
          } else {
            r17.xy = r3.zw;
          }
          r16.w = r17.x + r17.y;
          r16.w = cmp(0 < r16.w);
          if (r16.w != 0) {
            r14.w = 1 + r14.w;
            r14.w = rcp(r14.w);
            r16.w = dot(r6.xyz, r16.xyz);
            r17.z = cmp(0 < cb2[r14.x+1024].z);
            r17.w = cb2[r14.x+1024].z * cb2[r14.x+1024].z;
            r17.w = r17.w * r14.w;
            r17.w = min(1, r17.w);
            r17.w = sqrt(r17.w);
            r18.x = cmp(r16.w < r17.w);
            r18.y = max(-r17.w, r16.w);
            r18.y = r18.y + r17.w;
            r18.y = r18.y * r18.y;
            r17.w = 4 * r17.w;
            r17.w = r18.y / r17.w;
            r17.w = r18.x ? r17.w : r16.w;
            r17.z = saturate(r17.z ? r17.w : r16.w);
            r14.z = r14.z ? r14.w : 1;
            r14.w = cb2[r14.x+1024].z * r15.w;
            r14.w = saturate(r14.w * r4.w);
            r17.w = dot(-r4.xyz, r16.xyz);
            r18.x = r17.w * 2 + 2;
            r18.x = rsqrt(r18.x);
            r18.y = r16.w + r5.y;
            r18.y = saturate(r18.y * r18.x);
            r18.x = saturate(r18.x * r17.w + r18.x);
            r18.z = cmp(0 < r14.w);
            if (r18.z != 0) {
              r18.w = -r14.w * r14.w + 1;
              r18.w = sqrt(r18.w);
              r19.x = dot(r5.yy, r16.ww);
              r19.y = r19.x + -r17.w;
              r19.z = cmp(r19.y >= r18.w);
              if (r19.z != 0) {
                r18.y = 1;
                r18.x = abs(r5.y);
              } else {
                r19.z = -r19.y * r19.y + 1;
                r19.z = rsqrt(r19.z);
                r19.z = r19.z * r14.w;
                r19.w = -r19.y * r16.w + r5.y;
                r20.x = r19.z * r19.w;
                r19.y = -r19.y * r17.w + r7.w;
                r20.y = -r16.w * r16.w + -r6.w;
                r20.y = 1 + r20.y;
                r20.y = -r17.w * r17.w + r20.y;
                r19.x = saturate(r19.x * r17.w + r20.y);
                r19.x = sqrt(r19.x);
                r19.xy = r19.zz * r19.xy;
                r20.y = r19.x * r5.y;
                r20.z = r20.y + r20.y;
                r20.w = r16.w * r18.w + r5.y;
                r19.z = r19.z * r19.w + r20.w;
                r19.w = r17.w * r18.w + r19.y;
                r19.w = 1 + r19.w;
                r21.xy = r19.xz * r19.ww;
                r21.z = r20.z * r19.z;
                r20.y = r19.z * r20.y;
                r20.y = 0.5 * r20.y;
                r20.y = r21.x * -0.5 + r20.y;
                r20.y = r21.y * r20.y;
                r21.w = -r21.x * 2 + r21.z;
                r21.z = r21.z * r21.w;
                r21.x = r21.x * r21.x + r21.z;
                r21.z = r19.w * r19.w;
                r19.w = r17.w * r18.w + r19.w;
                r19.w = r19.w * -0.5 + -0.5;
                r19.w = r21.y * r19.w;
                r19.w = r20.w * r21.z + r19.w;
                r19.z = r19.z * r19.w + r21.x;
                r19.w = r20.y + r20.y;
                r20.w = r20.y * r20.y;
                r20.w = r19.z * r19.z + r20.w;
                r19.w = r19.w / r20.w;
                r19.z = r19.w * r19.z;
                r19.w = -r19.w * r20.y + 1;
                r19.x = r19.z * r19.x;
                r19.x = r19.w * r20.x + r19.x;
                r19.z = r19.z * r20.z;
                r19.y = r19.w * r19.y + r19.z;
                r16.w = r16.w * r18.w + r19.x;
                r17.w = r17.w * r18.w + r19.y;
                r18.w = r17.w * 2 + 2;
                r18.w = rsqrt(r18.w);
                r16.w = r16.w + r5.y;
                r18.y = saturate(r16.w * r18.w);
                r18.x = saturate(r18.w * r17.w + r18.w);
              }
            }
            r16.w = r14.z * r17.z;
            r19.xyz = r16.www * r7.xyz;
            r17.w = 0.25 * r14.w;
            r14.w = r12.x * 3 + r14.w;
            r14.w = r17.w * r14.w;
            r17.w = 0.00100000005 + r18.x;
            r14.w = r14.w / r17.w;
            r14.w = r5.x * r5.x + r14.w;
            r14.w = r11.w / r14.w;
            r14.w = r18.z ? r14.w : 1;
            r17.w = r18.y * r11.w + -r18.y;
            r17.w = r17.w * r18.y + 1;
            r17.w = r17.w * r17.w;
            r17.w = 3.14159274 * r17.w;
            r17.w = r11.w / r17.w;
            r14.w = r17.w * r14.w;
            r17.w = r17.z * r4.w + r5.x;
            r17.w = r17.w * r8.w;
            r17.z = r17.z * r12.y + r17.w;
            r17.z = rcp(r17.z);
            r14.w = r17.z * r14.w;
            r17.z = 1 + -r18.x;
            r17.w = r17.z * r17.z;
            r17.w = r17.w * r17.w;
            r18.x = r17.w * r17.z;
            r17.z = -r17.w * r17.z + 1;
            r18.yzw = r17.zzz * r11.xyz;
            r18.xyz = r12.zzz * r18.xxx + r18.yzw;
            r14.w = 0.5 * r14.w;
            r18.xyz = r14.www * r18.xyz;
            r18.xyz = r18.xyz * r16.www;
            r15.xyz = r15.xyz * r15.www + -r4.xyz;
            r14.w = dot(r15.xyz, r15.xyz);
            r14.w = rsqrt(r14.w);
            r15.xyz = r15.xyz * r14.www;
            r14.w = saturate(dot(r16.xyz, r4.xyz));
            r14.w = log2(r14.w);
            r14.w = 12 * r14.w;
            r14.w = exp2(r14.w);
            r14.w = r14.w * r12.w;
            r15.x = dot(r6.xyz, r15.xyz);
            r15.x = r15.x * r9.w + -r9.w;
            r15.x = saturate(1 + r15.x);
            r15.y = 0.159154937 * r15.x;
            r15.x = -r15.x * 0.159154937 + 1;
            r14.w = r14.w * r15.x + r15.y;
            r14.z = r14.z * r14.w;
            r15.xyz = r14.zzz * r9.xyz;
            r16.xyz = cb2[r14.x+0].www * r18.xyz;
            r14.xyz = cb3[r14.x+1024].xyz * r14.yyy;
            r17.xzw = r14.xyz * r17.xxx;
            r16.xyz = r17.xzw * r16.xyz;
            r14.xyz = r14.xyz * r17.yyy;
            r14.xyz = r15.xyz * r14.xyz;
            r14.xyz = r19.xyz * r17.xzw + r14.xyz;
          } else {
            r14.xyz = float3(0,0,0);
            r16.xyz = float3(0,0,0);
          }
        } else {
          r14.xyz = float3(0,0,0);
          r16.xyz = float3(0,0,0);
        }
        r14.xyz = r16.xyz + r14.xyz;
        r13.xyz = r14.xyz + r13.xyz;
        r13.w = (int)r13.w + 1;
      }
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r8.xyz = r13.xyz;
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
        r8.w = cb3[r5.x+0].w * cb3[r5.x+0].w;
        r8.w = r8.w * r6.w;
        r8.w = -r8.w * r8.w + 1;
        r8.w = max(0, r8.w);
        r8.w = r8.w * r8.w;
        r7.w = r8.w * r7.w;
        r10.xyz = cb3[r5.x+0].www * r9.xyz;
        r8.w = dot(r10.xyz, r10.xyz);
        r8.w = min(1, r8.w);
        r8.w = 1 + -r8.w;
        r8.w = log2(r8.w);
        r8.w = cb3[r5.x+1024].w * r8.w;
        r8.w = exp2(r8.w);
        r5.y = r5.y ? r7.w : r8.w;
        r7.w = cmp(0 < r5.y);
        if (r7.w != 0) {
          r6.w = rsqrt(r6.w);
          r10.xyz = r9.xyz * r6.www;
          r7.w = saturate(dot(r6.xyz, r10.xyz));
          r5.y = r5.y * r3.z;
          r5.y = r7.w * r5.y;
          r10.xyz = cb3[r5.x+1024].xyz * r5.yyy;
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
          r9.xyz = r5.xxx * r11.xyz + r7.xyz;
          r9.xyz = r10.xyz * r9.xyz;
        } else {
          r9.xyz = float3(0,0,0);
        }
        r8.xyz = r9.xyz + r8.xyz;
        r4.w = (int)r4.w + 1;
      }
    }
    if (r5.z != 0) {
      r5.xyz = t2.Load(r1.xyw).xyz;
      r6.xyz = t4.Load(r1.xyw).xyz;
      r7.xyzw = t5.Load(r1.xyw).xyzw;
      r9.xyzw = t6.Load(r1.xyw).xyzw;
      r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r5.xyz, r5.xyz);
      r3.z = rsqrt(r3.z);
      r5.xyz = r5.xyz * r3.zzz;
      r3.zw = (int2)r0.xx & int2(32,64);
      r3.w = r3.w ? 0 : 1;
      r9.xyzw = r3.zzzz ? r3.wwww : r9.xyzw;
      r3.z = 0.0799999982 * r2.y;
      r10.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
      r10.xyz = r2.xxx * r10.xyz + r3.zzz;
      r6.xyz = -r6.xyz * r2.xxx + r6.xyz;
      r6.xyz = r6.xyz * cb1[136].www + cb1[136].xyz;
      r10.xyz = r10.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t7.SampleLevel(s1_s, r3.zw, 0).x;
      r4.w = max(cb1[226].y, r2.z);
      r6.w = r4.w * r4.w;
      r4.w = -r4.w * r4.w + 1;
      r8.w = dot(r5.xyz, -r4.xyz);
      r10.w = r8.w * r8.w;
      r11.x = r10.w * 2 + -1;
      r11.y = 9.99999975e-006 + abs(r8.w);
      r11.y = min(1, r11.y);
      r6.xyz = float3(0.318309873,0.318309873,0.318309873) * r6.xyz;
      r11.z = r6.w * r6.w;
      r11.w = (uint)r11.z >> 1;
      r11.w = (int)r11.w + 0x1fbd1df5;
      r12.x = r11.y * r4.w + r6.w;
      r12.y = saturate(50 * r10.y);
      r7.xyz = r7.xyz * r7.xyz;
      r13.y = 1 + -r7.w;
      r3.w = 1;
      r14.xyz = r8.xyz;
      r7.w = 0;
      while (true) {
        r12.z = cmp((uint)r7.w >= (uint)r3.x);
        if (r12.z != 0) break;
        r12.z = g3[r7.w].val[0/4];
        r12.w = cmp(-2 < cb2[r12.z+1024].x);
        r13.z = cmp(0.000000 == cb3[r12.z+1024].w);
        r15.xyz = cb3[r12.z+0].xyz + -r0.yzw;
        r13.w = dot(r15.xyz, r15.xyz);
        r14.w = rsqrt(r13.w);
        r16.xyz = r15.xyz * r14.www;
        r15.w = cb3[r12.z+0].w * cb3[r12.z+0].w;
        r15.w = r15.w * r13.w;
        r15.w = -r15.w * r15.w + 1;
        r15.w = max(0, r15.w);
        r15.w = r15.w * r15.w;
        r15.xyz = cb3[r12.z+0].www * r15.xyz;
        r15.x = dot(r15.xyz, r15.xyz);
        r15.x = min(1, r15.x);
        r15.x = 1 + -r15.x;
        r15.x = log2(r15.x);
        r15.x = cb3[r12.z+1024].w * r15.x;
        r15.x = exp2(r15.x);
        r15.x = r13.z ? r15.w : r15.x;
        r15.y = dot(r16.xyz, cb2[r12.z+0].xyz);
        r15.y = -cb2[r12.z+1024].x + r15.y;
        r15.y = saturate(cb2[r12.z+1024].y * r15.y);
        r15.y = r15.y * r15.y;
        r15.y = r15.x * r15.y;
        r12.w = r12.w ? r15.y : r15.x;
        r15.x = cmp(0 < r12.w);
        if (r15.x != 0) {
          r15.x = dot(cb2[r12.z+2048].xyzw, float4(1,1,1,1));
          r15.y = (uint)r15.x;
          if (r15.y != 0) {
            r15.y = dot(r9.xyzw, cb2[r12.z+2048].xyzw);
            r15.y = -1 + r15.y;
            r15.xy = r15.xx * r15.yy + float2(1,1);
          } else {
            r15.xy = r3.zw;
          }
          r15.z = r15.x + r15.y;
          r15.z = cmp(0 < r15.z);
          if (r15.z != 0) {
            r13.w = 1 + r13.w;
            r13.w = rcp(r13.w);
            r15.z = dot(r5.xyz, r16.xyz);
            r15.w = cmp(0 < cb2[r12.z+1024].z);
            r16.w = cb2[r12.z+1024].z * cb2[r12.z+1024].z;
            r16.w = r16.w * r13.w;
            r16.w = min(1, r16.w);
            r16.w = sqrt(r16.w);
            r17.x = cmp(r15.z < r16.w);
            r17.y = max(-r16.w, r15.z);
            r17.y = r17.y + r16.w;
            r17.y = r17.y * r17.y;
            r16.w = 4 * r16.w;
            r16.w = r17.y / r16.w;
            r16.w = r17.x ? r16.w : r15.z;
            r15.w = saturate(r15.w ? r16.w : r15.z);
            r13.z = r13.z ? r13.w : 1;
            r13.w = cb2[r12.z+1024].z * r14.w;
            r13.w = saturate(r13.w * r4.w);
            r14.w = dot(-r4.xyz, r16.xyz);
            r16.x = r14.w * 2 + 2;
            r16.x = rsqrt(r16.x);
            r16.y = r15.z + r8.w;
            r16.y = saturate(r16.y * r16.x);
            r16.x = saturate(r16.x * r14.w + r16.x);
            r16.z = cmp(0 < r13.w);
            if (r16.z != 0) {
              r16.w = -r13.w * r13.w + 1;
              r16.w = sqrt(r16.w);
              r17.x = dot(r8.ww, r15.zz);
              r17.y = r17.x + -r14.w;
              r17.z = cmp(r17.y >= r16.w);
              if (r17.z != 0) {
                r16.y = 1;
                r16.x = abs(r8.w);
              } else {
                r17.z = -r17.y * r17.y + 1;
                r17.z = rsqrt(r17.z);
                r17.z = r17.z * r13.w;
                r17.w = -r17.y * r15.z + r8.w;
                r18.x = r17.z * r17.w;
                r17.y = -r17.y * r14.w + r11.x;
                r18.y = -r15.z * r15.z + -r10.w;
                r18.y = 1 + r18.y;
                r18.y = -r14.w * r14.w + r18.y;
                r17.x = saturate(r17.x * r14.w + r18.y);
                r17.x = sqrt(r17.x);
                r17.xy = r17.zz * r17.xy;
                r18.y = r17.x * r8.w;
                r18.z = r18.y + r18.y;
                r18.w = r15.z * r16.w + r8.w;
                r17.z = r17.z * r17.w + r18.w;
                r17.w = r14.w * r16.w + r17.y;
                r17.w = 1 + r17.w;
                r19.xy = r17.xz * r17.ww;
                r19.z = r18.z * r17.z;
                r18.y = r17.z * r18.y;
                r18.y = 0.5 * r18.y;
                r18.y = r19.x * -0.5 + r18.y;
                r18.y = r19.y * r18.y;
                r19.w = -r19.x * 2 + r19.z;
                r19.z = r19.z * r19.w;
                r19.x = r19.x * r19.x + r19.z;
                r19.z = r17.w * r17.w;
                r17.w = r14.w * r16.w + r17.w;
                r17.w = r17.w * -0.5 + -0.5;
                r17.w = r19.y * r17.w;
                r17.w = r18.w * r19.z + r17.w;
                r17.z = r17.z * r17.w + r19.x;
                r17.w = r18.y + r18.y;
                r18.w = r18.y * r18.y;
                r18.w = r17.z * r17.z + r18.w;
                r17.w = r17.w / r18.w;
                r17.z = r17.w * r17.z;
                r17.w = -r17.w * r18.y + 1;
                r17.x = r17.z * r17.x;
                r17.x = r17.w * r18.x + r17.x;
                r17.z = r17.z * r18.z;
                r17.y = r17.w * r17.y + r17.z;
                r17.x = r15.z * r16.w + r17.x;
                r14.w = r14.w * r16.w + r17.y;
                r16.w = r14.w * 2 + 2;
                r16.w = rsqrt(r16.w);
                r17.x = r17.x + r8.w;
                r16.y = saturate(r17.x * r16.w);
                r16.x = saturate(r16.w * r14.w + r16.w);
              }
            }
            r14.w = r13.z * r15.w;
            r17.xyz = r14.www * r6.xyz;
            r16.w = 0.25 * r13.w;
            r13.w = r11.w * 3 + r13.w;
            r13.w = r16.w * r13.w;
            r16.w = 0.00100000005 + r16.x;
            r13.w = r13.w / r16.w;
            r13.w = r6.w * r6.w + r13.w;
            r13.w = r11.z / r13.w;
            r13.w = r16.z ? r13.w : 1;
            r16.z = r16.y * r11.z + -r16.y;
            r16.y = r16.z * r16.y + 1;
            r16.y = r16.y * r16.y;
            r16.y = 3.14159274 * r16.y;
            r16.y = r11.z / r16.y;
            r13.w = r16.y * r13.w;
            r16.y = r15.w * r4.w + r6.w;
            r16.y = r16.y * r11.y;
            r15.w = r15.w * r12.x + r16.y;
            r15.w = rcp(r15.w);
            r13.w = r15.w * r13.w;
            r15.w = 1 + -r16.x;
            r16.x = r15.w * r15.w;
            r16.x = r16.x * r16.x;
            r16.y = r16.x * r15.w;
            r15.w = -r16.x * r15.w + 1;
            r16.xzw = r15.www * r10.xyz;
            r16.xyz = r12.yyy * r16.yyy + r16.xzw;
            r13.w = 0.5 * r13.w;
            r16.xyz = r13.www * r16.xyz;
            r16.xyz = r16.xyz * r14.www;
            r13.x = saturate(r15.z * 0.5 + 0.5);
            r18.xyz = t0.SampleLevel(s0_s, r13.xy, 0).xyz;
            r13.xzw = r18.xyz * r13.zzz;
            r13.xzw = r13.xzw * r7.xyz;
            r16.xyz = cb2[r12.z+0].www * r16.xyz;
            r18.xyz = cb3[r12.z+1024].xyz * r12.www;
            r15.xzw = r18.xyz * r15.xxx;
            r16.xyz = r16.xyz * r15.xzw;
            r18.xyz = r18.xyz * r15.yyy;
            r13.xzw = r18.xyz * r13.xzw;
            r13.xzw = r17.xyz * r15.xzw + r13.xzw;
          } else {
            r13.xzw = float3(0,0,0);
            r16.xyz = float3(0,0,0);
          }
        } else {
          r13.xzw = float3(0,0,0);
          r16.xyz = float3(0,0,0);
        }
        r13.xzw = r16.xyz + r13.xzw;
        r14.xyz = r14.xyz + r13.xzw;
        r7.w = (int)r7.w + 1;
      }
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r8.xyz = r14.xyz;
      r4.w = 0;
      while (true) {
        r6.w = cmp((uint)r4.w >= (uint)r3.y);
        if (r6.w != 0) break;
        r6.w = g5[r4.w].val[0/4];
        r7.x = cmp(0.000000 == cb3[r6.w+1024].w);
        r7.yzw = cb3[r6.w+0].xyz + -r0.yzw;
        r8.w = dot(r7.yzw, r7.yzw);
        r9.x = 1 + r8.w;
        r9.x = 1 / r9.x;
        r9.y = cb3[r6.w+0].w * cb3[r6.w+0].w;
        r9.y = r9.y * r8.w;
        r9.y = -r9.y * r9.y + 1;
        r9.y = max(0, r9.y);
        r9.y = r9.y * r9.y;
        r9.x = r9.x * r9.y;
        r9.yzw = cb3[r6.w+0].www * r7.yzw;
        r9.y = dot(r9.yzw, r9.yzw);
        r9.y = min(1, r9.y);
        r9.y = 1 + -r9.y;
        r9.y = log2(r9.y);
        r9.y = cb3[r6.w+1024].w * r9.y;
        r9.y = exp2(r9.y);
        r7.x = r7.x ? r9.x : r9.y;
        r9.x = cmp(0 < r7.x);
        if (r9.x != 0) {
          r8.w = rsqrt(r8.w);
          r9.xyz = r8.www * r7.yzw;
          r9.x = saturate(dot(r5.xyz, r9.xyz));
          r7.x = r7.x * r3.z;
          r7.x = r9.x * r7.x;
          r9.xyz = cb3[r6.w+1024].xyz * r7.xxx;
          r7.xyz = r7.yzw * r8.www + -r4.xyz;
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
          r7.xyz = r6.www * r10.xyz + r6.xyz;
          r7.xyz = r9.xyz * r7.xyz;
        } else {
          r7.xyz = float3(0,0,0);
        }
        r8.xyz = r8.xyz + r7.xyz;
        r4.w = (int)r4.w + 1;
      }
    }
    if (r5.w != 0) {
      r5.xyz = t2.Load(r1.xyw).xyz;
      r6.xyz = t4.Load(r1.xyw).xyz;
      r3.zw = t5.Load(r1.xyw).xy;
      r7.xyzw = t6.Load(r1.xyw).xyzw;
      r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r4.w = dot(r5.xyz, r5.xyz);
      r4.w = rsqrt(r4.w);
      r5.xyz = r5.xyz * r4.www;
      r9.xy = (int2)r0.xx & int2(32,64);
      r4.w = r9.y ? 0 : 1;
      r7.xyzw = r9.xxxx ? r4.wwww : r7.xyzw;
      r4.w = 0.0799999982 * r2.y;
      r9.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
      r9.xyz = r2.xxx * r9.xyz + r4.www;
      r10.xyz = -r6.xyz * r2.xxx + r6.xyz;
      r10.xyz = r10.xyz * cb1[136].www + cb1[136].xyz;
      r9.xyz = r9.xyz * cb1[137].www + cb1[137].xyz;
      r11.xy = (uint2)r1.xy;
      r11.xy = float2(0.5,0.5) + r11.xy;
      r11.xy = cb1[132].zw * r11.xy;
      r11.x = t7.SampleLevel(s1_s, r11.xy, 0).x;
      r4.w = max(cb1[226].y, r2.z);
      r5.w = r4.w * r4.w;
      r4.w = -r4.w * r4.w + 1;
      r3.w = max(0.0199999996, r3.w);
      r6.w = dot(r5.xyz, -r4.xyz);
      r8.w = r3.w * r3.w;
      r9.w = cmp(0 < r4.w);
      r3.w = -r3.w * r3.w + 1;
      r10.w = r3.w / r4.w;
      r9.w = r9.w ? r10.w : 0;
      r12.z = abs(r6.w);
      r10.w = r6.w * r6.w;
      r11.z = r10.w * 2 + -1;
      r11.w = 9.99999975e-006 + r12.z;
      r11.w = min(1, r11.w);
      r12.w = r8.w * r8.w;
      r13.x = (uint)r12.w >> 1;
      r13.x = (int)r13.x + 0x1fbd1df5;
      r13.y = r11.w * r3.w + r8.w;
      r13.z = cmp(0 < r2.x);
      r6.xyz = float3(0.318309873,0.318309873,0.318309873) * r6.xyz;
      r6.xyz = log2(r6.xyz);
      r6.xyz = float3(-0.346573591,-0.346573591,-0.346573591) * r6.xyz;
      r10.xyz = float3(0.318309873,0.318309873,0.318309873) * r10.xyz;
      r13.w = r5.w * r5.w;
      r14.x = saturate(50 * r9.y);
      r14.y = (uint)r13.w >> 1;
      r14.y = (int)r14.y + 0x1fbd1df5;
      r11.y = 1;
      r12.y = 1;
      r15.xyz = r8.xyz;
      r14.z = 0;
      while (true) {
        r14.w = cmp((uint)r14.z >= (uint)r3.x);
        if (r14.w != 0) break;
        r14.w = g3[r14.z].val[0/4];
        r15.w = cmp(-2 < cb2[r14.w+1024].x);
        r16.x = cmp(0.000000 == cb3[r14.w+1024].w);
        r16.yzw = cb3[r14.w+0].xyz + -r0.yzw;
        r17.x = dot(r16.yzw, r16.yzw);
        r17.y = rsqrt(r17.x);
        r18.xyz = r17.yyy * r16.yzw;
        r17.z = cb3[r14.w+0].w * cb3[r14.w+0].w;
        r17.z = r17.x * r17.z;
        r17.z = -r17.z * r17.z + 1;
        r17.z = max(0, r17.z);
        r17.z = r17.z * r17.z;
        r16.yzw = cb3[r14.w+0].www * r16.yzw;
        r16.y = dot(r16.yzw, r16.yzw);
        r16.y = min(1, r16.y);
        r16.y = 1 + -r16.y;
        r16.y = log2(r16.y);
        r16.y = cb3[r14.w+1024].w * r16.y;
        r16.y = exp2(r16.y);
        r16.y = r16.x ? r17.z : r16.y;
        r16.z = dot(r18.xyz, cb2[r14.w+0].xyz);
        r16.z = -cb2[r14.w+1024].x + r16.z;
        r16.z = saturate(cb2[r14.w+1024].y * r16.z);
        r16.z = r16.z * r16.z;
        r16.z = r16.y * r16.z;
        r15.w = r15.w ? r16.z : r16.y;
        r16.y = cmp(0 < r15.w);
        if (r16.y != 0) {
          r16.y = dot(cb2[r14.w+2048].xyzw, float4(1,1,1,1));
          r16.z = (uint)r16.y;
          if (r16.z != 0) {
            r16.z = dot(r7.xyzw, cb2[r14.w+2048].xyzw);
            r16.z = -1 + r16.z;
            r16.yz = r16.yy * r16.zz + float2(1,1);
          } else {
            r16.yz = r11.xy;
          }
          r16.z = r16.y + r16.z;
          r16.z = cmp(0 < r16.z);
          if (r16.z != 0) {
            r16.z = 1 + r17.x;
            r16.z = rcp(r16.z);
            r12.x = dot(r5.xyz, r18.xyz);
            r16.w = cmp(0 < cb2[r14.w+1024].z);
            r17.x = cb2[r14.w+1024].z * cb2[r14.w+1024].z;
            r17.x = r17.x * r16.z;
            r17.x = min(1, r17.x);
            r17.x = sqrt(r17.x);
            r17.z = cmp(r12.x < r17.x);
            r17.w = max(-r17.x, r12.x);
            r17.w = r17.x + r17.w;
            r17.w = r17.w * r17.w;
            r17.x = 4 * r17.x;
            r17.x = r17.w / r17.x;
            r17.x = r17.z ? r17.x : r12.x;
            r16.w = saturate(r16.w ? r17.x : r12.x);
            r16.x = r16.x ? r16.z : 1;
            r16.z = cb2[r14.w+1024].z * r17.y;
            r16.z = saturate(r16.z * r4.w);
            r17.x = dot(-r4.xyz, r18.xyz);
            r17.y = r17.x * 2 + 2;
            r17.y = rsqrt(r17.y);
            r17.z = r12.x + r6.w;
            r18.y = saturate(r17.z * r17.y);
            r18.z = saturate(r17.y * r17.x + r17.y);
            r17.y = saturate(r16.z * r9.w);
            r17.z = cmp(0 < r17.y);
            if (r17.z != 0) {
              r17.w = -r17.y * r17.y + 1;
              r17.w = sqrt(r17.w);
              r18.w = dot(r6.ww, r12.xx);
              r19.x = r18.w + -r17.x;
              r19.y = cmp(r19.x >= r17.w);
              if (r19.y != 0) {
                r18.xyz = r12.xyz;
              } else {
                r19.y = -r19.x * r19.x + 1;
                r19.y = rsqrt(r19.y);
                r19.y = r19.y * r17.y;
                r19.z = -r19.x * r12.x + r6.w;
                r19.x = -r19.x * r17.x + r11.z;
                r19.xw = r19.yy * r19.xz;
                r20.x = -r12.x * r12.x + -r10.w;
                r20.x = 1 + r20.x;
                r20.x = -r17.x * r17.x + r20.x;
                r18.w = saturate(r18.w * r17.x + r20.x);
                r18.w = sqrt(r18.w);
                r18.w = r19.y * r18.w;
                r20.x = r18.w * r6.w;
                r20.y = r20.x + r20.x;
                r20.z = r12.x * r17.w + r6.w;
                r19.y = r19.y * r19.z + r20.z;
                r19.z = r17.x * r17.w + r19.x;
                r19.z = 1 + r19.z;
                r20.w = r19.z * r18.w;
                r21.x = r19.y * r19.z;
                r21.y = r20.y * r19.y;
                r20.x = r19.y * r20.x;
                r20.x = 0.5 * r20.x;
                r20.x = r20.w * -0.5 + r20.x;
                r20.x = r21.x * r20.x;
                r21.z = -r20.w * 2 + r21.y;
                r21.y = r21.y * r21.z;
                r20.w = r20.w * r20.w + r21.y;
                r21.y = r19.z * r19.z;
                r19.z = r17.x * r17.w + r19.z;
                r19.z = r19.z * -0.5 + -0.5;
                r19.z = r21.x * r19.z;
                r19.z = r20.z * r21.y + r19.z;
                r19.y = r19.y * r19.z + r20.w;
                r19.z = r20.x + r20.x;
                r20.z = r20.x * r20.x;
                r20.z = r19.y * r19.y + r20.z;
                r19.z = r19.z / r20.z;
                r19.y = r19.z * r19.y;
                r19.z = -r19.z * r20.x + 1;
                r18.w = r19.y * r18.w;
                r18.w = r19.z * r19.w + r18.w;
                r19.y = r19.y * r20.y;
                r19.x = r19.z * r19.x + r19.y;
                r18.x = r12.x * r17.w + r18.w;
                r17.x = r17.x * r17.w + r19.x;
                r17.w = r17.x * 2 + 2;
                r17.w = rsqrt(r17.w);
                r18.w = r18.x + r6.w;
                r18.y = saturate(r18.w * r17.w);
                r18.z = saturate(r17.w * r17.x + r17.w);
              }
            } else {
              r18.x = r12.x;
            }
            r12.x = 1 + -r18.z;
            r17.x = r12.x * r12.x;
            r17.x = r17.x * r17.x;
            r17.w = r17.x * r12.x;
            r12.x = -r17.x * r12.x + 1;
            r17.x = r12.x * 0.0399999991 + r17.w;
            r18.w = 0.25 * r17.y;
            r17.y = r13.x * 3 + r17.y;
            r17.y = r18.w * r17.y;
            r18.w = 0.00100000005 + r18.z;
            r17.y = r17.y / r18.w;
            r17.y = r8.w * r8.w + r17.y;
            r17.y = r12.w / r17.y;
            r17.y = r17.z ? r17.y : 1;
            r17.z = r18.y * r12.w + -r18.y;
            r17.z = r17.z * r18.y + 1;
            r17.z = r17.z * r17.z;
            r17.z = 3.14159274 * r17.z;
            r17.z = r12.w / r17.z;
            r17.y = r17.z * r17.y;
            r17.z = r16.w * r3.w + r8.w;
            r17.z = r17.z * r11.w;
            r17.z = r16.w * r13.y + r17.z;
            r17.z = rcp(r17.z);
            r17.y = r17.y * r17.z;
            r17.y = r17.x * r17.y;
            r17.y = 0.5 * r17.y;
            r17.z = r16.x * r16.w;
            r17.x = 1 + -r17.x;
            r17.xy = r17.xz * r17.xy;
            r19.x = -r18.z * 0.219999999 + 0.629999995;
            r19.x = r19.x * r18.z + -0.745000005;
            r19.y = r19.x * r18.y;
            r19.z = r11.w * 0.666666687 + -r19.y;
            r19.z = max(0.00100000005, r19.z);
            r19.z = min(1, r19.z);
            r18.x = r18.x * 0.666666687 + -r19.y;
            r18.x = max(0.00100000005, r18.x);
            r18.x = min(1, r18.x);
            r18.z = saturate(r18.z * 0.666666687 + -r19.x);
            r19.x = rcp(r19.z);
            r18.x = rcp(r18.x);
            r18.x = r19.x + r18.x;
            r18.x = -2 + r18.x;
            r19.xyw = r18.xxx * r6.xyz;
            r19.xyw = float3(-1.44269502,-1.44269502,-1.44269502) * r19.xyw;
            r19.xyw = exp2(r19.xyw);
            r19.xyw = min(float3(1,1,1), r19.xyw);
            r19.xyw = float3(-1,-1,-1) + r19.xyw;
            r19.xyw = r2.xxx * r19.xyw + float3(1,1,1);
            r19.xyw = r13.zzz ? r19.xyw : float3(1,1,1);
            r20.xyz = r17.zzz * r10.xyz;
            r19.xyw = r19.xyw * r17.xxx;
            r21.xyz = r19.xyw * r20.xyz + -r20.xyz;
            r20.xyz = r3.zzz * r21.xyz + r20.xyz;
            r17.x = r18.y * r13.w + -r18.y;
            r17.x = r17.x * r18.y + 1;
            r17.x = r17.x * r17.x;
            r17.x = 3.14159274 * r17.x;
            r17.x = r13.w / r17.x;
            r17.z = r19.z * r4.w + r5.w;
            r18.x = r16.w * r4.w + r5.w;
            r18.x = r19.z * r18.x;
            r17.z = r16.w * r17.z + r18.x;
            r17.z = rcp(r17.z);
            r17.z = 0.5 * r17.z;
            r18.x = 1 + -r18.z;
            r18.y = r18.x * r18.x;
            r18.y = r18.y * r18.y;
            r18.z = r18.y * r18.x;
            r18.x = -r18.y * r18.x + 1;
            r21.xyz = r18.xxx * r9.xyz;
            r18.xyz = r14.xxx * r18.zzz + r21.xyz;
            r21.xyz = r12.xxx * r9.xyz;
            r21.xyz = r14.xxx * r17.www + r21.xyz;
            r12.x = cmp(0 < r16.z);
            r17.w = 0.25 * r16.z;
            r16.z = r14.y * 3 + r16.z;
            r16.z = r17.w * r16.z;
            r16.z = r16.z / r18.w;
            r16.z = r5.w * r5.w + r16.z;
            r16.z = r13.w / r16.z;
            r12.x = r12.x ? r16.z : 1;
            r12.x = r12.x * r16.x;
            r12.x = r12.x * r16.w;
            r12.x = r12.x * r17.x;
            r12.x = r12.x * r17.z;
            r16.xzw = r19.xyw * r18.xyz + -r21.xyz;
            r16.xzw = r3.zzz * r16.xzw + r21.xyz;
            r16.xzw = r16.xzw * r12.xxx;
            r16.xzw = r3.zzz * r17.yyy + r16.xzw;
            r16.xzw = cb2[r14.w+0].www * r16.xzw;
            r17.xyz = cb3[r14.w+1024].xyz * r15.www;
            r17.xyz = r17.xyz * r16.yyy;
            r18.xyz = r20.xyz * r17.xyz;
            r16.xyz = r17.xyz * r16.xzw;
          } else {
            r18.xyz = float3(0,0,0);
            r16.xyz = float3(0,0,0);
          }
        } else {
          r18.xyz = float3(0,0,0);
          r16.xyz = float3(0,0,0);
        }
        r16.xyz = r16.xyz + r18.xyz;
        r15.xyz = r16.xyz + r15.xyz;
        r14.z = (int)r14.z + 1;
      }
      r3.z = max(0.0399999991, r2.z);
      r3.z = r3.z * r3.z;
      r3.z = r3.z * r3.z;
      r8.xyz = r15.xyz;
      r3.w = 0;
      while (true) {
        r4.w = cmp((uint)r3.w >= (uint)r3.y);
        if (r4.w != 0) break;
        r4.w = g5[r3.w].val[0/4];
        r5.w = cmp(0.000000 == cb3[r4.w+1024].w);
        r6.xyz = cb3[r4.w+0].xyz + -r0.yzw;
        r6.w = dot(r6.xyz, r6.xyz);
        r7.x = 1 + r6.w;
        r7.x = 1 / r7.x;
        r7.y = cb3[r4.w+0].w * cb3[r4.w+0].w;
        r7.y = r7.y * r6.w;
        r7.y = -r7.y * r7.y + 1;
        r7.y = max(0, r7.y);
        r7.y = r7.y * r7.y;
        r7.x = r7.x * r7.y;
        r7.yzw = cb3[r4.w+0].www * r6.xyz;
        r7.y = dot(r7.yzw, r7.yzw);
        r7.y = min(1, r7.y);
        r7.y = 1 + -r7.y;
        r7.y = log2(r7.y);
        r7.y = cb3[r4.w+1024].w * r7.y;
        r7.y = exp2(r7.y);
        r5.w = r5.w ? r7.x : r7.y;
        r7.x = cmp(0 < r5.w);
        if (r7.x != 0) {
          r6.w = rsqrt(r6.w);
          r7.xyz = r6.xyz * r6.www;
          r7.x = saturate(dot(r5.xyz, r7.xyz));
          r5.w = r5.w * r11.x;
          r5.w = r7.x * r5.w;
          r7.xyz = cb3[r4.w+1024].xyz * r5.www;
          r6.xyz = r6.xyz * r6.www + -r4.xyz;
          r4.w = dot(r6.xyz, r6.xyz);
          r4.w = rsqrt(r4.w);
          r6.xyz = r6.xyz * r4.www;
          r4.w = saturate(dot(r5.xyz, r6.xyz));
          r5.w = r4.w * r3.z + -r4.w;
          r4.w = r5.w * r4.w + 1;
          r4.w = r4.w * r4.w;
          r4.w = 3.14159274 * r4.w;
          r4.w = r3.z / r4.w;
          r4.w = 0.25 * r4.w;
          r6.xyz = r4.www * r9.xyz + r10.xyz;
          r6.xyz = r7.xyz * r6.xyz;
        } else {
          r6.xyz = float3(0,0,0);
        }
        r8.xyz = r8.xyz + r6.xyz;
        r3.w = (int)r3.w + 1;
      }
    }
    r5.xyzw = cmp((int4)r2.wwww == int4(5,6,7,8));
    if (r5.x != 0) {
      r6.xyz = t2.Load(r1.xyw).xyz;
      r7.xyz = t4.Load(r1.xyw).xyz;
      r3.zw = t5.Load(r1.xyw).xw;
      r9.xyzw = t6.Load(r1.xyw).xyzw;
      r4.w = (uint)cb1[152].x;
      r5.x = (int)r1.y + (int)r1.x;
      r4.w = (int)r4.w + (int)r5.x;
      r4.w = (int)r4.w & 1;
      r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r5.x = dot(r6.xyz, r6.xyz);
      r5.x = rsqrt(r5.x);
      r6.xyz = r6.xyz * r5.xxx;
      r10.xy = (int2)r0.xx & int2(32,64);
      r5.x = r10.y ? 0 : 1;
      r9.xyzw = r10.xxxx ? r5.xxxx : r9.xyzw;
      r5.x = 0.0799999982 * r2.y;
      r10.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
      r10.xyz = r2.xxx * r10.xyz + r5.xxx;
      r5.x = cmp(0 < cb1[156].y);
      r6.w = cmp(0 < cb1[207].z);
      r5.x = r5.x ? r6.w : 0;
      r6.w = cmp(0 != cb1[156].y);
      r7.xyz = r6.www ? float3(1,1,1) : r7.xyz;
      r11.xy = r4.ww ? float2(1,0) : float2(0,1);
      r11.yzw = r11.yyy * r10.xyz;
      r7.xyz = r5.xxx ? r11.xxx : r7.xyz;
      r10.xyz = r5.xxx ? r11.yzw : r10.xyz;
      r7.xyz = -r7.xyz * r2.xxx + r7.xyz;
      r7.xyz = r7.xyz * cb1[136].www + cb1[136].xyz;
      r10.xyz = r10.xyz * cb1[137].www + cb1[137].xyz;
      r11.xy = (uint2)r1.xy;
      r11.xy = float2(0.5,0.5) + r11.xy;
      r11.xy = cb1[132].zw * r11.xy;
      r11.x = t7.SampleLevel(s1_s, r11.xy, 0).x;
      r4.w = max(cb1[226].y, r2.z);
      r5.x = r4.w * r4.w;
      r6.w = -r4.w * r4.w + 1;
      r7.w = dot(r6.xyz, -r4.xyz);
      r8.w = r7.w * r7.w;
      r10.w = r8.w * 2 + -1;
      r11.z = 9.99999975e-006 + abs(r7.w);
      r11.z = min(1, r11.z);
      r12.x = 10 * r3.w;
      r3.z = r3.z * 255 + 0.5;
      r13.y = (uint)r3.z;
      r13.xzw = float3(5,0,0);
      r12.yzw = t8.Load(r13.xyz).xyz;
      r3.z = saturate(dot(r12.yy, r4.ww));
      r3.z = max(0.0199999996, r3.z);
      r3.w = saturate(dot(r12.zz, r4.ww));
      r12.x = saturate(r12.x);
      r3.z = -1 + r3.z;
      r3.z = r12.x * r3.z + 1;
      r3.w = -1 + r3.w;
      r3.w = r12.x * r3.w + 1;
      r11.w = 1 + -r11.z;
      r12.x = r11.w * r11.w;
      r12.x = r12.x * r12.x;
      r11.w = r12.x * r11.w;
      r3.zw = r3.zw * r3.zw;
      r12.xy = r3.zw * r3.zw;
      r12.z = (uint)r12.x >> 1;
      r12.z = (int)r12.z + 0x1fbd1df5;
      r13.x = (uint)r12.y >> 1;
      r13.x = (int)r13.x + 0x1fbd1df5;
      r13.y = r11.z * r6.w + r5.x;
      r13.z = saturate(50 * r10.y);
      r11.y = 1;
      r14.xyz = r8.xyz;
      r13.w = 0;
      while (true) {
        r14.w = cmp((uint)r13.w >= (uint)r3.x);
        if (r14.w != 0) break;
        r14.w = g3[r13.w].val[0/4];
        r15.x = cmp(-2 < cb2[r14.w+1024].x);
        r15.y = cmp(0.000000 == cb3[r14.w+1024].w);
        r16.xyz = cb3[r14.w+0].xyz + -r0.yzw;
        r15.z = dot(r16.xyz, r16.xyz);
        r15.w = rsqrt(r15.z);
        r17.xyz = r16.xyz * r15.www;
        r16.w = cb3[r14.w+0].w * cb3[r14.w+0].w;
        r16.w = r16.w * r15.z;
        r16.w = -r16.w * r16.w + 1;
        r16.w = max(0, r16.w);
        r16.w = r16.w * r16.w;
        r16.xyz = cb3[r14.w+0].www * r16.xyz;
        r16.x = dot(r16.xyz, r16.xyz);
        r16.x = min(1, r16.x);
        r16.x = 1 + -r16.x;
        r16.x = log2(r16.x);
        r16.x = cb3[r14.w+1024].w * r16.x;
        r16.x = exp2(r16.x);
        r16.x = r15.y ? r16.w : r16.x;
        r16.y = dot(r17.xyz, cb2[r14.w+0].xyz);
        r16.y = -cb2[r14.w+1024].x + r16.y;
        r16.y = saturate(cb2[r14.w+1024].y * r16.y);
        r16.y = r16.y * r16.y;
        r16.y = r16.x * r16.y;
        r15.x = r15.x ? r16.y : r16.x;
        r16.x = cmp(0 < r15.x);
        if (r16.x != 0) {
          r16.x = dot(cb2[r14.w+2048].xyzw, float4(1,1,1,1));
          r16.y = (uint)r16.x;
          if (r16.y != 0) {
            r16.y = dot(r9.xyzw, cb2[r14.w+2048].xyzw);
            r16.y = -1 + r16.y;
            r16.xy = r16.xx * r16.yy + float2(1,1);
          } else {
            r16.xy = r11.xy;
          }
          r16.y = r16.x + r16.y;
          r16.y = cmp(0 < r16.y);
          if (r16.y != 0) {
            r15.z = 1 + r15.z;
            r15.z = rcp(r15.z);
            r16.y = dot(r6.xyz, r17.xyz);
            r16.z = cmp(0 < cb2[r14.w+1024].z);
            r16.w = cb2[r14.w+1024].z * cb2[r14.w+1024].z;
            r16.w = r16.w * r15.z;
            r16.w = min(1, r16.w);
            r16.w = sqrt(r16.w);
            r17.w = cmp(r16.y < r16.w);
            r18.x = max(r16.y, -r16.w);
            r18.x = r18.x + r16.w;
            r18.x = r18.x * r18.x;
            r16.w = 4 * r16.w;
            r16.w = r18.x / r16.w;
            r16.w = r17.w ? r16.w : r16.y;
            r16.z = saturate(r16.z ? r16.w : r16.y);
            r15.y = r15.y ? r15.z : 1;
            r15.z = cb2[r14.w+1024].z * r15.w;
            r15.z = saturate(r15.z * r6.w);
            r15.w = dot(-r4.xyz, r17.xyz);
            r16.w = r15.w * 2 + 2;
            r16.w = rsqrt(r16.w);
            r17.x = r16.y + r7.w;
            r17.x = saturate(r17.x * r16.w);
            r16.w = saturate(r16.w * r15.w + r16.w);
            r17.y = cmp(0 < r15.z);
            if (r17.y != 0) {
              r17.z = -r15.z * r15.z + 1;
              r17.z = sqrt(r17.z);
              r17.w = dot(r7.ww, r16.yy);
              r18.x = r17.w + -r15.w;
              r18.y = cmp(r18.x >= r17.z);
              if (r18.y != 0) {
                r17.x = 1;
                r16.w = abs(r7.w);
              } else {
                r18.y = -r18.x * r18.x + 1;
                r18.y = rsqrt(r18.y);
                r18.y = r18.y * r15.z;
                r18.z = -r18.x * r16.y + r7.w;
                r18.x = -r18.x * r15.w + r10.w;
                r18.xw = r18.yy * r18.xz;
                r19.x = -r16.y * r16.y + -r8.w;
                r19.x = 1 + r19.x;
                r19.x = -r15.w * r15.w + r19.x;
                r17.w = saturate(r17.w * r15.w + r19.x);
                r17.w = sqrt(r17.w);
                r17.w = r18.y * r17.w;
                r19.x = r17.w * r7.w;
                r19.y = r19.x + r19.x;
                r19.z = r16.y * r17.z + r7.w;
                r18.y = r18.y * r18.z + r19.z;
                r18.z = r15.w * r17.z + r18.x;
                r18.z = 1 + r18.z;
                r19.w = r18.z * r17.w;
                r20.x = r18.y * r18.z;
                r20.y = r19.y * r18.y;
                r19.x = r18.y * r19.x;
                r19.x = 0.5 * r19.x;
                r19.x = r19.w * -0.5 + r19.x;
                r19.x = r20.x * r19.x;
                r20.z = -r19.w * 2 + r20.y;
                r20.y = r20.y * r20.z;
                r19.w = r19.w * r19.w + r20.y;
                r20.y = r18.z * r18.z;
                r18.z = r15.w * r17.z + r18.z;
                r18.z = r18.z * -0.5 + -0.5;
                r18.z = r20.x * r18.z;
                r18.z = r19.z * r20.y + r18.z;
                r18.y = r18.y * r18.z + r19.w;
                r18.z = r19.x + r19.x;
                r19.z = r19.x * r19.x;
                r19.z = r18.y * r18.y + r19.z;
                r18.z = r18.z / r19.z;
                r18.y = r18.z * r18.y;
                r18.z = -r18.z * r19.x + 1;
                r17.w = r18.y * r17.w;
                r17.w = r18.z * r18.w + r17.w;
                r18.y = r18.y * r19.y;
                r18.x = r18.z * r18.x + r18.y;
                r16.y = r16.y * r17.z + r17.w;
                r15.w = r15.w * r17.z + r18.x;
                r17.z = r15.w * 2 + 2;
                r17.z = rsqrt(r17.z);
                r16.y = r16.y + r7.w;
                r17.x = saturate(r16.y * r17.z);
                r16.w = saturate(r17.z * r15.w + r17.z);
              }
            }
            r15.y = r15.y * r16.z;
            r15.w = r16.w * r16.w;
            r15.w = dot(r15.ww, r4.ww);
            r15.w = -0.5 + r15.w;
            r16.y = r15.w * r11.w + 1;
            r17.z = 1 + -r16.z;
            r17.w = r17.z * r17.z;
            r17.w = r17.w * r17.w;
            r17.z = r17.w * r17.z;
            r15.w = r15.w * r17.z + 1;
            r15.w = r15.w * r16.y;
            r15.w = 0.318309873 * r15.w;
            r18.xyz = r15.www * r7.xyz;
            r18.xyz = r18.xyz * r15.yyy;
            r15.w = 0.25 * r15.z;
            r16.y = r12.z * 3 + r15.z;
            r16.y = r16.y * r15.w;
            r17.z = 0.00100000005 + r16.w;
            r16.y = r16.y / r17.z;
            r16.y = r3.z * r3.z + r16.y;
            r16.y = r12.x / r16.y;
            r16.y = r17.y ? r16.y : 1;
            r15.z = r13.x * 3 + r15.z;
            r15.z = r15.w * r15.z;
            r15.z = r15.z / r17.z;
            r15.z = r3.w * r3.w + r15.z;
            r15.z = r12.y / r15.z;
            r15.z = r17.y ? r15.z : 1;
            r15.w = r17.x * r12.x + -r17.x;
            r15.w = r15.w * r17.x + 1;
            r15.w = r15.w * r15.w;
            r15.w = 3.14159274 * r15.w;
            r15.w = r12.x / r15.w;
            r15.w = r15.w * r16.y;
            r16.y = r17.x * r12.y + -r17.x;
            r16.y = r16.y * r17.x + 1;
            r16.y = r16.y * r16.y;
            r16.y = 3.14159274 * r16.y;
            r16.y = r12.y / r16.y;
            r15.z = r16.y * r15.z + -r15.w;
            r15.z = r12.w * r15.z + r15.w;
            r15.w = r16.z * r6.w + r5.x;
            r15.w = r15.w * r11.z;
            r15.w = r16.z * r13.y + r15.w;
            r15.w = rcp(r15.w);
            r15.z = r15.z * r15.w;
            r15.w = 1 + -r16.w;
            r16.y = r15.w * r15.w;
            r16.y = r16.y * r16.y;
            r16.z = r16.y * r15.w;
            r15.w = -r16.y * r15.w + 1;
            r17.xyz = r15.www * r10.xyz;
            r16.yzw = r13.zzz * r16.zzz + r17.xyz;
            r15.z = 0.5 * r15.z;
            r16.yzw = r15.zzz * r16.yzw;
            r15.yzw = r16.yzw * r15.yyy;
            r15.yzw = cb2[r14.w+0].www * r15.yzw;
            r16.yzw = cb3[r14.w+1024].xyz * r15.xxx;
            r16.xyz = r16.yzw * r16.xxx;
            r17.xyz = r18.xyz * r16.xyz;
            r15.xyz = r16.xyz * r15.yzw;
          } else {
            r17.xyz = float3(0,0,0);
            r15.xyz = float3(0,0,0);
          }
        } else {
          r17.xyz = float3(0,0,0);
          r15.xyz = float3(0,0,0);
        }
        r15.xyz = r15.xyz + r17.xyz;
        r14.xyz = r15.xyz + r14.xyz;
        r13.w = (int)r13.w + 1;
      }
      r3.z = max(0.0399999991, r2.z);
      r3.z = r3.z * r3.z;
      r3.z = r3.z * r3.z;
      r8.xyz = r14.xyz;
      r3.w = 0;
      while (true) {
        r4.w = cmp((uint)r3.w >= (uint)r3.y);
        if (r4.w != 0) break;
        r4.w = g5[r3.w].val[0/4];
        r5.x = cmp(0.000000 == cb3[r4.w+1024].w);
        r9.xyz = cb3[r4.w+0].xyz + -r0.yzw;
        r6.w = dot(r9.xyz, r9.xyz);
        r7.w = 1 + r6.w;
        r7.w = 1 / r7.w;
        r8.w = cb3[r4.w+0].w * cb3[r4.w+0].w;
        r8.w = r8.w * r6.w;
        r8.w = -r8.w * r8.w + 1;
        r8.w = max(0, r8.w);
        r8.w = r8.w * r8.w;
        r7.w = r8.w * r7.w;
        r11.yzw = cb3[r4.w+0].www * r9.xyz;
        r8.w = dot(r11.yzw, r11.yzw);
        r8.w = min(1, r8.w);
        r8.w = 1 + -r8.w;
        r8.w = log2(r8.w);
        r8.w = cb3[r4.w+1024].w * r8.w;
        r8.w = exp2(r8.w);
        r5.x = r5.x ? r7.w : r8.w;
        r7.w = cmp(0 < r5.x);
        if (r7.w != 0) {
          r6.w = rsqrt(r6.w);
          r11.yzw = r9.xyz * r6.www;
          r7.w = saturate(dot(r6.xyz, r11.yzw));
          r5.x = r5.x * r11.x;
          r5.x = r7.w * r5.x;
          r11.yzw = cb3[r4.w+1024].xyz * r5.xxx;
          r9.xyz = r9.xyz * r6.www + -r4.xyz;
          r4.w = dot(r9.xyz, r9.xyz);
          r4.w = rsqrt(r4.w);
          r9.xyz = r9.xyz * r4.www;
          r4.w = saturate(dot(r6.xyz, r9.xyz));
          r5.x = r4.w * r3.z + -r4.w;
          r4.w = r5.x * r4.w + 1;
          r4.w = r4.w * r4.w;
          r4.w = 3.14159274 * r4.w;
          r4.w = r3.z / r4.w;
          r4.w = 0.25 * r4.w;
          r9.xyz = r4.www * r10.xyz;
          r9.xyz = r7.xyz * float3(0.318309873,0.318309873,0.318309873) + r9.xyz;
          r9.xyz = r11.yzw * r9.xyz;
        } else {
          r9.xyz = float3(0,0,0);
        }
        r8.xyz = r9.xyz + r8.xyz;
        r3.w = (int)r3.w + 1;
      }
    }
    if (r5.y != 0) {
      r6.xyz = t2.Load(r1.xyw).xyz;
      r7.xyz = t4.Load(r1.xyw).xyz;
      r9.xyz = t5.Load(r1.xyw).xyz;
      r10.xyzw = t6.Load(r1.xyw).xyzw;
      r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r6.xyz, r6.xyz);
      r3.z = rsqrt(r3.z);
      r6.xyz = r6.xyz * r3.zzz;
      r3.zw = (int2)r0.xx & int2(32,64);
      r3.w = r3.w ? 0 : 1;
      r10.xyzw = r3.zzzz ? r3.wwww : r10.xyzw;
      r3.z = 0.0799999982 * r2.y;
      r11.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
      r11.xyz = r2.xxx * r11.xyz + r3.zzz;
      r7.xyz = -r7.xyz * r2.xxx + r7.xyz;
      r7.xyz = r7.xyz * cb1[136].www + cb1[136].xyz;
      r11.xyz = r11.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t7.SampleLevel(s1_s, r3.zw, 0).x;
      r4.w = max(cb1[226].y, r2.z);
      r5.x = r4.w * r4.w;
      r4.w = -r4.w * r4.w + 1;
      r5.y = dot(r6.xyz, -r4.xyz);
      r6.w = r5.y * r5.y;
      r7.w = r6.w * 2 + -1;
      r8.w = 9.99999975e-006 + abs(r5.y);
      r8.w = min(1, r8.w);
      r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
      r9.w = r5.x * r5.x;
      r11.w = (uint)r9.w >> 1;
      r11.w = (int)r11.w + 0x1fbd1df5;
      r12.x = r8.w * r4.w + r5.x;
      r12.y = saturate(50 * r11.y);
      r9.xyz = r9.xyz * r9.xyz;
      r3.w = 1;
      r13.xyz = r8.xyz;
      r12.z = 0;
      while (true) {
        r12.w = cmp((uint)r12.z >= (uint)r3.x);
        if (r12.w != 0) break;
        r12.w = g3[r12.z].val[0/4];
        r13.w = cmp(-2 < cb2[r12.w+1024].x);
        r14.x = cmp(0.000000 == cb3[r12.w+1024].w);
        r14.yzw = cb3[r12.w+0].xyz + -r0.yzw;
        r15.x = dot(r14.yzw, r14.yzw);
        r15.y = rsqrt(r15.x);
        r16.xyz = r15.yyy * r14.yzw;
        r15.z = cb3[r12.w+0].w * cb3[r12.w+0].w;
        r15.z = r15.x * r15.z;
        r15.z = -r15.z * r15.z + 1;
        r15.z = max(0, r15.z);
        r15.z = r15.z * r15.z;
        r14.yzw = cb3[r12.w+0].www * r14.yzw;
        r14.y = dot(r14.yzw, r14.yzw);
        r14.y = min(1, r14.y);
        r14.y = 1 + -r14.y;
        r14.y = log2(r14.y);
        r14.y = cb3[r12.w+1024].w * r14.y;
        r14.y = exp2(r14.y);
        r14.y = r14.x ? r15.z : r14.y;
        r14.z = dot(r16.xyz, cb2[r12.w+0].xyz);
        r14.z = -cb2[r12.w+1024].x + r14.z;
        r14.z = saturate(cb2[r12.w+1024].y * r14.z);
        r14.z = r14.z * r14.z;
        r14.z = r14.y * r14.z;
        r13.w = r13.w ? r14.z : r14.y;
        r14.y = cmp(0 < r13.w);
        if (r14.y != 0) {
          r14.y = dot(cb2[r12.w+2048].xyzw, float4(1,1,1,1));
          r14.z = (uint)r14.y;
          if (r14.z != 0) {
            r14.z = dot(r10.xyzw, cb2[r12.w+2048].xyzw);
            r14.z = -1 + r14.z;
            r14.yz = r14.yy * r14.zz + float2(1,1);
          } else {
            r14.yz = r3.zw;
          }
          r14.w = r14.y + r14.z;
          r14.w = cmp(0 < r14.w);
          if (r14.w != 0) {
            r14.w = 1 + r15.x;
            r14.w = rcp(r14.w);
            r15.x = dot(r6.xyz, r16.xyz);
            r15.z = cmp(0 < cb2[r12.w+1024].z);
            r15.w = cb2[r12.w+1024].z * cb2[r12.w+1024].z;
            r15.w = r15.w * r14.w;
            r15.w = min(1, r15.w);
            r15.w = sqrt(r15.w);
            r16.w = cmp(r15.x < r15.w);
            r17.x = max(r15.x, -r15.w);
            r17.x = r17.x + r15.w;
            r17.x = r17.x * r17.x;
            r15.w = 4 * r15.w;
            r15.w = r17.x / r15.w;
            r15.w = r16.w ? r15.w : r15.x;
            r15.z = saturate(r15.z ? r15.w : r15.x);
            r14.x = r14.x ? r14.w : 1;
            r14.w = cb2[r12.w+1024].z * r15.y;
            r14.w = saturate(r14.w * r4.w);
            r15.y = dot(-r4.xyz, r16.xyz);
            r15.w = r15.y * 2 + 2;
            r15.w = rsqrt(r15.w);
            r16.x = r15.x + r5.y;
            r16.x = saturate(r16.x * r15.w);
            r15.w = saturate(r15.w * r15.y + r15.w);
            r16.y = cmp(0 < r14.w);
            if (r16.y != 0) {
              r16.z = -r14.w * r14.w + 1;
              r16.z = sqrt(r16.z);
              r16.w = dot(r5.yy, r15.xx);
              r17.x = r16.w + -r15.y;
              r17.y = cmp(r17.x >= r16.z);
              if (r17.y != 0) {
                r16.x = 1;
                r15.w = abs(r5.y);
              } else {
                r17.y = -r17.x * r17.x + 1;
                r17.y = rsqrt(r17.y);
                r17.y = r17.y * r14.w;
                r17.z = -r17.x * r15.x + r5.y;
                r17.x = -r17.x * r15.y + r7.w;
                r17.xw = r17.yy * r17.xz;
                r18.x = -r15.x * r15.x + -r6.w;
                r18.x = 1 + r18.x;
                r18.x = -r15.y * r15.y + r18.x;
                r16.w = saturate(r16.w * r15.y + r18.x);
                r16.w = sqrt(r16.w);
                r16.w = r17.y * r16.w;
                r18.x = r16.w * r5.y;
                r18.y = r18.x + r18.x;
                r18.z = r15.x * r16.z + r5.y;
                r17.y = r17.y * r17.z + r18.z;
                r17.z = r15.y * r16.z + r17.x;
                r17.z = 1 + r17.z;
                r18.w = r17.z * r16.w;
                r19.x = r17.y * r17.z;
                r19.y = r18.y * r17.y;
                r18.x = r17.y * r18.x;
                r18.x = 0.5 * r18.x;
                r18.x = r18.w * -0.5 + r18.x;
                r18.x = r19.x * r18.x;
                r19.z = -r18.w * 2 + r19.y;
                r19.y = r19.y * r19.z;
                r18.w = r18.w * r18.w + r19.y;
                r19.y = r17.z * r17.z;
                r17.z = r15.y * r16.z + r17.z;
                r17.z = r17.z * -0.5 + -0.5;
                r17.z = r19.x * r17.z;
                r17.z = r18.z * r19.y + r17.z;
                r17.y = r17.y * r17.z + r18.w;
                r17.z = r18.x + r18.x;
                r18.z = r18.x * r18.x;
                r18.z = r17.y * r17.y + r18.z;
                r17.z = r17.z / r18.z;
                r17.y = r17.z * r17.y;
                r17.z = -r17.z * r18.x + 1;
                r16.w = r17.y * r16.w;
                r16.w = r17.z * r17.w + r16.w;
                r17.y = r17.y * r18.y;
                r17.x = r17.z * r17.x + r17.y;
                r16.w = r15.x * r16.z + r16.w;
                r16.z = r15.y * r16.z + r17.x;
                r17.x = r16.z * 2 + 2;
                r17.x = rsqrt(r17.x);
                r16.w = r16.w + r5.y;
                r16.x = saturate(r16.w * r17.x);
                r15.w = saturate(r17.x * r16.z + r17.x);
              }
            }
            r16.z = r14.x * r15.z;
            r17.xyz = r16.zzz * r7.xyz;
            r16.w = 0.25 * r14.w;
            r14.w = r11.w * 3 + r14.w;
            r14.w = r16.w * r14.w;
            r16.w = 0.00100000005 + r15.w;
            r14.w = r14.w / r16.w;
            r14.w = r5.x * r5.x + r14.w;
            r14.w = r9.w / r14.w;
            r14.w = r16.y ? r14.w : 1;
            r16.y = r16.x * r9.w + -r16.x;
            r16.x = r16.y * r16.x + 1;
            r16.x = r16.x * r16.x;
            r16.x = 3.14159274 * r16.x;
            r16.x = r9.w / r16.x;
            r14.w = r16.x * r14.w;
            r16.x = r15.z * r4.w + r5.x;
            r16.x = r16.x * r8.w;
            r15.z = r15.z * r12.x + r16.x;
            r15.z = rcp(r15.z);
            r14.w = r15.z * r14.w;
            r15.z = 1 + -r15.w;
            r15.w = r15.z * r15.z;
            r15.w = r15.w * r15.w;
            r16.x = r15.w * r15.z;
            r15.z = -r15.w * r15.z + 1;
            r18.xyz = r15.zzz * r11.xyz;
            r16.xyw = r12.yyy * r16.xxx + r18.xyz;
            r14.w = 0.5 * r14.w;
            r16.xyw = r14.www * r16.xyw;
            r16.xyz = r16.zzz * r16.xyw;
            r14.w = 0.5 + -r15.x;
            r14.w = saturate(0.444444448 * r14.w);
            r15.y = saturate(-r15.y);
            r15.x = r15.y * r15.y;
            r15.x = r15.x * -0.639999986 + 1;
            r15.x = r15.x * r15.x;
            r15.x = 3.14159274 * r15.x;
            r15.x = 0.360000014 / r15.x;
            r14.x = r14.x * r14.w;
            r14.x = r14.x * r15.x;
            r15.xyz = r14.xxx * r9.xyz;
            r16.xyz = cb2[r12.w+0].www * r16.xyz;
            r18.xyz = cb3[r12.w+1024].xyz * r13.www;
            r14.xyw = r18.xyz * r14.yyy;
            r16.xyz = r16.xyz * r14.xyw;
            r18.xyz = r18.xyz * r14.zzz;
            r15.xyz = r18.xyz * r15.xyz;
            r14.xyz = r17.xyz * r14.xyw + r15.xyz;
          } else {
            r14.xyz = float3(0,0,0);
            r16.xyz = float3(0,0,0);
          }
        } else {
          r14.xyz = float3(0,0,0);
          r16.xyz = float3(0,0,0);
        }
        r14.xyz = r16.xyz + r14.xyz;
        r13.xyz = r14.xyz + r13.xyz;
        r12.z = (int)r12.z + 1;
      }
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r8.xyz = r13.xyz;
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
        r8.w = cb3[r5.x+0].w * cb3[r5.x+0].w;
        r8.w = r8.w * r6.w;
        r8.w = -r8.w * r8.w + 1;
        r8.w = max(0, r8.w);
        r8.w = r8.w * r8.w;
        r7.w = r8.w * r7.w;
        r10.xyz = cb3[r5.x+0].www * r9.xyz;
        r8.w = dot(r10.xyz, r10.xyz);
        r8.w = min(1, r8.w);
        r8.w = 1 + -r8.w;
        r8.w = log2(r8.w);
        r8.w = cb3[r5.x+1024].w * r8.w;
        r8.w = exp2(r8.w);
        r5.y = r5.y ? r7.w : r8.w;
        r7.w = cmp(0 < r5.y);
        if (r7.w != 0) {
          r6.w = rsqrt(r6.w);
          r10.xyz = r9.xyz * r6.www;
          r7.w = saturate(dot(r6.xyz, r10.xyz));
          r5.y = r5.y * r3.z;
          r5.y = r7.w * r5.y;
          r10.xyz = cb3[r5.x+1024].xyz * r5.yyy;
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
          r9.xyz = r5.xxx * r11.xyz + r7.xyz;
          r9.xyz = r10.xyz * r9.xyz;
        } else {
          r9.xyz = float3(0,0,0);
        }
        r8.xyz = r9.xyz + r8.xyz;
        r4.w = (int)r4.w + 1;
      }
    }
    if (r5.z != 0) {
      r5.xyz = t2.Load(r1.xyw).xyz;
      r6.xyz = t4.Load(r1.xyw).xyz;
      r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r5.xyz, r5.xyz);
      r3.z = rsqrt(r3.z);
      r5.xyz = r5.xyz * r3.zzz;
      r3.z = 0.0799999982 * r2.y;
      r7.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
      r7.xyz = r2.xxx * r7.xyz + r3.zzz;
      r6.xyz = -r6.xyz * r2.xxx + r6.xyz;
      r6.xyz = r6.xyz * cb1[136].www + cb1[136].xyz;
      r7.xyz = r7.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t7.SampleLevel(s1_s, r3.zw, 0).x;
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r9.xyz = r8.xyz;
      r4.w = 0;
      while (true) {
        r6.w = cmp((uint)r4.w >= (uint)r3.y);
        if (r6.w != 0) break;
        r6.w = g5[r4.w].val[0/4];
        r7.w = cmp(0.000000 == cb3[r6.w+1024].w);
        r10.xyz = cb3[r6.w+0].xyz + -r0.yzw;
        r8.w = dot(r10.xyz, r10.xyz);
        r9.w = 1 + r8.w;
        r9.w = 1 / r9.w;
        r10.w = cb3[r6.w+0].w * cb3[r6.w+0].w;
        r10.w = r10.w * r8.w;
        r10.w = -r10.w * r10.w + 1;
        r10.w = max(0, r10.w);
        r10.w = r10.w * r10.w;
        r9.w = r10.w * r9.w;
        r11.xyz = cb3[r6.w+0].www * r10.xyz;
        r10.w = dot(r11.xyz, r11.xyz);
        r10.w = min(1, r10.w);
        r10.w = 1 + -r10.w;
        r10.w = log2(r10.w);
        r10.w = cb3[r6.w+1024].w * r10.w;
        r10.w = exp2(r10.w);
        r7.w = r7.w ? r9.w : r10.w;
        r9.w = cmp(0 < r7.w);
        if (r9.w != 0) {
          r8.w = rsqrt(r8.w);
          r11.xyz = r10.xyz * r8.www;
          r9.w = saturate(dot(r5.xyz, r11.xyz));
          r7.w = r7.w * r3.z;
          r7.w = r9.w * r7.w;
          r11.xyz = cb3[r6.w+1024].xyz * r7.www;
          r10.xyz = r10.xyz * r8.www + -r4.xyz;
          r6.w = dot(r10.xyz, r10.xyz);
          r6.w = rsqrt(r6.w);
          r10.xyz = r10.xyz * r6.www;
          r6.w = saturate(dot(r5.xyz, r10.xyz));
          r7.w = r6.w * r3.w + -r6.w;
          r6.w = r7.w * r6.w + 1;
          r6.w = r6.w * r6.w;
          r6.w = 3.14159274 * r6.w;
          r6.w = r3.w / r6.w;
          r6.w = 0.25 * r6.w;
          r10.xyz = r6.www * r7.xyz;
          r10.xyz = r6.xyz * float3(0.318309873,0.318309873,0.318309873) + r10.xyz;
          r10.xyz = r11.xyz * r10.xyz;
        } else {
          r10.xyz = float3(0,0,0);
        }
        r9.xyz = r10.xyz + r9.xyz;
        r4.w = (int)r4.w + 1;
      }
      r8.xyz = r9.xyz;
    }
    if (r5.w != 0) {
      r5.xyz = t2.Load(r1.xyw).xyz;
      r6.xyz = t4.Load(r1.xyw).xyz;
      r7.xyzw = t5.Load(r1.xyw).wxyz;
      r9.xyzw = t6.Load(r1.xyw).xyzw;
      r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r5.xyz, r5.xyz);
      r3.z = rsqrt(r3.z);
      r5.xyz = r5.xyz * r3.zzz;
      r3.zw = (int2)r0.xx & int2(32,64);
      r3.w = r3.w ? 0 : 1;
      r9.xyzw = r3.zzzz ? r3.wwww : r9.xyzw;
      r3.z = 0.0799999982 * r2.y;
      r10.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
      r10.xyz = r2.xxx * r10.xyz + r3.zzz;
      r6.xyz = -r6.xyz * r2.xxx + r6.xyz;
      r6.xyz = r6.xyz * cb1[136].www + cb1[136].xyz;
      r10.xyz = r10.xyz * cb1[137].www + cb1[137].xyz;
      r3.zw = (uint2)r1.xy;
      r3.zw = float2(0.5,0.5) + r3.zw;
      r3.zw = cb1[132].zw * r3.zw;
      r3.z = t7.SampleLevel(s1_s, r3.zw, 0).x;
      r4.w = max(cb1[226].y, r2.z);
      r5.w = r4.w * r4.w;
      r4.w = -r4.w * r4.w + 1;
      r7.yzw = r7.yzw * r7.yzw;
      r7.x = saturate(r7.x);
      r6.w = dot(r5.xyz, -r4.xyz);
      r8.w = r6.w * r6.w;
      r10.w = r8.w * 2 + -1;
      r11.x = 9.99999975e-006 + abs(r6.w);
      r11.x = min(1, r11.x);
      r11.y = r5.w * r5.w;
      r11.z = (uint)r11.y >> 1;
      r11.z = (int)r11.z + 0x1fbd1df5;
      r11.w = r11.x * r4.w + r5.w;
      r12.x = saturate(50 * r10.y);
      r12.y = 4 * r11.y;
      r12.z = r11.y * 4 + 1;
      r12.z = 3.14159274 * r12.z;
      r12.z = rcp(r12.z);
      r12.y = r12.y * r11.y;
      r12.w = 50 * r7.z;
      r12.w = min(1, r12.w);
      r6.xyz = float3(0.318309873,0.318309873,0.318309873) * r6.xyz;
      r3.w = 1;
      r13.xyz = r8.xyz;
      r13.w = 0;
      while (true) {
        r14.x = cmp((uint)r13.w >= (uint)r3.x);
        if (r14.x != 0) break;
        r14.x = g3[r13.w].val[0/4];
        r14.y = cmp(-2 < cb2[r14.x+1024].x);
        r14.z = cmp(0.000000 == cb3[r14.x+1024].w);
        r15.xyz = cb3[r14.x+0].xyz + -r0.yzw;
        r14.w = dot(r15.xyz, r15.xyz);
        r15.w = rsqrt(r14.w);
        r16.xyz = r15.xyz * r15.www;
        r16.w = cb3[r14.x+0].w * cb3[r14.x+0].w;
        r16.w = r16.w * r14.w;
        r16.w = -r16.w * r16.w + 1;
        r16.w = max(0, r16.w);
        r16.w = r16.w * r16.w;
        r15.xyz = cb3[r14.x+0].www * r15.xyz;
        r15.x = dot(r15.xyz, r15.xyz);
        r15.x = min(1, r15.x);
        r15.x = 1 + -r15.x;
        r15.x = log2(r15.x);
        r15.x = cb3[r14.x+1024].w * r15.x;
        r15.x = exp2(r15.x);
        r15.x = r14.z ? r16.w : r15.x;
        r15.y = dot(r16.xyz, cb2[r14.x+0].xyz);
        r15.y = -cb2[r14.x+1024].x + r15.y;
        r15.y = saturate(cb2[r14.x+1024].y * r15.y);
        r15.y = r15.y * r15.y;
        r15.y = r15.x * r15.y;
        r14.y = r14.y ? r15.y : r15.x;
        r15.x = cmp(0 < r14.y);
        if (r15.x != 0) {
          r15.x = dot(cb2[r14.x+2048].xyzw, float4(1,1,1,1));
          r15.y = (uint)r15.x;
          if (r15.y != 0) {
            r15.y = dot(r9.xyzw, cb2[r14.x+2048].xyzw);
            r15.y = -1 + r15.y;
            r15.xy = r15.xx * r15.yy + float2(1,1);
          } else {
            r15.xy = r3.zw;
          }
          r15.y = r15.x + r15.y;
          r15.y = cmp(0 < r15.y);
          if (r15.y != 0) {
            r14.w = 1 + r14.w;
            r14.w = rcp(r14.w);
            r15.y = dot(r5.xyz, r16.xyz);
            r15.z = cmp(0 < cb2[r14.x+1024].z);
            r16.w = cb2[r14.x+1024].z * cb2[r14.x+1024].z;
            r16.w = r16.w * r14.w;
            r16.w = min(1, r16.w);
            r16.w = sqrt(r16.w);
            r17.x = cmp(r15.y < r16.w);
            r17.y = max(-r16.w, r15.y);
            r17.y = r17.y + r16.w;
            r17.y = r17.y * r17.y;
            r16.w = 4 * r16.w;
            r16.w = r17.y / r16.w;
            r16.w = r17.x ? r16.w : r15.y;
            r15.z = saturate(r15.z ? r16.w : r15.y);
            r14.z = r14.z ? r14.w : 1;
            r14.w = cb2[r14.x+1024].z * r15.w;
            r14.w = saturate(r14.w * r4.w);
            r15.w = dot(-r4.xyz, r16.xyz);
            r16.x = r15.w * 2 + 2;
            r16.x = rsqrt(r16.x);
            r16.y = r15.y + r6.w;
            r16.y = saturate(r16.y * r16.x);
            r16.x = saturate(r16.x * r15.w + r16.x);
            r16.z = cmp(0 < r14.w);
            if (r16.z != 0) {
              r16.w = -r14.w * r14.w + 1;
              r16.w = sqrt(r16.w);
              r17.x = dot(r6.ww, r15.yy);
              r17.y = r17.x + -r15.w;
              r17.z = cmp(r17.y >= r16.w);
              if (r17.z != 0) {
                r16.y = 1;
                r16.x = abs(r6.w);
              } else {
                r17.z = -r17.y * r17.y + 1;
                r17.z = rsqrt(r17.z);
                r17.z = r17.z * r14.w;
                r17.w = -r17.y * r15.y + r6.w;
                r18.x = r17.z * r17.w;
                r17.y = -r17.y * r15.w + r10.w;
                r18.y = -r15.y * r15.y + -r8.w;
                r18.y = 1 + r18.y;
                r18.y = -r15.w * r15.w + r18.y;
                r17.x = saturate(r17.x * r15.w + r18.y);
                r17.x = sqrt(r17.x);
                r17.xy = r17.zz * r17.xy;
                r18.y = r17.x * r6.w;
                r18.z = r18.y + r18.y;
                r18.w = r15.y * r16.w + r6.w;
                r17.z = r17.z * r17.w + r18.w;
                r17.w = r15.w * r16.w + r17.y;
                r17.w = 1 + r17.w;
                r19.xy = r17.xz * r17.ww;
                r19.z = r18.z * r17.z;
                r18.y = r17.z * r18.y;
                r18.y = 0.5 * r18.y;
                r18.y = r19.x * -0.5 + r18.y;
                r18.y = r19.y * r18.y;
                r19.w = -r19.x * 2 + r19.z;
                r19.z = r19.z * r19.w;
                r19.x = r19.x * r19.x + r19.z;
                r19.z = r17.w * r17.w;
                r17.w = r15.w * r16.w + r17.w;
                r17.w = r17.w * -0.5 + -0.5;
                r17.w = r19.y * r17.w;
                r17.w = r18.w * r19.z + r17.w;
                r17.z = r17.z * r17.w + r19.x;
                r17.w = r18.y + r18.y;
                r18.w = r18.y * r18.y;
                r18.w = r17.z * r17.z + r18.w;
                r17.w = r17.w / r18.w;
                r17.z = r17.w * r17.z;
                r17.w = -r17.w * r18.y + 1;
                r17.x = r17.z * r17.x;
                r17.x = r17.w * r18.x + r17.x;
                r17.z = r17.z * r18.z;
                r17.y = r17.w * r17.y + r17.z;
                r15.y = r15.y * r16.w + r17.x;
                r15.w = r15.w * r16.w + r17.y;
                r16.w = r15.w * 2 + 2;
                r16.w = rsqrt(r16.w);
                r15.y = r15.y + r6.w;
                r16.y = saturate(r15.y * r16.w);
                r16.x = saturate(r16.w * r15.w + r16.w);
              }
            }
            r14.z = r14.z * r15.z;
            r15.y = 0.25 * r14.w;
            r14.w = r11.z * 3 + r14.w;
            r14.w = r15.y * r14.w;
            r15.y = 0.00100000005 + r16.x;
            r14.w = r14.w / r15.y;
            r14.w = r5.w * r5.w + r14.w;
            r14.w = r11.y / r14.w;
            r14.w = r16.z ? r14.w : 1;
            r15.y = r16.y * r11.y + -r16.y;
            r15.y = r15.y * r16.y + 1;
            r15.y = r15.y * r15.y;
            r15.y = 3.14159274 * r15.y;
            r15.y = r11.y / r15.y;
            r14.w = r15.y * r14.w;
            r15.y = r15.z * r4.w + r5.w;
            r15.y = r15.y * r11.x;
            r15.y = r15.z * r11.w + r15.y;
            r15.y = rcp(r15.y);
            r14.w = r15.y * r14.w;
            r15.y = 1 + -r16.x;
            r15.w = r15.y * r15.y;
            r15.w = r15.w * r15.w;
            r16.x = r15.w * r15.y;
            r15.y = -r15.w * r15.y + 1;
            r17.xyz = r15.yyy * r10.xyz;
            r17.xyz = r12.xxx * r16.xxx + r17.xyz;
            r14.w = 0.5 * r14.w;
            r17.xyz = r14.www * r17.xyz;
            r17.xyz = r17.xyz * r14.zzz;
            r14.w = -r16.y * r11.y + r16.y;
            r14.w = r14.w * r16.y + r11.y;
            r14.w = r14.w * r14.w;
            r14.w = r12.y / r14.w;
            r14.w = 1 + r14.w;
            r14.w = r14.w * r12.z;
            r15.w = r15.z + r11.x;
            r15.z = -r15.z * r11.x + r15.w;
            r15.z = 4 * r15.z;
            r15.z = rcp(r15.z);
            r16.yzw = r15.yyy * r7.yzw;
            r16.xyz = r12.www * r16.xxx + r16.yzw;
            r14.w = r15.z * r14.w;
            r14.w = r14.z * r14.w;
            r15.yzw = r14.zzz * r6.xyz;
            r16.xyz = r14.www * r16.xyz + -r17.xyz;
            r16.xyz = r7.xxx * r16.xyz + r17.xyz;
            r16.xyz = cb2[r14.x+0].www * r16.xyz;
            r14.xyz = cb3[r14.x+1024].xyz * r14.yyy;
            r14.xyz = r14.xyz * r15.xxx;
            r15.xyz = r15.yzw * r14.xyz;
            r14.xyz = r16.xyz * r14.xyz;
          } else {
            r15.xyz = float3(0,0,0);
            r14.xyz = float3(0,0,0);
          }
        } else {
          r15.xyz = float3(0,0,0);
          r14.xyz = float3(0,0,0);
        }
        r14.xyz = r14.xyz + r15.xyz;
        r13.xyz = r14.xyz + r13.xyz;
        r13.w = (int)r13.w + 1;
      }
      r3.w = max(0.0399999991, r2.z);
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r3.w;
      r8.xyz = r13.xyz;
      r4.w = 0;
      while (true) {
        r5.w = cmp((uint)r4.w >= (uint)r3.y);
        if (r5.w != 0) break;
        r5.w = g5[r4.w].val[0/4];
        r6.w = cmp(0.000000 == cb3[r5.w+1024].w);
        r7.xyz = cb3[r5.w+0].xyz + -r0.yzw;
        r7.w = dot(r7.xyz, r7.xyz);
        r8.w = 1 + r7.w;
        r8.w = 1 / r8.w;
        r9.x = cb3[r5.w+0].w * cb3[r5.w+0].w;
        r9.x = r9.x * r7.w;
        r9.x = -r9.x * r9.x + 1;
        r9.x = max(0, r9.x);
        r9.x = r9.x * r9.x;
        r8.w = r9.x * r8.w;
        r9.xyz = cb3[r5.w+0].www * r7.xyz;
        r9.x = dot(r9.xyz, r9.xyz);
        r9.x = min(1, r9.x);
        r9.x = 1 + -r9.x;
        r9.x = log2(r9.x);
        r9.x = cb3[r5.w+1024].w * r9.x;
        r9.x = exp2(r9.x);
        r6.w = r6.w ? r8.w : r9.x;
        r8.w = cmp(0 < r6.w);
        if (r8.w != 0) {
          r7.w = rsqrt(r7.w);
          r9.xyz = r7.xyz * r7.www;
          r8.w = saturate(dot(r5.xyz, r9.xyz));
          r6.w = r6.w * r3.z;
          r6.w = r8.w * r6.w;
          r9.xyz = cb3[r5.w+1024].xyz * r6.www;
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
          r7.xyz = r5.www * r10.xyz + r6.xyz;
          r7.xyz = r9.xyz * r7.xyz;
        } else {
          r7.xyz = float3(0,0,0);
        }
        r8.xyz = r8.xyz + r7.xyz;
        r4.w = (int)r4.w + 1;
      }
    }
    r3.zw = cmp((int2)r2.ww == int2(9,10));
    if (r3.z != 0) {
      r5.xyz = t2.Load(r1.xyw).xyz;
      r6.xyz = t4.Load(r1.xyw).xyz;
      r7.xyz = t5.Load(r1.xyw).yzw;
      r9.xyzw = t6.Load(r1.xyw).xyzw;
      r2.w = (uint)cb1[152].x;
      r3.z = (int)r1.y + (int)r1.x;
      r2.w = (int)r2.w + (int)r3.z;
      r2.w = (int)r2.w & 1;
      r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.z = dot(r5.xyz, r5.xyz);
      r3.z = rsqrt(r3.z);
      r10.xyz = r5.xyz * r3.zzz;
      r11.xy = (int2)r0.xx & int2(32,64);
      r4.w = r11.y ? 0 : 1;
      r9.xyzw = r11.xxxx ? r4.wwww : r9.xyzw;
      r11.xyz = float3(0.0799999982,0.0799999982,1) * r2.yyy;
      r4.w = cmp(0 < cb1[156].y);
      r5.w = cmp(0 < cb1[207].z);
      r4.w = r4.w ? r5.w : 0;
      r5.w = cmp(0 != cb1[156].y);
      r6.xyz = r5.www ? float3(1,1,1) : r6.xyz;
      r12.xy = r2.ww ? float2(1,0) : float2(0,1);
      r13.x = r12.y * r11.x;
      r13.y = r12.y * r2.y;
      r6.xyz = r4.www ? r12.xxx : r6.xyz;
      r11.xy = r4.ww ? r13.xy : r11.yz;
      r6.xyz = r6.xyz * cb1[136].www + cb1[136].xyz;
      r11.xzw = r11.xxx * cb1[137].www + cb1[137].xyz;
      r12.xy = (uint2)r1.xy;
      r12.xy = float2(0.5,0.5) + r12.xy;
      r12.xy = cb1[132].zw * r12.xy;
      r12.x = t7.SampleLevel(s1_s, r12.xy, 0).x;
      r2.w = max(cb1[226].y, r2.z);
      r4.w = r2.w * r2.w;
      r2.w = -r2.w * r2.w + 1;
      r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
      r5.w = dot(float2(1,1), abs(r7.xy));
      r13.z = 1 + -r5.w;
      r5.w = cmp(r13.z < 0);
      r14.xy = float2(1,1) + -abs(r7.yx);
      r14.zw = cmp(r7.xy >= float2(0,0));
      r14.zw = r14.zw ? float2(1,1) : float2(-1,-1);
      r14.xy = r14.xy * r14.zw;
      r13.xy = r5.ww ? r14.xy : r7.xy;
      r5.w = dot(r13.xyz, r13.xyz);
      r5.w = rsqrt(r5.w);
      r7.xyw = r13.xyz * r5.www;
      r5.w = 1 + -r7.z;
      r6.w = r5.w * r2.x;
      r5.xyz = -r5.xyz * r3.zzz + -r7.xyw;
      r5.xyz = r6.www * r5.xyz + r7.xyw;
      r3.z = dot(r5.xyz, r5.xyz);
      r3.z = rsqrt(r3.z);
      r5.xyz = r5.xyz * r3.zzz;
      r3.z = dot(r10.xyz, -r4.xyz);
      r12.z = abs(r3.z);
      r6.w = dot(r3.zz, r3.zz);
      r6.w = -1 + r6.w;
      r7.z = 9.99999975e-006 + r12.z;
      r7.z = min(1, r7.z);
      r8.w = 0.0799999982 * r11.y;
      r10.w = r4.w * r4.w;
      r11.y = (uint)r10.w >> 1;
      r11.y = (int)r11.y + 0x1fbd1df5;
      r13.x = r7.z * r2.w + r4.w;
      r6.xyz = float3(0.318309873,0.318309873,0.318309873) * r6.xyz;
      r12.yw = float2(1,1);
      r13.yzw = r8.xyz;
      r14.x = 0;
      while (true) {
        r14.y = cmp((uint)r14.x >= (uint)r3.x);
        if (r14.y != 0) break;
        r14.y = g3[r14.x].val[0/4];
        r14.z = cmp(-2 < cb2[r14.y+1024].x);
        r14.w = cmp(0.000000 == cb3[r14.y+1024].w);
        r15.xyz = cb3[r14.y+0].xyz + -r0.yzw;
        r15.w = dot(r15.xyz, r15.xyz);
        r16.x = rsqrt(r15.w);
        r16.yzw = r16.xxx * r15.xyz;
        r17.x = cb3[r14.y+0].w * cb3[r14.y+0].w;
        r17.x = r17.x * r15.w;
        r17.x = -r17.x * r17.x + 1;
        r17.x = max(0, r17.x);
        r17.x = r17.x * r17.x;
        r15.xyz = cb3[r14.y+0].www * r15.xyz;
        r15.x = dot(r15.xyz, r15.xyz);
        r15.x = min(1, r15.x);
        r15.x = 1 + -r15.x;
        r15.x = log2(r15.x);
        r15.x = cb3[r14.y+1024].w * r15.x;
        r15.x = exp2(r15.x);
        r15.x = r14.w ? r17.x : r15.x;
        r15.y = dot(r16.yzw, cb2[r14.y+0].xyz);
        r15.y = -cb2[r14.y+1024].x + r15.y;
        r15.y = saturate(cb2[r14.y+1024].y * r15.y);
        r15.y = r15.y * r15.y;
        r15.y = r15.x * r15.y;
        r14.z = r14.z ? r15.y : r15.x;
        r15.x = cmp(0 < r14.z);
        if (r15.x != 0) {
          r15.x = dot(cb2[r14.y+2048].xyzw, float4(1,1,1,1));
          r15.y = (uint)r15.x;
          if (r15.y != 0) {
            r15.y = dot(r9.xyzw, cb2[r14.y+2048].xyzw);
            r15.y = -1 + r15.y;
            r15.xy = r15.xx * r15.yy + float2(1,1);
          } else {
            r15.xy = r12.xy;
          }
          r15.z = r15.x + r15.y;
          r15.z = cmp(0 < r15.z);
          if (r15.z != 0) {
            r15.z = 1 + r15.w;
            r15.z = rcp(r15.z);
            r15.w = dot(r10.xyz, r16.yzw);
            r17.x = cmp(0 < cb2[r14.y+1024].z);
            r17.y = cb2[r14.y+1024].z * cb2[r14.y+1024].z;
            r17.y = r17.y * r15.z;
            r17.y = min(1, r17.y);
            r17.y = sqrt(r17.y);
            r17.z = cmp(r15.w < r17.y);
            r17.w = max(-r17.y, r15.w);
            r17.w = r17.y + r17.w;
            r17.w = r17.w * r17.w;
            r17.y = 4 * r17.y;
            r17.y = r17.w / r17.y;
            r17.y = r17.z ? r17.y : r15.w;
            r17.x = saturate(r17.x ? r17.y : r15.w);
            r14.w = r14.w ? r15.z : 1;
            r15.z = cb2[r14.y+1024].z * r16.x;
            r15.z = saturate(r15.z * r2.w);
            r16.x = dot(-r4.xyz, r16.yzw);
            r17.y = r16.x * 2 + 2;
            r17.y = rsqrt(r17.y);
            r17.z = r15.w + r3.z;
            r18.y = saturate(r17.z * r17.y);
            r18.x = saturate(r17.y * r16.x + r17.y);
            r17.y = cmp(0 < r15.z);
            r17.z = -r15.z * r15.z + 1;
            r17.z = sqrt(r17.z);
            r17.w = dot(r3.zz, r15.ww);
            r17.w = r17.w + -r16.x;
            r18.z = cmp(r17.w >= r17.z);
            r18.w = -r17.w * r17.w + 1;
            r18.w = rsqrt(r18.w);
            r18.w = r18.w * r15.z;
            r19.x = -r17.w * r15.w + r3.z;
            r19.x = r19.x * r18.w;
            r17.w = -r17.w * r16.x + r6.w;
            r17.w = r18.w * r17.w;
            r15.w = r15.w * r17.z + r19.x;
            r16.x = r16.x * r17.z + r17.w;
            r17.z = r16.x * 2 + 2;
            r17.z = rsqrt(r17.z);
            r15.w = r15.w + r3.z;
            r19.y = saturate(r15.w * r17.z);
            r19.x = saturate(r17.z * r16.x + r17.z);
            r17.zw = r18.zz ? r12.zw : r19.xy;
            r17.zw = r17.yy ? r17.zw : r18.xy;
            r15.w = 1 + -r17.z;
            r16.x = r15.w * r15.w;
            r16.x = r16.x * r16.x;
            r18.x = r16.x * r15.w;
            r15.w = -r16.x * r15.w + 1;
            r15.w = r15.w * r8.w + r18.x;
            r16.x = 0.25 * r15.z;
            r15.z = r11.y * 3 + r15.z;
            r15.z = r16.x * r15.z;
            r16.x = 0.00100000005 + r17.z;
            r15.z = r15.z / r16.x;
            r15.z = r4.w * r4.w + r15.z;
            r15.z = r10.w / r15.z;
            r15.z = r17.y ? r15.z : 1;
            r16.x = r17.w * r10.w + -r17.w;
            r16.x = r16.x * r17.w + 1;
            r16.x = r16.x * r16.x;
            r16.x = 3.14159274 * r16.x;
            r16.x = r10.w / r16.x;
            r15.z = r16.x * r15.z;
            r16.x = r17.x * r2.w + r4.w;
            r16.x = r16.x * r7.z;
            r16.x = r17.x * r13.x + r16.x;
            r16.x = rcp(r16.x);
            r16.x = 0.5 * r16.x;
            r17.y = r14.w * r17.x;
            r15.z = r17.y * r15.z;
            r15.z = r15.z * r16.x;
            r15.z = r15.z * r15.w;
            r16.x = saturate(dot(r7.xyw, r16.yzw));
            r17.yz = r16.xx * float2(-11,-11) + float2(12,13);
            r17.z = 0.200000003 * r17.z;
            r16.y = saturate(dot(r5.xyz, r16.yzw));
            r16.y = log2(r16.y);
            r16.y = r17.y * r16.y;
            r16.y = exp2(r16.y);
            r16.y = r17.z * r16.y + 0.800000012;
            r16.x = r16.x * r16.y + -r17.x;
            r16.x = r5.w * r16.x + r17.x;
            r14.w = r16.x * r14.w;
            r15.w = 1 + -r15.w;
            r14.w = r15.w * r14.w;
            r16.xyz = r14.www * r6.xyz;
            r14.w = cb2[r14.y+0].w * r15.z;
            r17.xyz = cb3[r14.y+1024].xyz * r14.zzz;
            r15.xzw = r17.xyz * r15.xxx;
            r14.yzw = r15.xzw * r14.www;
            r15.xyz = r17.xyz * r15.yyy;
            r15.xyz = r16.xyz * r15.xyz;
          } else {
            r15.xyz = float3(0,0,0);
            r14.yzw = float3(0,0,0);
          }
        } else {
          r15.xyz = float3(0,0,0);
          r14.yzw = float3(0,0,0);
        }
        r14.yzw = r14.yzw + r15.xyz;
        r13.yzw = r14.yzw + r13.yzw;
        r14.x = (int)r14.x + 1;
      }
      r2.w = max(0.0399999991, r2.z);
      r2.w = r2.w * r2.w;
      r2.w = r2.w * r2.w;
      r8.xyz = r13.yzw;
      r3.z = 0;
      while (true) {
        r4.w = cmp((uint)r3.z >= (uint)r3.y);
        if (r4.w != 0) break;
        r4.w = g5[r3.z].val[0/4];
        r5.x = cmp(0.000000 == cb3[r4.w+1024].w);
        r5.yzw = cb3[r4.w+0].xyz + -r0.yzw;
        r6.w = dot(r5.yzw, r5.yzw);
        r7.x = 1 + r6.w;
        r7.x = 1 / r7.x;
        r7.y = cb3[r4.w+0].w * cb3[r4.w+0].w;
        r7.y = r7.y * r6.w;
        r7.y = -r7.y * r7.y + 1;
        r7.y = max(0, r7.y);
        r7.y = r7.y * r7.y;
        r7.x = r7.x * r7.y;
        r7.yzw = cb3[r4.w+0].www * r5.yzw;
        r7.y = dot(r7.yzw, r7.yzw);
        r7.y = min(1, r7.y);
        r7.y = 1 + -r7.y;
        r7.y = log2(r7.y);
        r7.y = cb3[r4.w+1024].w * r7.y;
        r7.y = exp2(r7.y);
        r5.x = r5.x ? r7.x : r7.y;
        r7.x = cmp(0 < r5.x);
        if (r7.x != 0) {
          r6.w = rsqrt(r6.w);
          r7.xyz = r6.www * r5.yzw;
          r7.x = saturate(dot(r10.xyz, r7.xyz));
          r5.x = r5.x * r12.x;
          r5.x = r7.x * r5.x;
          r7.xyz = cb3[r4.w+1024].xyz * r5.xxx;
          r5.xyz = r5.yzw * r6.www + -r4.xyz;
          r4.w = dot(r5.xyz, r5.xyz);
          r4.w = rsqrt(r4.w);
          r5.xyz = r5.xyz * r4.www;
          r4.w = saturate(dot(r10.xyz, r5.xyz));
          r5.x = r4.w * r2.w + -r4.w;
          r4.w = r5.x * r4.w + 1;
          r4.w = r4.w * r4.w;
          r4.w = 3.14159274 * r4.w;
          r4.w = r2.w / r4.w;
          r4.w = 0.25 * r4.w;
          r5.xyz = r4.www * r11.xzw + r6.xyz;
          r5.xyz = r7.xyz * r5.xyz;
        } else {
          r5.xyz = float3(0,0,0);
        }
        r8.xyz = r8.xyz + r5.xyz;
        r3.z = (int)r3.z + 1;
      }
    }
    if (r3.w != 0) {
      r5.xyz = t2.Load(r1.xyw).xyz;
      r6.xyz = t4.Load(r1.xyw).xyz;
      r7.xyzw = t6.Load(r1.xyw).xyzw;
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
      r3.z = t7.SampleLevel(s1_s, r3.zw, 0).x;
      r0.x = max(cb1[226].y, r2.z);
      r4.w = r0.x * r0.x;
      r0.x = -r0.x * r0.x + 1;
      r5.w = dot(r5.xyz, -r4.xyz);
      r6.w = r5.w * r5.w;
      r8.w = r6.w * 2 + -1;
      r9.x = 9.99999975e-006 + abs(r5.w);
      r9.x = min(1, r9.x);
      r2.xyw = float3(0.318309873,0.318309873,0.318309873) * r2.xyw;
      r9.y = r4.w * r4.w;
      r9.z = (uint)r9.y >> 1;
      r9.z = (int)r9.z + 0x1fbd1df5;
      r9.w = r9.x * r0.x + r4.w;
      r10.x = saturate(50 * r6.y);
      r3.w = 1;
      r10.yzw = r8.xyz;
      r11.x = 0;
      while (true) {
        r11.y = cmp((uint)r11.x >= (uint)r3.x);
        if (r11.y != 0) break;
        r11.y = g3[r11.x].val[0/4];
        r11.z = cmp(-2 < cb2[r11.y+1024].x);
        r11.w = cmp(0.000000 == cb3[r11.y+1024].w);
        r12.xyz = cb3[r11.y+0].xyz + -r0.yzw;
        r12.w = dot(r12.xyz, r12.xyz);
        r13.x = rsqrt(r12.w);
        r13.yzw = r13.xxx * r12.xyz;
        r14.x = cb3[r11.y+0].w * cb3[r11.y+0].w;
        r14.x = r14.x * r12.w;
        r14.x = -r14.x * r14.x + 1;
        r14.x = max(0, r14.x);
        r14.x = r14.x * r14.x;
        r12.xyz = cb3[r11.y+0].www * r12.xyz;
        r12.x = dot(r12.xyz, r12.xyz);
        r12.x = min(1, r12.x);
        r12.x = 1 + -r12.x;
        r12.x = log2(r12.x);
        r12.x = cb3[r11.y+1024].w * r12.x;
        r12.x = exp2(r12.x);
        r12.x = r11.w ? r14.x : r12.x;
        r12.y = dot(r13.yzw, cb2[r11.y+0].xyz);
        r12.y = -cb2[r11.y+1024].x + r12.y;
        r12.y = saturate(cb2[r11.y+1024].y * r12.y);
        r12.y = r12.y * r12.y;
        r12.y = r12.x * r12.y;
        r11.z = r11.z ? r12.y : r12.x;
        r12.x = cmp(0 < r11.z);
        if (r12.x != 0) {
          r12.x = dot(cb2[r11.y+2048].xyzw, float4(1,1,1,1));
          r12.y = (uint)r12.x;
          if (r12.y != 0) {
            r12.y = dot(r7.xyzw, cb2[r11.y+2048].xyzw);
            r12.y = -1 + r12.y;
            r12.xy = r12.xx * r12.yy + float2(1,1);
          } else {
            r12.xy = r3.zw;
          }
          r12.y = r12.x + r12.y;
          r12.y = cmp(0 < r12.y);
          if (r12.y != 0) {
            r12.y = 1 + r12.w;
            r12.y = rcp(r12.y);
            r12.z = dot(r5.xyz, r13.yzw);
            r12.w = cmp(0 < cb2[r11.y+1024].z);
            r14.x = cb2[r11.y+1024].z * cb2[r11.y+1024].z;
            r14.x = r14.x * r12.y;
            r14.x = min(1, r14.x);
            r14.x = sqrt(r14.x);
            r14.y = cmp(r12.z < r14.x);
            r14.z = max(-r14.x, r12.z);
            r14.z = r14.x + r14.z;
            r14.z = r14.z * r14.z;
            r14.x = 4 * r14.x;
            r14.x = r14.z / r14.x;
            r14.x = r14.y ? r14.x : r12.z;
            r12.w = saturate(r12.w ? r14.x : r12.z);
            r11.w = r11.w ? r12.y : 1;
            r12.y = cb2[r11.y+1024].z * r13.x;
            r12.y = saturate(r12.y * r0.x);
            r13.x = dot(-r4.xyz, r13.yzw);
            r13.y = r13.x * 2 + 2;
            r13.y = rsqrt(r13.y);
            r13.z = r12.z + r5.w;
            r13.z = saturate(r13.z * r13.y);
            r13.y = saturate(r13.y * r13.x + r13.y);
            r13.w = cmp(0 < r12.y);
            if (r13.w != 0) {
              r14.x = -r12.y * r12.y + 1;
              r14.x = sqrt(r14.x);
              r14.y = dot(r5.ww, r12.zz);
              r14.z = r14.y + -r13.x;
              r14.w = cmp(r14.z >= r14.x);
              if (r14.w != 0) {
                r13.z = 1;
                r13.y = abs(r5.w);
              } else {
                r14.w = -r14.z * r14.z + 1;
                r14.w = rsqrt(r14.w);
                r14.w = r14.w * r12.y;
                r15.x = -r14.z * r12.z + r5.w;
                r15.y = r15.x * r14.w;
                r14.z = -r14.z * r13.x + r8.w;
                r15.z = -r12.z * r12.z + -r6.w;
                r15.z = 1 + r15.z;
                r15.z = -r13.x * r13.x + r15.z;
                r14.y = saturate(r14.y * r13.x + r15.z);
                r14.y = sqrt(r14.y);
                r14.yz = r14.ww * r14.yz;
                r15.z = r14.y * r5.w;
                r15.w = r15.z + r15.z;
                r16.x = r12.z * r14.x + r5.w;
                r14.w = r14.w * r15.x + r16.x;
                r15.x = r13.x * r14.x + r14.z;
                r15.x = 1 + r15.x;
                r16.yz = r15.xx * r14.yw;
                r16.w = r15.w * r14.w;
                r15.z = r14.w * r15.z;
                r15.z = 0.5 * r15.z;
                r15.z = r16.y * -0.5 + r15.z;
                r17.x = -r16.y * 2 + r16.w;
                r16.w = r17.x * r16.w;
                r16.y = r16.y * r16.y + r16.w;
                r16.w = r15.x * r15.x;
                r15.x = r13.x * r14.x + r15.x;
                r15.x = r15.x * -0.5 + -0.5;
                r15.xz = r16.zz * r15.xz;
                r15.x = r16.x * r16.w + r15.x;
                r14.w = r14.w * r15.x + r16.y;
                r15.x = r15.z + r15.z;
                r16.x = r15.z * r15.z;
                r16.x = r14.w * r14.w + r16.x;
                r15.x = r15.x / r16.x;
                r14.w = r15.x * r14.w;
                r15.x = -r15.x * r15.z + 1;
                r14.y = r14.w * r14.y;
                r14.y = r15.x * r15.y + r14.y;
                r14.w = r14.w * r15.w;
                r14.z = r15.x * r14.z + r14.w;
                r12.z = r12.z * r14.x + r14.y;
                r13.x = r13.x * r14.x + r14.z;
                r14.x = r13.x * 2 + 2;
                r14.x = rsqrt(r14.x);
                r12.z = r12.z + r5.w;
                r13.z = saturate(r12.z * r14.x);
                r13.y = saturate(r14.x * r13.x + r14.x);
              }
            }
            r11.w = r11.w * r12.w;
            r14.xyz = r11.www * r2.xyw;
            r12.z = 0.25 * r12.y;
            r12.y = r9.z * 3 + r12.y;
            r12.y = r12.z * r12.y;
            r12.z = 0.00100000005 + r13.y;
            r12.y = r12.y / r12.z;
            r12.y = r4.w * r4.w + r12.y;
            r12.y = r9.y / r12.y;
            r12.y = r13.w ? r12.y : 1;
            r12.z = r13.z * r9.y + -r13.z;
            r12.z = r12.z * r13.z + 1;
            r12.z = r12.z * r12.z;
            r12.z = 3.14159274 * r12.z;
            r12.z = r9.y / r12.z;
            r12.y = r12.z * r12.y;
            r12.z = r12.w * r0.x + r4.w;
            r12.z = r12.z * r9.x;
            r12.z = r12.w * r9.w + r12.z;
            r12.z = rcp(r12.z);
            r12.y = r12.y * r12.z;
            r12.z = 1 + -r13.y;
            r12.w = r12.z * r12.z;
            r12.w = r12.w * r12.w;
            r13.x = r12.w * r12.z;
            r12.z = -r12.w * r12.z + 1;
            r13.yzw = r12.zzz * r6.xyz;
            r13.xyz = r10.xxx * r13.xxx + r13.yzw;
            r12.y = 0.5 * r12.y;
            r12.yzw = r12.yyy * r13.xyz;
            r12.yzw = r12.yzw * r11.www;
            r12.yzw = cb2[r11.y+0].www * r12.yzw;
            r11.yzw = cb3[r11.y+1024].xyz * r11.zzz;
            r11.yzw = r11.yzw * r12.xxx;
            r13.xyz = r14.xyz * r11.yzw;
            r11.yzw = r12.yzw * r11.yzw;
          } else {
            r13.xyz = float3(0,0,0);
            r11.yzw = float3(0,0,0);
          }
        } else {
          r13.xyz = float3(0,0,0);
          r11.yzw = float3(0,0,0);
        }
        r11.yzw = r11.yzw + r13.xyz;
        r10.yzw = r11.yzw + r10.yzw;
        r11.x = (int)r11.x + 1;
      }
      r0.x = max(0.0399999991, r2.z);
      r0.x = r0.x * r0.x;
      r0.x = r0.x * r0.x;
      r8.xyz = r10.yzw;
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
        r9.xyz = cb3[r3.x+0].www * r7.xyz;
        r6.w = dot(r9.xyz, r9.xyz);
        r6.w = min(1, r6.w);
        r6.w = 1 + -r6.w;
        r6.w = log2(r6.w);
        r6.w = cb3[r3.x+1024].w * r6.w;
        r6.w = exp2(r6.w);
        r3.w = r3.w ? r5.w : r6.w;
        r5.w = cmp(0 < r3.w);
        if (r5.w != 0) {
          r4.w = rsqrt(r4.w);
          r9.xyz = r7.xyz * r4.www;
          r5.w = saturate(dot(r5.xyz, r9.xyz));
          r3.w = r3.w * r3.z;
          r3.w = r5.w * r3.w;
          r9.xyz = cb3[r3.x+1024].xyz * r3.www;
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
          r7.xyz = r3.xxx * r6.xyz + r2.xyw;
          r7.xyz = r9.xyz * r7.xyz;
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
    r0.xyz = cb1[135].yyy * r8.xyz;
    r0.w = 0;
    r2.xyzw = t9.Load(r1.xyz).xyzw;
    r0.xyzw = r2.xyzw + r0.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r0.xyzw
  }
  return;
}