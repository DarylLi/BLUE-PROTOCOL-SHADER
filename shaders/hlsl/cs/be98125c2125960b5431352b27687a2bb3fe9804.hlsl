// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g2[1024];
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[14];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u1
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r1.x = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r1.y = r1.x + r0.w;
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
  r0.w = cmp(r1.y < 20000);
  if (r0.w != 0) {
    // Needs manual fix for instruction:
    atomic_umin g3, l(0), r1.y
    InterlockedMin(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g4, l(0), r1.y
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r2.z, l(0), g3.xxxx
// No code for instruction (needs manual fix):
ld_raw r3.z, l(0), g4.xxxx
  if (r0.w != 0) {
    r0.w = r3.z + r2.z;
    r0.w = 0.5 * r0.w;
    r1.z = cmp(r1.y >= r0.w);
    if (r1.z != 0) {
      // Needs manual fix for instruction:
        atomic_umin g5, l(0), r1.y
      InterlockedMin(dest, value, orig_value);
    }
    r0.w = cmp(r0.w >= r1.y);
    if (r0.w != 0) {
      // Needs manual fix for instruction:
        atomic_umax g6, l(0), r1.y
      InterlockedMax(dest, value, orig_value);
    }
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r4.z, l(0), g5.xxxx
// No code for instruction (needs manual fix):
ld_raw r5.z, l(0), g6.xxxx
  r0.w = cmp((int)r2.z == 0x7f7fffff);
  r1.z = cmp((int)r3.z == 0);
  r0.w = r0.w ? r1.z : 0;
  r1.zw = cmp(abs(cb1[30].xy) < float2(9.99999975e-006,9.99999975e-006));
  r1.z = r1.w ? r1.z : 0;
  if (r1.z != 0) {
    r6.x = cb1[36].x;
    r6.y = cb1[37].y;
    r1.zw = r6.xy + r6.xy;
    r7.xyzw = asuint(cb0[10].zwxy);
    r6.zw = r7.xy * r1.zw;
    r7.xy = cb1[130].xy * cb0[11].xy;
    r6.zw = r6.zw / r7.xy;
    r7.xy = -cb1[129].xy + r7.zw;
    r1.zw = r7.xy * r1.zw;
    r1.zw = r1.zw * cb1[130].zw + -r6.xy;
    r6.xy = (uint2)vThreadGroupID.xy;
    r6.xy = r6.xy * r6.zw + r1.zw;
    r6.xy = float2(1,-1) * r6.xy;
    r7.xy = (int2)vThreadGroupID.xy + int2(1,1);
    r7.xy = (uint2)r7.xy;
    r1.zw = r7.xy * r6.zw + r1.zw;
    r1.zw = float2(1,-1) * r1.zw;
    r6.zw = r6.xy * r2.zz;
    r7.xy = r6.xy * r5.zz;
    r2.xy = min(r7.xy, r6.zw);
    r6.zw = r2.zz * r1.zw;
    r7.xy = r5.zz * r1.zw;
    r5.xy = max(r7.xy, r6.zw);
    r6.zw = r6.xy * r4.zz;
    r6.xy = r6.xy * r3.zz;
    r4.xy = min(r6.zw, r6.xy);
    r6.xy = r4.zz * r1.zw;
    r1.zw = r3.zz * r1.zw;
    r3.xy = max(r6.xy, r1.zw);
  } else {
    r1.zw = asuint(cb0[10].zw) << int2(1,1);
    r1.zw = (uint2)r1.zw;
    r6.xy = cb1[130].xy * cb0[11].xy;
    r1.zw = r1.zw / r6.xy;
    r6.xy = asuint(cb0[10].xy);
    r6.xy = -cb1[129].xy + r6.xy;
    r6.xy = cb1[130].zw * r6.xy;
    r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
    r6.zw = (uint2)vThreadGroupID.xy;
    r6.zw = r6.zw * r1.zw + r6.xy;
    r6.zw = float2(1,-1) * r6.zw;
    r7.xy = (int2)vThreadGroupID.xy + int2(1,1);
    r7.xy = (uint2)r7.xy;
    r1.zw = r7.xy * r1.zw + r6.xy;
    r1.zw = float2(1,-1) * r1.zw;
    r2.w = cmp(cb1[31].w < 1);
    r3.w = cb1[65].w + r2.z;
    r3.w = cb1[65].z * r3.w;
    r3.w = 1 / r3.w;
    r4.w = r2.z * cb1[30].z + cb1[31].z;
    r3.w = r2.w ? r3.w : r4.w;
    r6.xyw = cb1[37].xyw * r6.www;
    r6.xyz = r6.zzz * cb1[36].xyw + r6.xyw;
    r7.xyz = r3.www * cb1[38].xyw + r6.xyz;
    r7.xyz = cb1[39].xyw + r7.xyz;
    r8.xyz = cb1[37].xyw * r1.www;
    r8.xyz = r1.zzz * cb1[36].xyw + r8.xyz;
    r9.xyz = r3.www * cb1[38].xyw + r8.xyz;
    r9.xyz = cb1[39].xyw + r9.xyz;
    r1.z = cb1[65].w + r5.z;
    r1.z = cb1[65].z * r1.z;
    r1.z = 1 / r1.z;
    r1.w = r5.z * cb1[30].z + cb1[31].z;
    r1.z = r2.w ? r1.z : r1.w;
    r10.xyz = r1.zzz * cb1[38].xyw + r6.xyz;
    r10.xyz = cb1[39].xyw + r10.xyz;
    r11.xyz = r1.zzz * cb1[38].xyw + r8.xyz;
    r11.xyz = cb1[39].xyw + r11.xyz;
    r1.zw = r7.xy / r7.zz;
    r7.xy = r10.xy / r10.zz;
    r2.xy = min(r7.xy, r1.zw);
    r1.zw = r9.xy / r9.zz;
    r7.xy = r11.xy / r11.zz;
    r5.xy = max(r7.xy, r1.zw);
    r1.z = cb1[65].w + r4.z;
    r1.z = cb1[65].z * r1.z;
    r1.z = 1 / r1.z;
    r1.w = r4.z * cb1[30].z + cb1[31].z;
    r1.z = r2.w ? r1.z : r1.w;
    r7.xyz = r1.zzz * cb1[38].xyw + r6.xyz;
    r7.xyz = cb1[39].xyw + r7.xyz;
    r9.xyz = r1.zzz * cb1[38].xyw + r8.xyz;
    r9.xyz = cb1[39].xyw + r9.xyz;
    r1.z = cb1[65].w + r3.z;
    r1.z = cb1[65].z * r1.z;
    r1.z = 1 / r1.z;
    r1.w = r3.z * cb1[30].z + cb1[31].z;
    r1.z = r2.w ? r1.z : r1.w;
    r6.xyz = r1.zzz * cb1[38].xyw + r6.xyz;
    r6.xyz = cb1[39].xyw + r6.xyz;
    r8.xyz = r1.zzz * cb1[38].xyw + r8.xyz;
    r8.xyz = cb1[39].xyw + r8.xyz;
    r1.zw = r7.xy / r7.zz;
    r6.xy = r6.xy / r6.zz;
    r4.xy = min(r6.xy, r1.zw);
    r1.zw = r9.xy / r9.zz;
    r6.xy = r8.xy / r8.zz;
    r3.xy = max(r6.xy, r1.zw);
  }
  if (r0.w == 0) {
    r0.yz = r0.yz * cb1[132].zw + -cb1[66].wz;
    r0.yz = r0.yz / cb1[66].xy;
    r0.yz = r0.yz * r1.yy;
    r6.xyz = cb1[49].xyz * r0.zzz;
    r0.yzw = r0.yyy * cb1[48].xyz + r6.xyz;
    r0.yzw = r1.yyy * cb1[50].xyz + r0.yzw;
    r0.yzw = cb1[51].xyz + r0.yzw;
    r2.xyz = r5.xyz + r2.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r2.xyz;
    r7.xyz = cb1[17].xyz * r6.yyy;
    r6.xyw = r6.xxx * cb1[16].xyz + r7.xyz;
    r6.xyz = r6.zzz * cb1[18].xyz + r6.xyw;
    r6.xyz = cb1[19].xyz + r6.xyz;
    r6.xyz = -cb1[70].xyz + r6.xyz;
    r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + -r5.xyz;
    r1.z = dot(r2.xyz, r2.xyz);
    r2.xyz = r4.xyz + r3.xyz;
    r4.xyz = float3(0.5,0.5,0.5) * r2.xyz;
    r5.xyw = cb1[17].xyz * r4.yyy;
    r4.xyw = r4.xxx * cb1[16].xyz + r5.xyw;
    r4.xyz = r4.zzz * cb1[18].xyz + r4.xyw;
    r4.xyz = cb1[19].xyz + r4.xyz;
    r4.xyz = -cb1[70].xyz + r4.xyz;
    r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + -r3.xyz;
    r1.w = dot(r2.xyz, r2.xyz);
    r1.zw = sqrt(r1.zw);
    r2.x = cmp(r5.z < r1.y);
    r3.y = 0;
    r5.x = 0;
    r2.y = r0.x;
    while (true) {
      r2.z = cmp((uint)r2.y >= asuint(cb0[8].x));
      if (r2.z != 0) break;
      r7.xyzw = t2.Load(r2.y).xyzw;
      r2.z = f16tof32(r7.w);
      sincos(r2.z, r8.x, r9.x);
      r2.z = (uint)r2.y << 1;
      r10.xyzw = t1.Load(r2.z).xyzw;
      bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.z = (((uint)r2.y << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
      r11.xyzw = t1.Load(r2.z).xyzw;
      r2.z = cmp(abs(r11.y) < abs(r11.x));
      r2.w = dot(r11.xz, r11.xz);
      r2.w = sqrt(r2.w);
      r2.w = 1 / r2.w;
      r3.x = -r11.z * r2.w;
      r3.z = r11.x * r2.w;
      r2.w = dot(r11.yz, r11.yz);
      r2.w = sqrt(r2.w);
      r2.w = 1 / r2.w;
      r5.y = r11.z * r2.w;
      r5.z = -r11.y * r2.w;
      r3.xzw = r2.zzz ? r3.xyz : r5.xyz;
      r5.yzw = r11.zxy * r3.zwx;
      r5.yzw = r11.yzx * r3.wxz + -r5.yzw;
      r2.z = r11.w * 0.5 + r10.w;
      r2.z = r10.w / r2.z;
      r8.yzw = r11.xyz * r2.zzz;
      r9.yzw = -r10.xyz + r6.xyz;
      r11.x = dot(r9.yzw, r3.xzw);
      r11.y = dot(r9.yzw, r5.yzw);
      r11.z = dot(r9.yzw, r8.yzw);
      r9.yzw = -r10.xyz + r4.xyz;
      r10.x = dot(r9.yzw, r3.xzw);
      r10.y = dot(r9.yzw, r5.yzw);
      r10.z = dot(r9.yzw, r8.yzw);
      r12.x = dot(r7.xyz, r3.xzw);
      r12.y = dot(r7.xyz, r5.yzw);
      r12.z = dot(r7.xyz, r8.yzw);
      r2.z = dot(r12.xyz, r12.xyz);
      r2.z = rsqrt(r2.z);
      r3.xzw = r12.xyz * r2.zzz;
      r2.z = cb0[12].z + r10.w;
      r2.w = r2.z + r1.z;
      r4.w = dot(-r11.xyz, -r11.xyz);
      r2.w = r2.w * r2.w;
      r2.w = cmp(r4.w < r2.w);
      r5.y = r10.w + r1.z;
      r5.z = r5.y / r8.x;
      r7.xyz = -r5.zzz * r3.xzw + r11.xyz;
      r5.z = dot(-r7.xyz, -r7.xyz);
      r5.w = dot(r3.xzw, -r7.xyz);
      r6.w = cmp(0 < r5.w);
      r5.w = r5.w * r5.w;
      r7.x = r9.x * r9.x;
      r5.z = r7.x * r5.z;
      r5.z = cmp(r5.w >= r5.z);
      r5.z = r5.z ? r6.w : 0;
      r5.w = dot(r3.xzw, -r11.xyz);
      r6.w = cmp(0 < -r5.w);
      r7.y = r5.w * r5.w;
      r7.z = r8.x * r8.x;
      r7.w = r7.z * r4.w;
      r7.y = cmp(r7.y >= r7.w);
      r6.w = r6.w ? r7.y : 0;
      r7.y = r5.y * r5.y;
      r4.w = cmp(r7.y >= r4.w);
      r4.w = r6.w ? r4.w : -1;
      r4.w = r5.z ? r4.w : 0;
      r5.y = r5.w + -r5.y;
      r5.y = cmp(r5.y < cb0[12].z);
      r4.w = r5.y ? r4.w : 0;
      r2.w = r2.w ? r4.w : 0;
      if (r2.w != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r9.x, g0, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r2.w = min(511, (uint)r9.x);
        g2[r2.w].val[0/4] = r2.y;
      }
      r2.z = r2.z + r1.w;
      r2.w = dot(-r10.xyz, -r10.xyz);
      r2.z = r2.z * r2.z;
      r2.z = cmp(r2.w < r2.z);
      r4.w = r10.w + r1.w;
      r5.y = r4.w / r8.x;
      r5.yzw = -r5.yyy * r3.xzw + r10.xyz;
      r6.w = dot(-r5.yzw, -r5.yzw);
      r5.y = dot(r3.xzw, -r5.yzw);
      r5.z = cmp(0 < r5.y);
      r5.y = r5.y * r5.y;
      r5.w = r7.x * r6.w;
      r5.y = cmp(r5.y >= r5.w);
      r5.y = r5.y ? r5.z : 0;
      r3.x = dot(r3.xzw, -r10.xyz);
      r3.z = cmp(0 < -r3.x);
      r3.w = r3.x * r3.x;
      r5.z = r7.z * r2.w;
      r3.w = cmp(r3.w >= r5.z);
      r3.z = r3.w ? r3.z : 0;
      r3.w = r4.w * r4.w;
      r2.w = cmp(r3.w >= r2.w);
      r2.w = r3.z ? r2.w : -1;
      r2.w = r5.y ? r2.w : 0;
      r3.x = r3.x + -r4.w;
      r3.x = cmp(r3.x < cb0[12].z);
      r2.w = r3.x ? r2.w : 0;
      r2.z = r2.z ? r2.w : 0;
      if (r2.z != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r7.x, g1, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r2.z = min(511, (uint)r7.x);
        r2.z = (int)r2.z + 512;
        g2[r2.z].val[0/4] = r2.y;
      }
      r2.y = (int)r2.y + 64;
    }
    GroupMemoryBarrierWithGroupSync();
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g0.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r1.z, l(0), g1.xxxx
    r1.w = r2.x ? r1.z : r0.x;
    r1.w = min(512, (uint)r1.w);
    r0.x = (int)r0.x + (int)r1.z;
    r1.z = 1 / cb0[12].z;
    bitmask.x = ((~(-1 << 1)) << 9) & 0xffffffff;  r2.x = (((uint)r2.x << 9) & bitmask.x) | ((uint)0 & ~bitmask.x);
    r3.y = 0;
    r4.x = 0;
    r1.x = 1;
    r2.y = 0;
    while (true) {
      r2.z = cmp((uint)r2.y >= (uint)r1.w);
      if (r2.z != 0) break;
      r2.z = (int)r2.y + (int)r2.x;
      r2.z = g2[r2.z].val[0/4];
      r5.xyzw = t2.Load(r2.z).xyzw;
      r2.w = f16tof32(r5.w);
      r3.w = (uint)r5.w >> 16;
      r3.w = f16tof32(r3.w);
      r4.w = cos(r2.w);
      r4.w = -r4.w * 6.28318548 + 6.28318548;
      r5.w = (uint)r2.z << 1;
      r6.xyzw = t1.Load(r5.w).xyzw;
      r5.w = -cb0[11].z + -r5.z;
      r5.w = saturate(dot(cb0[11].ww, r5.ww));
      r5.w = 1 + -r5.w;
      r5.w = r6.w * r5.w;
      bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.z = (((uint)r2.z << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
      r7.xyzw = t1.Load(r2.z).xyzw;
      r2.z = cmp(0 < r7.w);
      if (r2.z != 0) {
        r2.z = cmp(abs(r7.y) < abs(r7.x));
        r6.w = dot(r7.xz, r7.xz);
        r6.w = sqrt(r6.w);
        r6.w = 1 / r6.w;
        r3.x = -r7.z * r6.w;
        r3.z = r7.x * r6.w;
        r6.w = dot(r7.yz, r7.yz);
        r6.w = sqrt(r6.w);
        r6.w = 1 / r6.w;
        r4.y = r7.z * r6.w;
        r4.z = -r7.y * r6.w;
        r8.xyz = r2.zzz ? r3.xyz : r4.xyz;
        r9.xyz = r8.yzx * r7.zxy;
        r9.xyz = r7.yzx * r8.zxy + -r9.xyz;
        r2.z = r7.w * 0.5 + r5.w;
        r2.z = r5.w / r2.z;
        r7.xyz = r7.xyz * r2.zzz;
        r10.xyz = -r6.xyz + r0.yzw;
        r11.x = dot(r10.xyz, r8.xyz);
        r11.y = dot(r10.xyz, r9.xyz);
        r11.z = dot(r10.xyz, r7.xyz);
        r8.x = dot(r5.xyz, r8.xyz);
        r8.y = dot(r5.xyz, r9.xyz);
        r8.z = dot(r5.xyz, r7.xyz);
        r2.z = dot(r11.xyz, r11.xyz);
        r2.z = sqrt(r2.z);
        r7.xyz = -r11.xyz / r2.zzz;
        r3.x = dot(r8.xyz, r8.xyz);
        r3.x = rsqrt(r3.x);
        r5.xyz = r8.xyz * r3.xxx;
      } else {
        r6.xyz = r6.xyz + -r0.yzw;
        r3.x = dot(r6.xyz, r6.xyz);
        r2.z = sqrt(r3.x);
        r7.xyz = r6.xyz / r2.zzz;
      }
      r3.x = dot(r7.xyz, r5.xyz);
      r3.z = abs(r3.x) * -0.156582996 + 1.57079637;
      r4.y = 1 + -abs(r3.x);
      r4.y = sqrt(r4.y);
      r4.z = r4.y * r3.z;
      r3.x = cmp(r3.x >= 0);
      r3.z = -r3.z * r4.y + 3.14159274;
      r3.x = r3.x ? r4.z : r3.z;
      r3.z = r5.w / r2.z;
      r4.y = cmp(r3.z < 1);
      r4.z = 1 / r3.z;
      r3.z = r4.y ? r3.z : r4.z;
      r4.z = r3.z * r3.z;
      r5.x = r4.z * 0.0872929022 + -0.301894993;
      r4.z = r5.x * r4.z + 1;
      r5.x = r4.z * r3.z;
      r3.z = -r4.z * r3.z + 1.57079637;
      r3.z = r4.y ? r5.x : r3.z;
      r4.y = max(r3.z, r2.w);
      r4.z = min(r3.z, r2.w);
      r4.y = r4.y + -r4.z;
      r4.y = cmp(r4.y >= r3.x);
      r4.z = cos(r4.z);
      r4.z = -r4.z * 6.28318548 + 6.28318548;
      r5.x = r3.z + r2.w;
      r5.y = cmp(r3.x >= r5.x);
      r2.w = -r3.z + r2.w;
      r3.x = r3.x + -abs(r2.w);
      r2.w = r5.x + -abs(r2.w);
      r2.w = saturate(r3.x / r2.w);
      r2.w = 1 + -r2.w;
      r3.x = r2.w * -2 + 3;
      r2.w = r2.w * r2.w;
      r2.w = r3.x * r2.w;
      r2.w = r2.w * r4.z;
      r2.w = r5.y ? 0 : r2.w;
      r2.w = r4.y ? r4.z : r2.w;
      r2.w = r2.w / r4.w;
      r2.w = min(1, r2.w);
      r2.w = 1 + -r2.w;
      r2.z = r2.z * r1.z;
      r2.z = saturate(r2.z * 3 + -2);
      r3.x = 1 + -r2.w;
      r2.z = r2.z * r3.x + r2.w;
      r2.w = 1 + -r3.w;
      r2.z = r2.z * r2.w + r3.w;
      r1.x = r2.z * r1.x;
      r2.y = (int)r2.y + 1;
    }
    r0.yz = cmp((int2)vThreadIDInGroup.xy == int2(0,0));
    r0.y = r0.z ? r0.y : 0;
    r0.zw = cmp((uint2)vThreadGroupID.xy < asuint(cb0[13].xy));
    r0.z = r0.w ? r0.z : 0;
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r0.y = mad((int)vThreadGroupID.y, asint(cb0[13].x), (int)vThreadGroupID.x);
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r0.yyyy, r0.xxxx
    }
  } else {
    r1.x = 1;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyxx
  return;
}