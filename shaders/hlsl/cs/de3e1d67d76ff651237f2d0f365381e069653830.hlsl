// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g2[1024];
Texture2D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
  r1.xyzw = t1.Load(vThreadID.xyz).xyzw;
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
  r0.y = cmp(r1.w < 20000);
  if (r0.y != 0) {
    // Needs manual fix for instruction:
    atomic_umin g3, l(0), r1.w
    InterlockedMin(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g4, l(0), r1.w
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r2.z, l(0), g3.xxxx
// No code for instruction (needs manual fix):
ld_raw r3.z, l(0), g4.xxxx
  if (r0.y != 0) {
    r0.y = r3.z + r2.z;
    r0.y = 0.5 * r0.y;
    r0.z = cmp(r1.w >= r0.y);
    if (r0.z != 0) {
      // Needs manual fix for instruction:
        atomic_umin g5, l(0), r1.w
      InterlockedMin(dest, value, orig_value);
    }
    r0.y = cmp(r0.y >= r1.w);
    if (r0.y != 0) {
      // Needs manual fix for instruction:
        atomic_umax g6, l(0), r1.w
      InterlockedMax(dest, value, orig_value);
    }
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r4.z, l(0), g5.xxxx
// No code for instruction (needs manual fix):
ld_raw r5.z, l(0), g6.xxxx
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
    r0.yzw = cb1[51].xyz + r0.yzw;
    r2.xyz = r5.xyz + r2.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r2.xyz;
    r7.xyz = cb1[17].xyz * r6.yyy;
    r6.xyw = r6.xxx * cb1[16].xyz + r7.xyz;
    r6.xyz = r6.zzz * cb1[18].xyz + r6.xyw;
    r6.xyz = cb1[19].xyz + r6.xyz;
    r6.xyz = -cb1[70].xyz + r6.xyz;
    r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + -r5.xyz;
    r2.x = dot(r2.xyz, r2.xyz);
    r2.yzw = r4.xyz + r3.xyz;
    r4.xyz = float3(0.5,0.5,0.5) * r2.yzw;
    r5.xyw = cb1[17].xyz * r4.yyy;
    r4.xyw = r4.xxx * cb1[16].xyz + r5.xyw;
    r4.xyz = r4.zzz * cb1[18].xyz + r4.xyw;
    r4.xyz = cb1[19].xyz + r4.xyz;
    r4.xyz = -cb1[70].xyz + r4.xyz;
    r2.yzw = r2.yzw * float3(0.5,0.5,0.5) + -r3.xyz;
    r2.y = dot(r2.yzw, r2.yzw);
    r2.z = cmp(r5.z < r1.w);
    r2.w = dot(r1.xyz, r1.xyz);
    r2.xyw = sqrt(r2.xyw);
    r3.x = max(9.99999975e-006, r2.w);
    r3.xyz = r1.xyz / r3.xxx;
    r2.w = 1.57079637 * r2.w;
    r2.w = max(0.392699093, r2.w);
    r5.y = 0;
    r7.x = 0;
    r3.w = r0.x;
    while (true) {
      r4.w = cmp((uint)r3.w >= asuint(cb0[8].x));
      if (r4.w != 0) break;
      r4.w = (uint)r3.w << 1;
      r8.xyzw = t0.Load(r4.w).xyzw;
      bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.w = (((uint)r3.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
      r9.xyzw = t0.Load(r4.w).xyzw;
      r4.w = cmp(abs(r9.y) < abs(r9.x));
      r5.w = dot(r9.xz, r9.xz);
      r5.w = sqrt(r5.w);
      r5.w = 1 / r5.w;
      r5.x = -r9.z * r5.w;
      r5.z = r9.x * r5.w;
      r5.w = dot(r9.yz, r9.yz);
      r5.w = sqrt(r5.w);
      r5.w = 1 / r5.w;
      r7.y = r9.z * r5.w;
      r7.z = -r9.y * r5.w;
      r5.xzw = r4.www ? r5.xyz : r7.xyz;
      r7.yzw = r9.zxy * r5.zwx;
      r7.yzw = r9.yzx * r5.wxz + -r7.yzw;
      r4.w = r9.w * 0.5 + r8.w;
      r4.w = r8.w / r4.w;
      r9.xyz = r9.xyz * r4.www;
      r10.xyz = -r8.xyz + r6.xyz;
      r11.x = dot(r10.xyz, r5.xzw);
      r11.y = dot(r10.xyz, r7.yzw);
      r11.z = dot(r10.xyz, r9.xyz);
      r8.xyz = -r8.xyz + r4.xyz;
      r10.x = dot(r8.xyz, r5.xzw);
      r10.y = dot(r8.xyz, r7.yzw);
      r10.z = dot(r8.xyz, r9.xyz);
      r4.w = cb0[11].z + r8.w;
      r5.x = r4.w + r2.x;
      r5.z = dot(-r11.xyz, -r11.xyz);
      r5.x = r5.x * r5.x;
      r5.x = cmp(r5.z < r5.x);
      if (r5.x != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r8.x, g0, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r5.x = min(511, (uint)r8.x);
        g2[r5.x].val[0/4] = r3.w;
      }
      r4.w = r4.w + r2.y;
      r5.x = dot(-r10.xyz, -r10.xyz);
      r4.w = r4.w * r4.w;
      r4.w = cmp(r5.x < r4.w);
      if (r4.w != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r8.x, g1, l(0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r4.w = min(511, (uint)r8.x);
        r4.w = (int)r4.w + 512;
        g2[r4.w].val[0/4] = r3.w;
      }
      r3.w = (int)r3.w + 64;
    }
    GroupMemoryBarrierWithGroupSync();
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g0.xxxx
  // No code for instruction (needs manual fix):
    ld_raw r2.x, l(0), g1.xxxx
    r0.x = r2.z ? r2.x : r0.x;
    r0.x = min(512, (uint)r0.x);
    r2.x = 1 / cb0[11].z;
    r2.y = cos(r2.w);
    r2.y = -r2.y * 6.28318548 + 6.28318548;
    bitmask.z = ((~(-1 << 1)) << 9) & 0xffffffff;  r2.z = (((uint)r2.z << 9) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r4.y = 0;
    r5.x = 0;
    r3.w = 1;
    r4.w = 0;
    while (true) {
      r5.w = cmp((uint)r4.w >= (uint)r0.x);
      if (r5.w != 0) break;
      r5.w = (int)r2.z + (int)r4.w;
      r5.w = g2[r5.w].val[0/4];
      r6.x = (uint)r5.w << 1;
      r6.xyzw = t0.Load(r6.x).xyzw;
      bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.w = (((uint)r5.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
      r7.xyzw = t0.Load(r5.w).xyzw;
      r5.w = cmp(0 < r7.w);
      if (r5.w != 0) {
        r5.w = cmp(abs(r7.y) < abs(r7.x));
        r8.x = dot(r7.xz, r7.xz);
        r8.x = sqrt(r8.x);
        r8.x = 1 / r8.x;
        r4.x = r8.x * -r7.z;
        r4.z = r8.x * r7.x;
        r8.x = dot(r7.yz, r7.yz);
        r8.x = sqrt(r8.x);
        r8.x = 1 / r8.x;
        r5.y = r8.x * r7.z;
        r5.z = r8.x * -r7.y;
        r5.yzw = r5.www ? r4.xyz : r5.xyz;
        r8.xyz = r7.zxy * r5.zwy;
        r8.xyz = r7.yzx * r5.wyz + -r8.xyz;
        r4.x = r7.w * 0.5 + r6.w;
        r4.x = r6.w / r4.x;
        r7.xyz = r7.xyz * r4.xxx;
        r9.xyz = -r6.xyz + r0.yzw;
        r10.x = dot(r9.xyz, r5.yzw);
        r10.y = dot(r9.xyz, r8.xyz);
        r10.z = dot(r9.xyz, r7.xyz);
        r9.x = dot(r3.xyz, r5.yzw);
        r9.y = dot(r3.xyz, r8.xyz);
        r9.z = dot(r3.xyz, r7.xyz);
        r4.x = dot(r10.xyz, r10.xyz);
        r4.x = sqrt(r4.x);
        r5.yzw = -r10.xyz / r4.xxx;
        r4.z = dot(r9.xyz, r9.xyz);
        r4.z = rsqrt(r4.z);
        r7.xyz = r9.xyz * r4.zzz;
      } else {
        r6.xyz = r6.xyz + -r0.yzw;
        r4.z = dot(r6.xyz, r6.xyz);
        r4.x = sqrt(r4.z);
        r5.yzw = r6.xyz / r4.xxx;
        r7.xyz = r3.xyz;
      }
      r4.z = dot(r5.yzw, r7.xyz);
      r5.y = abs(r4.z) * -0.156582996 + 1.57079637;
      r5.z = 1 + -abs(r4.z);
      r5.z = sqrt(r5.z);
      r5.w = r5.y * r5.z;
      r4.z = cmp(r4.z >= 0);
      r5.y = -r5.y * r5.z + 3.14159274;
      r4.z = r4.z ? r5.w : r5.y;
      r5.y = r6.w / r4.x;
      r5.z = cmp(r5.y < 1);
      r5.w = 1 / r5.y;
      r5.y = r5.z ? r5.y : r5.w;
      r5.w = r5.y * r5.y;
      r6.x = r5.w * 0.0872929022 + -0.301894993;
      r5.w = r6.x * r5.w + 1;
      r6.x = r5.w * r5.y;
      r5.y = -r5.w * r5.y + 1.57079637;
      r5.y = r5.z ? r6.x : r5.y;
      r5.z = max(r5.y, r2.w);
      r5.w = min(r5.y, r2.w);
      r5.z = r5.z + -r5.w;
      r5.z = cmp(r5.z >= r4.z);
      r5.w = cos(r5.w);
      r5.w = -r5.w * 6.28318548 + 6.28318548;
      r6.x = r5.y + r2.w;
      r6.y = cmp(r4.z >= r6.x);
      r5.y = -r5.y + r2.w;
      r4.z = -abs(r5.y) + r4.z;
      r5.y = r6.x + -abs(r5.y);
      r4.z = saturate(r4.z / r5.y);
      r4.z = 1 + -r4.z;
      r5.y = r4.z * -2 + 3;
      r4.z = r4.z * r4.z;
      r4.z = r5.y * r4.z;
      r4.z = r4.z * r5.w;
      r4.z = r6.y ? 0 : r4.z;
      r4.z = r5.z ? r5.w : r4.z;
      r4.z = r4.z / r2.y;
      r4.z = min(1, r4.z);
      r4.z = 1 + -r4.z;
      r4.x = r4.x * r2.x;
      r4.x = saturate(r4.x * 3 + -2);
      r5.y = 1 + -r4.z;
      r4.x = r4.x * r5.y + r4.z;
      r3.w = r4.x * r3.w;
      r4.w = (int)r4.w + 1;
    }
  } else {
    r3.w = 1;
  }
  r1.xyz = r3.www * r1.xyz;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyzw
  return;
}