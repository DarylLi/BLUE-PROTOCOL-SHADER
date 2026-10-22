// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[64];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[3];
  float4 x2[2];
  float4 x3[2];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 1, 1
  r0.xy = asint(cb0[0].ww) & int2(1,2);
  if (r0.y != 0) {
    r0.z = asint(cb0[0].w) & 4;
    r0.w = cmp((int)r0.z != 0);
    x0[0].xy = float2(0,0);
    x0[1].xy = float2(0,0);
    x0[2].xy = float2(0,0);
    x0[3].xy = float2(0,0);
    if (r0.x != 0) {
      r1.x = vThreadIDInGroup.x;
      r1.y = vThreadGroupID.z;
      r1.xy = (int2)r1.xy + asint(cb0[1].xy);
      r2.x = cmp(asuint(cb0[1].z) >= (uint)r1.x);
      if (r2.x != 0) {
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x0[0].xy = r2.xy;
        x0[2].xy = r2.zw;
      }
      r1.x = (int)r1.x + 16;
      r2.x = cmp(asuint(cb0[1].z) >= (uint)r1.x);
      if (r2.x != 0) {
        r1.zw = float2(0,0);
        r1.xyzw = t0.Load(r1.xyz).xyzw;
        x0[1].xy = r1.xy;
        x0[3].xy = r1.zw;
      }
    } else {
      r1.x = vThreadGroupID.z;
      r1.y = vThreadIDInGroup.x;
      r1.xy = (int2)r1.xy + asint(cb0[1].xy);
      r2.x = cmp(asuint(cb0[1].w) >= (uint)r1.y);
      if (r2.x != 0) {
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x0[0].xy = r2.xy;
        x0[2].xy = r2.zw;
      }
      r1.y = (int)r1.y + 16;
      r2.x = cmp(asuint(cb0[1].w) >= (uint)r1.y);
      if (r2.x != 0) {
        r1.zw = float2(0,0);
        r1.xyzw = t0.Load(r1.xyz).xyzw;
        x0[1].xy = r1.xy;
        x0[3].xy = r1.zw;
      }
    }
    r1.xy = x0[0].xy;
    r1.zw = x0[1].xy;
    r2.xy = x0[2].xy;
    r2.zw = x0[3].xy;
    r1.xy = min(float2(0,0), -r1.xy);
    r3.xy = -r1.xy;
    r1.xy = min(float2(0,0), -r2.xy);
    r3.zw = -r1.xy;
    r1.xy = min(float2(0,0), -r1.zw);
    r1.xy = -r1.xy;
    r2.xy = min(float2(0,0), -r2.zw);
    r1.zw = -r2.xy;
    r2.x = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r2.y = cmp(cb0[0].x < r2.x);
    r2.z = -cb0[0].x + r2.x;
    r2.z = cb0[0].z * r2.z + cb0[0].x;
    r2.z = min(cb0[0].y, r2.z);
    r2.x = r2.z / r2.x;
    r2.xzw = r3.xyz * r2.xxx;
    r4.xyz = r2.yyy ? r2.xzw : r3.xyz;
    r2.x = r0.w ? r2.y : 0;
    r4.w = r3.w;
    r2.xyzw = r2.xxxx ? r4.xyzw : r3.xyzw;
    r4.x = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r4.y = cmp(cb0[0].x < r4.x);
    r4.z = -cb0[0].x + r4.x;
    r4.z = cb0[0].z * r4.z + cb0[0].x;
    r4.z = min(cb0[0].y, r4.z);
    r4.x = r4.z / r4.x;
    r4.xzw = r4.xxx * r1.xyz;
    r5.xyz = r4.yyy ? r4.xzw : r1.xyz;
    r0.w = r0.w ? r4.y : 0;
    r5.w = r1.w;
    r4.xyzw = r0.wwww ? r5.xyzw : r1.xyzw;
    r2.xyzw = r0.zzzz ? r2.zwxy : r3.zwxy;
    r1.xyzw = r0.zzzz ? r4.zwxy : r1.zwxy;
  } else {
    if (r0.x != 0) {
      r3.xz = float2(33,0);
      r3.y = vThreadGroupID.z;
      r4.xyzw = t0.Load(r3.xyz).xyzw;
      r3.w = vThreadIDInGroup.x;
      r5.xyzw = t0.Load(r3.wyz).xyzw;
      x1[0].xy = r5.xy;
      x1[2].xy = r5.zw;
      r6.x = (int)vThreadIDInGroup.x + 16;
      r6.yzw = r3.yzz;
      r3.xyzw = t0.Load(r6.xyz).xyzw;
      r0.z = cmp((int)r6.x == 16);
      r4.xyzw = r3.xyzw + r4.yxwz;
      r3.xyzw = r0.zzzz ? r4.zxyw : r3.zxyw;
      if (vThreadIDInGroup.x == 0) {
        r4.xzw = float3(32,0,0);
        r4.y = vThreadGroupID.z;
        r4.xyzw = t0.Load(r4.xyz).xyzw;
        r4.xyzw = r5.xyzw + r4.yxwz;
        x1[0].xy = r4.xy;
        x1[2].xy = r4.zw;
      }
    } else {
      r4.x = vThreadGroupID.z;
      r4.yzw = float3(4.48415509e-044,0,4.62428493e-044);
      r5.xyzw = t0.Load(r4.xyz).xyzw;
      r6.xyzw = t0.Load(r4.xwz).xyzw;
      r4.y = vThreadIDInGroup.x;
      r7.xyzw = t0.Load(r4.xyz).xyzw;
      r4.w = (int)vThreadIDInGroup.x + 16;
      r8.xyzw = t0.Load(r4.xwz).xyzw;
      r0.z = cmp((int)r4.w == 16);
      r4.xyzw = r8.xyzw + r6.yxwz;
      r3.xyzw = r0.zzzz ? r4.zxyw : r8.zxyw;
      r4.xyzw = r7.xyzw + r5.yxwz;
      r4.xyzw = vThreadIDInGroup.xxxx ? r7.xyzw : r4.xyzw;
      x1[0].xy = r4.xy;
      x1[2].xy = r4.zw;
    }
    r0.zw = x1[0].xy;
    r4.xy = x1[2].xy;
    g0[vThreadIDInGroup.x].val[0/4] = r0.w;
    r4.z = (int)vThreadIDInGroup.x + 16;
    g0[r4.z].val[0/4] = r3.z;
    GroupMemoryBarrierWithGroupSync();
    r4.w = cmp(0 < (uint)vThreadIDInGroup.x);
    r5.x = (int)-vThreadIDInGroup.x + 32;
    r4.w = r4.w ? r5.x : 0;
    r5.x = g0[r4.w].val[0/4];
    r5.x = r5.x + r0.z;
    r5.z = (int)-r4.z + 32;
    r5.w = g0[r5.z].val[0/4];
    r6.x = cmp(16 < (uint)r4.z);
    r6.y = r6.x ? -1 : 1;
    r7.y = r5.w * r6.y + r3.y;
    r8.y = g0[0].val[0/4];
    r9.y = g0[16].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r0.z;
    g0[r4.z].val[0/4] = r3.y;
    GroupMemoryBarrierWithGroupSync();
    r8.x = g0[0].val[0/4];
    r9.x = g0[16].val[0/4];
    r0.z = g0[r4.w].val[0/4];
    r5.y = r0.w + r0.z;
    r0.z = g0[r5.z].val[0/4];
    r7.z = r0.z * r6.y + r3.z;
    r7.x = -r7.z;
    r0.zw = r6.xx ? r7.xy : r7.yz;
    r3.y = cmp((int)r4.z == 16);
    r1.zw = r3.yy ? r9.xy : r0.zw;
    r2.zw = vThreadIDInGroup.xx ? r5.xy : r8.xy;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r4.y;
    g0[r4.z].val[0/4] = r3.w;
    GroupMemoryBarrierWithGroupSync();
    r0.z = g0[r4.w].val[0/4];
    r5.x = r4.x + r0.z;
    r0.z = g0[r5.z].val[0/4];
    r7.y = r0.z * r6.y + r3.x;
    r8.y = g0[0].val[0/4];
    r9.y = g0[16].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r4.x;
    g0[r4.z].val[0/4] = r3.x;
    GroupMemoryBarrierWithGroupSync();
    r8.x = g0[0].val[0/4];
    r9.x = g0[16].val[0/4];
    r0.z = g0[r4.w].val[0/4];
    r5.y = r4.y + r0.z;
    r0.z = g0[r5.z].val[0/4];
    r7.z = r0.z * r6.y + r3.w;
    r7.x = -r7.z;
    r0.zw = r6.xx ? r7.xy : r7.yz;
    r1.xy = r3.yy ? r9.xy : r0.zw;
    r2.xy = vThreadIDInGroup.xx ? r5.xy : r8.xy;
    GroupMemoryBarrierWithGroupSync();
  }
  r0.zw = float2(0.03125,0.03125) * r2.zw;
  r3.xy = float2(0.03125,0.03125) * r1.zw;
  r3.zw = float2(0.03125,0.03125) * r2.xy;
  r4.xy = float2(0.03125,0.03125) * r1.xy;
  r0.zw = r0.yy ? r2.zw : r0.zw;
  r1.zw = r0.yy ? r1.zw : r3.xy;
  r2.xy = r0.yy ? r2.xy : r3.zw;
  r1.xy = r0.yy ? r1.xy : r4.xy;
  r2.z = (uint)vThreadIDInGroup.x << 1;
  r3.xy = r1.zw + r0.zw;
  r0.zw = -r1.zw + r0.zw;
  g0[r2.z].val[0/4] = r3.x;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.x = (((uint)vThreadIDInGroup.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 4)) << 0) & 0xffffffff;  r4.y = (((uint)vThreadIDInGroup.x << 0) & bitmask.y) | ((uint)16 & ~bitmask.y);
  g0[r4.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r5.x = g0[vThreadIDInGroup.x].val[0/4];
  r6.x = g0[r4.y].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r2.z].val[0/4] = r3.y;
  g0[r4.x].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r5.y = g0[vThreadIDInGroup.x].val[0/4];
  r6.y = g0[r4.y].val[0/4];
  x2[0].xy = r5.xy;
  x2[1].xy = r6.xy;
  r0.z = 2;
  while (true) {
    r0.w = cmp((uint)r0.z >= 16);
    if (r0.w != 0) break;
    r1.zw = x2[0].xy;
    r3.xy = x2[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r0.z;
    r6.x = (uint)vThreadIDInGroup.x % (uint)r0.z;
    r5.x = uiDest.x;
    r0.w = (uint)r6.x;
    r0.w = 6.28318548 * r0.w;
    r2.w = (uint)r0.z << 1;
    r3.z = (uint)r2.w;
    r0.w = r0.w / r3.z;
    r0.w = r0.y ? r0.w : -r0.w;
    sincos(r0.w, r7.x, r8.x);
    r3.zw = r7.xx * r3.yx;
    r7.x = r8.x * r3.x + -r3.z;
    r7.y = r8.x * r3.y + r3.w;
    r0.w = (int)r0.z * (int)r5.x;
    r0.w = (uint)r0.w << 1;
    r0.w = (int)r6.x + (int)r0.w;
    r3.xy = r7.xy + r1.zw;
    r1.zw = -r7.xy + r1.zw;
    GroupMemoryBarrierWithGroupSync();
    r3.z = (uint)r0.w >> 5;
    r3.z = mad((int)r3.z, (int)r0.z, (int)r0.w);
    g0[r3.z].val[0/4] = r3.x;
    r0.w = (int)r0.z + (int)r0.w;
    r3.x = (uint)r0.w >> 5;
    r0.w = mad((int)r3.x, (int)r0.z, (int)r0.w);
    g0[r0.w].val[0/4] = r1.z;
    GroupMemoryBarrierWithGroupSync();
    r5.x = g0[vThreadIDInGroup.x].val[0/4];
    r6.x = g0[r4.y].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r3.z].val[0/4] = r3.y;
    g0[r0.w].val[0/4] = r1.w;
    GroupMemoryBarrierWithGroupSync();
    r5.y = g0[vThreadIDInGroup.x].val[0/4];
    r6.y = g0[r4.y].val[0/4];
    x2[0].xy = r5.xy;
    x2[1].xy = r6.xy;
    r0.z = r2.w;
  }
  r0.zw = x2[0].xy;
  r1.zw = x2[1].xy;
  r2.w = (uint)vThreadIDInGroup.x;
  r3.xy = float2(0.196349546,-0.196349546) * r2.ww;
  r2.w = r0.y ? r3.x : r3.y;
  sincos(r2.w, r3.x, r5.x);
  r3.yz = r3.xx * r1.wz;
  r6.x = r5.x * r1.z + -r3.y;
  r6.y = r5.x * r1.w + r3.z;
  r1.zw = r6.xy + r0.zw;
  r0.zw = -r6.xy + r0.zw;
  GroupMemoryBarrierWithGroupSync();
  r3.yz = r2.xy + r1.xy;
  r1.xy = r2.xy + -r1.xy;
  g0[r2.z].val[0/4] = r3.y;
  g0[r4.x].val[0/4] = r1.x;
  GroupMemoryBarrierWithGroupSync();
  r2.x = g0[vThreadIDInGroup.x].val[0/4];
  r6.x = g0[r4.y].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r2.z].val[0/4] = r3.z;
  g0[r4.x].val[0/4] = r1.y;
  GroupMemoryBarrierWithGroupSync();
  r2.y = g0[vThreadIDInGroup.x].val[0/4];
  r6.y = g0[r4.y].val[0/4];
  x3[0].xy = r2.xy;
  x3[1].xy = r6.xy;
  r1.x = 2;
  while (true) {
    r1.y = cmp((uint)r1.x >= 16);
    if (r1.y != 0) break;
    r2.xy = x3[0].xy;
    r2.zw = x3[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r1.x;
    r6.x = (uint)vThreadIDInGroup.x % (uint)r1.x;
    r4.x = uiDest.x;
    r1.y = (uint)r6.x;
    r1.y = 6.28318548 * r1.y;
    r3.y = (uint)r1.x << 1;
    r3.z = (uint)r3.y;
    r1.y = r1.y / r3.z;
    r1.y = r0.y ? r1.y : -r1.y;
    sincos(r1.y, r7.x, r8.x);
    r3.zw = r7.xx * r2.wz;
    r7.x = r8.x * r2.z + -r3.z;
    r7.y = r8.x * r2.w + r3.w;
    r1.y = (int)r1.x * (int)r4.x;
    r1.y = (uint)r1.y << 1;
    r1.y = (int)r6.x + (int)r1.y;
    r2.zw = r7.xy + r2.xy;
    r2.xy = -r7.xy + r2.xy;
    GroupMemoryBarrierWithGroupSync();
    r3.z = (uint)r1.y >> 5;
    r3.z = mad((int)r3.z, (int)r1.x, (int)r1.y);
    g0[r3.z].val[0/4] = r2.z;
    r1.y = (int)r1.x + (int)r1.y;
    r2.z = (uint)r1.y >> 5;
    r1.y = mad((int)r2.z, (int)r1.x, (int)r1.y);
    g0[r1.y].val[0/4] = r2.x;
    GroupMemoryBarrierWithGroupSync();
    r6.x = g0[vThreadIDInGroup.x].val[0/4];
    r7.x = g0[r4.y].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r3.z].val[0/4] = r2.w;
    g0[r1.y].val[0/4] = r2.y;
    GroupMemoryBarrierWithGroupSync();
    r6.y = g0[vThreadIDInGroup.x].val[0/4];
    r7.y = g0[r4.y].val[0/4];
    x3[0].xy = r6.xy;
    x3[1].xy = r7.xy;
    r1.x = r3.y;
  }
  r1.xy = x3[0].xy;
  r2.xy = x3[1].xy;
  r2.zw = r3.xx * r2.yx;
  r3.z = r5.x * r2.x + -r2.z;
  r3.w = r5.x * r2.y + r2.w;
  r2.xy = r3.zw + r1.xy;
  r1.xy = -r3.zw + r1.xy;
  if (r0.y != 0) {
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r1.z;
    g0[r4.y].val[0/4] = r0.z;
    GroupMemoryBarrierWithGroupSync();
    r0.y = cmp(0 < (uint)vThreadIDInGroup.x);
    r2.zw = (int2)-vThreadIDInGroup.xx + int2(32,16);
    r0.y = r0.y ? r2.z : 0;
    r2.z = g0[r0.y].val[0/4];
    r2.z = r2.z + r1.z;
    r3.x = (int)-r4.y + 32;
    r3.y = g0[r3.x].val[0/4];
    r3.z = cmp(16 < (uint)r4.y);
    r3.w = r3.z ? -1 : 1;
    r5.y = r3.y * r3.w + r0.z;
    r3.y = g0[0].val[0/4];
    r3.y = r3.y + r3.y;
    r6.x = vThreadIDInGroup.x ? r2.z : r3.y;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r1.w;
    g0[r4.y].val[0/4] = r0.w;
    GroupMemoryBarrierWithGroupSync();
    r2.z = g0[r0.y].val[0/4];
    r2.z = -r2.z + r1.w;
    r3.y = g0[r2.w].val[0/4];
    r5.x = r3.y + r0.w;
    r3.y = g0[0].val[0/4];
    r3.y = r3.y + r3.y;
    r6.y = vThreadIDInGroup.x ? r2.z : r3.y;
    r6.xy = float2(0.5,0.5) * r6.yx;
    r5.xyzw = float4(0.5,0.5,0.5,-0.5) * r5.yxxy;
    r5.xy = r3.zz ? r5.wz : r5.yx;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r2.x;
    g0[r4.y].val[0/4] = r1.x;
    GroupMemoryBarrierWithGroupSync();
    r2.z = g0[r0.y].val[0/4];
    r2.z = r2.x + r2.z;
    r3.x = g0[r3.x].val[0/4];
    r7.w = r3.x * r3.w + r1.x;
    r3.x = g0[0].val[0/4];
    r3.x = r3.x + r3.x;
    r8.z = vThreadIDInGroup.x ? r2.z : r3.x;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r2.y;
    g0[r4.y].val[0/4] = r1.y;
    GroupMemoryBarrierWithGroupSync();
    r0.y = g0[r0.y].val[0/4];
    r0.y = r2.y + -r0.y;
    r2.z = g0[r2.w].val[0/4];
    r7.z = r2.z + r1.y;
    r2.z = g0[0].val[0/4];
    r2.z = r2.z + r2.z;
    r8.w = vThreadIDInGroup.x ? r0.y : r2.z;
    r6.zw = float2(0.5,0.5) * r8.wz;
    r2.zw = float2(0.5,0.5) * r7.wz;
    r3.xy = float2(0.5,-0.5) * r7.zw;
    r5.zw = r3.zz ? r3.yx : r2.wz;
    if (r0.x != 0) {
      r3.x = vThreadIDInGroup.x;
      r3.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r6.yxwz
      r4.z = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.yzzz, r5.yxwz
      r0.y = cmp((int)r4.y == 16);
      if (r0.y != 0) {
        r3.x = 16;
        r3.yzw = vThreadGroupID.zzz;
        r7.xz = r5.yw;
        r7.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r3.xyzw, r7.xyzw
        r3.x = 33;
        r3.yzw = vThreadGroupID.zzz;
        r5.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r3.xyzw, r5.xyzw
      }
      if (vThreadIDInGroup.x == 0) {
        r3.x = 0;
        r3.yzw = vThreadGroupID.zzz;
        r7.xz = r6.yw;
        r7.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r3.xyzw, r7.xyzw
        r3.x = 32;
        r3.yzw = vThreadGroupID.zzz;
        r6.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r3.xyzw, r6.xyzw
      }
    } else {
      r3.x = vThreadGroupID.z;
      r3.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r6.yxwz
      r4.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.wyyy, r5.yxwz
      r0.y = cmp((int)r4.y == 16);
      if (r0.y != 0) {
        r3.x = vThreadGroupID.z;
        r3.yzw = float3(2.24207754e-044,2.24207754e-044,2.24207754e-044);
        r4.xz = r5.yw;
        r4.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r3.xyzw, r4.xyzw
        r3.x = vThreadGroupID.z;
        r3.yzw = float3(4.62428493e-044,4.62428493e-044,4.62428493e-044);
        r5.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r3.xyzw, r5.xyzw
      }
      if (vThreadIDInGroup.x == 0) {
        r3.x = vThreadGroupID.z;
        r3.yzw = float3(0,0,0);
        r4.xz = r6.yw;
        r4.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r3.xyzw, r4.xyzw
        r3.x = vThreadGroupID.z;
        r3.yzw = float3(4.48415509e-044,4.48415509e-044,4.48415509e-044);
        r6.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r3.xyzw, r6.xyzw
      }
    }
  } else {
    r1.zw = min(float2(0,0), -r1.zw);
    r3.xy = -r1.zw;
    r1.zw = min(float2(0,0), -r2.xy);
    r3.zw = -r1.zw;
    r0.yz = min(float2(0,0), -r0.zw);
    r2.xy = -r0.yz;
    r0.yz = min(float2(0,0), -r1.xy);
    r2.zw = -r0.yz;
    if (r0.x != 0) {
      r0.y = (int)vThreadIDInGroup.x + asint(cb0[2].x);
      r0.z = (int)vThreadGroupID.z + asint(cb0[2].y);
      r0.w = cmp((uint)r0.y < asuint(cb0[2].z));
      if (r0.w != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yzzz, r3.xyzw
        r0.x = (int)r0.y + 16;
      } else {
        r0.x = r0.y;
      }
      r0.y = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.y = r0.y ? r0.w : 0;
      if (r0.y != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xzzz, r2.xyzw
      }
    } else {
      r0.x = (int)vThreadGroupID.z + asint(cb0[2].x);
      r0.y = (int)vThreadIDInGroup.x + asint(cb0[2].y);
      r0.w = cmp((uint)r0.y < asuint(cb0[2].w));
      if (r0.w != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r3.xyzw
        r0.z = (int)r0.y + 16;
      } else {
        r0.z = r0.y;
      }
      r0.y = cmp((uint)r0.z < asuint(cb0[2].w));
      r0.y = r0.y ? r0.w : 0;
      if (r0.y != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xzzz, r2.xyzw
      }
    }
  }
  return;
}