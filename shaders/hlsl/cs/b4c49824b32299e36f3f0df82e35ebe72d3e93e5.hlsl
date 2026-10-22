// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g2[1024];
Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[197];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[13];
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
// unknown dcl_: dcl_tgsm_raw g3, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g4, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g5, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g6, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = mad((int)vThreadIDInGroup.y, 8, (int)vThreadIDInGroup.x);
  r0.yz = mad((int2)vThreadID.xy, asint(cb0[12].yy), asint(cb0[10].xy));
  r0.yz = (uint2)r0.yz;
  r0.yz = float2(0.5,0.5) + r0.yz;
  r1.xy = cb1[132].zw * r0.yz;
  r0.w = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r1.z = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r2.w = r1.z + r0.w;
  if (r0.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g3.x, l(0), l(340282346638528860000000000000000000000.000000)
  // No code for instruction (needs manual fix):
    store_raw g4.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g5.x, l(0), l(340282346638528860000000000000000000000.000000)
  // No code for instruction (needs manual fix):
    store_raw g6.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  r0.w = cmp(r2.w < 20000);
  if (r0.w != 0) {
    // Needs manual fix for instruction:
    atomic_umin g3, l(0), r2.w
    InterlockedMin(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g4, l(0), r2.w
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r3.z, l(0), g3.xxxx
// No code for instruction (needs manual fix):
ld_raw r4.z, l(0), g4.xxxx
  if (r0.w != 0) {
    r0.w = r4.z + r3.z;
    r0.w = 0.5 * r0.w;
    r1.z = cmp(r2.w >= r0.w);
    if (r1.z != 0) {
      // Needs manual fix for instruction:
        atomic_umin g5, l(0), r2.w
      InterlockedMin(dest, value, orig_value);
    }
    r0.w = cmp(r0.w >= r2.w);
    if (r0.w != 0) {
      // Needs manual fix for instruction:
        atomic_umax g6, l(0), r2.w
      InterlockedMax(dest, value, orig_value);
    }
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r5.z, l(0), g5.xxxx
// No code for instruction (needs manual fix):
ld_raw r6.z, l(0), g6.xxxx
  r0.w = cmp((int)r3.z == 0x7f7fffff);
  r1.z = cmp((int)r4.z == 0);
  r0.w = r0.w ? r1.z : 0;
  r1.zw = cmp(abs(cb1[30].xy) < float2(9.99999975e-006,9.99999975e-006));
  r1.z = r1.w ? r1.z : 0;
  if (r1.z != 0) {
    r7.x = cb1[36].x;
    r7.y = cb1[37].y;
    r1.zw = r7.xy + r7.xy;
    r8.xyzw = asuint(cb0[10].zwxy);
    r7.zw = r8.xy * r1.zw;
    r8.xy = cb1[130].xy * cb0[11].xy;
    r7.zw = r7.zw / r8.xy;
    r8.xy = -cb1[129].xy + r8.zw;
    r1.zw = r8.xy * r1.zw;
    r1.zw = r1.zw * cb1[130].zw + -r7.xy;
    r7.xy = (uint2)vThreadGroupID.xy;
    r7.xy = r7.xy * r7.zw + r1.zw;
    r7.xy = float2(1,-1) * r7.xy;
    r8.xy = (int2)vThreadGroupID.xy + int2(1,1);
    r8.xy = (uint2)r8.xy;
    r1.zw = r8.xy * r7.zw + r1.zw;
    r1.zw = float2(1,-1) * r1.zw;
    r7.zw = r7.xy * r3.zz;
    r8.xy = r7.xy * r6.zz;
    r3.xy = min(r8.xy, r7.zw);
    r7.zw = r3.zz * r1.zw;
    r8.xy = r6.zz * r1.zw;
    r6.xy = max(r8.xy, r7.zw);
    r7.zw = r7.xy * r5.zz;
    r7.xy = r7.xy * r4.zz;
    r5.xy = min(r7.zw, r7.xy);
    r7.xy = r5.zz * r1.zw;
    r1.zw = r4.zz * r1.zw;
    r4.xy = max(r7.xy, r1.zw);
  } else {
    r1.zw = asuint(cb0[10].zw) << int2(1,1);
    r1.zw = (uint2)r1.zw;
    r7.xy = cb1[130].xy * cb0[11].xy;
    r1.zw = r1.zw / r7.xy;
    r7.xy = asuint(cb0[10].xy);
    r7.xy = -cb1[129].xy + r7.xy;
    r7.xy = cb1[130].zw * r7.xy;
    r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
    r7.zw = (uint2)vThreadGroupID.xy;
    r7.zw = r7.zw * r1.zw + r7.xy;
    r7.zw = float2(1,-1) * r7.zw;
    r8.xy = (int2)vThreadGroupID.xy + int2(1,1);
    r8.xy = (uint2)r8.xy;
    r1.zw = r8.xy * r1.zw + r7.xy;
    r1.zw = float2(1,-1) * r1.zw;
    r3.w = cmp(cb1[31].w < 1);
    r4.w = cb1[65].w + r3.z;
    r4.w = cb1[65].z * r4.w;
    r4.w = 1 / r4.w;
    r5.w = r3.z * cb1[30].z + cb1[31].z;
    r4.w = r3.w ? r4.w : r5.w;
    r7.xyw = cb1[37].xyw * r7.www;
    r7.xyz = r7.zzz * cb1[36].xyw + r7.xyw;
    r8.xyz = r4.www * cb1[38].xyw + r7.xyz;
    r8.xyz = cb1[39].xyw + r8.xyz;
    r9.xyz = cb1[37].xyw * r1.www;
    r9.xyz = r1.zzz * cb1[36].xyw + r9.xyz;
    r10.xyz = r4.www * cb1[38].xyw + r9.xyz;
    r10.xyz = cb1[39].xyw + r10.xyz;
    r1.z = cb1[65].w + r6.z;
    r1.z = cb1[65].z * r1.z;
    r1.z = 1 / r1.z;
    r1.w = r6.z * cb1[30].z + cb1[31].z;
    r1.z = r3.w ? r1.z : r1.w;
    r11.xyz = r1.zzz * cb1[38].xyw + r7.xyz;
    r11.xyz = cb1[39].xyw + r11.xyz;
    r12.xyz = r1.zzz * cb1[38].xyw + r9.xyz;
    r12.xyz = cb1[39].xyw + r12.xyz;
    r1.zw = r8.xy / r8.zz;
    r8.xy = r11.xy / r11.zz;
    r3.xy = min(r8.xy, r1.zw);
    r1.zw = r10.xy / r10.zz;
    r8.xy = r12.xy / r12.zz;
    r6.xy = max(r8.xy, r1.zw);
    r1.z = cb1[65].w + r5.z;
    r1.z = cb1[65].z * r1.z;
    r1.z = 1 / r1.z;
    r1.w = r5.z * cb1[30].z + cb1[31].z;
    r1.z = r3.w ? r1.z : r1.w;
    r8.xyz = r1.zzz * cb1[38].xyw + r7.xyz;
    r8.xyz = cb1[39].xyw + r8.xyz;
    r10.xyz = r1.zzz * cb1[38].xyw + r9.xyz;
    r10.xyz = cb1[39].xyw + r10.xyz;
    r1.z = cb1[65].w + r4.z;
    r1.z = cb1[65].z * r1.z;
    r1.z = 1 / r1.z;
    r1.w = r4.z * cb1[30].z + cb1[31].z;
    r1.z = r3.w ? r1.z : r1.w;
    r7.xyz = r1.zzz * cb1[38].xyw + r7.xyz;
    r7.xyz = cb1[39].xyw + r7.xyz;
    r9.xyz = r1.zzz * cb1[38].xyw + r9.xyz;
    r9.xyz = cb1[39].xyw + r9.xyz;
    r1.zw = r8.xy / r8.zz;
    r7.xy = r7.xy / r7.zz;
    r5.xy = min(r7.xy, r1.zw);
    r1.zw = r10.xy / r10.zz;
    r7.xy = r9.xy / r9.zz;
    r4.xy = max(r7.xy, r1.zw);
  }
  if (r0.w == 0) {
    r0.yz = r0.yz * cb1[132].zw + -cb1[66].wz;
    r0.yz = r0.yz / cb1[66].xy;
    r0.yz = r0.yz * r2.ww;
    r7.xyz = cb1[49].xyz * r0.zzz;
    r0.yzw = r0.yyy * cb1[48].xyz + r7.xyz;
    r0.yzw = r2.www * cb1[50].xyz + r0.yzw;
    r0.yzw = cb1[51].xyz + r0.yzw;
    r3.xyz = r6.xyz + r3.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r3.xyz;
    r8.xyz = cb1[17].xyz * r7.yyy;
    r7.xyw = r7.xxx * cb1[16].xyz + r8.xyz;
    r7.xyz = r7.zzz * cb1[18].xyz + r7.xyw;
    r7.xyz = cb1[19].xyz + r7.xyz;
    r7.xyz = -cb1[70].xyz + r7.xyz;
    r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + -r6.xyz;
    r1.z = dot(r3.xyz, r3.xyz);
    r3.xyz = r5.xyz + r4.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r3.xyz;
    r6.xyw = cb1[17].xyz * r5.yyy;
    r5.xyw = r5.xxx * cb1[16].xyz + r6.xyw;
    r5.xyz = r5.zzz * cb1[18].xyz + r5.xyw;
    r5.xyz = cb1[19].xyz + r5.xyz;
    r5.xyz = -cb1[70].xyz + r5.xyz;
    r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + -r4.xyz;
    r1.w = dot(r3.xyz, r3.xyz);
    r1.zw = sqrt(r1.zw);
    r3.x = cmp(r6.z < r2.w);
    r4.y = 0;
    r6.x = 0;
    r3.y = r0.x;
    while (true) {
      r3.z = cmp((uint)r3.y >= asuint(cb0[8].x));
      if (r3.z != 0) break;
      r8.xyzw = t3.Load(r3.y).xyzw;
      r3.z = f16tof32(r8.w);
      sincos(r3.z, r9.x, r10.x);
      r3.z = (uint)r3.y << 1;
      r11.xyzw = t2.Load(r3.z).xyzw;
      bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.z = (((uint)r3.y << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
      r12.xyzw = t2.Load(r3.z).xyzw;
      r3.z = cmp(abs(r12.y) < abs(r12.x));
      r3.w = dot(r12.xz, r12.xz);
      r3.w = sqrt(r3.w);
      r3.w = 1 / r3.w;
      r4.x = -r12.z * r3.w;
      r4.z = r12.x * r3.w;
      r3.w = dot(r12.yz, r12.yz);
      r3.w = sqrt(r3.w);
      r3.w = 1 / r3.w;
      r6.y = r12.z * r3.w;
      r6.z = -r12.y * r3.w;
      r4.xzw = r3.zzz ? r4.xyz : r6.xyz;
      r6.yzw = r12.zxy * r4.zwx;
      r6.yzw = r12.yzx * r4.wxz + -r6.yzw;
      r3.z = r12.w * 0.5 + r11.w;
      r3.z = r11.w / r3.z;
      r9.yzw = r12.xyz * r3.zzz;
      r10.yzw = -r11.xyz + r7.xyz;
      r12.x = dot(r10.yzw, r4.xzw);
      r12.y = dot(r10.yzw, r6.yzw);
      r12.z = dot(r10.yzw, r9.yzw);
      r10.yzw = -r11.xyz + r5.xyz;
      r11.x = dot(r10.yzw, r4.xzw);
      r11.y = dot(r10.yzw, r6.yzw);
      r11.z = dot(r10.yzw, r9.yzw);
      r13.x = dot(r8.xyz, r4.xzw);
      r13.y = dot(r8.xyz, r6.yzw);
      r13.z = dot(r8.xyz, r9.yzw);
      r3.z = dot(r13.xyz, r13.xyz);
      r3.z = rsqrt(r3.z);
      r4.xzw = r13.xyz * r3.zzz;
      r3.z = cb0[12].z + r11.w;
      r3.w = r3.z + r1.z;
      r5.w = dot(-r12.xyz, -r12.xyz);
      r3.w = r3.w * r3.w;
      r3.w = cmp(r5.w < r3.w);
      r6.y = r11.w + r1.z;
      r6.z = r6.y / r9.x;
      r8.xyz = -r6.zzz * r4.xzw + r12.xyz;
      r6.z = dot(-r8.xyz, -r8.xyz);
      r6.w = dot(r4.xzw, -r8.xyz);
      r7.w = cmp(0 < r6.w);
      r6.w = r6.w * r6.w;
      r8.x = r10.x * r10.x;
      r6.z = r8.x * r6.z;
      r6.z = cmp(r6.w >= r6.z);
      r6.z = r6.z ? r7.w : 0;
      r6.w = dot(r4.xzw, -r12.xyz);
      r7.w = cmp(0 < -r6.w);
      r8.y = r6.w * r6.w;
      r8.z = r9.x * r9.x;
      r8.w = r8.z * r5.w;
      r8.y = cmp(r8.y >= r8.w);
      r7.w = r7.w ? r8.y : 0;
      r8.y = r6.y * r6.y;
      r5.w = cmp(r8.y >= r5.w);
      r5.w = r7.w ? r5.w : -1;
      r5.w = r6.z ? r5.w : 0;
      r6.y = r6.w + -r6.y;
      r6.y = cmp(r6.y < cb0[12].z);
      r5.w = r6.y ? r5.w : 0;
      r3.w = r3.w ? r5.w : 0;
      if (r3.w != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r10.x, g0, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r3.w = min(511, (uint)r10.x);
        g2[r3.w].val[0/4] = r3.y;
      }
      r3.z = r3.z + r1.w;
      r3.w = dot(-r11.xyz, -r11.xyz);
      r3.z = r3.z * r3.z;
      r3.z = cmp(r3.w < r3.z);
      r5.w = r11.w + r1.w;
      r6.y = r5.w / r9.x;
      r6.yzw = -r6.yyy * r4.xzw + r11.xyz;
      r7.w = dot(-r6.yzw, -r6.yzw);
      r6.y = dot(r4.xzw, -r6.yzw);
      r6.z = cmp(0 < r6.y);
      r6.y = r6.y * r6.y;
      r6.w = r8.x * r7.w;
      r6.y = cmp(r6.y >= r6.w);
      r6.y = r6.y ? r6.z : 0;
      r4.x = dot(r4.xzw, -r11.xyz);
      r4.z = cmp(0 < -r4.x);
      r4.w = r4.x * r4.x;
      r6.z = r8.z * r3.w;
      r4.w = cmp(r4.w >= r6.z);
      r4.z = r4.w ? r4.z : 0;
      r4.w = r5.w * r5.w;
      r3.w = cmp(r4.w >= r3.w);
      r3.w = r4.z ? r3.w : -1;
      r3.w = r6.y ? r3.w : 0;
      r4.x = r4.x + -r5.w;
      r4.x = cmp(r4.x < cb0[12].z);
      r3.w = r4.x ? r3.w : 0;
      r3.z = r3.z ? r3.w : 0;
      if (r3.z != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r8.x, g1, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r3.z = min(511, (uint)r8.x);
        r3.z = (int)r3.z + 512;
        g2[r3.z].val[0/4] = r3.y;
      }
      r3.y = (int)r3.y + 64;
    }
    GroupMemoryBarrierWithGroupSync();
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g0.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r1.z, l(0), g1.xxxx
    r0.x = r3.x ? r1.z : r0.x;
    r0.x = min(512, (uint)r0.x);
    r1.z = 1 / cb0[12].z;
    bitmask.w = ((~(-1 << 1)) << 9) & 0xffffffff;  r1.w = (((uint)r3.x << 9) & bitmask.w) | ((uint)0 & ~bitmask.w);
    r3.y = 0;
    r4.x = 0;
    r3.w = 1;
    r4.w = 0;
    while (true) {
      r5.x = cmp((uint)r4.w >= (uint)r0.x);
      if (r5.x != 0) break;
      r5.x = (int)r1.w + (int)r4.w;
      r5.x = g2[r5.x].val[0/4];
      r6.xyzw = t3.Load(r5.x).xyzw;
      r5.y = f16tof32(r6.w);
      r5.z = (uint)r6.w >> 16;
      r5.z = f16tof32(r5.z);
      r5.w = cos(r5.y);
      r5.w = -r5.w * 6.28318548 + 6.28318548;
      r6.w = (uint)r5.x << 1;
      r7.xyzw = t2.Load(r6.w).xyzw;
      r6.w = -cb0[11].z + -r6.z;
      r6.w = saturate(dot(cb0[11].ww, r6.ww));
      r6.w = 1 + -r6.w;
      r6.w = r7.w * r6.w;
      bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.x = (((uint)r5.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
      r8.xyzw = t2.Load(r5.x).xyzw;
      r5.x = cmp(0 < r8.w);
      if (r5.x != 0) {
        r5.x = cmp(abs(r8.y) < abs(r8.x));
        r7.w = dot(r8.xz, r8.xz);
        r7.w = sqrt(r7.w);
        r7.w = 1 / r7.w;
        r3.x = -r8.z * r7.w;
        r3.z = r8.x * r7.w;
        r7.w = dot(r8.yz, r8.yz);
        r7.w = sqrt(r7.w);
        r7.w = 1 / r7.w;
        r4.y = r8.z * r7.w;
        r4.z = -r8.y * r7.w;
        r9.xyz = r5.xxx ? r3.xyz : r4.xyz;
        r10.xyz = r9.yzx * r8.zxy;
        r10.xyz = r8.yzx * r9.zxy + -r10.xyz;
        r3.x = r8.w * 0.5 + r6.w;
        r3.x = r6.w / r3.x;
        r8.xyz = r8.xyz * r3.xxx;
        r11.xyz = -r7.xyz + r0.yzw;
        r12.x = dot(r11.xyz, r9.xyz);
        r12.y = dot(r11.xyz, r10.xyz);
        r12.z = dot(r11.xyz, r8.xyz);
        r9.x = dot(r6.xyz, r9.xyz);
        r9.y = dot(r6.xyz, r10.xyz);
        r9.z = dot(r6.xyz, r8.xyz);
        r3.x = dot(r12.xyz, r12.xyz);
        r3.x = sqrt(r3.x);
        r8.xyz = -r12.xyz / r3.xxx;
        r3.z = dot(r9.xyz, r9.xyz);
        r3.z = rsqrt(r3.z);
        r6.xyz = r9.xyz * r3.zzz;
      } else {
        r7.xyz = r7.xyz + -r0.yzw;
        r3.z = dot(r7.xyz, r7.xyz);
        r3.x = sqrt(r3.z);
        r8.xyz = r7.xyz / r3.xxx;
      }
      r3.z = dot(r8.xyz, r6.xyz);
      r4.y = abs(r3.z) * -0.156582996 + 1.57079637;
      r4.z = 1 + -abs(r3.z);
      r4.z = sqrt(r4.z);
      r5.x = r4.y * r4.z;
      r3.z = cmp(r3.z >= 0);
      r4.y = -r4.y * r4.z + 3.14159274;
      r3.z = r3.z ? r5.x : r4.y;
      r4.y = r6.w / r3.x;
      r4.z = cmp(r4.y < 1);
      r5.x = 1 / r4.y;
      r4.y = r4.z ? r4.y : r5.x;
      r5.x = r4.y * r4.y;
      r6.x = r5.x * 0.0872929022 + -0.301894993;
      r5.x = r6.x * r5.x + 1;
      r6.x = r5.x * r4.y;
      r4.y = -r5.x * r4.y + 1.57079637;
      r4.y = r4.z ? r6.x : r4.y;
      r4.z = max(r5.y, r4.y);
      r5.x = min(r5.y, r4.y);
      r4.z = -r5.x + r4.z;
      r4.z = cmp(r4.z >= r3.z);
      r5.x = cos(r5.x);
      r5.x = -r5.x * 6.28318548 + 6.28318548;
      r6.x = r5.y + r4.y;
      r6.y = cmp(r3.z >= r6.x);
      r4.y = r5.y + -r4.y;
      r3.z = -abs(r4.y) + r3.z;
      r4.y = r6.x + -abs(r4.y);
      r3.z = saturate(r3.z / r4.y);
      r3.z = 1 + -r3.z;
      r4.y = r3.z * -2 + 3;
      r3.z = r3.z * r3.z;
      r3.z = r4.y * r3.z;
      r3.z = r3.z * r5.x;
      r3.z = r6.y ? 0 : r3.z;
      r3.z = r4.z ? r5.x : r3.z;
      r3.z = r3.z / r5.w;
      r3.z = min(1, r3.z);
      r3.z = 1 + -r3.z;
      r3.x = r3.x * r1.z;
      r3.x = saturate(r3.x * 3 + -2);
      r4.y = 1 + -r3.z;
      r3.x = r3.x * r4.y + r3.z;
      r3.z = 1 + -r5.z;
      r3.x = r3.x * r3.z + r5.z;
      r3.w = r3.w * r3.x;
      r4.w = (int)r4.w + 1;
    }
  } else {
    r3.w = 1;
  }
  r0.xyz = t4.Load(vThreadID.xyz).xyz;
  r0.w = cmp(cb1[196].y < 1);
  if (r0.w != 0) {
    r0.w = t1.SampleLevel(s0_s, r1.xy, 0).w;
    r0.w = 3.99900007 * r0.w;
    r0.w = (uint)r0.w;
    r0.w = (int)r0.w & 2;
    r0.w = r0.w ? cb1[196].y : 1;
    r1.x = -1 + r3.w;
    r3.w = r0.w * r1.x + 1;
  }
  r2.xyz = r3.www * r0.xyz;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r2.xyzw
  return;
}