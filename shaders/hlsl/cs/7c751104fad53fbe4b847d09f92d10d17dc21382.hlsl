// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[64];
Texture2D<float4> t1 : register(t1);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[2];
  float4 x2[2];
  float4 x3[2];
  float4 x4[2];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 1, 1
  r0.xyz = asint(cb0[0].www) & int3(1,2,8);
  r0.w = cmp((int)r0.z != 0);
  r1.x = r0.x ? cb0[1].y : cb0[1].x;
  r1.y = (uint)vThreadGroupID.z << 1;
  r2.x = (int)r1.x + -2;
  r1.x = cmp((uint)r2.x < (uint)r1.y);
  if (r0.x != 0) {
    r3.y = vThreadIDInGroup.x;
    r3.z = vThreadGroupID.z;
    r3.w = 0;
    r4.xyzw = t1.Load(r3.yzw).zwxy;
    r3.x = (int)vThreadIDInGroup.x + 16;
    r3.xyzw = t1.Load(r3.xzw).zwxy;
  } else {
    r5.x = vThreadGroupID.z;
    r5.y = vThreadIDInGroup.x;
    r5.z = 0;
    r4.xyzw = t1.Load(r5.xyz).zwxy;
    r5.w = (int)vThreadIDInGroup.x + 16;
    r3.xyzw = t1.Load(r5.xwz).zwxy;
  }
  x0[0].xy = float2(0,0);
  x0[1].xy = float2(0,0);
  x0[2].xy = float2(0,0);
  x0[3].xy = float2(0,0);
  if (r0.x != 0) {
    r1.y = vThreadIDInGroup.x;
    r5.y = vThreadGroupID.z;
    r5.x = (int)r1.y + asint(cb0[1].z);
    r1.y = cmp(asuint(cb0[2].x) >= (uint)r5.x);
    if (r1.y != 0) {
      r5.zw = float2(0,0);
      r6.xyzw = t0.Load(r5.xyz).xyzw;
      x0[0].xy = r6.xy;
      x0[2].xy = r6.zw;
    }
    r5.x = (int)r5.x + 16;
    r1.y = cmp(asuint(cb0[2].x) >= (uint)r5.x);
    if (r1.y != 0) {
      r5.zw = float2(0,0);
      r5.xyzw = t0.Load(r5.xyz).xyzw;
      x0[1].xy = r5.xy;
      x0[3].xy = r5.zw;
    }
  } else {
    r5.x = vThreadGroupID.z;
    r1.y = vThreadIDInGroup.x;
    r5.y = (int)r1.y + asint(cb0[1].w);
    r1.y = cmp(asuint(cb0[2].y) >= (uint)r5.y);
    if (r1.y != 0) {
      r5.zw = float2(0,0);
      r6.xyzw = t0.Load(r5.xyz).xyzw;
      x0[0].xy = r6.xy;
      x0[2].xy = r6.zw;
    }
    r5.y = (int)r5.y + 16;
    r1.y = cmp(asuint(cb0[2].y) >= (uint)r5.y);
    if (r1.y != 0) {
      r5.zw = float2(0,0);
      r5.xyzw = t0.Load(r5.xyz).xyzw;
      x0[1].xy = r5.xy;
      x0[3].xy = r5.zw;
    }
  }
  r1.yz = x0[0].xy;
  r5.xy = x0[1].xy;
  r5.zw = x0[2].xy;
  r6.xy = x0[3].xy;
  r6.zw = float2(0.03125,0.03125) * r1.yz;
  r7.xyzw = float4(0.03125,0.03125,0.03125,0.03125) * r5.xyzw;
  r8.xy = float2(0.03125,0.03125) * r6.xy;
  r1.yz = r0.yy ? r1.yz : r6.zw;
  r5.xyzw = r0.yyyy ? r5.xyzw : r7.xyzw;
  r6.xy = r0.yy ? r6.xy : r8.xy;
  r1.w = (uint)vThreadIDInGroup.x << 1;
  r6.zw = r5.xy + r1.yz;
  r1.yz = -r5.xy + r1.yz;
  g0[r1.w].val[0/4] = r6.z;
  bitmask.x = ((~(-1 << 4)) << 0) & 0xffffffff;  r5.x = (((uint)vThreadIDInGroup.x << 0) & bitmask.x) | ((uint)16 & ~bitmask.x);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.y = (((uint)vThreadIDInGroup.x << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  g0[r5.y].val[0/4] = r1.y;
  GroupMemoryBarrierWithGroupSync();
  r7.x = g0[vThreadIDInGroup.x].val[0/4];
  r8.x = g0[r5.x].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r6.w;
  g0[r5.y].val[0/4] = r1.z;
  GroupMemoryBarrierWithGroupSync();
  r7.y = g0[vThreadIDInGroup.x].val[0/4];
  r8.y = g0[r5.x].val[0/4];
  x1[0].xy = r7.xy;
  x1[1].xy = r8.xy;
  r1.y = 2;
  while (true) {
    r1.z = cmp((uint)r1.y >= 16);
    if (r1.z != 0) break;
    r6.zw = x1[0].xy;
    r7.xy = x1[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r1.y;
    r9.x = (uint)vThreadIDInGroup.x % (uint)r1.y;
    r8.x = uiDest.x;
    r1.z = (uint)r9.x;
    r1.z = 6.28318548 * r1.z;
    r2.w = (uint)r1.y << 1;
    r7.z = (uint)r2.w;
    r1.z = r1.z / r7.z;
    r1.z = r0.y ? r1.z : -r1.z;
    sincos(r1.z, r10.x, r11.x);
    r7.zw = r10.xx * r7.yx;
    r10.x = r11.x * r7.x + -r7.z;
    r10.y = r11.x * r7.y + r7.w;
    r1.z = (int)r1.y * (int)r8.x;
    r1.z = (uint)r1.z << 1;
    r1.z = (int)r9.x + (int)r1.z;
    r7.xy = r10.xy + r6.zw;
    r6.zw = -r10.xy + r6.zw;
    GroupMemoryBarrierWithGroupSync();
    r7.z = (uint)r1.z >> 5;
    r7.z = mad((int)r7.z, (int)r1.y, (int)r1.z);
    g0[r7.z].val[0/4] = r7.x;
    r1.z = (int)r1.y + (int)r1.z;
    r7.x = (uint)r1.z >> 5;
    r1.z = mad((int)r7.x, (int)r1.y, (int)r1.z);
    g0[r1.z].val[0/4] = r6.z;
    GroupMemoryBarrierWithGroupSync();
    r8.x = g0[vThreadIDInGroup.x].val[0/4];
    r9.x = g0[r5.x].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r7.z].val[0/4] = r7.y;
    g0[r1.z].val[0/4] = r6.w;
    GroupMemoryBarrierWithGroupSync();
    r8.y = g0[vThreadIDInGroup.x].val[0/4];
    r9.y = g0[r5.x].val[0/4];
    x1[0].xy = r8.xy;
    x1[1].xy = r9.xy;
    r1.y = r2.w;
  }
  r1.yz = x1[0].xy;
  r6.zw = x1[1].xy;
  r2.w = (uint)vThreadIDInGroup.x;
  r7.xy = float2(0.196349546,-0.196349546) * r2.ww;
  r7.xy = r0.yy ? r7.xy : r7.yx;
  sincos(r7.x, r7.x, r8.x);
  r7.zw = r7.xx * r6.wz;
  r9.x = r8.x * r6.z + -r7.z;
  r9.y = r8.x * r6.w + r7.w;
  r6.zw = r9.xy + r1.yz;
  r1.yz = -r9.xy + r1.yz;
  GroupMemoryBarrierWithGroupSync();
  r7.zw = r6.xy + r5.zw;
  r5.zw = -r6.xy + r5.zw;
  g0[r1.w].val[0/4] = r7.z;
  g0[r5.y].val[0/4] = r5.z;
  GroupMemoryBarrierWithGroupSync();
  r6.x = g0[vThreadIDInGroup.x].val[0/4];
  r9.x = g0[r5.x].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r7.w;
  g0[r5.y].val[0/4] = r5.w;
  GroupMemoryBarrierWithGroupSync();
  r6.y = g0[vThreadIDInGroup.x].val[0/4];
  r9.y = g0[r5.x].val[0/4];
  x2[0].xy = r6.xy;
  x2[1].xy = r9.xy;
  r2.w = 2;
  while (true) {
    r5.z = cmp((uint)r2.w >= 16);
    if (r5.z != 0) break;
    r5.zw = x2[0].xy;
    r6.xy = x2[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r2.w;
    r10.x = (uint)vThreadIDInGroup.x % (uint)r2.w;
    r9.x = uiDest.x;
    r7.z = (uint)r10.x;
    r7.z = 6.28318548 * r7.z;
    r7.w = (uint)r2.w << 1;
    r8.y = (uint)r7.w;
    r7.z = r7.z / r8.y;
    r7.z = r0.y ? r7.z : -r7.z;
    sincos(r7.z, r11.x, r12.x);
    r8.yz = r11.xx * r6.yx;
    r11.x = r12.x * r6.x + -r8.y;
    r11.y = r12.x * r6.y + r8.z;
    r6.x = (int)r2.w * (int)r9.x;
    r6.x = (uint)r6.x << 1;
    r6.x = (int)r10.x + (int)r6.x;
    r8.yz = r11.xy + r5.zw;
    r5.zw = -r11.xy + r5.zw;
    GroupMemoryBarrierWithGroupSync();
    r6.y = (uint)r6.x >> 5;
    r6.y = mad((int)r6.y, (int)r2.w, (int)r6.x);
    g0[r6.y].val[0/4] = r8.y;
    r6.x = (int)r2.w + (int)r6.x;
    r7.z = (uint)r6.x >> 5;
    r6.x = mad((int)r7.z, (int)r2.w, (int)r6.x);
    g0[r6.x].val[0/4] = r5.z;
    GroupMemoryBarrierWithGroupSync();
    r9.x = g0[vThreadIDInGroup.x].val[0/4];
    r10.x = g0[r5.x].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r6.y].val[0/4] = r8.z;
    g0[r6.x].val[0/4] = r5.w;
    GroupMemoryBarrierWithGroupSync();
    r9.y = g0[vThreadIDInGroup.x].val[0/4];
    r10.y = g0[r5.x].val[0/4];
    x2[0].xy = r9.xy;
    x2[1].xy = r10.xy;
    r2.w = r7.w;
  }
  r5.zw = x2[0].xy;
  r6.xy = x2[1].xy;
  r7.xz = r7.xx * r6.yx;
  r9.x = r8.x * r6.x + -r7.x;
  r9.y = r8.x * r6.y + r7.z;
  r6.xy = r9.xy + r5.zw;
  r5.zw = -r9.xy + r5.zw;
  GroupMemoryBarrierWithGroupSync();
  r2.w = r6.w * r4.w;
  r8.x = r6.z * r4.z + -r2.w;
  r8.y = dot(r6.wz, r4.zw);
  r2.w = r1.z * r3.w;
  r9.x = r1.y * r3.z + -r2.w;
  r9.y = dot(r1.zy, r3.zw);
  r1.y = ~(int)r1.x;
  r0.w = (int)r0.w | (int)r1.y;
  r1.y = r6.y * r4.y;
  r10.x = r6.x * r4.x + -r1.y;
  r10.y = dot(r6.yx, r4.xy);
  r1.yz = r0.ww ? r10.xy : r6.xy;
  r2.w = r5.w * r3.y;
  r4.x = r5.z * r3.x + -r2.w;
  r4.y = dot(r5.wz, r3.xy);
  r3.xy = r0.ww ? r4.xy : r5.zw;
  if (r0.x == 0) {
    r3.zw = t1.Load(float4(0,0,0,0)).xz;
    r2.y = 0;
    r2.yw = t1.Load(r2.xyy).xz;
  } else {
    r3.zw = t1.Load(float4(0,0,0,0)).xz;
    r2.z = 0;
    r2.yw = t1.Load(r2.zxz).xz;
  }
  r0.w = max(r3.w, r2.y);
  r0.w = max(r3.z, r0.w);
  r0.z = r0.z ? r2.w : 1;
  r2.xy = r8.xy / r0.ww;
  r2.zw = r9.xy / r0.ww;
  r0.z = r1.x ? r0.z : r0.w;
  r1.xy = r1.yz / r0.zz;
  r0.zw = r3.xy / r0.zz;
  r3.xyzw = float4(0.03125,0.03125,0.03125,0.03125) * r2.xyzw;
  r4.xy = float2(0.03125,0.03125) * r1.xy;
  r4.zw = float2(0.03125,0.03125) * r0.zw;
  r2.xyzw = r0.yyyy ? r3.xyzw : r2.xyzw;
  r1.xy = r0.yy ? r4.xy : r1.xy;
  r0.zw = r0.yy ? r4.zw : r0.zw;
  r3.xy = r2.xy + r2.zw;
  r2.xy = r2.xy + -r2.zw;
  g0[r1.w].val[0/4] = r3.x;
  g0[r5.y].val[0/4] = r2.x;
  GroupMemoryBarrierWithGroupSync();
  r4.x = g0[vThreadIDInGroup.x].val[0/4];
  r6.x = g0[r5.x].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r3.y;
  g0[r5.y].val[0/4] = r2.y;
  GroupMemoryBarrierWithGroupSync();
  r4.y = g0[vThreadIDInGroup.x].val[0/4];
  r6.y = g0[r5.x].val[0/4];
  x3[0].xy = r4.xy;
  x3[1].xy = r6.xy;
  r1.z = 2;
  while (true) {
    r2.x = cmp((uint)r1.z >= 16);
    if (r2.x != 0) break;
    r2.xy = x3[0].xy;
    r2.zw = x3[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r1.z;
    r4.x = (uint)vThreadIDInGroup.x % (uint)r1.z;
    r3.x = uiDest.x;
    r3.y = (uint)r4.x;
    r3.y = 6.28318548 * r3.y;
    r3.z = (uint)r1.z << 1;
    r3.w = (uint)r3.z;
    r3.y = r3.y / r3.w;
    r3.y = r0.y ? -r3.y : r3.y;
    sincos(r3.y, r6.x, r7.x);
    r3.yw = r6.xx * r2.wz;
    r6.x = r7.x * r2.z + -r3.y;
    r6.y = r7.x * r2.w + r3.w;
    r2.z = (int)r1.z * (int)r3.x;
    r2.z = (uint)r2.z << 1;
    r2.z = (int)r4.x + (int)r2.z;
    r3.xy = r6.xy + r2.xy;
    r2.xy = -r6.xy + r2.xy;
    GroupMemoryBarrierWithGroupSync();
    r2.w = (uint)r2.z >> 5;
    r2.w = mad((int)r2.w, (int)r1.z, (int)r2.z);
    g0[r2.w].val[0/4] = r3.x;
    r2.z = (int)r1.z + (int)r2.z;
    r3.x = (uint)r2.z >> 5;
    r2.z = mad((int)r3.x, (int)r1.z, (int)r2.z);
    g0[r2.z].val[0/4] = r2.x;
    GroupMemoryBarrierWithGroupSync();
    r4.x = g0[vThreadIDInGroup.x].val[0/4];
    r6.x = g0[r5.x].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r2.w].val[0/4] = r3.y;
    g0[r2.z].val[0/4] = r2.y;
    GroupMemoryBarrierWithGroupSync();
    r4.y = g0[vThreadIDInGroup.x].val[0/4];
    r6.y = g0[r5.x].val[0/4];
    x3[0].xy = r4.xy;
    x3[1].xy = r6.xy;
    r1.z = r3.z;
  }
  r2.xy = x3[0].xy;
  r2.zw = x3[1].xy;
  sincos(r7.y, r3.x, r4.x);
  r3.yz = r3.xx * r2.wz;
  r6.x = r4.x * r2.z + -r3.y;
  r6.y = r4.x * r2.w + r3.z;
  r7.xy = r6.xy + r2.xy;
  r2.xy = -r6.xy + r2.xy;
  GroupMemoryBarrierWithGroupSync();
  r3.yz = r1.xy + r0.zw;
  r0.zw = r1.xy + -r0.zw;
  g0[r1.w].val[0/4] = r3.y;
  g0[r5.y].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r1.x = g0[vThreadIDInGroup.x].val[0/4];
  r6.x = g0[r5.x].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r3.z;
  g0[r5.y].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r1.y = g0[vThreadIDInGroup.x].val[0/4];
  r6.y = g0[r5.x].val[0/4];
  x4[0].xy = r1.xy;
  x4[1].xy = r6.xy;
  r0.z = 2;
  while (true) {
    r0.w = cmp((uint)r0.z >= 16);
    if (r0.w != 0) break;
    r1.xy = x4[0].xy;
    r1.zw = x4[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r0.z;
    r8.x = (uint)vThreadIDInGroup.x % (uint)r0.z;
    r6.x = uiDest.x;
    r0.w = (uint)r8.x;
    r0.w = 6.28318548 * r0.w;
    r3.y = (uint)r0.z << 1;
    r3.z = (uint)r3.y;
    r0.w = r0.w / r3.z;
    r0.w = r0.y ? -r0.w : r0.w;
    sincos(r0.w, r9.x, r10.x);
    r3.zw = r9.xx * r1.wz;
    r9.x = r10.x * r1.z + -r3.z;
    r9.y = r10.x * r1.w + r3.w;
    r0.w = (int)r0.z * (int)r6.x;
    r0.w = (uint)r0.w << 1;
    r0.w = (int)r8.x + (int)r0.w;
    r1.zw = r9.xy + r1.xy;
    r1.xy = -r9.xy + r1.xy;
    GroupMemoryBarrierWithGroupSync();
    r3.z = (uint)r0.w >> 5;
    r3.z = mad((int)r3.z, (int)r0.z, (int)r0.w);
    g0[r3.z].val[0/4] = r1.z;
    r0.w = (int)r0.z + (int)r0.w;
    r1.z = (uint)r0.w >> 5;
    r0.w = mad((int)r1.z, (int)r0.z, (int)r0.w);
    g0[r0.w].val[0/4] = r1.x;
    GroupMemoryBarrierWithGroupSync();
    r6.x = g0[vThreadIDInGroup.x].val[0/4];
    r8.x = g0[r5.x].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r3.z].val[0/4] = r1.w;
    g0[r0.w].val[0/4] = r1.y;
    GroupMemoryBarrierWithGroupSync();
    r6.y = g0[vThreadIDInGroup.x].val[0/4];
    r8.y = g0[r5.x].val[0/4];
    x4[0].xy = r6.xy;
    x4[1].xy = r8.xy;
    r0.z = r3.y;
  }
  r0.yz = x4[0].xy;
  r1.xy = x4[1].xy;
  r1.zw = r3.xx * r1.yx;
  r3.z = r4.x * r1.x + -r1.z;
  r3.w = r4.x * r1.y + r1.w;
  r7.zw = r3.zw + r0.yz;
  r2.zw = -r3.zw + r0.yz;
  if (r0.x != 0) {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[1].x));
    if (r0.x != 0) {
      r1.x = vThreadIDInGroup.x;
      r1.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r7.xyzw
    } else {
      r5.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.xyyy, r2.xyzw
    }
  } else {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[1].y));
    if (r0.x != 0) {
      r1.x = vThreadGroupID.z;
      r1.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r7.xyzw
    } else {
      r5.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.yxxx, r2.xyzw
    }
  }
  return;
}