// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g2[128];
Buffer<uint4> t4 : register(t4);

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
// unknown dcl_: dcl_tgsm_raw g5, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g6, 4
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
  r2.x = dot(r2.xyz, r2.xyz);
  r2.yzw = cb0[10].xyz + -r4.xyz;
  r2.y = dot(r2.yzw, r2.yzw);
  r2.xy = sqrt(r2.xy);
  r2.z = 1 / cb0[10].w;
  r2.w = r2.z + r1.z;
  r2.z = r2.z + r1.w;
  r2.xy = cmp(r2.xy < r2.wz);
  r2.x = (int)r2.y | (int)r2.x;
  r0.w = r0.w ? r2.x : 0;
  if (r0.w != 0) {
    r0.yz = r0.yz * cb1[132].zw + -cb1[66].wz;
    r0.yz = r0.yz / cb1[66].xy;
    r0.yz = r0.yz * r1.yy;
    r2.xyz = cb1[49].xyz * r0.zzz;
    r0.yzw = r0.yyy * cb1[48].xyz + r2.xyz;
    r0.yzw = r1.yyy * cb1[50].xyz + r0.yzw;
    r2.xyz = cb1[51].xyz + r0.yzw;
    r0.y = cmp(r5.z < r1.y);
    r3.xyz = cb0[10].xyz + -r2.xyz;
    r0.z = dot(r3.xyz, r3.xyz);
    r0.z = sqrt(r0.z);
    r3.xyz = r3.xyz / r0.zzz;
    r0.z = cb0[11].x / r0.z;
    r0.w = cmp(r0.z < 1);
    r3.w = 1 / r0.z;
    r0.z = r0.w ? r0.z : r3.w;
    r3.w = r0.z * r0.z;
    r5.x = r3.w * 0.0872929022 + -0.301894993;
    r3.w = r5.x * r3.w + 1;
    r5.x = r3.w * r0.z;
    r0.z = -r3.w * r0.z + 1.57079637;
    r0.z = r0.w ? r5.x : r0.z;
    r6.w = 1;
    r4.w = 1;
    r0.w = r0.x;
    while (true) {
      r3.w = cmp((uint)r0.w >= asuint(cb0[8].y));
      if (r3.w != 0) break;
      r3.w = t4.Load(r0.w).x;
      r5.x = (uint)r3.w << 2;
      r5.x = t2.Load(r5.x).x;
      bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r7.x = (((uint)r3.w << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
      bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r7.y = (((uint)r3.w << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
      bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r7.z = (((uint)r3.w << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
      r5.y = t2.Load(r7.x).x;
      r5.z = t2.Load(r7.y).x;
      r5.w = t2.Load(r7.z).x;
      r7.x = r5.w * 0.5 + cb0[15].z;
      r5.w = r7.x + r5.w;
      r7.y = r5.w + r1.z;
      r8.xyz = r5.xyz + -r6.xyz;
      r7.z = dot(r8.xyz, r8.xyz);
      r7.y = r7.y * r7.y;
      r7.y = cmp(r7.z < r7.y);
      if (r7.y != 0) {
        r7.z = (int)r3.w * 17;
        r7.w = (uint)r7.z << 2;
        r8.xyzw = (int4)r7.wwww + int4(12,4,8,16);
        r9.x = t3.Load(r8.x).x;
        r10.xyzw = (int4)r8.xyyz + int4(1,1,3,1);
        r9.y = t3.Load(r10.x).x;
        r11.xyzw = (int4)r8.xyzw + int4(2,2,2,2);
        r9.z = t3.Load(r11.x).x;
        r12.x = t3.Load(r7.w).x;
        bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.x = (((uint)r7.z << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
        bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.y = (((uint)r7.z << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
        bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.z = (((uint)r7.z << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
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
        r7.z = t3.Load(r8.z).x;
        r8.xy = (int2)r7.ww + int2(20,24);
        r11.x = t3.Load(r8.x).x;
        r8.zw = (int2)r8.xy + int2(1,1);
        r11.y = t3.Load(r8.z).x;
        r7.w = (int)r8.x + 2;
        r11.z = t3.Load(r7.w).x;
        r7.w = t3.Load(r8.y).x;
        r8.x = t3.Load(r8.w).x;
        r12.x = dot(r6.xyzw, r12.xyzw);
        r12.y = dot(r6.xyzw, r13.xyzw);
        r12.z = dot(r6.xyzw, r14.xyzw);
        r8.yzw = max(r12.xyz, -r9.xyz);
        r8.yzw = min(r8.yzw, r9.xyz);
        r9.xyz = r8.yzw + -r12.xyz;
        r9.x = dot(r9.xyz, r9.xyz);
        r9.x = sqrt(r9.x);
        r8.yzw = r8.yzw * r10.xyz + r11.xyz;
        r8.y = t1.SampleLevel(s1_s, r8.yzw, 0).x;
        r7.w = r8.y * r7.w + r8.x;
        r7.w = r7.w + r9.x;
        r7.z = r7.w * r7.z + -r1.z;
        r7.w = 1.10000002 * r7.x;
        r7.z = cmp(r7.z < r7.w);
      }
      r7.y = r7.z ? r7.y : 0;
      if (r7.y != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r8.x, g0, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r7.y = min(63, (uint)r8.x);
        g2[r7.y].val[0/4] = r0.w;
      }
      r5.w = r5.w + r1.w;
      r5.xyz = r5.xyz + -r4.xyz;
      r5.x = dot(r5.xyz, r5.xyz);
      r5.y = r5.w * r5.w;
      r5.x = cmp(r5.x < r5.y);
      if (r5.x != 0) {
        r3.w = (int)r3.w * 17;
        r5.y = (uint)r3.w << 2;
        r8.xyzw = (int4)r5.yyyy + int4(12,4,8,16);
        r7.y = t3.Load(r8.x).x;
        r9.xyzw = (int4)r8.xyyz + int4(1,1,3,1);
        r7.z = t3.Load(r9.x).x;
        r10.xyzw = (int4)r8.xyzw + int4(2,2,2,2);
        r7.w = t3.Load(r10.x).x;
        r11.x = t3.Load(r5.y).x;
        bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.x = (((uint)r3.w << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
        bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.y = (((uint)r3.w << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
        bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r12.z = (((uint)r3.w << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
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
        r3.w = t3.Load(r8.z).x;
        r5.yz = (int2)r5.yy + int2(20,24);
        r8.x = t3.Load(r5.y).x;
        r10.xy = (int2)r5.yz + int2(1,1);
        r8.y = t3.Load(r10.x).x;
        r5.y = (int)r5.y + 2;
        r8.z = t3.Load(r5.y).x;
        r5.y = t3.Load(r5.z).x;
        r5.z = t3.Load(r10.y).x;
        r10.x = dot(r4.xyzw, r11.xyzw);
        r10.y = dot(r4.xyzw, r12.xyzw);
        r10.z = dot(r4.xyzw, r13.xyzw);
        r11.xyz = max(r10.xyz, -r7.yzw);
        r7.yzw = min(r11.xyz, r7.yzw);
        r10.xyz = r7.yzw + -r10.xyz;
        r5.w = dot(r10.xyz, r10.xyz);
        r5.w = sqrt(r5.w);
        r7.yzw = r7.yzw * r9.xyz + r8.xyz;
        r7.y = t1.SampleLevel(s1_s, r7.yzw, 0).x;
        r5.y = r7.y * r5.y + r5.z;
        r5.y = r5.y + r5.w;
        r3.w = r5.y * r3.w + -r1.w;
        r5.y = 1.10000002 * r7.x;
        r3.w = cmp(r3.w < r5.y);
      }
      r3.w = r3.w ? r5.x : 0;
      if (r3.w != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r5.x, g1, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r3.w = min(63, (uint)r5.x);
        r3.w = (int)r3.w + 64;
        g2[r3.w].val[0/4] = r0.w;
      }
      r0.w = (int)r0.w + 64;
    }
    GroupMemoryBarrierWithGroupSync();
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g0.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r0.w, l(0), g1.xxxx
    r1.z = r0.y ? r0.w : r0.x;
    r1.z = min(64, (uint)r1.z);
    r0.x = (int)r0.w + (int)r0.x;
    sincos(r0.z, r4.x, r5.x);
    r0.z = r4.x / r5.x;
    bitmask.y = ((~(-1 << 1)) << 6) & 0xffffffff;  r0.y = (((uint)r0.y << 6) & bitmask.y) | ((uint)0 & ~bitmask.y);
    r2.w = 1;
    r4.w = 1;
    r5.xy = float2(0,0);
    r0.w = 0;
    while (true) {
      r1.w = cmp((uint)r0.w >= (uint)r1.z);
      if (r1.w != 0) break;
      r1.w = (int)r0.w + (int)r0.y;
      r1.w = g2[r1.w].val[0/4];
      r1.w = t4.Load(r1.w).x;
      bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r3.w = (((uint)r1.w << 2) & bitmask.w) | ((uint)3 & ~bitmask.w);
      r3.w = t2.Load(r3.w).x;
      r3.w = r3.w * 0.5 + cb0[15].z;
      r5.z = r3.w * r0.z;
      r4.xyz = r3.xyz * r3.www + r2.xyz;
      r1.w = (int)r1.w * 17;
      r5.w = (uint)r1.w << 2;
      r6.xyzw = (int4)r5.wwww + int4(12,4,8,16);
      r7.x = t3.Load(r6.x).x;
      r8.xyzw = (int4)r6.xyyz + int4(1,1,3,1);
      r7.y = t3.Load(r8.x).x;
      r9.xyzw = (int4)r6.xyzw + int4(2,2,2,2);
      r7.z = t3.Load(r9.x).x;
      r10.x = t3.Load(r5.w).x;
      bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r11.x = (((uint)r1.w << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
      bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r11.y = (((uint)r1.w << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
      bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r11.z = (((uint)r1.w << 2) & bitmask.z) | ((uint)3 & ~bitmask.z);
      r10.y = t3.Load(r11.x).x;
      r10.z = t3.Load(r11.y).x;
      r10.w = t3.Load(r11.z).x;
      r11.x = t3.Load(r6.y).x;
      r11.y = t3.Load(r8.y).x;
      r11.z = t3.Load(r9.y).x;
      r11.w = t3.Load(r8.z).x;
      r12.x = t3.Load(r6.z).x;
      r12.y = t3.Load(r8.w).x;
      r12.z = t3.Load(r9.z).x;
      r6.xyz = (int3)r6.zww + int3(3,1,3);
      r12.w = t3.Load(r6.x).x;
      r8.x = t3.Load(r6.w).x;
      r8.y = t3.Load(r6.y).x;
      r8.z = t3.Load(r9.w).x;
      r1.w = t3.Load(r6.z).x;
      r6.xy = (int2)r5.ww + int2(20,24);
      r9.x = t3.Load(r6.x).x;
      r6.zw = (int2)r6.xy + int2(1,1);
      r9.y = t3.Load(r6.z).x;
      r5.w = (int)r6.x + 2;
      r9.z = t3.Load(r5.w).x;
      r5.w = t3.Load(r6.y).x;
      r6.x = t3.Load(r6.w).x;
      r13.x = dot(r2.xyzw, r10.xyzw);
      r13.y = dot(r2.xyzw, r11.xyzw);
      r13.z = dot(r2.xyzw, r12.xyzw);
      r10.x = dot(r4.xyzw, r10.xyzw);
      r10.y = dot(r4.xyzw, r11.xyzw);
      r10.z = dot(r4.xyzw, r12.xyzw);
      r4.xyz = r10.xyz + -r13.xyz;
      r6.y = dot(r4.xyz, r4.xyz);
      r6.y = sqrt(r6.y);
      r4.xyz = r4.xyz / r6.yyy;
      r5.z = r5.z / r1.w;
      r6.zw = float2(1,0.0199999996);
      r7.w = 0;
      while (true) {
        r8.w = cmp((uint)r7.w >= 32);
        if (r8.w != 0) break;
        r10.xyz = r4.xyz * r6.www + r13.xyz;
        r11.xyz = max(r10.xyz, -r7.xyz);
        r11.xyz = min(r11.xyz, r7.xyz);
        r10.xyz = r11.xyz + -r10.xyz;
        r8.w = dot(r10.xyz, r10.xyz);
        r8.w = sqrt(r8.w);
        r10.xyz = r11.xyz * r8.xyz + r9.xyz;
        r9.w = t1.SampleLevel(s1_s, r10.xyz, 0).x;
        r9.w = r9.w * r5.w + r6.x;
        r8.w = r9.w + r8.w;
        r9.w = r6.w * r0.z;
        r9.w = max(0, r9.w);
        r9.w = min(r9.w, r5.z);
        r9.w = saturate(r8.w / r9.w);
        r9.w = log2(r9.w);
        r9.w = 0.800000012 * r9.w;
        r9.w = exp2(r9.w);
        r10.x = r8.w + r6.w;
        r10.x = r10.x * r1.w;
        r10.x = saturate(r10.x / r3.w);
        r9.w = max(r10.x, r9.w);
        r10.x = min(r9.w, r6.z);
        r9.w = r9.w * r6.y;
        r9.w = 0.100000001 * r9.w;
        r9.w = min(r9.w, r8.w);
        r9.w = max(0.0078125, r9.w);
        r6.w = r9.w + r6.w;
        r8.w = cmp(0 >= r8.w);
        r9.w = cmp(r6.y < r6.w);
        r8.w = (int)r8.w | (int)r9.w;
        if (r8.w != 0) {
          r6.z = r10.x;
          break;
        }
        r7.w = (int)r7.w + 1;
        r6.z = r10.x;
      }
      r4.xyz = max(r13.xyz, -r7.xyz);
      r4.xyz = min(r4.xyz, r7.xyz);
      r7.xyz = r4.xyz + -r13.xyz;
      r5.z = dot(r7.xyz, r7.xyz);
      r5.z = sqrt(r5.z);
      r4.xyz = r4.xyz * r8.xyz + r9.xyz;
      r4.x = t1.SampleLevel(s1_s, r4.xyz, 0).x;
      r4.x = r4.x * r5.w + r6.x;
      r4.x = r4.x + r5.z;
      r1.w = r4.x * r1.w;
      r1.w = saturate(r1.w / r3.w);
      r1.w = 1 + -r1.w;
      r1.w = r1.w * r1.w;
      r3.w = r1.w * r1.w;
      r4.x = log2(r6.z);
      r5.x = r3.w * r4.x + r5.x;
      r5.y = r1.w * r1.w + r5.y;
      r0.w = (int)r0.w + 1;
    }
    r0.y = cmp(0 < r5.y);
    r0.z = r5.x / r5.y;
    r0.z = exp2(r0.z);
    r1.x = r0.y ? r0.z : 1;
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