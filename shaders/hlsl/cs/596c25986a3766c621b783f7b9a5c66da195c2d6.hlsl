// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g5[128];
groupshared struct { float val[1]; } g2[1024];
Texture2D<float4> t8 : register(t8);

Buffer<float4> t7 : register(t7);

Buffer<uint4> t6 : register(t6);

Buffer<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
// unknown dcl_: dcl_tgsm_raw g6, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g7, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g8, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g9, 4
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
    store_raw g6.x, l(0), l(340282346638528860000000000000000000000.000000)
  // No code for instruction (needs manual fix):
    store_raw g7.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g8.x, l(0), l(340282346638528860000000000000000000000.000000)
  // No code for instruction (needs manual fix):
    store_raw g9.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g3.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g4.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  r0.w = cmp(r2.w < 20000);
  if (r0.w != 0) {
    // Needs manual fix for instruction:
    atomic_umin g6, l(0), r2.w
    InterlockedMin(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g7, l(0), r2.w
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r3.z, l(0), g6.xxxx
// No code for instruction (needs manual fix):
ld_raw r4.z, l(0), g7.xxxx
  if (r0.w != 0) {
    r0.w = r4.z + r3.z;
    r0.w = 0.5 * r0.w;
    r1.z = cmp(r2.w >= r0.w);
    if (r1.z != 0) {
      // Needs manual fix for instruction:
        atomic_umin g8, l(0), r2.w
      InterlockedMin(dest, value, orig_value);
    }
    r0.w = cmp(r0.w >= r2.w);
    if (r0.w != 0) {
      // Needs manual fix for instruction:
        atomic_umax g9, l(0), r2.w
      InterlockedMax(dest, value, orig_value);
    }
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r5.z, l(0), g8.xxxx
// No code for instruction (needs manual fix):
ld_raw r6.z, l(0), g9.xxxx
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
    r7.xyz = cb1[51].xyz + r0.yzw;
    r0.yzw = r6.xyz + r3.xyz;
    r3.xyz = float3(0.5,0.5,0.5) * r0.yzw;
    r8.xyz = cb1[17].xyz * r3.yyy;
    r3.xyw = r3.xxx * cb1[16].xyz + r8.xyz;
    r3.xyz = r3.zzz * cb1[18].xyz + r3.xyw;
    r3.xyz = cb1[19].xyz + r3.xyz;
    r3.xyz = -cb1[70].xyz + r3.xyz;
    r0.yzw = r0.yzw * float3(0.5,0.5,0.5) + -r6.xyz;
    r0.y = dot(r0.yzw, r0.yzw);
    r5.xyz = r5.xyz + r4.xyz;
    r6.xyw = float3(0.5,0.5,0.5) * r5.xyz;
    r8.xyz = cb1[17].xyz * r6.yyy;
    r8.xyz = r6.xxx * cb1[16].xyz + r8.xyz;
    r6.xyw = r6.www * cb1[18].xyz + r8.xyz;
    r6.xyw = cb1[19].xyz + r6.xyw;
    r8.xyz = -cb1[70].xyz + r6.xyw;
    r4.xyz = r5.xyz * float3(0.5,0.5,0.5) + -r4.xyz;
    r0.z = dot(r4.xyz, r4.xyz);
    r0.yz = sqrt(r0.yz);
    r0.w = cmp(r6.z < r2.w);
    r4.y = 0;
    r5.x = 0;
    r1.z = r0.x;
    while (true) {
      r1.w = cmp((uint)r1.z >= asuint(cb0[8].x));
      if (r1.w != 0) break;
      r6.xyzw = t7.Load(r1.z).xyzw;
      r1.w = f16tof32(r6.w);
      sincos(r1.w, r9.x, r10.x);
      r1.w = (uint)r1.z << 1;
      r11.xyzw = t5.Load(r1.w).xyzw;
      bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r1.z << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
      r12.xyzw = t5.Load(r1.w).xyzw;
      r1.w = cmp(abs(r12.y) < abs(r12.x));
      r4.w = dot(r12.xz, r12.xz);
      r4.w = sqrt(r4.w);
      r4.w = 1 / r4.w;
      r4.x = -r12.z * r4.w;
      r4.z = r12.x * r4.w;
      r4.w = dot(r12.yz, r12.yz);
      r4.w = sqrt(r4.w);
      r4.w = 1 / r4.w;
      r5.y = r12.z * r4.w;
      r5.z = -r12.y * r4.w;
      r4.xzw = r1.www ? r4.xyz : r5.xyz;
      r5.yzw = r12.zxy * r4.zwx;
      r5.yzw = r12.yzx * r4.wxz + -r5.yzw;
      r1.w = r12.w * 0.5 + r11.w;
      r1.w = r11.w / r1.w;
      r9.yzw = r12.xyz * r1.www;
      r10.yzw = -r11.xyz + r3.xyz;
      r12.x = dot(r10.yzw, r4.xzw);
      r12.y = dot(r10.yzw, r5.yzw);
      r12.z = dot(r10.yzw, r9.yzw);
      r10.yzw = -r11.xyz + r8.xyz;
      r11.x = dot(r10.yzw, r4.xzw);
      r11.y = dot(r10.yzw, r5.yzw);
      r11.z = dot(r10.yzw, r9.yzw);
      r13.x = dot(r6.xyz, r4.xzw);
      r13.y = dot(r6.xyz, r5.yzw);
      r13.z = dot(r6.xyz, r9.yzw);
      r1.w = dot(r13.xyz, r13.xyz);
      r1.w = rsqrt(r1.w);
      r4.xzw = r13.xyz * r1.www;
      r1.w = cb0[12].z + r11.w;
      r5.y = r1.w + r0.y;
      r5.z = dot(-r12.xyz, -r12.xyz);
      r5.y = r5.y * r5.y;
      r5.y = cmp(r5.z < r5.y);
      r5.w = r11.w + r0.y;
      r6.x = r5.w / r9.x;
      r6.xyz = -r6.xxx * r4.xzw + r12.xyz;
      r6.w = dot(-r6.xyz, -r6.xyz);
      r6.x = dot(r4.xzw, -r6.xyz);
      r6.y = cmp(0 < r6.x);
      r6.z = r10.x * r10.x;
      r6.xw = r6.xz * r6.xw;
      r6.x = cmp(r6.x >= r6.w);
      r6.x = r6.x ? r6.y : 0;
      r6.y = dot(r4.xzw, -r12.xyz);
      r6.w = cmp(0 < -r6.y);
      r9.y = r6.y * r6.y;
      r9.z = r9.x * r9.x;
      r9.w = r9.z * r5.z;
      r9.y = cmp(r9.y >= r9.w);
      r6.w = r6.w ? r9.y : 0;
      r9.y = r5.w * r5.w;
      r5.z = cmp(r9.y >= r5.z);
      r5.z = r6.w ? r5.z : -1;
      r5.z = r6.x ? r5.z : 0;
      r5.w = r6.y + -r5.w;
      r5.w = cmp(r5.w < cb0[12].z);
      r5.z = r5.w ? r5.z : 0;
      r5.y = r5.y ? r5.z : 0;
      if (r5.y != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r10.x, g0, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r5.y = min(511, (uint)r10.x);
        g2[r5.y].val[0/4] = r1.z;
      }
      r1.w = r1.w + r0.z;
      r5.y = dot(-r11.xyz, -r11.xyz);
      r1.w = r1.w * r1.w;
      r1.w = cmp(r5.y < r1.w);
      r5.z = r11.w + r0.z;
      r5.w = r5.z / r9.x;
      r6.xyw = -r5.www * r4.xzw + r11.xyz;
      r5.w = dot(-r6.xyw, -r6.xyw);
      r6.x = dot(r4.xzw, -r6.xyw);
      r6.y = cmp(0 < r6.x);
      r6.x = r6.x * r6.x;
      r5.w = r6.z * r5.w;
      r5.w = cmp(r6.x >= r5.w);
      r5.w = r5.w ? r6.y : 0;
      r4.x = dot(r4.xzw, -r11.xyz);
      r4.z = cmp(0 < -r4.x);
      r4.w = r4.x * r4.x;
      r6.x = r9.z * r5.y;
      r4.w = cmp(r4.w >= r6.x);
      r4.z = r4.w ? r4.z : 0;
      r4.w = r5.z * r5.z;
      r4.w = cmp(r4.w >= r5.y);
      r4.z = r4.z ? r4.w : -1;
      r4.z = r5.w ? r4.z : 0;
      r4.x = r4.x + -r5.z;
      r4.x = cmp(r4.x < cb0[12].z);
      r4.x = r4.x ? r4.z : 0;
      r1.w = r1.w ? r4.x : 0;
      if (r1.w != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r6.x, g1, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r1.w = min(511, (uint)r6.x);
        r1.w = (int)r1.w + 512;
        g2[r1.w].val[0/4] = r1.z;
      }
      r1.z = (int)r1.z + 64;
    }
    GroupMemoryBarrierWithGroupSync();
  // No code for instruction (needs manual fix):
    ld_raw r1.z, l(0), g0.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r1.w, l(0), g1.xxxx
    r1.z = r0.w ? r1.w : r1.z;
    r1.z = min(512, (uint)r1.z);
    r3.w = 1;
    r8.w = 1;
    r1.w = r0.x;
    while (true) {
      r4.x = cmp((uint)r1.w >= asuint(cb0[8].y));
      if (r4.x != 0) break;
      r4.x = t6.Load(r1.w).x;
      r4.y = (uint)r4.x << 2;
      r4.y = t3.Load(r4.y).x;
      bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r5.x = (((uint)r4.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
      bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r5.y = (((uint)r4.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
      bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r5.z = (((uint)r4.x << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
      r4.z = t3.Load(r5.x).x;
      r4.w = t3.Load(r5.y).x;
      r5.x = t3.Load(r5.z).x;
      r5.y = r5.x * 0.5 + cb0[12].z;
      r5.x = r5.x + r5.y;
      r5.z = r5.x + r0.y;
      r6.xyz = r4.yzw + -r3.xyz;
      r5.w = dot(r6.xyz, r6.xyz);
      r5.z = r5.z * r5.z;
      r5.z = cmp(r5.w < r5.z);
      if (r5.z != 0) {
        r5.w = (int)r4.x * 17;
        r6.x = (uint)r5.w << 2;
        r9.xyzw = (int4)r6.xxxx + int4(12,4,8,16);
        r6.y = t4.Load(r9.x).x;
        r10.xyzw = (int4)r9.xyyz + int4(1,1,3,1);
        r6.z = t4.Load(r10.x).x;
        r11.xyzw = (int4)r9.xyzw + int4(2,2,2,2);
        r6.w = t4.Load(r11.x).x;
        r12.x = t4.Load(r6.x).x;
        bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.x = (((uint)r5.w << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
        bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.y = (((uint)r5.w << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
        bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.z = (((uint)r5.w << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
        r12.y = t4.Load(r13.x).x;
        r12.z = t4.Load(r13.y).x;
        r12.w = t4.Load(r13.z).x;
        r13.x = t4.Load(r9.y).x;
        r13.y = t4.Load(r10.y).x;
        r13.z = t4.Load(r11.y).x;
        r13.w = t4.Load(r10.z).x;
        r14.x = t4.Load(r9.z).x;
        r14.y = t4.Load(r10.w).x;
        r14.z = t4.Load(r11.z).x;
        r9.xyz = (int3)r9.zww + int3(3,1,3);
        r14.w = t4.Load(r9.x).x;
        r10.x = t4.Load(r9.w).x;
        r10.y = t4.Load(r9.y).x;
        r10.z = t4.Load(r11.w).x;
        r5.w = t4.Load(r9.z).x;
        r9.xy = (int2)r6.xx + int2(20,24);
        r11.x = t4.Load(r9.x).x;
        r9.zw = (int2)r9.xy + int2(1,1);
        r11.y = t4.Load(r9.z).x;
        r6.x = (int)r9.x + 2;
        r11.z = t4.Load(r6.x).x;
        r6.x = t4.Load(r9.y).x;
        r9.x = t4.Load(r9.w).x;
        r12.x = dot(r3.xyzw, r12.xyzw);
        r12.y = dot(r3.xyzw, r13.xyzw);
        r12.z = dot(r3.xyzw, r14.xyzw);
        r9.yzw = max(r12.xyz, -r6.yzw);
        r6.yzw = min(r9.yzw, r6.yzw);
        r9.yzw = r6.yzw + -r12.xyz;
        r9.y = dot(r9.yzw, r9.yzw);
        r9.y = sqrt(r9.y);
        r6.yzw = r6.yzw * r10.xyz + r11.xyz;
        r6.y = t2.SampleLevel(s1_s, r6.yzw, 0).x;
        r6.x = r6.y * r6.x + r9.x;
        r6.x = r6.x + r9.y;
        r5.w = r6.x * r5.w + -r0.y;
        r6.x = 1.10000002 * r5.y;
        r5.w = cmp(r5.w < r6.x);
      }
      r5.z = r5.w ? r5.z : 0;
      if (r5.z != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r6.x, g3, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r5.z = min(63, (uint)r6.x);
        g5[r5.z].val[0/4] = r1.w;
      }
      r5.x = r5.x + r0.z;
      r4.yzw = r4.yzw + -r8.xyz;
      r4.y = dot(r4.yzw, r4.yzw);
      r4.z = r5.x * r5.x;
      r4.y = cmp(r4.y < r4.z);
      if (r4.y != 0) {
        r4.x = (int)r4.x * 17;
        r4.z = (uint)r4.x << 2;
        r6.xyzw = (int4)r4.zzzz + int4(12,4,8,16);
        r5.x = t4.Load(r6.x).x;
        r9.xyzw = (int4)r6.xyyz + int4(1,1,3,1);
        r5.z = t4.Load(r9.x).x;
        r10.xyzw = (int4)r6.xyzw + int4(2,2,2,2);
        r5.w = t4.Load(r10.x).x;
        r11.x = t4.Load(r4.z).x;
        bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.x = (((uint)r4.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
        bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.y = (((uint)r4.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
        bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.z = (((uint)r4.x << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
        r11.y = t4.Load(r12.x).x;
        r11.z = t4.Load(r12.y).x;
        r11.w = t4.Load(r12.z).x;
        r12.x = t4.Load(r6.y).x;
        r12.y = t4.Load(r9.y).x;
        r12.z = t4.Load(r10.y).x;
        r12.w = t4.Load(r9.z).x;
        r13.x = t4.Load(r6.z).x;
        r13.y = t4.Load(r9.w).x;
        r13.z = t4.Load(r10.z).x;
        r6.xyz = (int3)r6.zww + int3(3,1,3);
        r13.w = t4.Load(r6.x).x;
        r9.x = t4.Load(r6.w).x;
        r9.y = t4.Load(r6.y).x;
        r9.z = t4.Load(r10.w).x;
        r4.x = t4.Load(r6.z).x;
        r4.zw = (int2)r4.zz + int2(20,24);
        r6.x = t4.Load(r4.z).x;
        r10.xy = (int2)r4.zw + int2(1,1);
        r6.y = t4.Load(r10.x).x;
        r4.z = (int)r4.z + 2;
        r6.z = t4.Load(r4.z).x;
        r4.z = t4.Load(r4.w).x;
        r4.w = t4.Load(r10.y).x;
        r10.x = dot(r8.xyzw, r11.xyzw);
        r10.y = dot(r8.xyzw, r12.xyzw);
        r10.z = dot(r8.xyzw, r13.xyzw);
        r11.xyz = max(r10.xyz, -r5.xzw);
        r5.xzw = min(r11.xyz, r5.xzw);
        r10.xyz = r5.xzw + -r10.xyz;
        r6.w = dot(r10.xyz, r10.xyz);
        r6.w = sqrt(r6.w);
        r5.xzw = r5.xzw * r9.xyz + r6.xyz;
        r5.x = t2.SampleLevel(s1_s, r5.xzw, 0).x;
        r4.z = r5.x * r4.z + r4.w;
        r4.z = r4.z + r6.w;
        r4.x = r4.z * r4.x + -r0.z;
        r4.z = 1.10000002 * r5.y;
        r4.x = cmp(r4.x < r4.z);
      }
      r4.x = r4.x ? r4.y : 0;
      if (r4.x != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r4.x, g4, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r4.x = min(63, (uint)r4.x);
        r4.x = (int)r4.x + 64;
        g5[r4.x].val[0/4] = r1.w;
      }
      r1.w = (int)r1.w + 64;
    }
    GroupMemoryBarrierWithGroupSync();
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g3.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r0.y, l(0), g4.xxxx
    r0.x = r0.w ? r0.y : r0.x;
    r0.x = min(64, (uint)r0.x);
    r0.y = 1 / cb0[12].z;
    bitmask.z = ((~(-1 << 1)) << 9) & 0xffffffff;  r0.z = (((uint)r0.w << 9) & bitmask.z) | ((uint)0 & ~bitmask.z);
    bitmask.w = ((~(-1 << 1)) << 6) & 0xffffffff;  r0.w = (((uint)r0.w << 6) & bitmask.w) | ((uint)0 & ~bitmask.w);
    r3.y = 0;
    r4.x = 0;
    r1.w = 1;
    r3.w = 0;
    while (true) {
      r4.w = cmp((uint)r3.w >= (uint)r1.z);
      if (r4.w != 0) break;
      r4.w = (int)r0.z + (int)r3.w;
      r4.w = g2[r4.w].val[0/4];
      r5.xyzw = t7.Load(r4.w).xyzw;
      r6.x = f16tof32(r5.w);
      r5.w = (uint)r5.w >> 16;
      r5.w = f16tof32(r5.w);
      r6.y = cos(r6.x);
      r6.y = -r6.y * 6.28318548 + 6.28318548;
      r6.z = (uint)r4.w << 1;
      r8.xyzw = t5.Load(r6.z).xyzw;
      r6.z = -cb0[11].z + -r5.z;
      r6.z = saturate(dot(cb0[11].ww, r6.zz));
      r6.z = 1 + -r6.z;
      r6.z = r8.w * r6.z;
      bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.w = (((uint)r4.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
      r9.xyzw = t5.Load(r4.w).xyzw;
      r4.w = cmp(0 < r9.w);
      if (r4.w != 0) {
        r4.w = cmp(abs(r9.y) < abs(r9.x));
        r6.w = dot(r9.xz, r9.xz);
        r6.w = sqrt(r6.w);
        r6.w = 1 / r6.w;
        r3.x = -r9.z * r6.w;
        r3.z = r9.x * r6.w;
        r6.w = dot(r9.yz, r9.yz);
        r6.w = sqrt(r6.w);
        r6.w = 1 / r6.w;
        r4.y = r9.z * r6.w;
        r4.z = -r9.y * r6.w;
        r4.yzw = r4.www ? r3.xyz : r4.xyz;
        r10.xyz = r9.zxy * r4.zwy;
        r10.xyz = r9.yzx * r4.wyz + -r10.xyz;
        r3.x = r9.w * 0.5 + r6.z;
        r3.x = r6.z / r3.x;
        r9.xyz = r9.xyz * r3.xxx;
        r11.xyz = -r8.xyz + r7.xyz;
        r12.x = dot(r11.xyz, r4.yzw);
        r12.y = dot(r11.xyz, r10.xyz);
        r12.z = dot(r11.xyz, r9.xyz);
        r11.x = dot(r5.xyz, r4.yzw);
        r11.y = dot(r5.xyz, r10.xyz);
        r11.z = dot(r5.xyz, r9.xyz);
        r3.x = dot(r12.xyz, r12.xyz);
        r3.x = sqrt(r3.x);
        r4.yzw = -r12.xyz / r3.xxx;
        r3.z = dot(r11.xyz, r11.xyz);
        r3.z = rsqrt(r3.z);
        r5.xyz = r11.xyz * r3.zzz;
      } else {
        r8.xyz = r8.xyz + -r7.xyz;
        r3.z = dot(r8.xyz, r8.xyz);
        r3.x = sqrt(r3.z);
        r4.yzw = r8.xyz / r3.xxx;
      }
      r3.z = dot(r4.yzw, r5.xyz);
      r4.y = abs(r3.z) * -0.156582996 + 1.57079637;
      r4.z = 1 + -abs(r3.z);
      r4.z = sqrt(r4.z);
      r4.w = r4.y * r4.z;
      r3.z = cmp(r3.z >= 0);
      r4.y = -r4.y * r4.z + 3.14159274;
      r3.z = r3.z ? r4.w : r4.y;
      r4.y = r6.z / r3.x;
      r4.z = cmp(r4.y < 1);
      r4.w = 1 / r4.y;
      r4.y = r4.z ? r4.y : r4.w;
      r4.w = r4.y * r4.y;
      r5.x = r4.w * 0.0872929022 + -0.301894993;
      r4.w = r5.x * r4.w + 1;
      r5.x = r4.w * r4.y;
      r4.y = -r4.w * r4.y + 1.57079637;
      r4.y = r4.z ? r5.x : r4.y;
      r4.z = max(r6.x, r4.y);
      r4.w = min(r6.x, r4.y);
      r4.z = r4.z + -r4.w;
      r4.z = cmp(r4.z >= r3.z);
      r4.w = cos(r4.w);
      r4.w = -r4.w * 6.28318548 + 6.28318548;
      r5.x = r6.x + r4.y;
      r5.y = cmp(r3.z >= r5.x);
      r4.y = r6.x + -r4.y;
      r3.z = -abs(r4.y) + r3.z;
      r4.y = r5.x + -abs(r4.y);
      r3.z = saturate(r3.z / r4.y);
      r3.z = 1 + -r3.z;
      r4.y = r3.z * -2 + 3;
      r3.z = r3.z * r3.z;
      r3.z = r4.y * r3.z;
      r3.z = r3.z * r4.w;
      r3.z = r5.y ? 0 : r3.z;
      r3.z = r4.z ? r4.w : r3.z;
      r3.z = r3.z / r6.y;
      r3.z = min(1, r3.z);
      r3.z = 1 + -r3.z;
      r3.x = r3.x * r0.y;
      r3.x = saturate(r3.x * 3 + -2);
      r4.y = 1 + -r3.z;
      r3.x = r3.x * r4.y + r3.z;
      r3.z = 1 + -r5.w;
      r3.x = r3.x * r3.z + r5.w;
      r1.w = r3.x * r1.w;
      r3.w = (int)r3.w + 1;
    }
    r7.w = 1;
    r3.w = 1;
    r0.yz = float2(0,0);
    r1.z = 0;
    while (true) {
      r4.x = cmp((uint)r1.z >= (uint)r0.x);
      if (r4.x != 0) break;
      r4.x = (int)r0.w + (int)r1.z;
      r4.x = g5[r4.x].val[0/4];
      r4.y = (int)r4.x + asint(cb0[8].x);
      r5.xyzw = t7.Load(r4.y).xyzw;
      r4.y = f16tof32(r5.w);
      r4.z = (uint)r5.w >> 16;
      r4.z = f16tof32(r4.z);
      sincos(r4.y, r6.x, r8.x);
      r4.y = r6.x / r8.x;
      r4.x = t6.Load(r4.x).x;
      bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r4.w = (((uint)r4.x << 2) & bitmask.w) | ((uint)3 & ~bitmask.w);
      r4.w = t3.Load(r4.w).x;
      r4.w = r4.w * 0.5 + cb0[12].z;
      r5.w = r4.y * r4.w;
      r3.xyz = r5.xyz * r4.www + r7.xyz;
      r4.x = (int)r4.x * 17;
      r5.x = (uint)r4.x << 2;
      r6.xyzw = (int4)r5.xxxx + int4(12,4,8,16);
      r8.x = t4.Load(r6.x).x;
      r9.xyzw = (int4)r6.xyyz + int4(1,1,3,1);
      r8.y = t4.Load(r9.x).x;
      r10.xyzw = (int4)r6.xyzw + int4(2,2,2,2);
      r8.z = t4.Load(r10.x).x;
      r11.x = t4.Load(r5.x).x;
      bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.x = (((uint)r4.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
      bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.y = (((uint)r4.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
      bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.z = (((uint)r4.x << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
      r11.y = t4.Load(r12.x).x;
      r11.z = t4.Load(r12.y).x;
      r11.w = t4.Load(r12.z).x;
      r12.x = t4.Load(r6.y).x;
      r12.y = t4.Load(r9.y).x;
      r12.z = t4.Load(r10.y).x;
      r12.w = t4.Load(r9.z).x;
      r13.x = t4.Load(r6.z).x;
      r13.y = t4.Load(r9.w).x;
      r13.z = t4.Load(r10.z).x;
      r6.xyz = (int3)r6.zww + int3(3,1,3);
      r13.w = t4.Load(r6.x).x;
      r9.x = t4.Load(r6.w).x;
      r9.y = t4.Load(r6.y).x;
      r9.z = t4.Load(r10.w).x;
      r4.x = t4.Load(r6.z).x;
      r5.xy = (int2)r5.xx + int2(20,24);
      r6.x = t4.Load(r5.x).x;
      r10.xy = (int2)r5.xy + int2(1,1);
      r6.y = t4.Load(r10.x).x;
      r5.x = (int)r5.x + 2;
      r6.z = t4.Load(r5.x).x;
      r5.x = t4.Load(r5.y).x;
      r5.y = t4.Load(r10.y).x;
      r10.x = dot(r7.xyzw, r11.xyzw);
      r10.y = dot(r7.xyzw, r12.xyzw);
      r10.z = dot(r7.xyzw, r13.xyzw);
      r11.x = dot(r3.xyzw, r11.xyzw);
      r11.y = dot(r3.xyzw, r12.xyzw);
      r11.z = dot(r3.xyzw, r13.xyzw);
      r3.xyz = r11.xyz + -r10.xyz;
      r5.z = dot(r3.xyz, r3.xyz);
      r5.z = sqrt(r5.z);
      r3.xyz = r3.xyz / r5.zzz;
      r5.w = r5.w / r4.x;
      r6.w = 1;
      r8.w = 0.0199999996;
      r9.w = 0;
      while (true) {
        r10.w = cmp((uint)r9.w >= 32);
        if (r10.w != 0) break;
        r11.xyz = r3.xyz * r8.www + r10.xyz;
        r12.xyz = max(r11.xyz, -r8.xyz);
        r12.xyz = min(r12.xyz, r8.xyz);
        r11.xyz = r12.xyz + -r11.xyz;
        r10.w = dot(r11.xyz, r11.xyz);
        r10.w = sqrt(r10.w);
        r11.xyz = r12.xyz * r9.xyz + r6.xyz;
        r11.x = t2.SampleLevel(s1_s, r11.xyz, 0).x;
        r11.x = r11.x * r5.x + r5.y;
        r10.w = r11.x + r10.w;
        r11.x = r8.w * r4.y;
        r11.x = max(0, r11.x);
        r11.x = min(r11.x, r5.w);
        r11.x = saturate(r10.w / r11.x);
        r11.x = log2(r11.x);
        r11.x = 0.800000012 * r11.x;
        r11.x = exp2(r11.x);
        r11.y = r10.w + r8.w;
        r11.y = r11.y * r4.x;
        r11.y = saturate(r11.y / r4.w);
        r11.x = max(r11.x, r11.y);
        r11.y = min(r11.x, r6.w);
        r11.x = r11.x * r5.z;
        r11.x = 0.100000001 * r11.x;
        r11.x = min(r11.x, r10.w);
        r11.x = max(0.0078125, r11.x);
        r8.w = r11.x + r8.w;
        r10.w = cmp(0 >= r10.w);
        r11.x = cmp(r5.z < r8.w);
        r10.w = (int)r10.w | (int)r11.x;
        if (r10.w != 0) {
          r6.w = r11.y;
          break;
        }
        r9.w = (int)r9.w + 1;
        r6.w = r11.y;
      }
      r3.x = r4.z * r4.z;
      r3.y = -r4.z * r4.z + 1;
      r3.x = r6.w * r3.y + r3.x;
      r11.xyz = max(r10.xyz, -r8.xyz);
      r8.xyz = min(r11.xyz, r8.xyz);
      r10.xyz = r8.xyz + -r10.xyz;
      r3.y = dot(r10.xyz, r10.xyz);
      r3.y = sqrt(r3.y);
      r6.xyz = r8.xyz * r9.xyz + r6.xyz;
      r3.z = t2.SampleLevel(s1_s, r6.xyz, 0).x;
      r3.z = r3.z * r5.x + r5.y;
      r3.y = r3.z + r3.y;
      r3.y = r3.y * r4.x;
      r3.y = saturate(r3.y / r4.w);
      r3.y = 1 + -r3.y;
      r3.y = r3.y * r3.y;
      r3.z = r3.y * r3.y;
      r3.x = log2(r3.x);
      r0.y = r3.z * r3.x + r0.y;
      r0.z = r3.y * r3.y + r0.z;
      r1.z = (int)r1.z + 1;
    }
    r0.x = cmp(0 < r0.z);
    r0.y = r0.y / r0.z;
    r0.y = exp2(r0.y);
    r0.x = r0.x ? r0.y : 1;
    r0.x = r1.w * r0.x;
  } else {
    r0.x = 1;
  }
  r0.yzw = t8.Load(vThreadID.xyz).xyz;
  r1.z = cmp(cb1[196].y < 1);
  if (r1.z != 0) {
    r1.x = t1.SampleLevel(s0_s, r1.xy, 0).w;
    r1.x = 3.99900007 * r1.x;
    r1.x = (uint)r1.x;
    r1.x = (int)r1.x & 2;
    r1.x = r1.x ? cb1[196].y : 1;
    r1.y = -1 + r0.x;
    r0.x = r1.x * r1.y + 1;
  }
  r2.xyz = r0.yzw * r0.xxx;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r2.xyzw
  return;
}