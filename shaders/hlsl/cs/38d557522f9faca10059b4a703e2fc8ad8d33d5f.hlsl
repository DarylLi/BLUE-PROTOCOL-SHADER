// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[512];
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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

  float4 x0[8];
  float4 x1[8];
  float4 x2[5];
  float4 x3[4];
  float4 x4[4];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.xy = asint(cb0[0].ww) & int2(1,2);
  if (r0.y != 0) {
    r0.z = asint(cb0[0].w) & 4;
    x1[0].xy = float2(0,0);
    x1[1].xy = float2(0,0);
    x1[2].xy = float2(0,0);
    x1[3].xy = float2(0,0);
    x1[4].xy = float2(0,0);
    x1[5].xy = float2(0,0);
    x1[6].xy = float2(0,0);
    x1[7].xy = float2(0,0);
    if (r0.x != 0) {
      r1.x = vThreadIDInGroup.x;
      r1.y = vThreadGroupID.z;
      r1.xy = (int2)r1.xy + asint(cb0[1].xy);
      r0.w = cmp(asuint(cb0[1].z) >= (uint)r1.x);
      if (r0.w != 0) {
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x1[0].xy = r2.xy;
        x1[4].xy = r2.zw;
      }
      r2.xyz = (int3)r1.xxx + int3(64,128,192);
      r3.xyz = cmp(asuint(cb0[1].zzz) >= (uint3)r2.xyz);
      if (r3.x != 0) {
        r1.x = r2.x;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[1].xy = r4.xy;
        x1[5].xy = r4.zw;
      }
      if (r3.y != 0) {
        r1.x = r2.y;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[2].xy = r4.xy;
        x1[6].xy = r4.zw;
      }
      if (r3.z != 0) {
        r1.x = r2.z;
        r1.zw = float2(0,0);
        r1.xyzw = t0.Load(r1.xyz).xyzw;
        x1[3].xy = r1.xy;
        x1[7].xy = r1.zw;
      }
    } else {
      r1.x = vThreadGroupID.z;
      r1.y = vThreadIDInGroup.x;
      r1.xy = (int2)r1.xy + asint(cb0[1].xy);
      r0.w = cmp(asuint(cb0[1].w) >= (uint)r1.y);
      if (r0.w != 0) {
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x1[0].xy = r2.xy;
        x1[4].xy = r2.zw;
      }
      r2.xyz = (int3)r1.yyy + int3(64,192,128);
      r3.xyz = cmp(asuint(cb0[1].www) >= (uint3)r2.xzy);
      if (r3.x != 0) {
        r1.y = r2.x;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[1].xy = r4.xy;
        x1[5].xy = r4.zw;
      }
      if (r3.y != 0) {
        r1.y = r2.z;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[2].xy = r4.xy;
        x1[6].xy = r4.zw;
      }
      if (r3.z != 0) {
        r2.x = r1.x;
        r2.zw = float2(0,0);
        r1.xyzw = t0.Load(r2.xyz).xyzw;
        x1[3].xy = r1.xy;
        x1[7].xy = r1.zw;
      }
    }
    r1.xy = x1[0].xy;
    r1.zw = x1[1].xy;
    r2.xy = x1[2].xy;
    r2.zw = x1[3].xy;
    r3.xy = x1[4].xy;
    r3.zw = x1[5].xy;
    r4.xy = x1[6].xy;
    r4.zw = x1[7].xy;
    r1.xy = min(float2(0,0), -r1.xy);
    r5.xy = -r1.xy;
    r1.xy = min(float2(0,0), -r3.xy);
    r5.zw = -r1.xy;
    r1.xy = min(float2(0,0), -r1.zw);
    r1.xy = -r1.xy;
    r3.xy = min(float2(0,0), -r3.zw);
    r1.zw = -r3.xy;
    r2.xy = min(float2(0,0), -r2.xy);
    r3.xy = -r2.xy;
    r2.xy = min(float2(0,0), -r4.xy);
    r3.zw = -r2.xy;
    r2.xy = min(float2(0,0), -r2.zw);
    r2.xy = -r2.xy;
    r4.xy = min(float2(0,0), -r4.zw);
    r2.zw = -r4.xy;
    x0[0].xy = r5.xy;
    x0[1].xy = r1.xy;
    x0[2].xy = r3.xy;
    x0[3].xy = r2.xy;
    x0[4].xy = r5.zw;
    x0[5].xy = r1.zw;
    x0[6].xy = r3.zw;
    x0[7].xy = r2.zw;
    if (r0.z != 0) {
      r0.z = dot(r5.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r0.w = cmp(cb0[0].x < r0.z);
      r4.x = -cb0[0].x + r0.z;
      r4.x = cb0[0].z * r4.x + cb0[0].x;
      r4.x = min(cb0[0].y, r4.x);
      r0.z = r4.x / r0.z;
      r4.xyz = r5.xyz * r0.zzz;
      r4.xzw = r0.www ? r4.zxy : r5.zxy;
      r4.y = r5.w;
      r0.zw = r0.ww ? r4.xy : r5.zw;
      r4.x = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r4.y = cmp(cb0[0].x < r4.x);
      r5.x = -cb0[0].x + r4.x;
      r5.x = cb0[0].z * r5.x + cb0[0].x;
      r5.x = min(cb0[0].y, r5.x);
      r4.x = r5.x / r4.x;
      r5.xyz = r4.xxx * r1.xyz;
      r5.xzw = r4.yyy ? r5.zxy : r1.zxy;
      r5.y = r1.w;
      r1.xy = r4.yy ? r5.xy : r1.zw;
      r1.z = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r1.w = cmp(cb0[0].x < r1.z);
      r4.x = -cb0[0].x + r1.z;
      r4.x = cb0[0].z * r4.x + cb0[0].x;
      r4.x = min(cb0[0].y, r4.x);
      r1.z = r4.x / r1.z;
      r6.xyz = r3.xyz * r1.zzz;
      r6.xzw = r1.www ? r6.zxy : r3.zxy;
      r6.y = r3.w;
      r1.zw = r1.ww ? r6.xy : r3.zw;
      r3.x = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r3.y = cmp(cb0[0].x < r3.x);
      r3.z = -cb0[0].x + r3.x;
      r3.z = cb0[0].z * r3.z + cb0[0].x;
      r3.z = min(cb0[0].y, r3.z);
      r3.x = r3.z / r3.x;
      r3.xzw = r3.xxx * r2.xyz;
      r7.xzw = r3.yyy ? r3.wxz : r2.zxy;
      r7.y = r2.w;
      r2.xy = r3.yy ? r7.xy : r2.zw;
      x0[0].xy = r4.zw;
      x0[1].xy = r5.zw;
      x0[2].xy = r6.zw;
      x0[3].xy = r7.zw;
      x0[4].xy = r0.zw;
      x0[5].xy = r1.xy;
      x0[6].xy = r1.zw;
      x0[7].xy = r2.xy;
    }
  } else {
    if (r0.x != 0) {
      r1.xw = float2(257,0);
      r1.z = vThreadGroupID.z;
      r2.xyzw = t0.Load(r1.xzw).xyzw;
      r1.y = vThreadIDInGroup.x;
      r3.xyzw = t0.Load(r1.yzw).xyzw;
      x2[0].xy = r3.xy;
      x2[4].xy = r3.zw;
      r1.y = (int)vThreadIDInGroup.x + 64;
      r4.xyzw = t0.Load(r1.yzw).zxyw;
      r1.x = (int)r1.y + 64;
      r5.xyzw = t0.Load(r1.xzw).xyzw;
      r0.z = cmp((int)r1.x == 128);
      r2.xyzw = r5.xyzw + r2.yxwz;
      r2.xyzw = r0.zzzz ? r2.zxyw : r5.zxyw;
      r5.x = (int)r1.x | 192;
      r5.yzw = r1.zww;
      r1.xyzw = t0.Load(r5.xyz).zxyw;
      if (vThreadIDInGroup.x == 0) {
        r5.xzw = float3(256,0,0);
        r5.y = vThreadGroupID.z;
        r5.xyzw = t0.Load(r5.xyz).xyzw;
        r3.xyzw = r5.yxwz + r3.xyzw;
        x2[0].xy = r3.xy;
        x2[4].xy = r3.zw;
      }
    } else {
      r3.y = vThreadGroupID.z;
      r3.xzw = float3(256,0,257);
      r5.xyzw = t0.Load(r3.yxz).xyzw;
      r6.xyzw = t0.Load(r3.ywz).xyzw;
      r3.x = vThreadIDInGroup.x;
      r7.xyzw = t0.Load(r3.yxz).xyzw;
      r3.w = (int)vThreadIDInGroup.x + 64;
      r4.xyzw = t0.Load(r3.ywz).zxyw;
      r3.x = (int)r3.w + 64;
      r8.xyzw = t0.Load(r3.yxz).xyzw;
      r0.z = cmp((int)r3.x == 128);
      r6.xyzw = r8.xyzw + r6.yxwz;
      r2.xyzw = r0.zzzz ? r6.zxyw : r8.zxyw;
      r3.w = (int)r3.x | 192;
      r1.xyzw = t0.Load(r3.ywz).zxyw;
      r3.xyzw = r7.xyzw + r5.yxwz;
      r3.xyzw = vThreadIDInGroup.xxxx ? r7.xyzw : r3.xyzw;
      x2[0].xy = r3.xy;
      x2[4].xy = r3.zw;
    }
    r0.zw = x2[0].xy;
    r3.xy = x2[4].xy;
    g0[vThreadIDInGroup.x].val[0/4] = r0.w;
    r3.z = (int)vThreadIDInGroup.x + 64;
    g0[r3.z].val[0/4] = r4.z;
    r3.w = (int)r3.z + 64;
    g0[r3.w].val[0/4] = r2.z;
    r5.x = (int)r3.w | 192;
    g0[r5.x].val[0/4] = r1.z;
    GroupMemoryBarrierWithGroupSync();
    r5.y = cmp(0 < (uint)vThreadIDInGroup.x);
    r5.z = (int)-vThreadIDInGroup.x + 256;
    r5.y = r5.y ? r5.z : 0;
    r5.z = g0[r5.y].val[0/4];
    r6.x = r5.z + r0.z;
    r5.z = (int)-r3.z + 256;
    r5.w = g0[r5.z].val[0/4];
    r7.x = r5.w + r4.y;
    r6.zw = (int2)-r3.ww + int2(256,192);
    r5.w = g0[r6.z].val[0/4];
    r7.z = cmp(128 < (uint)r3.w);
    r7.w = r7.z ? -1 : 1;
    r8.y = r5.w * r7.w + r2.y;
    r5.w = g0[r6.w].val[0/4];
    r9.y = -r5.w + r1.y;
    r10.y = g0[0].val[0/4];
    r11.y = g0[128].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r0.z;
    g0[r3.z].val[0/4] = r4.y;
    g0[r3.w].val[0/4] = r2.y;
    g0[r5.x].val[0/4] = r1.y;
    GroupMemoryBarrierWithGroupSync();
    r10.x = g0[0].val[0/4];
    r11.x = g0[128].val[0/4];
    r0.z = g0[r5.y].val[0/4];
    r6.y = r0.w + r0.z;
    r0.z = g0[r5.z].val[0/4];
    r7.y = r4.z + r0.z;
    r0.z = g0[r6.z].val[0/4];
    r8.z = r0.z * r7.w + r2.z;
    r0.z = g0[r6.w].val[0/4];
    r0.z = r1.z + -r0.z;
    r8.x = -r8.z;
    r1.yz = r7.zz ? r8.xy : r8.yz;
    r0.w = cmp((int)r3.w == 128);
    r1.yz = r0.ww ? r11.xy : r1.yz;
    r9.x = -r0.z;
    r2.yz = vThreadIDInGroup.xx ? r6.xy : r10.xy;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r3.y;
    g0[r3.z].val[0/4] = r4.w;
    g0[r3.w].val[0/4] = r2.w;
    g0[r5.x].val[0/4] = r1.w;
    GroupMemoryBarrierWithGroupSync();
    r0.z = g0[r5.y].val[0/4];
    r6.x = r3.x + r0.z;
    r0.z = g0[r5.z].val[0/4];
    r8.x = r4.x + r0.z;
    r0.z = g0[r6.z].val[0/4];
    r10.y = r0.z * r7.w + r2.x;
    r0.z = g0[r6.w].val[0/4];
    r11.y = r1.x + -r0.z;
    r12.y = g0[0].val[0/4];
    r13.y = g0[128].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r3.x;
    g0[r3.z].val[0/4] = r4.x;
    g0[r3.w].val[0/4] = r2.x;
    g0[r5.x].val[0/4] = r1.x;
    GroupMemoryBarrierWithGroupSync();
    r12.x = g0[0].val[0/4];
    r13.x = g0[128].val[0/4];
    r0.z = g0[r5.y].val[0/4];
    r6.y = r3.y + r0.z;
    r0.z = g0[r5.z].val[0/4];
    r8.y = r4.w + r0.z;
    r0.z = g0[r6.z].val[0/4];
    r10.z = r0.z * r7.w + r2.w;
    r0.z = g0[r6.w].val[0/4];
    r0.z = r1.w + -r0.z;
    r10.x = -r10.z;
    r1.xw = r7.zz ? r10.xy : r10.yz;
    r1.xw = r0.ww ? r13.xy : r1.xw;
    r11.x = -r0.z;
    r0.zw = vThreadIDInGroup.xx ? r6.xy : r12.xy;
    GroupMemoryBarrierWithGroupSync();
    x0[0].xy = r2.yz;
    x0[1].xy = r7.xy;
    x0[2].xy = r1.yz;
    x0[3].xy = r9.xy;
    x0[4].xy = r0.zw;
    x0[5].xy = r8.xy;
    x0[6].xy = r1.xw;
    x0[7].xy = r11.xy;
  }
  r0.zw = x0[0].xy;
  r1.xy = x0[1].xy;
  r1.zw = x0[2].xy;
  r2.xy = x0[3].xy;
  r2.zw = x0[4].xy;
  r3.xy = x0[5].xy;
  r3.zw = x0[6].xy;
  r4.xy = x0[7].xy;
  if (r0.y == 0) {
    r0.zw = float2(0.00390625,0.00390625) * r0.zw;
    r1.xyzw = float4(0.00390625,0.00390625,0.00390625,0.00390625) * r1.xyzw;
    r2.xyzw = float4(0.00390625,0.00390625,0.00390625,0.00390625) * r2.xyzw;
    r3.xyzw = float4(0.00390625,0.00390625,0.00390625,0.00390625) * r3.xyzw;
    r4.xy = float2(0.00390625,0.00390625) * r4.xy;
  }
  r4.z = (uint)vThreadIDInGroup.x << 2;
  r5.xy = r0.zw + r1.zw;
  r5.zw = r1.xy + r2.xy;
  r0.zw = r0.zw + -r1.zw;
  r1.xy = r1.xy + -r2.xy;
  r1.zw = -r1.yx;
  r1.xy = r0.yy ? r1.zx : r1.yw;
  r1.zw = r5.xy + r5.zw;
  r2.xy = r1.xy + r0.zw;
  r0.zw = -r1.xy + r0.zw;
  r1.xy = r5.xy + -r5.zw;
  if (27 == 0) r4.w = 0; else if (27+3 < 32) {   r4.w = (uint)vThreadIDInGroup.x << (32-(27 + 3)); r4.w = (uint)r4.w >> (32-27);  } else r4.w = (uint)vThreadIDInGroup.x >> 3;
  r4.z = (int)r4.w + (int)r4.z;
  g0[r4.z].val[0/4] = r1.z;
  bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r5.x = (((uint)vThreadIDInGroup.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 6)) << 0) & 0xffffffff;  r5.y = (((uint)vThreadIDInGroup.x << 0) & bitmask.y) | ((uint)64 & ~bitmask.y);
  r6.xy = (uint2)r5.xy >> int2(5,5);
  r6.xz = (int2)r5.xy + (int2)r6.xy;
  g0[r6.x].val[0/4] = r2.x;
  r7.xy = (int2)r5.xy + int2(1,64);
  r8.xy = (uint2)r7.xy >> int2(5,5);
  r8.zw = (int2)r7.xy + (int2)r8.xy;
  g0[r8.z].val[0/4] = r1.x;
  r9.xy = (int2)r7.xy | int2(3,192);
  r1.x = (int)r8.x + (int)r9.x;
  g0[r1.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r0.z = (uint)vThreadIDInGroup.x >> 5;
  r1.z = (int)r0.z + (int)vThreadIDInGroup.x;
  r10.x = g0[r1.z].val[0/4];
  r11.x = g0[r6.z].val[0/4];
  r12.x = g0[r8.w].val[0/4];
  r2.x = (uint)r9.y >> 5;
  r4.w = (int)r2.x + (int)r9.y;
  r13.x = g0[r4.w].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r4.z].val[0/4] = r1.w;
  g0[r6.x].val[0/4] = r2.y;
  g0[r8.z].val[0/4] = r1.y;
  g0[r1.x].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r10.y = g0[r1.z].val[0/4];
  r11.y = g0[r6.z].val[0/4];
  r12.y = g0[r8.w].val[0/4];
  r13.y = g0[r4.w].val[0/4];
  x3[0].xy = r10.xy;
  x3[1].xy = r11.xy;
  x3[2].xy = r12.xy;
  x3[3].xy = r13.xy;
  r0.w = 4;
  while (true) {
    r1.y = cmp((uint)r0.w >= 64);
    if (r1.y != 0) break;
    r1.yw = x3[0].xy;
    r10.xy = x3[1].xy;
    r10.zw = x3[2].xy;
    r11.xy = x3[3].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r0.w;
    r7.x = (uint)vThreadIDInGroup.x % (uint)r0.w;
    r5.x = uiDest.x;
    r2.y = (uint)r7.x;
    r2.y = 6.28318548 * r2.y;
    r6.w = (uint)r0.w << 2;
    r8.x = (uint)r6.w;
    r2.y = r2.y / r8.x;
    r2.y = r0.y ? r2.y : -r2.y;
    sincos(r2.y, r8.x, r9.x);
    r11.zw = r8.xx * r10.yx;
    r12.x = r9.x * r10.x + -r11.z;
    r12.y = r9.x * r10.y + r11.w;
    r2.y = r8.x * r8.x;
    r2.y = r9.x * r9.x + -r2.y;
    r10.x = dot(r9.xx, r8.xx);
    r11.zw = r10.xx * r10.wz;
    r13.x = r2.y * r10.z + -r11.z;
    r13.y = r2.y * r10.w + r11.w;
    r10.y = r10.x * r8.x;
    r10.y = r2.y * r9.x + -r10.y;
    r9.x = r10.x * r9.x;
    r2.y = r2.y * r8.x + r9.x;
    r10.xz = r2.yy * r11.yx;
    r14.x = r10.y * r11.x + -r10.x;
    r14.y = r10.y * r11.y + r10.z;
    r2.y = (int)r0.w * (int)r5.x;
    r2.y = (uint)r2.y << 2;
    r2.y = (int)r7.x + (int)r2.y;
    r10.xy = r13.xy + r1.yw;
    r10.zw = r14.xy + r12.xy;
    r1.yw = -r13.xy + r1.yw;
    r11.xy = -r14.xy + r12.xy;
    r11.zw = -r11.yx;
    r11.xy = r0.yy ? r11.zx : r11.yw;
    r11.zw = r10.xy + r10.zw;
    r12.xy = r11.xy + r1.yw;
    r1.yw = -r11.xy + r1.yw;
    r10.xy = r10.xy + -r10.zw;
    GroupMemoryBarrierWithGroupSync();
    r5.x = cmp((uint)r0.w < 32);
    r5.x = r5.x ? r0.w : 0;
    r7.x = (uint)r2.y >> 5;
    r7.x = mad((int)r7.x, (int)r5.x, (int)r2.y);
    g0[r7.x].val[0/4] = r11.z;
    r2.y = (int)r0.w + (int)r2.y;
    r8.x = (uint)r2.y >> 5;
    r8.x = mad((int)r8.x, (int)r5.x, (int)r2.y);
    g0[r8.x].val[0/4] = r12.x;
    r2.y = (int)r0.w + (int)r2.y;
    r9.x = (uint)r2.y >> 5;
    r9.x = mad((int)r9.x, (int)r5.x, (int)r2.y);
    g0[r9.x].val[0/4] = r10.x;
    r2.y = (int)r0.w + (int)r2.y;
    r10.x = (uint)r2.y >> 5;
    r2.y = mad((int)r10.x, (int)r5.x, (int)r2.y);
    g0[r2.y].val[0/4] = r1.y;
    GroupMemoryBarrierWithGroupSync();
    r1.y = mad((int)r0.z, (int)r5.x, (int)vThreadIDInGroup.x);
    r11.x = g0[r1.y].val[0/4];
    r10.x = mad((int)r6.y, (int)r5.x, (int)r5.y);
    r13.x = g0[r10.x].val[0/4];
    r10.z = mad((int)r8.y, (int)r5.x, (int)r7.y);
    r14.x = g0[r10.z].val[0/4];
    r5.x = mad((int)r2.x, (int)r5.x, (int)r9.y);
    r15.x = g0[r5.x].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r7.x].val[0/4] = r11.w;
    g0[r8.x].val[0/4] = r12.y;
    g0[r9.x].val[0/4] = r10.y;
    g0[r2.y].val[0/4] = r1.w;
    GroupMemoryBarrierWithGroupSync();
    r11.y = g0[r1.y].val[0/4];
    r13.y = g0[r10.x].val[0/4];
    r14.y = g0[r10.z].val[0/4];
    r15.y = g0[r5.x].val[0/4];
    x3[0].xy = r11.xy;
    x3[1].xy = r13.xy;
    x3[2].xy = r14.xy;
    x3[3].xy = r15.xy;
    r0.w = r6.w;
  }
  r1.yw = x3[0].xy;
  r10.xy = x3[1].xy;
  r10.zw = x3[2].xy;
  r11.xy = x3[3].xy;
  r0.w = (uint)vThreadIDInGroup.x;
  r11.zw = float2(0.0245436933,-0.0245436933) * r0.ww;
  r0.w = r0.y ? r11.z : r11.w;
  sincos(r0.w, r5.x, r7.x);
  r11.zw = r5.xx * r10.yx;
  r12.x = r7.x * r10.x + -r11.z;
  r12.y = r7.x * r10.y + r11.w;
  r0.w = r5.x * r5.x;
  r0.w = r7.x * r7.x + -r0.w;
  r2.y = dot(r7.xx, r5.xx);
  r10.xy = r2.yy * r10.wz;
  r13.x = r0.w * r10.z + -r10.x;
  r13.y = r0.w * r10.w + r10.y;
  r6.w = r2.y * r5.x;
  r6.w = r0.w * r7.x + -r6.w;
  r8.x = r7.x * r2.y;
  r8.x = r0.w * r5.x + r8.x;
  r10.xy = r8.xx * r11.yx;
  r14.x = r6.w * r11.x + -r10.x;
  r14.y = r6.w * r11.y + r10.y;
  r10.xy = r13.xy + r1.yw;
  r10.zw = r14.xy + r12.xy;
  r1.yw = -r13.xy + r1.yw;
  r11.xy = -r14.xy + r12.xy;
  r11.zw = -r11.yx;
  r11.xy = r0.yy ? r11.zx : r11.yw;
  r11.zw = r10.xy + r10.zw;
  r12.xy = r11.xy + r1.yw;
  r1.yw = -r11.xy + r1.yw;
  r10.xy = r10.xy + -r10.zw;
  GroupMemoryBarrierWithGroupSync();
  r10.zw = r2.zw + r3.zw;
  r11.xy = r3.xy + r4.xy;
  r2.zw = r2.zw + -r3.zw;
  r3.xy = r3.xy + -r4.xy;
  r3.zw = -r3.yx;
  r3.xy = r0.yy ? r3.zx : r3.yw;
  r3.zw = r11.xy + r10.zw;
  r4.xy = r3.xy + r2.zw;
  r2.zw = -r3.xy + r2.zw;
  r3.xy = -r11.xy + r10.zw;
  g0[r4.z].val[0/4] = r3.z;
  g0[r6.x].val[0/4] = r4.x;
  g0[r8.z].val[0/4] = r3.x;
  g0[r1.x].val[0/4] = r2.z;
  GroupMemoryBarrierWithGroupSync();
  r11.x = g0[r1.z].val[0/4];
  r13.x = g0[r6.z].val[0/4];
  r14.x = g0[r8.w].val[0/4];
  r15.x = g0[r4.w].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r4.z].val[0/4] = r3.w;
  g0[r6.x].val[0/4] = r4.y;
  g0[r8.z].val[0/4] = r3.y;
  g0[r1.x].val[0/4] = r2.w;
  GroupMemoryBarrierWithGroupSync();
  r11.y = g0[r1.z].val[0/4];
  r13.y = g0[r6.z].val[0/4];
  r14.y = g0[r8.w].val[0/4];
  r15.y = g0[r4.w].val[0/4];
  x4[0].xy = r11.xy;
  x4[1].xy = r13.xy;
  x4[2].xy = r14.xy;
  x4[3].xy = r15.xy;
  r1.x = 4;
  while (true) {
    r1.z = cmp((uint)r1.x >= 64);
    if (r1.z != 0) break;
    r2.zw = x4[0].xy;
    r3.xy = x4[1].xy;
    r3.zw = x4[2].xy;
    r4.xy = x4[3].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r1.x;
    r9.x = (uint)vThreadIDInGroup.x % (uint)r1.x;
    r6.x = uiDest.x;
    r1.z = (uint)r9.x;
    r1.z = 6.28318548 * r1.z;
    r4.z = (uint)r1.x << 2;
    r4.w = (uint)r4.z;
    r1.z = r1.z / r4.w;
    r1.z = r0.y ? r1.z : -r1.z;
    sincos(r1.z, r11.x, r13.x);
    r8.zw = r11.xx * r3.yx;
    r14.x = r13.x * r3.x + -r8.z;
    r14.y = r13.x * r3.y + r8.w;
    r1.z = r11.x * r11.x;
    r1.z = r13.x * r13.x + -r1.z;
    r3.x = dot(r13.xx, r11.xx);
    r8.zw = r3.xx * r3.wz;
    r15.x = r1.z * r3.z + -r8.z;
    r15.y = r1.z * r3.w + r8.w;
    r3.y = r3.x * r11.x;
    r3.y = r1.z * r13.x + -r3.y;
    r3.x = r13.x * r3.x;
    r1.z = r1.z * r11.x + r3.x;
    r3.xz = r1.zz * r4.yx;
    r11.x = r3.y * r4.x + -r3.x;
    r11.y = r3.y * r4.y + r3.z;
    r1.z = (int)r1.x * (int)r6.x;
    r1.z = (uint)r1.z << 2;
    r1.z = (int)r9.x + (int)r1.z;
    r3.xy = r15.xy + r2.zw;
    r3.zw = r14.xy + r11.xy;
    r2.zw = -r15.xy + r2.zw;
    r13.xy = r14.xy + -r11.xy;
    r13.zw = -r13.yx;
    r4.xy = r0.yy ? r13.zx : r13.yw;
    r6.xz = r3.xy + r3.zw;
    r8.zw = r4.xy + r2.zw;
    r2.zw = -r4.xy + r2.zw;
    r3.xy = r3.xy + -r3.zw;
    GroupMemoryBarrierWithGroupSync();
    r3.z = cmp((uint)r1.x < 32);
    r3.z = r3.z ? r1.x : 0;
    r3.w = (uint)r1.z >> 5;
    r3.w = mad((int)r3.w, (int)r3.z, (int)r1.z);
    g0[r3.w].val[0/4] = r6.x;
    r1.z = (int)r1.x + (int)r1.z;
    r4.x = (uint)r1.z >> 5;
    r4.x = mad((int)r4.x, (int)r3.z, (int)r1.z);
    g0[r4.x].val[0/4] = r8.z;
    r1.z = (int)r1.x + (int)r1.z;
    r4.y = (uint)r1.z >> 5;
    r4.y = mad((int)r4.y, (int)r3.z, (int)r1.z);
    g0[r4.y].val[0/4] = r3.x;
    r1.z = (int)r1.x + (int)r1.z;
    r3.x = (uint)r1.z >> 5;
    r1.z = mad((int)r3.x, (int)r3.z, (int)r1.z);
    g0[r1.z].val[0/4] = r2.z;
    GroupMemoryBarrierWithGroupSync();
    r2.z = mad((int)r0.z, (int)r3.z, (int)vThreadIDInGroup.x);
    r11.x = g0[r2.z].val[0/4];
    r3.x = mad((int)r6.y, (int)r3.z, (int)r5.y);
    r13.x = g0[r3.x].val[0/4];
    r4.w = mad((int)r8.y, (int)r3.z, (int)r7.y);
    r14.x = g0[r4.w].val[0/4];
    r3.z = mad((int)r2.x, (int)r3.z, (int)r9.y);
    r15.x = g0[r3.z].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r3.w].val[0/4] = r6.z;
    g0[r4.x].val[0/4] = r8.w;
    g0[r4.y].val[0/4] = r3.y;
    g0[r1.z].val[0/4] = r2.w;
    GroupMemoryBarrierWithGroupSync();
    r11.y = g0[r2.z].val[0/4];
    r13.y = g0[r3.x].val[0/4];
    r14.y = g0[r4.w].val[0/4];
    r15.y = g0[r3.z].val[0/4];
    x4[0].xy = r11.xy;
    x4[1].xy = r13.xy;
    x4[2].xy = r14.xy;
    x4[3].xy = r15.xy;
    r1.x = r4.z;
  }
  r1.xz = x4[0].xy;
  r2.xz = x4[1].xy;
  r3.xy = x4[2].xy;
  r3.zw = x4[3].xy;
  r4.xy = r5.xx * r2.zx;
  r6.x = r7.x * r2.x + -r4.x;
  r6.y = r7.x * r2.z + r4.y;
  r2.xy = r3.yx * r2.yy;
  r2.z = r0.w * r3.x + -r2.x;
  r2.w = r0.w * r3.y + r2.y;
  r0.zw = r8.xx * r3.wz;
  r2.x = r6.w * r3.z + -r0.z;
  r2.y = r6.w * r3.w + r0.w;
  r0.zw = r2.zw + r1.xz;
  r3.xy = r6.xy + r2.xy;
  r1.xz = -r2.zw + r1.xz;
  r2.xy = r6.xy + -r2.xy;
  r2.zw = -r2.yx;
  r2.xy = r0.yy ? r2.zx : r2.yw;
  r2.zw = r3.xy + r0.zw;
  r3.zw = r2.xy + r1.xz;
  r1.xz = -r2.xy + r1.xz;
  r0.zw = -r3.xy + r0.zw;
  if (r0.y != 0) {
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r11.z;
    g0[r5.y].val[0/4] = r12.x;
    g0[r7.y].val[0/4] = r10.x;
    g0[r9.y].val[0/4] = r1.y;
    GroupMemoryBarrierWithGroupSync();
    r0.y = cmp(0 < (uint)vThreadIDInGroup.x);
    r2.x = (int)-vThreadIDInGroup.x + 256;
    r0.y = r0.y ? r2.x : 0;
    r2.x = g0[r0.y].val[0/4];
    r2.x = r11.z + r2.x;
    r2.y = (int)-r5.y + 256;
    r3.x = g0[r2.y].val[0/4];
    r3.x = r12.x + r3.x;
    r4.xy = (int2)-r7.yy + int2(256,192);
    r4.z = g0[r4.x].val[0/4];
    r4.w = cmp(128 < (uint)r7.y);
    r5.x = r4.w ? -1 : 1;
    r6.y = r4.z * r5.x + r10.x;
    r4.z = g0[r4.y].val[0/4];
    r4.z = -r4.z + r1.y;
    r6.z = g0[0].val[0/4];
    r6.z = r6.z + r6.z;
    r8.x = vThreadIDInGroup.x ? r2.x : r6.z;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r11.w;
    g0[r5.y].val[0/4] = r12.y;
    g0[r7.y].val[0/4] = r10.y;
    g0[r9.y].val[0/4] = r1.w;
    GroupMemoryBarrierWithGroupSync();
    r2.x = g0[r0.y].val[0/4];
    r2.x = r11.w + -r2.x;
    r6.z = g0[r2.y].val[0/4];
    r3.y = r12.y + -r6.z;
    r6.z = g0[r4.x].val[0/4];
    r6.x = r10.y + r6.z;
    r6.z = g0[r4.y].val[0/4];
    r6.z = r6.z + r1.w;
    r6.w = g0[0].val[0/4];
    r6.w = r6.w + r6.w;
    r8.y = vThreadIDInGroup.x ? r2.x : r6.w;
    r8.xy = float2(0.5,0.5) * r8.yx;
    r13.xy = float2(0.5,0.5) * r3.xy;
    r14.xyzw = float4(0.5,0.5,0.5,-0.5) * r6.yxxy;
    r14.xy = r4.ww ? r14.wz : r14.yx;
    r2.x = -0.5 * r6.z;
    r6.x = -r2.x;
    r6.y = -0.5 * r4.z;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r2.z;
    g0[r5.y].val[0/4] = r3.z;
    g0[r7.y].val[0/4] = r0.z;
    g0[r9.y].val[0/4] = r1.x;
    GroupMemoryBarrierWithGroupSync();
    r2.x = g0[r0.y].val[0/4];
    r2.x = r2.z + r2.x;
    r3.x = g0[r2.y].val[0/4];
    r10.z = r3.z + r3.x;
    r3.x = g0[r4.x].val[0/4];
    r12.w = r3.x * r5.x + r0.z;
    r3.x = g0[r4.y].val[0/4];
    r3.x = -r3.x + r1.x;
    r3.y = g0[0].val[0/4];
    r3.y = r3.y + r3.y;
    r15.z = vThreadIDInGroup.x ? r2.x : r3.y;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r2.w;
    g0[r5.y].val[0/4] = r3.w;
    g0[r7.y].val[0/4] = r0.w;
    g0[r9.y].val[0/4] = r1.z;
    GroupMemoryBarrierWithGroupSync();
    r0.y = g0[r0.y].val[0/4];
    r0.y = r2.w + -r0.y;
    r2.x = g0[r2.y].val[0/4];
    r10.w = r3.w + -r2.x;
    r2.x = g0[r4.x].val[0/4];
    r12.z = r2.x + r0.w;
    r2.x = g0[r4.y].val[0/4];
    r2.x = r2.x + r1.z;
    r2.y = g0[0].val[0/4];
    r2.y = r2.y + r2.y;
    r15.w = vThreadIDInGroup.x ? r0.y : r2.y;
    r8.zw = float2(0.5,0.5) * r15.wz;
    r13.zw = float2(0.5,0.5) * r10.zw;
    r4.xy = float2(0.5,0.5) * r12.wz;
    r10.zw = float2(0.5,-0.5) * r12.zw;
    r14.zw = r4.ww ? r10.wz : r4.yx;
    r0.y = -0.5 * r2.x;
    r6.z = -r0.y;
    r6.w = -0.5 * r3.x;
    if (r0.x != 0) {
      r4.x = vThreadIDInGroup.x;
      r4.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.xyzw, r8.yxwz
      r5.z = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.yzzz, r13.xyzw
      r7.z = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r7.yzzz, r14.yxwz
      r0.y = cmp((int)r7.y == 128);
      if (r0.y != 0) {
        r4.x = 128;
        r4.yzw = vThreadGroupID.zzz;
        r15.xz = r14.yw;
        r15.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r15.xyzw
        r4.x = 257;
        r4.yzw = vThreadGroupID.zzz;
        r14.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r14.xyzw
      }
      r9.z = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r9.yzzz, r6.xyzw
      if (vThreadIDInGroup.x == 0) {
        r4.x = 0;
        r4.yzw = vThreadGroupID.zzz;
        r15.xz = r8.yw;
        r15.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r15.xyzw
        r4.x = 256;
        r4.yzw = vThreadGroupID.zzz;
        r8.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r8.xyzw
      }
    } else {
      r4.x = vThreadGroupID.z;
      r4.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.xyzw, r8.yxwz
      r5.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.wyyy, r13.xyzw
      r7.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r7.wyyy, r14.yxwz
      r0.y = cmp((int)r7.y == 128);
      if (r0.y != 0) {
        r4.x = vThreadGroupID.z;
        r4.yzw = float3(1.79366203e-043,1.79366203e-043,1.79366203e-043);
        r5.xz = r14.yw;
        r5.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r5.xyzw
        r4.x = vThreadGroupID.z;
        r4.yzw = float3(3.60133705e-043,3.60133705e-043,3.60133705e-043);
        r14.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r14.xyzw
      }
      r9.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r9.wyyy, r6.xyzw
      if (vThreadIDInGroup.x == 0) {
        r4.x = vThreadGroupID.z;
        r4.yzw = float3(0,0,0);
        r5.xz = r8.yw;
        r5.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r5.xyzw
        r4.x = vThreadGroupID.z;
        r4.yzw = float3(3.58732407e-043,3.58732407e-043,3.58732407e-043);
        r8.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r8.xyzw
      }
    }
  } else {
    r2.xy = min(float2(0,0), -r11.zw);
    r4.xy = -r2.xy;
    r2.xy = min(float2(0,0), -r2.zw);
    r4.zw = -r2.xy;
    r2.xy = min(float2(0,0), -r12.xy);
    r2.xy = -r2.xy;
    r3.xy = min(float2(0,0), -r3.zw);
    r2.zw = -r3.xy;
    r3.xy = min(float2(0,0), -r10.xy);
    r3.xy = -r3.xy;
    r0.yz = min(float2(0,0), -r0.zw);
    r3.zw = -r0.yz;
    r0.yz = min(float2(0,0), -r1.yw);
    r5.xy = -r0.yz;
    r0.yz = min(float2(0,0), -r1.xz);
    r5.zw = -r0.yz;
    if (r0.x != 0) {
      r0.w = (int)vThreadIDInGroup.x + asint(cb0[2].x);
      r0.y = (int)vThreadGroupID.z + asint(cb0[2].y);
      r1.x = cmp((uint)r0.w < asuint(cb0[2].z));
      if (r1.x != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.wyyy, r4.xyzw
        r0.z = (int)r0.w + 64;
      } else {
        r0.z = r0.w;
      }
      r0.w = cmp((uint)r0.z < asuint(cb0[2].z));
      r0.w = r0.w ? r1.x : 0;
      if (r0.w != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.zyyy, r2.xyzw
        r0.x = (int)r0.z + 64;
      } else {
        r0.x = r0.z;
      }
      r0.z = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.z ? r0.w : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r3.xyzw
        r0.x = (int)r0.x + 64;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r5.xyzw
      }
    } else {
      r0.y = (int)vThreadGroupID.z + asint(cb0[2].x);
      r0.x = (int)vThreadIDInGroup.x + asint(cb0[2].y);
      r1.x = cmp((uint)r0.x < asuint(cb0[2].w));
      if (r1.x != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r4.xyzw
        r0.z = (int)r0.x + 64;
      } else {
        r0.z = r0.x;
      }
      r1.y = cmp((uint)r0.z < asuint(cb0[2].w));
      r1.x = r1.y ? r1.x : 0;
      if (r1.x != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yzzz, r2.xyzw
        r0.w = (int)r0.z + 64;
      } else {
        r0.w = r0.z;
      }
      r0.z = cmp((uint)r0.w < asuint(cb0[2].w));
      r0.z = r0.z ? r1.x : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.ywww, r3.xyzw
        r0.x = (int)r0.w + 64;
      } else {
        r0.x = r0.w;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].w));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r5.xyzw
      }
    }
  }
  return;
}