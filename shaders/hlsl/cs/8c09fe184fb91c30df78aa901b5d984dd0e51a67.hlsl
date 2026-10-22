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
  r0.w = ~(int)r0.w;
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
  r2.xyz = cb0[10].xyz + -r6.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = sqrt(r2.w);
  r3.xyz = cb0[10].xyz + -r4.xyz;
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = sqrt(r3.w);
  r5.x = 1 / cb0[10].w;
  r5.y = r5.x + r1.z;
  r5.y = cmp(r2.w < r5.y);
  r5.x = r5.x + r1.w;
  r5.x = cmp(r3.w < r5.x);
  r5.x = (int)r5.x | (int)r5.y;
  r0.w = r0.w ? r5.x : 0;
  if (r0.w != 0) {
    r0.yz = r0.yz * cb1[132].zw + -cb1[66].wz;
    r0.yz = r0.yz / cb1[66].xy;
    r0.yz = r0.yz * r1.yy;
    r5.xyw = cb1[49].xyz * r0.zzz;
    r0.yzw = r0.yyy * cb1[48].xyz + r5.xyw;
    r0.yzw = r1.yyy * cb1[50].xyz + r0.yzw;
    r7.xyz = cb1[51].xyz + r0.yzw;
    r0.yzw = r2.xyz / r2.www;
    r2.xyz = r3.xyz / r3.www;
    r2.w = cb0[11].x / r2.w;
    r3.x = cb0[11].x / r3.w;
    r3.y = r2.w * r2.w + 1;
    r3.y = sqrt(r3.y);
    r3.y = 1 / r3.y;
    r2.w = r3.y * r2.w;
    r3.z = r3.x * r3.x + 1;
    r3.z = sqrt(r3.z);
    r3.z = 1 / r3.z;
    r3.w = cmp(r5.z < r1.y);
    r5.xyz = cb0[10].xyz + -r7.xyz;
    r5.w = dot(r5.xyz, r5.xyz);
    r5.w = sqrt(r5.w);
    r5.xyz = r5.xyz / r5.www;
    r8.x = cb0[11].x / r5.w;
    r8.y = cmp(r8.x < 1);
    r8.z = 1 / r8.x;
    r8.x = r8.y ? r8.x : r8.z;
    r8.z = r8.x * r8.x;
    r8.w = r8.z * 0.0872929022 + -0.301894993;
    r8.z = r8.w * r8.z + 1;
    r8.w = r8.z * r8.x;
    r8.x = -r8.z * r8.x + 1.57079637;
    r8.x = r8.y ? r8.w : r8.x;
    r3.xy = r3.zy * r3.xy;
    r8.y = r2.w * r2.w;
    r3.z = r3.z * r3.z;
    r8.z = r3.x * r3.x;
    r8.w = r0.x;
    while (true) {
      r9.x = cmp((uint)r8.w >= asuint(cb0[8].x));
      if (r9.x != 0) break;
      r9.x = (uint)r8.w << 1;
      r9.xyzw = t4.Load(r9.x).xyzw;
      bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r10.x = (((uint)r8.w << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
      r10.x = t4.Load(r10.x).w;
      r9.w = r10.x * 0.5 + r9.w;
      r10.x = cb0[15].z + r9.w;
      r10.y = r10.x + r1.z;
      r11.xyz = r9.xyz + -r6.xyz;
      r10.z = dot(r11.xyz, r11.xyz);
      r10.y = r10.y * r10.y;
      r10.y = cmp(r10.z < r10.y);
      r10.w = r9.w + r1.z;
      r11.w = r10.w / r2.w;
      r12.xyz = -r11.www * r0.yzw + r6.xyz;
      r12.xyz = -r12.xyz + r9.xyz;
      r11.w = dot(r12.xyz, r12.xyz);
      r12.x = dot(r0.yzw, r12.xyz);
      r12.y = cmp(0 < r12.x);
      r12.x = r12.x * r12.x;
      r11.w = r11.w * r3.y;
      r11.w = cmp(r12.x >= r11.w);
      r11.w = r11.w ? r12.y : 0;
      r11.x = dot(r0.yzw, r11.xyz);
      r11.y = cmp(0 < -r11.x);
      r11.z = r11.x * r11.x;
      r12.x = r10.z * r8.y;
      r11.z = cmp(r11.z >= r12.x);
      r11.y = r11.z ? r11.y : 0;
      r11.z = r10.w * r10.w;
      r10.z = cmp(r11.z >= r10.z);
      r10.z = r11.y ? r10.z : -1;
      r10.z = r11.w ? r10.z : 0;
      r10.w = r11.x + -r10.w;
      r10.w = cmp(r10.w < cb0[15].z);
      r10.z = r10.w ? r10.z : 0;
      r10.y = r10.y ? r10.z : 0;
      if (r10.y != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r11.x, g0, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r10.y = min(511, (uint)r11.x);
        g2[r10.y].val[0/4] = r8.w;
      }
      r10.x = r10.x + r1.w;
      r10.yzw = r9.xyz + -r4.xyz;
      r11.x = dot(r10.yzw, r10.yzw);
      r10.x = r10.x * r10.x;
      r10.x = cmp(r11.x < r10.x);
      r9.w = r9.w + r1.w;
      r11.y = r9.w / r3.x;
      r11.yzw = -r11.yyy * r2.xyz + r4.xyz;
      r9.xyz = -r11.yzw + r9.xyz;
      r11.y = dot(r9.xyz, r9.xyz);
      r9.x = dot(r2.xyz, r9.xyz);
      r9.y = cmp(0 < r9.x);
      r9.x = r9.x * r9.x;
      r9.z = r11.y * r3.z;
      r9.x = cmp(r9.x >= r9.z);
      r9.x = r9.x ? r9.y : 0;
      r9.y = dot(r2.xyz, r10.yzw);
      r9.z = cmp(0 < -r9.y);
      r10.y = r9.y * r9.y;
      r10.z = r11.x * r8.z;
      r10.y = cmp(r10.y >= r10.z);
      r9.z = r9.z ? r10.y : 0;
      r10.y = r9.w * r9.w;
      r10.y = cmp(r10.y >= r11.x);
      r9.z = r9.z ? r10.y : -1;
      r9.x = r9.x ? r9.z : 0;
      r9.y = r9.y + -r9.w;
      r9.y = cmp(r9.y < cb0[15].z);
      r9.x = r9.y ? r9.x : 0;
      r9.x = r9.x ? r10.x : 0;
      if (r9.x != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r9.x, g1, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r9.x = min(511, (uint)r9.x);
        r9.x = (int)r9.x + 512;
        g2[r9.x].val[0/4] = r8.w;
      }
      r8.w = (int)r8.w + 64;
    }
    GroupMemoryBarrierWithGroupSync();
  // No code for instruction (needs manual fix):
    ld_raw r0.y, l(0), g0.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r0.z, l(0), g1.xxxx
    r0.w = r3.w ? r0.z : r0.y;
    r0.w = min(512, (uint)r0.w);
    r0.y = (int)r0.z + (int)r0.y;
    r6.w = 1;
    r4.w = 1;
    r0.z = r0.x;
    while (true) {
      r2.x = cmp((uint)r0.z >= asuint(cb0[8].y));
      if (r2.x != 0) break;
      r2.x = t5.Load(r0.z).x;
      r2.y = (uint)r2.x << 2;
      r2.y = t2.Load(r2.y).x;
      bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r3.x = (((uint)r2.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
      bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r3.y = (((uint)r2.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
      bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r3.z = (((uint)r2.x << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
      r2.z = t2.Load(r3.x).x;
      r2.w = t2.Load(r3.y).x;
      r3.x = t2.Load(r3.z).x;
      r3.y = r3.x * 0.5 + cb0[15].z;
      r3.x = r3.x + r3.y;
      r3.z = r3.x + r1.z;
      r8.yzw = r2.yzw + -r6.xyz;
      r8.y = dot(r8.yzw, r8.yzw);
      r3.z = r3.z * r3.z;
      r3.z = cmp(r8.y < r3.z);
      if (r3.z != 0) {
        r8.y = (int)r2.x * 17;
        r8.z = (uint)r8.y << 2;
        r9.xyzw = (int4)r8.zzzz + int4(12,4,8,16);
        r10.x = t3.Load(r9.x).x;
        r11.xyzw = (int4)r9.xyyz + int4(1,1,3,1);
        r10.y = t3.Load(r11.x).x;
        r12.xyzw = (int4)r9.xyzw + int4(2,2,2,2);
        r10.z = t3.Load(r12.x).x;
        r13.x = t3.Load(r8.z).x;
        bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r14.x = (((uint)r8.y << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
        bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r14.y = (((uint)r8.y << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
        bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r14.z = (((uint)r8.y << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
        r13.y = t3.Load(r14.x).x;
        r13.z = t3.Load(r14.y).x;
        r13.w = t3.Load(r14.z).x;
        r14.x = t3.Load(r9.y).x;
        r14.y = t3.Load(r11.y).x;
        r14.z = t3.Load(r12.y).x;
        r14.w = t3.Load(r11.z).x;
        r15.x = t3.Load(r9.z).x;
        r15.y = t3.Load(r11.w).x;
        r15.z = t3.Load(r12.z).x;
        r9.xyz = (int3)r9.zww + int3(3,1,3);
        r15.w = t3.Load(r9.x).x;
        r11.x = t3.Load(r9.w).x;
        r11.y = t3.Load(r9.y).x;
        r11.z = t3.Load(r12.w).x;
        r8.y = t3.Load(r9.z).x;
        r8.zw = (int2)r8.zz + int2(20,24);
        r9.x = t3.Load(r8.z).x;
        r12.xy = (int2)r8.zw + int2(1,1);
        r9.y = t3.Load(r12.x).x;
        r8.z = (int)r8.z + 2;
        r9.z = t3.Load(r8.z).x;
        r8.z = t3.Load(r8.w).x;
        r8.w = t3.Load(r12.y).x;
        r12.x = dot(r6.xyzw, r13.xyzw);
        r12.y = dot(r6.xyzw, r14.xyzw);
        r12.z = dot(r6.xyzw, r15.xyzw);
        r13.xyz = max(r12.xyz, -r10.xyz);
        r10.xyz = min(r13.xyz, r10.xyz);
        r12.xyz = r10.xyz + -r12.xyz;
        r9.w = dot(r12.xyz, r12.xyz);
        r9.w = sqrt(r9.w);
        r9.xyz = r10.xyz * r11.xyz + r9.xyz;
        r9.x = t1.SampleLevel(s1_s, r9.xyz, 0).x;
        r8.z = r9.x * r8.z + r8.w;
        r8.z = r8.z + r9.w;
        r8.y = r8.z * r8.y + -r1.z;
        r8.z = 1.10000002 * r3.y;
        r8.y = cmp(r8.y < r8.z);
      }
      r3.z = r3.z ? r8.y : 0;
      if (r3.z != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r9.x, g3, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r3.z = min(63, (uint)r9.x);
        g5[r3.z].val[0/4] = r0.z;
      }
      r3.x = r3.x + r1.w;
      r2.yzw = r2.yzw + -r4.xyz;
      r2.y = dot(r2.yzw, r2.yzw);
      r2.z = r3.x * r3.x;
      r2.y = cmp(r2.y < r2.z);
      if (r2.y != 0) {
        r2.x = (int)r2.x * 17;
        r2.z = (uint)r2.x << 2;
        r9.xyzw = (int4)r2.zzzz + int4(12,4,8,16);
        r8.y = t3.Load(r9.x).x;
        r10.xyzw = (int4)r9.xyyz + int4(1,1,3,1);
        r8.z = t3.Load(r10.x).x;
        r11.xyzw = (int4)r9.xyzw + int4(2,2,2,2);
        r8.w = t3.Load(r11.x).x;
        r12.x = t3.Load(r2.z).x;
        bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.x = (((uint)r2.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
        bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.y = (((uint)r2.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
        bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.z = (((uint)r2.x << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
        r12.y = t3.Load(r13.x).x;
        r12.z = t3.Load(r13.y).x;
        r12.w = t3.Load(r13.z).x;
        r13.x = t3.Load(r9.y).x;
        r13.y = t3.Load(r10.y).x;
        r13.z = t3.Load(r11.y).x;
        r13.w = t3.Load(r10.z).x;
        r14.x = t3.Load(r9.z).x;
        r14.y = t3.Load(r10.w).x;
        r14.z = t3.Load(r11.z).x;
        r9.xyz = (int3)r9.zww + int3(3,1,3);
        r14.w = t3.Load(r9.x).x;
        r10.x = t3.Load(r9.w).x;
        r10.y = t3.Load(r9.y).x;
        r10.z = t3.Load(r11.w).x;
        r2.x = t3.Load(r9.z).x;
        r2.zw = (int2)r2.zz + int2(20,24);
        r9.x = t3.Load(r2.z).x;
        r3.xz = (int2)r2.zw + int2(1,1);
        r9.y = t3.Load(r3.x).x;
        r2.z = (int)r2.z + 2;
        r9.z = t3.Load(r2.z).x;
        r2.z = t3.Load(r2.w).x;
        r2.w = t3.Load(r3.z).x;
        r11.x = dot(r4.xyzw, r12.xyzw);
        r11.y = dot(r4.xyzw, r13.xyzw);
        r11.z = dot(r4.xyzw, r14.xyzw);
        r12.xyz = max(r11.xyz, -r8.yzw);
        r8.yzw = min(r12.xyz, r8.yzw);
        r11.xyz = r8.yzw + -r11.xyz;
        r3.x = dot(r11.xyz, r11.xyz);
        r3.x = sqrt(r3.x);
        r8.yzw = r8.yzw * r10.xyz + r9.xyz;
        r3.z = t1.SampleLevel(s1_s, r8.yzw, 0).x;
        r2.z = r3.z * r2.z + r2.w;
        r2.z = r2.z + r3.x;
        r2.x = r2.z * r2.x + -r1.w;
        r2.z = 1.10000002 * r3.y;
        r2.x = cmp(r2.x < r2.z);
      }
      r2.x = r2.x ? r2.y : 0;
      if (r2.x != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r2.x, g4, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r2.x = min(63, (uint)r2.x);
        r2.x = (int)r2.x + 64;
        g5[r2.x].val[0/4] = r0.z;
      }
      r0.z = (int)r0.z + 64;
    }
    GroupMemoryBarrierWithGroupSync();
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g3.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r0.z, l(0), g4.xxxx
    r1.z = r3.w ? r0.z : r0.x;
    r1.z = min(64, (uint)r1.z);
    r0.x = (int)r0.z + (int)r0.x;
    r0.x = (int)r0.x + (int)r0.y;
    r0.y = 1 / cb0[15].z;
    sincos(r8.x, r2.x, r3.x);
    r0.z = -r3.x * 6.28318548 + 6.28318548;
    bitmask.y = ((~(-1 << 1)) << 9) & 0xffffffff;  r2.y = (((uint)r3.w << 9) & bitmask.y) | ((uint)0 & ~bitmask.y);
    bitmask.z = ((~(-1 << 1)) << 6) & 0xffffffff;  r2.z = (((uint)r3.w << 6) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r1.w = 1;
    r2.w = 0;
    while (true) {
      r3.y = cmp((uint)r2.w >= (uint)r0.w);
      if (r3.y != 0) break;
      r3.y = (int)r2.w + (int)r2.y;
      r3.y = g2[r3.y].val[0/4];
      r3.z = (uint)r3.y << 1;
      r4.xyzw = t4.Load(r3.z).xyzw;
      bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.y = (((uint)r3.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
      r6.xyzw = t4.Load(r3.y).xyzw;
      r3.y = cmp(0 < r6.w);
      if (r3.y != 0) {
        r3.yzw = r4.xyz + -r7.xyz;
        r6.xyzw = r6.xyzw * r6.wwww;
        r8.yzw = -r6.xyz * float3(0.5,0.5,0.5) + r3.yzw;
        r3.yzw = r6.xyz * float3(0.5,0.5,0.5) + r3.yzw;
        r9.x = dot(r5.xyz, r6.xyz);
        r9.yzw = r9.xxx * r5.xyz + -r6.xyz;
        r6.w = -r9.x * r9.x + r6.w;
        r9.x = dot(r8.yzw, r9.yzw);
        r6.w = saturate(r9.x / r6.w);
        r6.xyz = r6.www * r6.xyz + r8.yzw;
        r6.w = dot(r6.xyz, r6.xyz);
        r6.w = sqrt(r6.w);
        r6.xyz = r6.xyz / r6.www;
        r8.y = dot(r8.yzw, r8.yzw);
        r8.y = sqrt(r8.y);
        r6.w = min(r8.y, r6.w);
        r3.y = dot(r3.yzw, r3.yzw);
        r3.y = sqrt(r3.y);
        r3.y = min(r6.w, r3.y);
      } else {
        r4.xyz = r4.xyz + -r7.xyz;
        r3.z = dot(r4.xyz, r4.xyz);
        r3.y = sqrt(r3.z);
        r6.xyz = r4.xyz / r3.yyy;
      }
      r3.z = dot(r6.xyz, r5.xyz);
      r3.w = abs(r3.z) * -0.156582996 + 1.57079637;
      r4.x = 1 + -abs(r3.z);
      r4.x = sqrt(r4.x);
      r4.y = r4.x * r3.w;
      r3.z = cmp(r3.z >= 0);
      r3.w = -r3.w * r4.x + 3.14159274;
      r3.z = r3.z ? r4.y : r3.w;
      r3.w = r4.w / r3.y;
      r4.x = cmp(r3.w < 1);
      r4.y = 1 / r3.w;
      r3.w = r4.x ? r3.w : r4.y;
      r4.y = r3.w * r3.w;
      r4.z = r4.y * 0.0872929022 + -0.301894993;
      r4.y = r4.z * r4.y + 1;
      r4.z = r4.y * r3.w;
      r3.w = -r4.y * r3.w + 1.57079637;
      r3.w = r4.x ? r4.z : r3.w;
      r4.x = max(r8.x, r3.w);
      r4.y = min(r8.x, r3.w);
      r4.x = r4.x + -r4.y;
      r4.x = cmp(r4.x >= r3.z);
      r4.y = cos(r4.y);
      r4.y = -r4.y * 6.28318548 + 6.28318548;
      r4.z = r8.x + r3.w;
      r6.x = cmp(r3.z >= r4.z);
      r3.w = r8.x + -r3.w;
      r3.z = r3.z + -abs(r3.w);
      r3.w = r4.z + -abs(r3.w);
      r3.z = saturate(r3.z / r3.w);
      r3.z = 1 + -r3.z;
      r3.w = r3.z * -2 + 3;
      r3.z = r3.z * r3.z;
      r3.z = r3.w * r3.z;
      r3.z = r3.z * r4.y;
      r3.z = r6.x ? 0 : r3.z;
      r3.z = r4.x ? r4.y : r3.z;
      r3.w = r3.y + -r5.w;
      r3.w = r3.w + r4.w;
      r3.w = saturate(r3.w / r4.w);
      r3.z = r3.w * -r3.z + r3.z;
      r3.z = saturate(r3.z / r0.z);
      r3.z = 1 + -r3.z;
      r3.y = r3.y * r0.y;
      r3.y = saturate(r3.y * 3 + -2);
      r3.w = 1 + -r3.z;
      r3.y = r3.y * r3.w + r3.z;
      r1.w = r3.y * r1.w;
      r2.w = (int)r2.w + 1;
    }
    r0.y = r2.x / r3.x;
    r7.w = 1;
    r3.w = 1;
    r0.zw = float2(0,0);
    r2.x = 0;
    while (true) {
      r2.y = cmp((uint)r2.x >= (uint)r1.z);
      if (r2.y != 0) break;
      r2.y = (int)r2.x + (int)r2.z;
      r2.y = g5[r2.y].val[0/4];
      r2.y = t5.Load(r2.y).x;
      bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.w = (((uint)r2.y << 2) & bitmask.w) | ((uint)3 & ~bitmask.w);
      r2.w = t2.Load(r2.w).x;
      r2.w = r2.w * 0.5 + cb0[15].z;
      r4.x = r2.w * r0.y;
      r3.xyz = r5.xyz * r2.www + r7.xyz;
      r2.y = (int)r2.y * 17;
      r4.y = (uint)r2.y << 2;
      r6.xyzw = (int4)r4.yyyy + int4(12,4,8,16);
      r8.x = t3.Load(r6.x).x;
      r9.xyzw = (int4)r6.xyyz + int4(1,1,3,1);
      r8.y = t3.Load(r9.x).x;
      r10.xyzw = (int4)r6.xyzw + int4(2,2,2,2);
      r8.z = t3.Load(r10.x).x;
      r11.x = t3.Load(r4.y).x;
      bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.x = (((uint)r2.y << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
      bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.y = (((uint)r2.y << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
      bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.z = (((uint)r2.y << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
      r11.y = t3.Load(r12.x).x;
      r11.z = t3.Load(r12.y).x;
      r11.w = t3.Load(r12.z).x;
      r12.x = t3.Load(r6.y).x;
      r12.y = t3.Load(r9.y).x;
      r12.z = t3.Load(r10.y).x;
      r12.w = t3.Load(r9.z).x;
      r13.x = t3.Load(r6.z).x;
      r13.y = t3.Load(r9.w).x;
      r13.z = t3.Load(r10.z).x;
      r6.xyz = (int3)r6.zww + int3(3,1,3);
      r13.w = t3.Load(r6.x).x;
      r9.x = t3.Load(r6.w).x;
      r9.y = t3.Load(r6.y).x;
      r9.z = t3.Load(r10.w).x;
      r2.y = t3.Load(r6.z).x;
      r4.yz = (int2)r4.yy + int2(20,24);
      r6.x = t3.Load(r4.y).x;
      r10.xy = (int2)r4.yz + int2(1,1);
      r6.y = t3.Load(r10.x).x;
      r4.y = (int)r4.y + 2;
      r6.z = t3.Load(r4.y).x;
      r4.y = t3.Load(r4.z).x;
      r4.z = t3.Load(r10.y).x;
      r10.x = dot(r7.xyzw, r11.xyzw);
      r10.y = dot(r7.xyzw, r12.xyzw);
      r10.z = dot(r7.xyzw, r13.xyzw);
      r11.x = dot(r3.xyzw, r11.xyzw);
      r11.y = dot(r3.xyzw, r12.xyzw);
      r11.z = dot(r3.xyzw, r13.xyzw);
      r3.xyz = r11.xyz + -r10.xyz;
      r4.w = dot(r3.xyz, r3.xyz);
      r4.w = sqrt(r4.w);
      r3.xyz = r3.xyz / r4.www;
      r4.x = r4.x / r2.y;
      r5.w = 1;
      r6.w = 0.0199999996;
      r8.w = 0;
      while (true) {
        r9.w = cmp((uint)r8.w >= 32);
        if (r9.w != 0) break;
        r11.xyz = r3.xyz * r6.www + r10.xyz;
        r12.xyz = max(r11.xyz, -r8.xyz);
        r12.xyz = min(r12.xyz, r8.xyz);
        r11.xyz = r12.xyz + -r11.xyz;
        r9.w = dot(r11.xyz, r11.xyz);
        r9.w = sqrt(r9.w);
        r11.xyz = r12.xyz * r9.xyz + r6.xyz;
        r10.w = t1.SampleLevel(s1_s, r11.xyz, 0).x;
        r10.w = r10.w * r4.y + r4.z;
        r9.w = r10.w + r9.w;
        r10.w = r6.w * r0.y;
        r10.w = max(0, r10.w);
        r10.w = min(r10.w, r4.x);
        r10.w = saturate(r9.w / r10.w);
        r10.w = log2(r10.w);
        r10.w = 0.800000012 * r10.w;
        r10.w = exp2(r10.w);
        r11.x = r9.w + r6.w;
        r11.x = r11.x * r2.y;
        r11.x = saturate(r11.x / r2.w);
        r10.w = max(r11.x, r10.w);
        r11.x = min(r10.w, r5.w);
        r10.w = r10.w * r4.w;
        r10.w = 0.100000001 * r10.w;
        r10.w = min(r10.w, r9.w);
        r10.w = max(0.0078125, r10.w);
        r6.w = r10.w + r6.w;
        r9.w = cmp(0 >= r9.w);
        r10.w = cmp(r4.w < r6.w);
        r9.w = (int)r9.w | (int)r10.w;
        if (r9.w != 0) {
          r5.w = r11.x;
          break;
        }
        r8.w = (int)r8.w + 1;
        r5.w = r11.x;
      }
      r3.xyz = max(r10.xyz, -r8.xyz);
      r3.xyz = min(r3.xyz, r8.xyz);
      r8.xyz = r3.xyz + -r10.xyz;
      r4.x = dot(r8.xyz, r8.xyz);
      r4.x = sqrt(r4.x);
      r3.xyz = r3.xyz * r9.xyz + r6.xyz;
      r3.x = t1.SampleLevel(s1_s, r3.xyz, 0).x;
      r3.x = r3.x * r4.y + r4.z;
      r3.x = r3.x + r4.x;
      r2.y = r3.x * r2.y;
      r2.y = saturate(r2.y / r2.w);
      r2.y = 1 + -r2.y;
      r2.y = r2.y * r2.y;
      r2.w = r2.y * r2.y;
      r3.x = log2(r5.w);
      r0.z = r2.w * r3.x + r0.z;
      r0.w = r2.y * r2.y + r0.w;
      r2.x = (int)r2.x + 1;
    }
    r0.y = cmp(0 < r0.w);
    r0.z = r0.z / r0.w;
    r0.z = exp2(r0.z);
    r0.y = r0.y ? r0.z : 1;
    r1.x = r1.w * r0.y;
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