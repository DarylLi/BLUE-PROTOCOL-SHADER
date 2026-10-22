// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g5[128];
groupshared struct { float val[1]; } g2[1024];
Buffer<uint4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[17];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u1
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
  r0.yz = mad((int2)vThreadID.xy, asint(cb0[15].yy), asint(cb0[13].xy));
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
  r0.w = cmp(r1.y < 20000);
  if (r0.w != 0) {
    // Needs manual fix for instruction:
    atomic_umin g6, l(0), r1.y
    InterlockedMin(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g7, l(0), r1.y
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r2.z, l(0), g6.xxxx
// No code for instruction (needs manual fix):
ld_raw r3.z, l(0), g7.xxxx
  if (r0.w != 0) {
    r0.w = r3.z + r2.z;
    r0.w = 0.5 * r0.w;
    r1.z = cmp(r1.y >= r0.w);
    if (r1.z != 0) {
      // Needs manual fix for instruction:
        atomic_umin g8, l(0), r1.y
      InterlockedMin(dest, value, orig_value);
    }
    r0.w = cmp(r0.w >= r1.y);
    if (r0.w != 0) {
      // Needs manual fix for instruction:
        atomic_umax g9, l(0), r1.y
      InterlockedMax(dest, value, orig_value);
    }
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r4.z, l(0), g8.xxxx
// No code for instruction (needs manual fix):
ld_raw r5.z, l(0), g9.xxxx
  r0.w = cmp((int)r2.z == 0x7f7fffff);
  r1.z = cmp((int)r3.z == 0);
  r0.w = r0.w ? r1.z : 0;
  r1.zw = cmp(abs(cb1[30].xy) < float2(9.99999975e-006,9.99999975e-006));
  r1.z = r1.w ? r1.z : 0;
  if (r1.z != 0) {
    r6.x = cb1[36].x;
    r6.y = cb1[37].y;
    r1.zw = r6.xy + r6.xy;
    r7.xyzw = asuint(cb0[13].zwxy);
    r6.zw = r7.xy * r1.zw;
    r7.xy = cb1[130].xy * cb0[14].xy;
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
    r1.zw = asuint(cb0[13].zw) << int2(1,1);
    r1.zw = (uint2)r1.zw;
    r6.xy = cb1[130].xy * cb0[14].xy;
    r1.zw = r1.zw / r6.xy;
    r6.xy = asuint(cb0[13].xy);
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
    sincos(cb0[12].x, r3.x, r4.x);
    r0.w = cmp(r5.z < r1.y);
    r1.z = r4.x * r4.x;
    r1.w = r3.x * r3.x;
    r3.y = r0.x;
    while (true) {
      r3.z = cmp((uint)r3.y >= asuint(cb0[8].x));
      if (r3.z != 0) break;
      r3.z = (uint)r3.y << 1;
      r5.xyzw = t4.Load(r3.z).xyzw;
      bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.z = (((uint)r3.y << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
      r3.z = t4.Load(r3.z).w;
      r3.z = r3.z * 0.5 + r5.w;
      r3.w = cb0[15].z + r3.z;
      r4.yw = r3.wz + r0.yy;
      r8.xyz = r5.xyz + -r2.xyz;
      r4.z = dot(r8.xyz, r8.xyz);
      r4.y = r4.y * r4.y;
      r4.y = cmp(r4.z < r4.y);
      r5.w = r4.w / r3.x;
      r9.xyz = -r5.www * cb0[9].xyz + r2.xyz;
      r9.xyz = -r9.xyz + r5.xyz;
      r5.w = dot(r9.xyz, r9.xyz);
      r8.w = dot(cb0[9].xyz, r9.xyz);
      r9.x = cmp(0 < r8.w);
      r8.w = r8.w * r8.w;
      r5.w = r5.w * r1.z;
      r5.w = cmp(r8.w >= r5.w);
      r5.w = r5.w ? r9.x : 0;
      r8.x = dot(cb0[9].xyz, r8.xyz);
      r8.y = cmp(0 < -r8.x);
      r8.z = r8.x * r8.x;
      r8.w = r4.z * r1.w;
      r8.z = cmp(r8.z >= r8.w);
      r8.y = r8.z ? r8.y : 0;
      r8.z = r4.w * r4.w;
      r4.z = cmp(r8.z >= r4.z);
      r4.z = r8.y ? r4.z : -1;
      r4.z = r5.w ? r4.z : 0;
      r4.w = r8.x + -r4.w;
      r4.w = cmp(r4.w < cb0[15].z);
      r4.z = r4.w ? r4.z : 0;
      r4.y = r4.y ? r4.z : 0;
      if (r4.y != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r8.x, g0, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r4.y = min(511, (uint)r8.x);
        g2[r4.y].val[0/4] = r3.y;
      }
      r3.zw = r3.zw + r0.zz;
      r4.yzw = r5.xyz + -r7.xyz;
      r5.w = dot(r4.yzw, r4.yzw);
      r3.w = r3.w * r3.w;
      r3.w = cmp(r5.w < r3.w);
      r8.x = r3.z / r3.x;
      r8.xyz = -r8.xxx * cb0[9].xyz + r7.xyz;
      r5.xyz = -r8.xyz + r5.xyz;
      r8.x = dot(r5.xyz, r5.xyz);
      r5.x = dot(cb0[9].xyz, r5.xyz);
      r5.y = cmp(0 < r5.x);
      r5.x = r5.x * r5.x;
      r5.z = r8.x * r1.z;
      r5.x = cmp(r5.x >= r5.z);
      r5.x = r5.x ? r5.y : 0;
      r4.y = dot(cb0[9].xyz, r4.yzw);
      r4.z = cmp(0 < -r4.y);
      r4.w = r4.y * r4.y;
      r5.y = r5.w * r1.w;
      r4.w = cmp(r4.w >= r5.y);
      r4.z = r4.w ? r4.z : 0;
      r4.w = r3.z * r3.z;
      r4.w = cmp(r4.w >= r5.w);
      r4.z = r4.z ? r4.w : -1;
      r4.z = r5.x ? r4.z : 0;
      r3.z = r4.y + -r3.z;
      r3.z = cmp(r3.z < cb0[15].z);
      r3.z = r3.z ? r4.z : 0;
      r3.z = r3.z ? r3.w : 0;
      if (r3.z != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r5.x, g1, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r3.z = min(511, (uint)r5.x);
        r3.z = (int)r3.z + 512;
        g2[r3.z].val[0/4] = r3.y;
      }
      r3.y = (int)r3.y + 64;
    }
    GroupMemoryBarrierWithGroupSync();
  // No code for instruction (needs manual fix):
    ld_raw r1.z, l(0), g0.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r1.w, l(0), g1.xxxx
    r3.y = r0.w ? r1.w : r1.z;
    r3.y = min(512, (uint)r3.y);
    r1.z = (int)r1.w + (int)r1.z;
    r2.w = 1;
    r7.w = 1;
    r1.w = r0.x;
    while (true) {
      r3.z = cmp((uint)r1.w >= asuint(cb0[8].y));
      if (r3.z != 0) break;
      r3.z = t5.Load(r1.w).x;
      r3.w = (uint)r3.z << 2;
      r4.y = t2.Load(r3.w).x;
      bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r5.x = (((uint)r3.z << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
      bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r5.y = (((uint)r3.z << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
      bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r5.z = (((uint)r3.z << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
      r4.z = t2.Load(r5.x).x;
      r4.w = t2.Load(r5.y).x;
      r3.w = t2.Load(r5.z).x;
      r5.x = r3.w * 0.5 + cb0[15].z;
      r3.w = r5.x + r3.w;
      r5.y = r3.w + r0.y;
      r8.xyz = r4.yzw + -r2.xyz;
      r5.z = dot(r8.xyz, r8.xyz);
      r5.y = r5.y * r5.y;
      r5.y = cmp(r5.z < r5.y);
      if (r5.y != 0) {
        r5.z = (int)r3.z * 17;
        r5.w = (uint)r5.z << 2;
        r8.xyzw = (int4)r5.wwww + int4(12,4,8,16);
        r9.x = t3.Load(r8.x).x;
        r10.xyzw = (int4)r8.xyyz + int4(1,1,3,1);
        r9.y = t3.Load(r10.x).x;
        r11.xyzw = (int4)r8.xyzw + int4(2,2,2,2);
        r9.z = t3.Load(r11.x).x;
        r12.x = t3.Load(r5.w).x;
        bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.x = (((uint)r5.z << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
        bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.y = (((uint)r5.z << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
        bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.z = (((uint)r5.z << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
        r12.y = t3.Load(r13.x).x;
        r12.z = t3.Load(r13.y).x;
        r12.w = t3.Load(r13.z).x;
        r13.x = t3.Load(r8.y).x;
        r13.y = t3.Load(r10.y).x;
        r13.z = t3.Load(r11.y).x;
        r13.w = t3.Load(r10.z).x;
        r14.x = t3.Load(r8.z).x;
        r14.y = t3.Load(r10.w).x;
        r14.z = t3.Load(r11.z).x;
        r8.xyz = (int3)r8.zww + int3(3,1,3);
        r14.w = t3.Load(r8.x).x;
        r10.x = t3.Load(r8.w).x;
        r10.y = t3.Load(r8.y).x;
        r10.z = t3.Load(r11.w).x;
        r5.z = t3.Load(r8.z).x;
        r8.xy = (int2)r5.ww + int2(20,24);
        r11.x = t3.Load(r8.x).x;
        r8.zw = (int2)r8.xy + int2(1,1);
        r11.y = t3.Load(r8.z).x;
        r5.w = (int)r8.x + 2;
        r11.z = t3.Load(r5.w).x;
        r5.w = t3.Load(r8.y).x;
        r8.x = t3.Load(r8.w).x;
        r12.x = dot(r2.xyzw, r12.xyzw);
        r12.y = dot(r2.xyzw, r13.xyzw);
        r12.z = dot(r2.xyzw, r14.xyzw);
        r8.yzw = max(r12.xyz, -r9.xyz);
        r8.yzw = min(r8.yzw, r9.xyz);
        r9.xyz = r8.yzw + -r12.xyz;
        r9.x = dot(r9.xyz, r9.xyz);
        r9.x = sqrt(r9.x);
        r8.yzw = r8.yzw * r10.xyz + r11.xyz;
        r8.y = t1.SampleLevel(s1_s, r8.yzw, 0).x;
        r5.w = r8.y * r5.w + r8.x;
        r5.w = r5.w + r9.x;
        r5.z = r5.w * r5.z + -r0.y;
        r5.w = 1.10000002 * r5.x;
        r5.z = cmp(r5.z < r5.w);
      }
      r5.y = r5.z ? r5.y : 0;
      if (r5.y != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r8.x, g3, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r5.y = min(63, (uint)r8.x);
        g5[r5.y].val[0/4] = r1.w;
      }
      r3.w = r3.w + r0.z;
      r4.yzw = r4.yzw + -r7.xyz;
      r4.y = dot(r4.yzw, r4.yzw);
      r3.w = r3.w * r3.w;
      r3.w = cmp(r4.y < r3.w);
      if (r3.w != 0) {
        r3.z = (int)r3.z * 17;
        r4.y = (uint)r3.z << 2;
        r8.xyzw = (int4)r4.yyyy + int4(12,4,8,16);
        r5.y = t3.Load(r8.x).x;
        r9.xyzw = (int4)r8.xyyz + int4(1,1,3,1);
        r5.z = t3.Load(r9.x).x;
        r10.xyzw = (int4)r8.xyzw + int4(2,2,2,2);
        r5.w = t3.Load(r10.x).x;
        r11.x = t3.Load(r4.y).x;
        bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.x = (((uint)r3.z << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
        bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.y = (((uint)r3.z << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
        bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.z = (((uint)r3.z << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
        r11.y = t3.Load(r12.x).x;
        r11.z = t3.Load(r12.y).x;
        r11.w = t3.Load(r12.z).x;
        r12.x = t3.Load(r8.y).x;
        r12.y = t3.Load(r9.y).x;
        r12.z = t3.Load(r10.y).x;
        r12.w = t3.Load(r9.z).x;
        r13.x = t3.Load(r8.z).x;
        r13.y = t3.Load(r9.w).x;
        r13.z = t3.Load(r10.z).x;
        r8.xyz = (int3)r8.zww + int3(3,1,3);
        r13.w = t3.Load(r8.x).x;
        r9.x = t3.Load(r8.w).x;
        r9.y = t3.Load(r8.y).x;
        r9.z = t3.Load(r10.w).x;
        r3.z = t3.Load(r8.z).x;
        r4.yz = (int2)r4.yy + int2(20,24);
        r8.x = t3.Load(r4.y).x;
        r10.xy = (int2)r4.yz + int2(1,1);
        r8.y = t3.Load(r10.x).x;
        r4.y = (int)r4.y + 2;
        r8.z = t3.Load(r4.y).x;
        r4.y = t3.Load(r4.z).x;
        r4.z = t3.Load(r10.y).x;
        r10.x = dot(r7.xyzw, r11.xyzw);
        r10.y = dot(r7.xyzw, r12.xyzw);
        r10.z = dot(r7.xyzw, r13.xyzw);
        r11.xyz = max(r10.xyz, -r5.yzw);
        r5.yzw = min(r11.xyz, r5.yzw);
        r10.xyz = r5.yzw + -r10.xyz;
        r4.w = dot(r10.xyz, r10.xyz);
        r4.w = sqrt(r4.w);
        r5.yzw = r5.yzw * r9.xyz + r8.xyz;
        r5.y = t1.SampleLevel(s1_s, r5.yzw, 0).x;
        r4.y = r5.y * r4.y + r4.z;
        r4.y = r4.y + r4.w;
        r3.z = r4.y * r3.z + -r0.z;
        r4.y = 1.10000002 * r5.x;
        r3.z = cmp(r3.z < r4.y);
      }
      r3.z = r3.z ? r3.w : 0;
      if (r3.z != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r5.x, g4, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r3.z = min(63, (uint)r5.x);
        r3.z = (int)r3.z + 64;
        g5[r3.z].val[0/4] = r1.w;
      }
      r1.w = (int)r1.w + 64;
    }
    GroupMemoryBarrierWithGroupSync();
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g3.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r0.y, l(0), g4.xxxx
    r0.z = r0.w ? r0.y : r0.x;
    r0.z = min(64, (uint)r0.z);
    r0.x = (int)r0.y + (int)r0.x;
    r0.x = (int)r0.x + (int)r1.z;
    r0.y = 1 / cb0[15].z;
    r1.z = -r4.x * 6.28318548 + 6.28318548;
    bitmask.x = ((~(-1 << 1)) << 9) & 0xffffffff;  r2.x = (((uint)r0.w << 9) & bitmask.x) | ((uint)0 & ~bitmask.x);
    bitmask.y = ((~(-1 << 1)) << 6) & 0xffffffff;  r2.y = (((uint)r0.w << 6) & bitmask.y) | ((uint)0 & ~bitmask.y);
    r0.w = 1;
    r1.w = 0;
    while (true) {
      r2.z = cmp((uint)r1.w >= (uint)r3.y);
      if (r2.z != 0) break;
      r2.z = (int)r1.w + (int)r2.x;
      r2.z = g2[r2.z].val[0/4];
      r2.w = (uint)r2.z << 1;
      r5.xyzw = t4.Load(r2.w).xyzw;
      bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.z = (((uint)r2.z << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
      r7.xyzw = t4.Load(r2.z).xyzw;
      r2.z = cmp(0 < r7.w);
      if (r2.z != 0) {
        r4.yzw = r5.xyz + -r6.xyz;
        r7.xyzw = r7.xyzw * r7.wwww;
        r8.xyz = -r7.xyz * float3(0.5,0.5,0.5) + r4.yzw;
        r4.yzw = r7.xyz * float3(0.5,0.5,0.5) + r4.yzw;
        r2.z = dot(cb0[9].xyz, r7.xyz);
        r9.xyz = r2.zzz * cb0[9].xyz + -r7.xyz;
        r2.z = -r2.z * r2.z + r7.w;
        r2.w = dot(r8.xyz, r9.xyz);
        r2.z = saturate(r2.w / r2.z);
        r7.xyz = r2.zzz * r7.xyz + r8.xyz;
        r2.z = dot(r7.xyz, r7.xyz);
        r2.z = sqrt(r2.z);
        r7.xyz = r7.xyz / r2.zzz;
        r2.w = dot(r8.xyz, r8.xyz);
        r2.w = sqrt(r2.w);
        r2.z = min(r2.z, r2.w);
        r2.w = dot(r4.yzw, r4.yzw);
        r2.w = sqrt(r2.w);
        r2.z = min(r2.z, r2.w);
      } else {
        r4.yzw = r5.xyz + -r6.xyz;
        r2.w = dot(r4.yzw, r4.yzw);
        r2.z = sqrt(r2.w);
        r7.xyz = r4.yzw / r2.zzz;
      }
      r2.w = dot(r7.xyz, cb0[9].xyz);
      r3.z = abs(r2.w) * -0.156582996 + 1.57079637;
      r3.w = 1 + -abs(r2.w);
      r3.w = sqrt(r3.w);
      r4.y = r3.z * r3.w;
      r2.w = cmp(r2.w >= 0);
      r3.z = -r3.z * r3.w + 3.14159274;
      r2.w = r2.w ? r4.y : r3.z;
      r3.z = r5.w / r2.z;
      r3.w = cmp(r3.z < 1);
      r4.y = 1 / r3.z;
      r3.z = r3.w ? r3.z : r4.y;
      r4.y = r3.z * r3.z;
      r4.z = r4.y * 0.0872929022 + -0.301894993;
      r4.y = r4.z * r4.y + 1;
      r4.z = r4.y * r3.z;
      r3.z = -r4.y * r3.z + 1.57079637;
      r3.z = r3.w ? r4.z : r3.z;
      r3.w = max(cb0[12].x, r3.z);
      r4.y = min(cb0[12].x, r3.z);
      r3.w = -r4.y + r3.w;
      r3.w = cmp(r3.w >= r2.w);
      r4.y = cos(r4.y);
      r4.y = -r4.y * 6.28318548 + 6.28318548;
      r4.z = cb0[12].x + r3.z;
      r4.w = cmp(r2.w >= r4.z);
      r3.z = cb0[12].x + -r3.z;
      r2.w = -abs(r3.z) + r2.w;
      r3.z = r4.z + -abs(r3.z);
      r2.w = saturate(r2.w / r3.z);
      r2.w = 1 + -r2.w;
      r3.z = r2.w * -2 + 3;
      r2.w = r2.w * r2.w;
      r2.w = r3.z * r2.w;
      r2.w = r2.w * r4.y;
      r2.w = r4.w ? 0 : r2.w;
      r2.w = r3.w ? r4.y : r2.w;
      r2.w = r2.w / r1.z;
      r2.w = min(1, r2.w);
      r2.w = 1 + -r2.w;
      r2.z = r2.z * r0.y;
      r2.z = saturate(r2.z * 3 + -2);
      r3.z = 1 + -r2.w;
      r2.z = r2.z * r3.z + r2.w;
      r0.w = r2.z * r0.w;
      r1.w = (int)r1.w + 1;
    }
    r0.y = r3.x / r4.x;
    r6.w = 1;
    r3.w = 1;
    r1.zw = float2(0,0);
    r2.x = 0;
    while (true) {
      r2.z = cmp((uint)r2.x >= (uint)r0.z);
      if (r2.z != 0) break;
      r2.z = (int)r2.x + (int)r2.y;
      r2.z = g5[r2.z].val[0/4];
      r2.z = t5.Load(r2.z).x;
      bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.w = (((uint)r2.z << 2) & bitmask.w) | ((uint)3 & ~bitmask.w);
      r2.w = t2.Load(r2.w).x;
      r2.w = r2.w * 0.5 + cb0[15].z;
      r4.x = r2.w * r0.y;
      r3.xyz = cb0[9].xyz * r2.www + r6.xyz;
      r2.z = (int)r2.z * 17;
      r4.y = (uint)r2.z << 2;
      r5.xyzw = (int4)r4.yyyy + int4(12,4,8,16);
      r7.x = t3.Load(r5.x).x;
      r8.xyzw = (int4)r5.xyyz + int4(1,1,3,1);
      r7.y = t3.Load(r8.x).x;
      r9.xyzw = (int4)r5.xyzw + int4(2,2,2,2);
      r7.z = t3.Load(r9.x).x;
      r10.x = t3.Load(r4.y).x;
      bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r11.x = (((uint)r2.z << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
      bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r11.y = (((uint)r2.z << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
      bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r11.z = (((uint)r2.z << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
      r10.y = t3.Load(r11.x).x;
      r10.z = t3.Load(r11.y).x;
      r10.w = t3.Load(r11.z).x;
      r11.x = t3.Load(r5.y).x;
      r11.y = t3.Load(r8.y).x;
      r11.z = t3.Load(r9.y).x;
      r11.w = t3.Load(r8.z).x;
      r12.x = t3.Load(r5.z).x;
      r12.y = t3.Load(r8.w).x;
      r12.z = t3.Load(r9.z).x;
      r5.xyz = (int3)r5.zww + int3(3,1,3);
      r12.w = t3.Load(r5.x).x;
      r8.x = t3.Load(r5.w).x;
      r8.y = t3.Load(r5.y).x;
      r8.z = t3.Load(r9.w).x;
      r2.z = t3.Load(r5.z).x;
      r4.yz = (int2)r4.yy + int2(20,24);
      r5.x = t3.Load(r4.y).x;
      r9.xy = (int2)r4.yz + int2(1,1);
      r5.y = t3.Load(r9.x).x;
      r4.y = (int)r4.y + 2;
      r5.z = t3.Load(r4.y).x;
      r4.y = t3.Load(r4.z).x;
      r4.z = t3.Load(r9.y).x;
      r9.x = dot(r6.xyzw, r10.xyzw);
      r9.y = dot(r6.xyzw, r11.xyzw);
      r9.z = dot(r6.xyzw, r12.xyzw);
      r10.x = dot(r3.xyzw, r10.xyzw);
      r10.y = dot(r3.xyzw, r11.xyzw);
      r10.z = dot(r3.xyzw, r12.xyzw);
      r3.xyz = r10.xyz + -r9.xyz;
      r4.w = dot(r3.xyz, r3.xyz);
      r4.w = sqrt(r4.w);
      r3.xyz = r3.xyz / r4.www;
      r4.x = r4.x / r2.z;
      r5.w = 1;
      r7.w = 0.0199999996;
      r8.w = 0;
      while (true) {
        r9.w = cmp((uint)r8.w >= 32);
        if (r9.w != 0) break;
        r10.xyz = r3.xyz * r7.www + r9.xyz;
        r11.xyz = max(r10.xyz, -r7.xyz);
        r11.xyz = min(r11.xyz, r7.xyz);
        r10.xyz = r11.xyz + -r10.xyz;
        r9.w = dot(r10.xyz, r10.xyz);
        r9.w = sqrt(r9.w);
        r10.xyz = r11.xyz * r8.xyz + r5.xyz;
        r10.x = t1.SampleLevel(s1_s, r10.xyz, 0).x;
        r10.x = r10.x * r4.y + r4.z;
        r9.w = r10.x + r9.w;
        r10.x = r7.w * r0.y;
        r10.x = max(0, r10.x);
        r10.x = min(r10.x, r4.x);
        r10.x = saturate(r9.w / r10.x);
        r10.x = log2(r10.x);
        r10.x = 0.800000012 * r10.x;
        r10.x = exp2(r10.x);
        r10.y = r9.w + r7.w;
        r10.y = r10.y * r2.z;
        r10.y = saturate(r10.y / r2.w);
        r10.x = max(r10.x, r10.y);
        r10.y = min(r10.x, r5.w);
        r10.x = r10.x * r4.w;
        r10.x = 0.100000001 * r10.x;
        r10.x = min(r10.x, r9.w);
        r10.x = max(0.0078125, r10.x);
        r7.w = r10.x + r7.w;
        r9.w = cmp(0 >= r9.w);
        r10.x = cmp(r4.w < r7.w);
        r9.w = (int)r9.w | (int)r10.x;
        if (r9.w != 0) {
          r5.w = r10.y;
          break;
        }
        r8.w = (int)r8.w + 1;
        r5.w = r10.y;
      }
      r3.xyz = max(r9.xyz, -r7.xyz);
      r3.xyz = min(r3.xyz, r7.xyz);
      r7.xyz = r3.xyz + -r9.xyz;
      r4.x = dot(r7.xyz, r7.xyz);
      r4.x = sqrt(r4.x);
      r3.xyz = r3.xyz * r8.xyz + r5.xyz;
      r3.x = t1.SampleLevel(s1_s, r3.xyz, 0).x;
      r3.x = r3.x * r4.y + r4.z;
      r3.x = r3.x + r4.x;
      r2.z = r3.x * r2.z;
      r2.z = saturate(r2.z / r2.w);
      r2.z = 1 + -r2.z;
      r2.z = r2.z * r2.z;
      r2.w = r2.z * r2.z;
      r3.x = log2(r5.w);
      r1.z = r2.w * r3.x + r1.z;
      r1.w = r2.z * r2.z + r1.w;
      r2.x = (int)r2.x + 1;
    }
    r0.y = cmp(0 < r1.w);
    r0.z = r1.z / r1.w;
    r0.z = exp2(r0.z);
    r0.y = r0.y ? r0.z : 1;
    r1.x = r0.w * r0.y;
    r0.yz = cmp((int2)vThreadIDInGroup.xy == int2(0,0));
    r0.y = r0.z ? r0.y : 0;
    r0.zw = cmp((uint2)vThreadGroupID.xy < asuint(cb0[16].xy));
    r0.z = r0.w ? r0.z : 0;
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r0.y = mad((int)vThreadGroupID.y, asint(cb0[16].x), (int)vThreadGroupID.x);
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