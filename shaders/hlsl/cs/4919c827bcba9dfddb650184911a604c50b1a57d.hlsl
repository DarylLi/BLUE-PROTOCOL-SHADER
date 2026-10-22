// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g5[128];
groupshared struct { float val[1]; } g2[1024];
Texture2D<float4> t5 : register(t5);

Buffer<uint4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
  r1.xyzw = t5.Load(vThreadID.xyz).xyzw;
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
  r0.y = cmp(r1.w < 20000);
  if (r0.y != 0) {
    // Needs manual fix for instruction:
    atomic_umin g6, l(0), r1.w
    InterlockedMin(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g7, l(0), r1.w
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r2.z, l(0), g6.xxxx
// No code for instruction (needs manual fix):
ld_raw r3.z, l(0), g7.xxxx
  if (r0.y != 0) {
    r0.y = r3.z + r2.z;
    r0.y = 0.5 * r0.y;
    r0.z = cmp(r1.w >= r0.y);
    if (r0.z != 0) {
      // Needs manual fix for instruction:
        atomic_umin g8, l(0), r1.w
      InterlockedMin(dest, value, orig_value);
    }
    r0.y = cmp(r0.y >= r1.w);
    if (r0.y != 0) {
      // Needs manual fix for instruction:
        atomic_umax g9, l(0), r1.w
      InterlockedMax(dest, value, orig_value);
    }
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r4.z, l(0), g8.xxxx
// No code for instruction (needs manual fix):
ld_raw r5.z, l(0), g9.xxxx
  r0.y = cmp((int)r2.z == 0x7f7fffff);
  r0.z = cmp((int)r3.z == 0);
  r0.y = r0.z ? r0.y : 0;
  r0.zw = cmp(abs(cb1[30].xy) < float2(9.99999975e-006,9.99999975e-006));
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r6.x = cb1[36].x;
    r6.y = cb1[37].y;
    r0.zw = r6.xy + r6.xy;
    r7.xyzw = asuint(cb0[9].zwxy);
    r6.zw = r7.xy * r0.zw;
    r7.xy = cb1[130].xy * cb0[10].xy;
    r6.zw = r6.zw / r7.xy;
    r7.xy = -cb1[129].xy + r7.zw;
    r0.zw = r7.xy * r0.zw;
    r0.zw = r0.zw * cb1[130].zw + -r6.xy;
    r6.xy = (uint2)vThreadGroupID.xy;
    r6.xy = r6.xy * r6.zw + r0.zw;
    r6.xy = float2(1,-1) * r6.xy;
    r7.xy = (int2)vThreadGroupID.xy + int2(1,1);
    r7.xy = (uint2)r7.xy;
    r0.zw = r7.xy * r6.zw + r0.zw;
    r0.zw = float2(1,-1) * r0.zw;
    r6.zw = r6.xy * r2.zz;
    r7.xy = r6.xy * r5.zz;
    r2.xy = min(r7.xy, r6.zw);
    r6.zw = r2.zz * r0.zw;
    r7.xy = r5.zz * r0.zw;
    r5.xy = max(r7.xy, r6.zw);
    r6.zw = r6.xy * r4.zz;
    r6.xy = r6.xy * r3.zz;
    r4.xy = min(r6.zw, r6.xy);
    r6.xy = r4.zz * r0.zw;
    r0.zw = r3.zz * r0.zw;
    r3.xy = max(r6.xy, r0.zw);
  } else {
    r0.zw = asuint(cb0[9].zw) << int2(1,1);
    r0.zw = (uint2)r0.zw;
    r6.xy = cb1[130].xy * cb0[10].xy;
    r0.zw = r0.zw / r6.xy;
    r6.xy = asuint(cb0[9].xy);
    r6.xy = -cb1[129].xy + r6.xy;
    r6.xy = cb1[130].zw * r6.xy;
    r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
    r6.zw = (uint2)vThreadGroupID.xy;
    r6.zw = r6.zw * r0.zw + r6.xy;
    r6.zw = float2(1,-1) * r6.zw;
    r7.xy = (int2)vThreadGroupID.xy + int2(1,1);
    r7.xy = (uint2)r7.xy;
    r0.zw = r7.xy * r0.zw + r6.xy;
    r0.zw = float2(1,-1) * r0.zw;
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
    r8.xyz = cb1[37].xyw * r0.www;
    r8.xyz = r0.zzz * cb1[36].xyw + r8.xyz;
    r9.xyz = r3.www * cb1[38].xyw + r8.xyz;
    r9.xyz = cb1[39].xyw + r9.xyz;
    r0.z = cb1[65].w + r5.z;
    r0.z = cb1[65].z * r0.z;
    r0.z = 1 / r0.z;
    r0.w = r5.z * cb1[30].z + cb1[31].z;
    r0.z = r2.w ? r0.z : r0.w;
    r10.xyz = r0.zzz * cb1[38].xyw + r6.xyz;
    r10.xyz = cb1[39].xyw + r10.xyz;
    r11.xyz = r0.zzz * cb1[38].xyw + r8.xyz;
    r11.xyz = cb1[39].xyw + r11.xyz;
    r0.zw = r7.xy / r7.zz;
    r7.xy = r10.xy / r10.zz;
    r2.xy = min(r7.xy, r0.zw);
    r0.zw = r9.xy / r9.zz;
    r7.xy = r11.xy / r11.zz;
    r5.xy = max(r7.xy, r0.zw);
    r0.z = cb1[65].w + r4.z;
    r0.z = cb1[65].z * r0.z;
    r0.z = 1 / r0.z;
    r0.w = r4.z * cb1[30].z + cb1[31].z;
    r0.z = r2.w ? r0.z : r0.w;
    r7.xyz = r0.zzz * cb1[38].xyw + r6.xyz;
    r7.xyz = cb1[39].xyw + r7.xyz;
    r9.xyz = r0.zzz * cb1[38].xyw + r8.xyz;
    r9.xyz = cb1[39].xyw + r9.xyz;
    r0.z = cb1[65].w + r3.z;
    r0.z = cb1[65].z * r0.z;
    r0.z = 1 / r0.z;
    r0.w = r3.z * cb1[30].z + cb1[31].z;
    r0.z = r2.w ? r0.z : r0.w;
    r6.xyz = r0.zzz * cb1[38].xyw + r6.xyz;
    r6.xyz = cb1[39].xyw + r6.xyz;
    r8.xyz = r0.zzz * cb1[38].xyw + r8.xyz;
    r8.xyz = cb1[39].xyw + r8.xyz;
    r0.zw = r7.xy / r7.zz;
    r6.xy = r6.xy / r6.zz;
    r4.xy = min(r6.xy, r0.zw);
    r0.zw = r9.xy / r9.zz;
    r6.xy = r8.xy / r8.zz;
    r3.xy = max(r6.xy, r0.zw);
  }
  if (r0.y == 0) {
    r0.yz = mad((int2)vThreadID.xy, asint(cb0[11].yy), asint(cb0[9].xy));
    r0.yz = (uint2)r0.yz;
    r0.yz = float2(0.5,0.5) + r0.yz;
    r0.yz = r0.yz * cb1[132].zw + -cb1[66].wz;
    r0.yz = r0.yz / cb1[66].xy;
    r0.yz = r0.yz * r1.ww;
    r6.xyz = cb1[49].xyz * r0.zzz;
    r0.yzw = r0.yyy * cb1[48].xyz + r6.xyz;
    r0.yzw = r1.www * cb1[50].xyz + r0.yzw;
    r6.xyz = cb1[51].xyz + r0.yzw;
    r0.yzw = r5.xyz + r2.xyz;
    r2.xyz = float3(0.5,0.5,0.5) * r0.yzw;
    r7.xyz = cb1[17].xyz * r2.yyy;
    r2.xyw = r2.xxx * cb1[16].xyz + r7.xyz;
    r2.xyz = r2.zzz * cb1[18].xyz + r2.xyw;
    r2.xyz = cb1[19].xyz + r2.xyz;
    r2.xyz = -cb1[70].xyz + r2.xyz;
    r0.yzw = r0.yzw * float3(0.5,0.5,0.5) + -r5.xyz;
    r0.y = dot(r0.yzw, r0.yzw);
    r4.xyz = r4.xyz + r3.xyz;
    r5.xyw = float3(0.5,0.5,0.5) * r4.xyz;
    r7.xyz = cb1[17].xyz * r5.yyy;
    r7.xyz = r5.xxx * cb1[16].xyz + r7.xyz;
    r5.xyw = r5.www * cb1[18].xyz + r7.xyz;
    r5.xyw = cb1[19].xyz + r5.xyw;
    r7.xyz = -cb1[70].xyz + r5.xyw;
    r3.xyz = r4.xyz * float3(0.5,0.5,0.5) + -r3.xyz;
    r0.z = dot(r3.xyz, r3.xyz);
    r0.yz = sqrt(r0.yz);
    r0.w = cmp(r5.z < r1.w);
    r3.x = dot(r1.xyz, r1.xyz);
    r3.x = sqrt(r3.x);
    r3.y = max(9.99999975e-006, r3.x);
    r3.yzw = r1.xyz / r3.yyy;
    r3.x = 1.57079637 * r3.x;
    r3.x = max(0.392699093, r3.x);
    r4.y = 0;
    r5.x = 0;
    r4.w = r0.x;
    while (true) {
      r5.w = cmp((uint)r4.w >= asuint(cb0[8].x));
      if (r5.w != 0) break;
      r5.w = (uint)r4.w << 1;
      r8.xyzw = t3.Load(r5.w).xyzw;
      bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.w = (((uint)r4.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
      r9.xyzw = t3.Load(r5.w).xyzw;
      r5.w = cmp(abs(r9.y) < abs(r9.x));
      r10.x = dot(r9.xz, r9.xz);
      r10.x = sqrt(r10.x);
      r10.x = 1 / r10.x;
      r4.x = r10.x * -r9.z;
      r4.z = r10.x * r9.x;
      r10.x = dot(r9.yz, r9.yz);
      r10.x = sqrt(r10.x);
      r10.x = 1 / r10.x;
      r5.y = r10.x * r9.z;
      r5.z = r10.x * -r9.y;
      r5.yzw = r5.www ? r4.xyz : r5.xyz;
      r10.xyz = r9.zxy * r5.zwy;
      r10.xyz = r9.yzx * r5.wyz + -r10.xyz;
      r4.x = r9.w * 0.5 + r8.w;
      r4.x = r8.w / r4.x;
      r9.xyz = r9.xyz * r4.xxx;
      r11.xyz = -r8.xyz + r2.xyz;
      r12.x = dot(r11.xyz, r5.yzw);
      r12.y = dot(r11.xyz, r10.xyz);
      r12.z = dot(r11.xyz, r9.xyz);
      r8.xyz = -r8.xyz + r7.xyz;
      r11.x = dot(r8.xyz, r5.yzw);
      r11.y = dot(r8.xyz, r10.xyz);
      r11.z = dot(r8.xyz, r9.xyz);
      r4.x = cb0[11].z + r8.w;
      r4.z = r4.x + r0.y;
      r5.y = dot(-r12.xyz, -r12.xyz);
      r4.z = r4.z * r4.z;
      r4.z = cmp(r5.y < r4.z);
      if (r4.z != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r8.x, g0, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r4.z = min(511, (uint)r8.x);
        g2[r4.z].val[0/4] = r4.w;
      }
      r4.x = r4.x + r0.z;
      r4.z = dot(-r11.xyz, -r11.xyz);
      r4.x = r4.x * r4.x;
      r4.x = cmp(r4.z < r4.x);
      if (r4.x != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r8.x, g1, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r4.x = min(511, (uint)r8.x);
        r4.x = (int)r4.x + 512;
        g2[r4.x].val[0/4] = r4.w;
      }
      r4.w = (int)r4.w + 64;
    }
    GroupMemoryBarrierWithGroupSync();
  // No code for instruction (needs manual fix):
    ld_raw r4.x, l(0), g0.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r4.y, l(0), g1.xxxx
    r4.x = r0.w ? r4.y : r4.x;
    r4.x = min(512, (uint)r4.x);
    r2.w = 1;
    r7.w = 1;
    r4.y = r0.x;
    while (true) {
      r4.z = cmp((uint)r4.y >= asuint(cb0[8].y));
      if (r4.z != 0) break;
      r4.z = t4.Load(r4.y).x;
      r4.w = (uint)r4.z << 2;
      r5.x = t1.Load(r4.w).x;
      bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r8.x = (((uint)r4.z << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
      bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r8.y = (((uint)r4.z << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
      bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r8.z = (((uint)r4.z << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
      r5.y = t1.Load(r8.x).x;
      r5.z = t1.Load(r8.y).x;
      r4.w = t1.Load(r8.z).x;
      r5.w = r4.w * 0.5 + cb0[11].z;
      r4.w = r5.w + r4.w;
      r8.x = r4.w + r0.y;
      r8.yzw = r5.xyz + -r2.xyz;
      r8.y = dot(r8.yzw, r8.yzw);
      r8.x = r8.x * r8.x;
      r8.x = cmp(r8.y < r8.x);
      if (r8.x != 0) {
        r8.y = (int)r4.z * 17;
        r8.z = (uint)r8.y << 2;
        r9.xyzw = (int4)r8.zzzz + int4(12,4,8,16);
        r10.x = t2.Load(r9.x).x;
        r11.xyzw = (int4)r9.xyyz + int4(1,1,3,1);
        r10.y = t2.Load(r11.x).x;
        r12.xyzw = (int4)r9.xyzw + int4(2,2,2,2);
        r10.z = t2.Load(r12.x).x;
        r13.x = t2.Load(r8.z).x;
        bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r14.x = (((uint)r8.y << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
        bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r14.y = (((uint)r8.y << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
        bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r14.z = (((uint)r8.y << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
        r13.y = t2.Load(r14.x).x;
        r13.z = t2.Load(r14.y).x;
        r13.w = t2.Load(r14.z).x;
        r14.x = t2.Load(r9.y).x;
        r14.y = t2.Load(r11.y).x;
        r14.z = t2.Load(r12.y).x;
        r14.w = t2.Load(r11.z).x;
        r15.x = t2.Load(r9.z).x;
        r15.y = t2.Load(r11.w).x;
        r15.z = t2.Load(r12.z).x;
        r9.xyz = (int3)r9.zww + int3(3,1,3);
        r15.w = t2.Load(r9.x).x;
        r11.x = t2.Load(r9.w).x;
        r11.y = t2.Load(r9.y).x;
        r11.z = t2.Load(r12.w).x;
        r8.y = t2.Load(r9.z).x;
        r8.zw = (int2)r8.zz + int2(20,24);
        r9.x = t2.Load(r8.z).x;
        r12.xy = (int2)r8.zw + int2(1,1);
        r9.y = t2.Load(r12.x).x;
        r8.z = (int)r8.z + 2;
        r9.z = t2.Load(r8.z).x;
        r8.z = t2.Load(r8.w).x;
        r8.w = t2.Load(r12.y).x;
        r12.x = dot(r2.xyzw, r13.xyzw);
        r12.y = dot(r2.xyzw, r14.xyzw);
        r12.z = dot(r2.xyzw, r15.xyzw);
        r13.xyz = max(r12.xyz, -r10.xyz);
        r10.xyz = min(r13.xyz, r10.xyz);
        r12.xyz = r10.xyz + -r12.xyz;
        r9.w = dot(r12.xyz, r12.xyz);
        r9.w = sqrt(r9.w);
        r9.xyz = r10.xyz * r11.xyz + r9.xyz;
        r9.x = t0.SampleLevel(s0_s, r9.xyz, 0).x;
        r8.z = r9.x * r8.z + r8.w;
        r8.z = r8.z + r9.w;
        r8.y = r8.z * r8.y + -r0.y;
        r8.z = 1.10000002 * r5.w;
        r8.y = cmp(r8.y < r8.z);
      }
      r8.x = r8.y ? r8.x : 0;
      if (r8.x != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r8.x, g3, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r8.x = min(63, (uint)r8.x);
        g5[r8.x].val[0/4] = r4.y;
      }
      r4.w = r4.w + r0.z;
      r5.xyz = r5.xyz + -r7.xyz;
      r5.x = dot(r5.xyz, r5.xyz);
      r4.w = r4.w * r4.w;
      r4.w = cmp(r5.x < r4.w);
      if (r4.w != 0) {
        r4.z = (int)r4.z * 17;
        r5.x = (uint)r4.z << 2;
        r8.xyzw = (int4)r5.xxxx + int4(12,4,8,16);
        r9.x = t2.Load(r8.x).x;
        r10.xyzw = (int4)r8.xyyz + int4(1,1,3,1);
        r9.y = t2.Load(r10.x).x;
        r11.xyzw = (int4)r8.xyzw + int4(2,2,2,2);
        r9.z = t2.Load(r11.x).x;
        r12.x = t2.Load(r5.x).x;
        bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.x = (((uint)r4.z << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
        bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.y = (((uint)r4.z << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
        bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.z = (((uint)r4.z << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
        r12.y = t2.Load(r13.x).x;
        r12.z = t2.Load(r13.y).x;
        r12.w = t2.Load(r13.z).x;
        r13.x = t2.Load(r8.y).x;
        r13.y = t2.Load(r10.y).x;
        r13.z = t2.Load(r11.y).x;
        r13.w = t2.Load(r10.z).x;
        r14.x = t2.Load(r8.z).x;
        r14.y = t2.Load(r10.w).x;
        r14.z = t2.Load(r11.z).x;
        r8.xyz = (int3)r8.zww + int3(3,1,3);
        r14.w = t2.Load(r8.x).x;
        r10.x = t2.Load(r8.w).x;
        r10.y = t2.Load(r8.y).x;
        r10.z = t2.Load(r11.w).x;
        r4.z = t2.Load(r8.z).x;
        r5.xy = (int2)r5.xx + int2(20,24);
        r8.x = t2.Load(r5.x).x;
        r11.xy = (int2)r5.xy + int2(1,1);
        r8.y = t2.Load(r11.x).x;
        r5.x = (int)r5.x + 2;
        r8.z = t2.Load(r5.x).x;
        r5.x = t2.Load(r5.y).x;
        r5.y = t2.Load(r11.y).x;
        r11.x = dot(r7.xyzw, r12.xyzw);
        r11.y = dot(r7.xyzw, r13.xyzw);
        r11.z = dot(r7.xyzw, r14.xyzw);
        r12.xyz = max(r11.xyz, -r9.xyz);
        r9.xyz = min(r12.xyz, r9.xyz);
        r11.xyz = r9.xyz + -r11.xyz;
        r5.z = dot(r11.xyz, r11.xyz);
        r5.z = sqrt(r5.z);
        r8.xyz = r9.xyz * r10.xyz + r8.xyz;
        r8.x = t0.SampleLevel(s0_s, r8.xyz, 0).x;
        r5.x = r8.x * r5.x + r5.y;
        r5.x = r5.x + r5.z;
        r4.z = r5.x * r4.z + -r0.z;
        r5.x = 1.10000002 * r5.w;
        r4.z = cmp(r4.z < r5.x);
      }
      r4.z = r4.z ? r4.w : 0;
      if (r4.z != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r5.x, g4, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r4.z = min(63, (uint)r5.x);
        r4.z = (int)r4.z + 64;
        g5[r4.z].val[0/4] = r4.y;
      }
      r4.y = (int)r4.y + 64;
    }
    GroupMemoryBarrierWithGroupSync();
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g3.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r0.y, l(0), g4.xxxx
    r0.x = r0.w ? r0.y : r0.x;
    r0.x = min(64, (uint)r0.x);
    r0.y = 1 / cb0[11].z;
    sincos(r3.x, r2.x, r5.x);
    r0.z = -r5.x * 6.28318548 + 6.28318548;
    bitmask.y = ((~(-1 << 1)) << 9) & 0xffffffff;  r2.y = (((uint)r0.w << 9) & bitmask.y) | ((uint)0 & ~bitmask.y);
    bitmask.z = ((~(-1 << 1)) << 6) & 0xffffffff;  r2.z = (((uint)r0.w << 6) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r7.y = 0;
    r8.x = 0;
    r0.w = 1;
    r2.w = 0;
    while (true) {
      r4.y = cmp((uint)r2.w >= (uint)r4.x);
      if (r4.y != 0) break;
      r4.y = (int)r2.w + (int)r2.y;
      r4.y = g2[r4.y].val[0/4];
      r4.z = (uint)r4.y << 1;
      r9.xyzw = t3.Load(r4.z).xyzw;
      bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.y = (((uint)r4.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
      r10.xyzw = t3.Load(r4.y).xyzw;
      r4.y = cmp(0 < r10.w);
      if (r4.y != 0) {
        r4.y = cmp(abs(r10.y) < abs(r10.x));
        r4.z = dot(r10.xz, r10.xz);
        r4.z = sqrt(r4.z);
        r4.z = 1 / r4.z;
        r7.x = -r10.z * r4.z;
        r7.z = r10.x * r4.z;
        r4.z = dot(r10.yz, r10.yz);
        r4.z = sqrt(r4.z);
        r4.z = 1 / r4.z;
        r8.y = r10.z * r4.z;
        r8.z = -r10.y * r4.z;
        r4.yzw = r4.yyy ? r7.xyz : r8.xyz;
        r5.yzw = r10.zxy * r4.zwy;
        r5.yzw = r10.yzx * r4.wyz + -r5.yzw;
        r7.x = r10.w * 0.5 + r9.w;
        r7.x = r9.w / r7.x;
        r7.xzw = r10.xyz * r7.xxx;
        r8.yzw = -r9.xyz + r6.xyz;
        r10.x = dot(r8.yzw, r4.yzw);
        r10.y = dot(r8.yzw, r5.yzw);
        r10.z = dot(r8.yzw, r7.xzw);
        r11.x = dot(r3.yzw, r4.yzw);
        r11.y = dot(r3.yzw, r5.yzw);
        r11.z = dot(r3.yzw, r7.xzw);
        r4.y = dot(r10.xyz, r10.xyz);
        r4.y = sqrt(r4.y);
        r5.yzw = -r10.xyz / r4.yyy;
        r4.z = dot(r11.xyz, r11.xyz);
        r4.z = rsqrt(r4.z);
        r7.xzw = r11.xyz * r4.zzz;
      } else {
        r8.yzw = r9.xyz + -r6.xyz;
        r4.z = dot(r8.yzw, r8.yzw);
        r4.y = sqrt(r4.z);
        r5.yzw = r8.yzw / r4.yyy;
        r7.xzw = r3.yzw;
      }
      r4.z = dot(r5.yzw, r7.xzw);
      r4.w = abs(r4.z) * -0.156582996 + 1.57079637;
      r5.y = 1 + -abs(r4.z);
      r5.y = sqrt(r5.y);
      r5.z = r5.y * r4.w;
      r4.z = cmp(r4.z >= 0);
      r4.w = -r4.w * r5.y + 3.14159274;
      r4.z = r4.z ? r5.z : r4.w;
      r4.w = r9.w / r4.y;
      r5.y = cmp(r4.w < 1);
      r5.z = 1 / r4.w;
      r4.w = r5.y ? r4.w : r5.z;
      r5.z = r4.w * r4.w;
      r5.w = r5.z * 0.0872929022 + -0.301894993;
      r5.z = r5.w * r5.z + 1;
      r5.w = r5.z * r4.w;
      r4.w = -r5.z * r4.w + 1.57079637;
      r4.w = r5.y ? r5.w : r4.w;
      r5.y = max(r4.w, r3.x);
      r5.z = min(r4.w, r3.x);
      r5.y = r5.y + -r5.z;
      r5.y = cmp(r5.y >= r4.z);
      r5.z = cos(r5.z);
      r5.z = -r5.z * 6.28318548 + 6.28318548;
      r5.w = r4.w + r3.x;
      r7.x = cmp(r4.z >= r5.w);
      r4.w = -r4.w + r3.x;
      r4.z = r4.z + -abs(r4.w);
      r4.w = r5.w + -abs(r4.w);
      r4.z = saturate(r4.z / r4.w);
      r4.z = 1 + -r4.z;
      r4.w = r4.z * -2 + 3;
      r4.z = r4.z * r4.z;
      r4.z = r4.w * r4.z;
      r4.z = r4.z * r5.z;
      r4.z = r7.x ? 0 : r4.z;
      r4.z = r5.y ? r5.z : r4.z;
      r4.z = r4.z / r0.z;
      r4.z = min(1, r4.z);
      r4.z = 1 + -r4.z;
      r4.y = r4.y * r0.y;
      r4.y = saturate(r4.y * 3 + -2);
      r4.w = 1 + -r4.z;
      r4.y = r4.y * r4.w + r4.z;
      r0.w = r4.y * r0.w;
      r2.w = (int)r2.w + 1;
    }
    r0.y = r2.x / r5.x;
    r6.w = 1;
    r4.w = 1;
    r2.xy = float2(0,0);
    r0.z = 0;
    while (true) {
      r2.w = cmp((uint)r0.z >= (uint)r0.x);
      if (r2.w != 0) break;
      r2.w = (int)r0.z + (int)r2.z;
      r2.w = g5[r2.w].val[0/4];
      r2.w = t4.Load(r2.w).x;
      bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r3.x = (((uint)r2.w << 2) & bitmask.x) | ((uint)3 & ~bitmask.x);
      r3.x = t1.Load(r3.x).x;
      r3.x = r3.x * 0.5 + cb0[11].z;
      r5.x = r3.x * r0.y;
      r4.xyz = r3.yzw * r3.xxx + r6.xyz;
      r2.w = (int)r2.w * 17;
      r5.y = (uint)r2.w << 2;
      r7.xyzw = (int4)r5.yyyy + int4(12,4,8,16);
      r8.x = t2.Load(r7.x).x;
      r9.xyzw = (int4)r7.xyyz + int4(1,1,3,1);
      r8.y = t2.Load(r9.x).x;
      r10.xyzw = (int4)r7.xyzw + int4(2,2,2,2);
      r8.z = t2.Load(r10.x).x;
      r11.x = t2.Load(r5.y).x;
      bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.x = (((uint)r2.w << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
      bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.y = (((uint)r2.w << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
      bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.z = (((uint)r2.w << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
      r11.y = t2.Load(r12.x).x;
      r11.z = t2.Load(r12.y).x;
      r11.w = t2.Load(r12.z).x;
      r12.x = t2.Load(r7.y).x;
      r12.y = t2.Load(r9.y).x;
      r12.z = t2.Load(r10.y).x;
      r12.w = t2.Load(r9.z).x;
      r13.x = t2.Load(r7.z).x;
      r13.y = t2.Load(r9.w).x;
      r13.z = t2.Load(r10.z).x;
      r7.xyz = (int3)r7.zww + int3(3,1,3);
      r13.w = t2.Load(r7.x).x;
      r9.x = t2.Load(r7.w).x;
      r9.y = t2.Load(r7.y).x;
      r9.z = t2.Load(r10.w).x;
      r2.w = t2.Load(r7.z).x;
      r5.yz = (int2)r5.yy + int2(20,24);
      r7.x = t2.Load(r5.y).x;
      r10.xy = (int2)r5.yz + int2(1,1);
      r7.y = t2.Load(r10.x).x;
      r5.y = (int)r5.y + 2;
      r7.z = t2.Load(r5.y).x;
      r5.y = t2.Load(r5.z).x;
      r5.z = t2.Load(r10.y).x;
      r10.x = dot(r6.xyzw, r11.xyzw);
      r10.y = dot(r6.xyzw, r12.xyzw);
      r10.z = dot(r6.xyzw, r13.xyzw);
      r11.x = dot(r4.xyzw, r11.xyzw);
      r11.y = dot(r4.xyzw, r12.xyzw);
      r11.z = dot(r4.xyzw, r13.xyzw);
      r4.xyz = r11.xyz + -r10.xyz;
      r5.w = dot(r4.xyz, r4.xyz);
      r5.w = sqrt(r5.w);
      r4.xyz = r4.xyz / r5.www;
      r5.x = r5.x / r2.w;
      r7.w = 1;
      r8.w = 0.0199999996;
      r9.w = 0;
      while (true) {
        r10.w = cmp((uint)r9.w >= 32);
        if (r10.w != 0) break;
        r11.xyz = r4.xyz * r8.www + r10.xyz;
        r12.xyz = max(r11.xyz, -r8.xyz);
        r12.xyz = min(r12.xyz, r8.xyz);
        r11.xyz = r12.xyz + -r11.xyz;
        r10.w = dot(r11.xyz, r11.xyz);
        r10.w = sqrt(r10.w);
        r11.xyz = r12.xyz * r9.xyz + r7.xyz;
        r11.x = t0.SampleLevel(s0_s, r11.xyz, 0).x;
        r11.x = r11.x * r5.y + r5.z;
        r10.w = r11.x + r10.w;
        r11.x = r8.w * r0.y;
        r11.x = max(0, r11.x);
        r11.x = min(r11.x, r5.x);
        r11.x = saturate(r10.w / r11.x);
        r11.x = log2(r11.x);
        r11.x = 0.800000012 * r11.x;
        r11.x = exp2(r11.x);
        r11.y = r10.w + r8.w;
        r11.y = r11.y * r2.w;
        r11.y = saturate(r11.y / r3.x);
        r11.x = max(r11.x, r11.y);
        r11.y = min(r11.x, r7.w);
        r11.x = r11.x * r5.w;
        r11.x = 0.100000001 * r11.x;
        r11.x = min(r11.x, r10.w);
        r11.x = max(0.0078125, r11.x);
        r8.w = r11.x + r8.w;
        r10.w = cmp(0 >= r10.w);
        r11.x = cmp(r5.w < r8.w);
        r10.w = (int)r10.w | (int)r11.x;
        if (r10.w != 0) {
          r7.w = r11.y;
          break;
        }
        r9.w = (int)r9.w + 1;
        r7.w = r11.y;
      }
      r4.xyz = max(r10.xyz, -r8.xyz);
      r4.xyz = min(r4.xyz, r8.xyz);
      r8.xyz = r4.xyz + -r10.xyz;
      r5.x = dot(r8.xyz, r8.xyz);
      r5.x = sqrt(r5.x);
      r4.xyz = r4.xyz * r9.xyz + r7.xyz;
      r4.x = t0.SampleLevel(s0_s, r4.xyz, 0).x;
      r4.x = r4.x * r5.y + r5.z;
      r4.x = r4.x + r5.x;
      r2.w = r4.x * r2.w;
      r2.w = saturate(r2.w / r3.x);
      r2.w = 1 + -r2.w;
      r2.w = r2.w * r2.w;
      r3.x = r2.w * r2.w;
      r4.x = log2(r7.w);
      r2.x = r3.x * r4.x + r2.x;
      r2.y = r2.w * r2.w + r2.y;
      r0.z = (int)r0.z + 1;
    }
    r0.x = cmp(0 < r2.y);
    r0.y = r2.x / r2.y;
    r0.y = exp2(r0.y);
    r0.x = r0.x ? r0.y : 1;
    r0.x = r0.w * r0.x;
  } else {
    r0.x = 1;
  }
  r1.xyz = r1.xyz * r0.xxx;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyzw
  return;
}