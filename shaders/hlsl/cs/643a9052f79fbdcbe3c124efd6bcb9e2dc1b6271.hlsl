// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[256];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[2];
  float4 x2[2];
  float4 x3[2];
  float4 x4[2];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
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
    r3.x = (int)vThreadIDInGroup.x + 64;
    r3.xyzw = t1.Load(r3.xzw).zwxy;
  } else {
    r5.x = vThreadGroupID.z;
    r5.y = vThreadIDInGroup.x;
    r5.z = 0;
    r4.xyzw = t1.Load(r5.xyz).zwxy;
    r5.w = (int)vThreadIDInGroup.x + 64;
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
    r5.x = (int)r5.x + 64;
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
    r5.y = (int)r5.y + 64;
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
  r6.zw = float2(0.0078125,0.0078125) * r1.yz;
  r7.xyzw = float4(0.0078125,0.0078125,0.0078125,0.0078125) * r5.xyzw;
  r8.xy = float2(0.0078125,0.0078125) * r6.xy;
  r1.yz = r0.yy ? r1.yz : r6.zw;
  r5.xyzw = r0.yyyy ? r5.xyzw : r7.xyzw;
  r6.xy = r0.yy ? r6.xy : r8.xy;
  r1.w = (uint)vThreadIDInGroup.x << 1;
  r6.zw = r5.xy + r1.yz;
  r1.yz = -r5.xy + r1.yz;
  if (27 == 0) r2.w = 0; else if (27+4 < 32) {   r2.w = (uint)vThreadIDInGroup.x << (32-(27 + 4)); r2.w = (uint)r2.w >> (32-27);  } else r2.w = (uint)vThreadIDInGroup.x >> 4;
  r1.w = (int)r1.w + (int)r2.w;
  g0[r1.w].val[0/4] = r6.z;
  bitmask.x = ((~(-1 << 6)) << 0) & 0xffffffff;  r5.x = (((uint)vThreadIDInGroup.x << 0) & bitmask.x) | ((uint)64 & ~bitmask.x);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.y = (((uint)vThreadIDInGroup.x << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r7.xy = (uint2)r5.yx >> int2(5,5);
  r7.xz = (int2)r5.yx + (int2)r7.xy;
  g0[r7.x].val[0/4] = r1.y;
  GroupMemoryBarrierWithGroupSync();
  r1.y = (uint)vThreadIDInGroup.x >> 5;
  r2.w = (int)r1.y + (int)vThreadIDInGroup.x;
  r8.x = g0[r2.w].val[0/4];
  r9.x = g0[r7.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r6.w;
  g0[r7.x].val[0/4] = r1.z;
  GroupMemoryBarrierWithGroupSync();
  r8.y = g0[r2.w].val[0/4];
  r9.y = g0[r7.z].val[0/4];
  x1[0].xy = r8.xy;
  x1[1].xy = r9.xy;
  r1.z = 2;
  while (true) {
    r6.z = cmp((uint)r1.z >= 64);
    if (r6.z != 0) break;
    r6.zw = x1[0].xy;
    r8.xy = x1[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r1.z;
    r10.x = (uint)vThreadIDInGroup.x % (uint)r1.z;
    r9.x = uiDest.x;
    r7.w = (uint)r10.x;
    r7.w = 6.28318548 * r7.w;
    r8.z = (uint)r1.z << 1;
    r8.w = (uint)r8.z;
    r7.w = r7.w / r8.w;
    r7.w = r0.y ? r7.w : -r7.w;
    sincos(r7.w, r11.x, r12.x);
    r9.yz = r11.xx * r8.yx;
    r11.x = r12.x * r8.x + -r9.y;
    r11.y = r12.x * r8.y + r9.z;
    r7.w = (int)r1.z * (int)r9.x;
    r7.w = (uint)r7.w << 1;
    r7.w = (int)r10.x + (int)r7.w;
    r8.xy = r11.xy + r6.zw;
    r6.zw = -r11.xy + r6.zw;
    GroupMemoryBarrierWithGroupSync();
    r8.w = cmp((uint)r1.z < 32);
    r8.w = r8.w ? r1.z : 0;
    r9.x = (uint)r7.w >> 5;
    r9.x = mad((int)r9.x, (int)r8.w, (int)r7.w);
    g0[r9.x].val[0/4] = r8.x;
    r7.w = (int)r1.z + (int)r7.w;
    r8.x = (uint)r7.w >> 5;
    r7.w = mad((int)r8.x, (int)r8.w, (int)r7.w);
    g0[r7.w].val[0/4] = r6.z;
    GroupMemoryBarrierWithGroupSync();
    r6.z = mad((int)r1.y, (int)r8.w, (int)vThreadIDInGroup.x);
    r10.x = g0[r6.z].val[0/4];
    r8.x = mad((int)r7.y, (int)r8.w, (int)r5.x);
    r11.x = g0[r8.x].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r9.x].val[0/4] = r8.y;
    g0[r7.w].val[0/4] = r6.w;
    GroupMemoryBarrierWithGroupSync();
    r10.y = g0[r6.z].val[0/4];
    r11.y = g0[r8.x].val[0/4];
    x1[0].xy = r10.xy;
    x1[1].xy = r11.xy;
    r1.z = r8.z;
  }
  r6.zw = x1[0].xy;
  r8.xy = x1[1].xy;
  r1.z = (uint)vThreadIDInGroup.x;
  r8.zw = float2(0.0490873866,-0.0490873866) * r1.zz;
  r8.zw = r0.yy ? r8.zw : r8.wz;
  sincos(r8.z, r9.x, r10.x);
  r9.yz = r9.xx * r8.yx;
  r11.x = r10.x * r8.x + -r9.y;
  r11.y = r10.x * r8.y + r9.z;
  r8.xy = r11.xy + r6.zw;
  r6.zw = -r11.xy + r6.zw;
  GroupMemoryBarrierWithGroupSync();
  r9.yz = r6.xy + r5.zw;
  r5.zw = -r6.xy + r5.zw;
  g0[r1.w].val[0/4] = r9.y;
  g0[r7.x].val[0/4] = r5.z;
  GroupMemoryBarrierWithGroupSync();
  r6.x = g0[r2.w].val[0/4];
  r11.x = g0[r7.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r9.z;
  g0[r7.x].val[0/4] = r5.w;
  GroupMemoryBarrierWithGroupSync();
  r6.y = g0[r2.w].val[0/4];
  r11.y = g0[r7.z].val[0/4];
  x2[0].xy = r6.xy;
  x2[1].xy = r11.xy;
  r1.z = 2;
  while (true) {
    r5.z = cmp((uint)r1.z >= 64);
    if (r5.z != 0) break;
    r5.zw = x2[0].xy;
    r6.xy = x2[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r1.z;
    r12.x = (uint)vThreadIDInGroup.x % (uint)r1.z;
    r11.x = uiDest.x;
    r7.w = (uint)r12.x;
    r7.w = 6.28318548 * r7.w;
    r8.z = (uint)r1.z << 1;
    r9.y = (uint)r8.z;
    r7.w = r7.w / r9.y;
    r7.w = r0.y ? r7.w : -r7.w;
    sincos(r7.w, r13.x, r14.x);
    r9.yz = r13.xx * r6.yx;
    r13.x = r14.x * r6.x + -r9.y;
    r13.y = r14.x * r6.y + r9.z;
    r6.x = (int)r1.z * (int)r11.x;
    r6.x = (uint)r6.x << 1;
    r6.x = (int)r12.x + (int)r6.x;
    r9.yz = r13.xy + r5.zw;
    r5.zw = -r13.xy + r5.zw;
    GroupMemoryBarrierWithGroupSync();
    r6.y = cmp((uint)r1.z < 32);
    r6.y = r6.y ? r1.z : 0;
    r7.w = (uint)r6.x >> 5;
    r7.w = mad((int)r7.w, (int)r6.y, (int)r6.x);
    g0[r7.w].val[0/4] = r9.y;
    r6.x = (int)r1.z + (int)r6.x;
    r9.y = (uint)r6.x >> 5;
    r6.x = mad((int)r9.y, (int)r6.y, (int)r6.x);
    g0[r6.x].val[0/4] = r5.z;
    GroupMemoryBarrierWithGroupSync();
    r5.z = mad((int)r1.y, (int)r6.y, (int)vThreadIDInGroup.x);
    r11.x = g0[r5.z].val[0/4];
    r6.y = mad((int)r7.y, (int)r6.y, (int)r5.x);
    r12.x = g0[r6.y].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r7.w].val[0/4] = r9.z;
    g0[r6.x].val[0/4] = r5.w;
    GroupMemoryBarrierWithGroupSync();
    r11.y = g0[r5.z].val[0/4];
    r12.y = g0[r6.y].val[0/4];
    x2[0].xy = r11.xy;
    x2[1].xy = r12.xy;
    r1.z = r8.z;
  }
  r5.zw = x2[0].xy;
  r6.xy = x2[1].xy;
  r9.xy = r9.xx * r6.yx;
  r11.x = r10.x * r6.x + -r9.x;
  r11.y = r10.x * r6.y + r9.y;
  r6.xy = r11.xy + r5.zw;
  r5.zw = -r11.xy + r5.zw;
  GroupMemoryBarrierWithGroupSync();
  r1.z = r8.y * r4.w;
  r9.x = r8.x * r4.z + -r1.z;
  r9.y = dot(r8.yx, r4.zw);
  r1.z = r6.w * r3.w;
  r8.x = r6.z * r3.z + -r1.z;
  r8.y = dot(r6.wz, r3.zw);
  r1.z = ~(int)r1.x;
  r0.w = (int)r0.w | (int)r1.z;
  r1.z = r6.y * r4.y;
  r10.x = r6.x * r4.x + -r1.z;
  r10.y = dot(r6.yx, r4.xy);
  r3.zw = r0.ww ? r10.xy : r6.xy;
  r1.z = r5.w * r3.y;
  r4.x = r5.z * r3.x + -r1.z;
  r4.y = dot(r5.wz, r3.xy);
  r3.xy = r0.ww ? r4.xy : r5.zw;
  if (r0.x == 0) {
    r4.xy = t1.Load(float4(0,0,0,0)).xz;
    r2.y = 0;
    r4.zw = t1.Load(r2.xyy).xz;
  } else {
    r4.xy = t1.Load(float4(0,0,0,0)).xz;
    r2.z = 0;
    r4.zw = t1.Load(r2.zxz).xz;
  }
  r0.w = max(r4.y, r4.z);
  r0.w = max(r4.x, r0.w);
  r0.z = r0.z ? r4.w : 1;
  r2.xy = r9.xy / r0.ww;
  r4.xy = r8.xy / r0.ww;
  r0.z = r1.x ? r0.z : r0.w;
  r1.xz = r3.zw / r0.zz;
  r0.zw = r3.xy / r0.zz;
  r3.xy = float2(0.0078125,0.0078125) * r2.xy;
  r3.zw = float2(0.0078125,0.0078125) * r4.xy;
  r4.zw = float2(0.0078125,0.0078125) * r1.xz;
  r5.zw = float2(0.0078125,0.0078125) * r0.zw;
  r2.xy = r0.yy ? r3.xy : r2.xy;
  r3.xy = r0.yy ? r3.zw : r4.xy;
  r1.xz = r0.yy ? r4.zw : r1.xz;
  r0.zw = r0.yy ? r5.zw : r0.zw;
  r3.zw = r3.xy + r2.xy;
  r2.xy = -r3.xy + r2.xy;
  g0[r1.w].val[0/4] = r3.z;
  g0[r7.x].val[0/4] = r2.x;
  GroupMemoryBarrierWithGroupSync();
  r3.x = g0[r2.w].val[0/4];
  r4.x = g0[r7.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r3.w;
  g0[r7.x].val[0/4] = r2.y;
  GroupMemoryBarrierWithGroupSync();
  r3.y = g0[r2.w].val[0/4];
  r4.y = g0[r7.z].val[0/4];
  x3[0].xy = r3.xy;
  x3[1].xy = r4.xy;
  r2.x = 2;
  while (true) {
    r2.y = cmp((uint)r2.x >= 64);
    if (r2.y != 0) break;
    r2.yz = x3[0].xy;
    r3.xy = x3[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r2.x;
    r6.x = (uint)vThreadIDInGroup.x % (uint)r2.x;
    r4.x = uiDest.x;
    r3.z = (uint)r6.x;
    r3.z = 6.28318548 * r3.z;
    r3.w = (uint)r2.x << 1;
    r4.y = (uint)r3.w;
    r3.z = r3.z / r4.y;
    r3.z = r0.y ? -r3.z : r3.z;
    sincos(r3.z, r8.x, r9.x);
    r4.yz = r8.xx * r3.yx;
    r8.x = r9.x * r3.x + -r4.y;
    r8.y = r9.x * r3.y + r4.z;
    r3.x = (int)r2.x * (int)r4.x;
    r3.x = (uint)r3.x << 1;
    r3.x = (int)r6.x + (int)r3.x;
    r3.yz = r8.xy + r2.yz;
    r2.yz = -r8.xy + r2.yz;
    GroupMemoryBarrierWithGroupSync();
    r4.x = cmp((uint)r2.x < 32);
    r4.x = r4.x ? r2.x : 0;
    r4.y = (uint)r3.x >> 5;
    r4.y = mad((int)r4.y, (int)r4.x, (int)r3.x);
    g0[r4.y].val[0/4] = r3.y;
    r3.x = (int)r2.x + (int)r3.x;
    r3.y = (uint)r3.x >> 5;
    r3.x = mad((int)r3.y, (int)r4.x, (int)r3.x);
    g0[r3.x].val[0/4] = r2.y;
    GroupMemoryBarrierWithGroupSync();
    r2.y = mad((int)r1.y, (int)r4.x, (int)vThreadIDInGroup.x);
    r6.x = g0[r2.y].val[0/4];
    r3.y = mad((int)r7.y, (int)r4.x, (int)r5.x);
    r8.x = g0[r3.y].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r4.y].val[0/4] = r3.z;
    g0[r3.x].val[0/4] = r2.z;
    GroupMemoryBarrierWithGroupSync();
    r6.y = g0[r2.y].val[0/4];
    r8.y = g0[r3.y].val[0/4];
    x3[0].xy = r6.xy;
    x3[1].xy = r8.xy;
    r2.x = r3.w;
  }
  r2.xy = x3[0].xy;
  r3.xy = x3[1].xy;
  sincos(r8.w, r4.x, r6.x);
  r3.zw = r4.xx * r3.yx;
  r8.x = r6.x * r3.x + -r3.z;
  r8.y = r6.x * r3.y + r3.w;
  r3.xy = r8.xy + r2.xy;
  r8.xy = -r8.xy + r2.xy;
  GroupMemoryBarrierWithGroupSync();
  r2.xy = r1.xz + r0.zw;
  r0.zw = r1.xz + -r0.zw;
  g0[r1.w].val[0/4] = r2.x;
  g0[r7.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r9.x = g0[r2.w].val[0/4];
  r10.x = g0[r7.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r2.y;
  g0[r7.x].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r9.y = g0[r2.w].val[0/4];
  r10.y = g0[r7.z].val[0/4];
  x4[0].xy = r9.xy;
  x4[1].xy = r10.xy;
  r0.z = 2;
  while (true) {
    r0.w = cmp((uint)r0.z >= 64);
    if (r0.w != 0) break;
    r1.xz = x4[0].xy;
    r2.xy = x4[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r0.z;
    r9.x = (uint)vThreadIDInGroup.x % (uint)r0.z;
    r7.x = uiDest.x;
    r0.w = (uint)r9.x;
    r0.w = 6.28318548 * r0.w;
    r1.w = (uint)r0.z << 1;
    r2.z = (uint)r1.w;
    r0.w = r0.w / r2.z;
    r0.w = r0.y ? -r0.w : r0.w;
    sincos(r0.w, r10.x, r11.x);
    r2.zw = r10.xx * r2.yx;
    r10.x = r11.x * r2.x + -r2.z;
    r10.y = r11.x * r2.y + r2.w;
    r0.w = (int)r0.z * (int)r7.x;
    r0.w = (uint)r0.w << 1;
    r0.w = (int)r9.x + (int)r0.w;
    r2.xy = r10.xy + r1.xz;
    r1.xz = -r10.xy + r1.xz;
    GroupMemoryBarrierWithGroupSync();
    r2.z = cmp((uint)r0.z < 32);
    r2.z = r2.z ? r0.z : 0;
    r2.w = (uint)r0.w >> 5;
    r2.w = mad((int)r2.w, (int)r2.z, (int)r0.w);
    g0[r2.w].val[0/4] = r2.x;
    r0.w = (int)r0.z + (int)r0.w;
    r2.x = (uint)r0.w >> 5;
    r0.w = mad((int)r2.x, (int)r2.z, (int)r0.w);
    g0[r0.w].val[0/4] = r1.x;
    GroupMemoryBarrierWithGroupSync();
    r1.x = mad((int)r1.y, (int)r2.z, (int)vThreadIDInGroup.x);
    r9.x = g0[r1.x].val[0/4];
    r2.x = mad((int)r7.y, (int)r2.z, (int)r5.x);
    r10.x = g0[r2.x].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r2.w].val[0/4] = r2.y;
    g0[r0.w].val[0/4] = r1.z;
    GroupMemoryBarrierWithGroupSync();
    r9.y = g0[r1.x].val[0/4];
    r10.y = g0[r2.x].val[0/4];
    x4[0].xy = r9.xy;
    x4[1].xy = r10.xy;
    r0.z = r1.w;
  }
  r0.yz = x4[0].xy;
  r1.xy = x4[1].xy;
  r1.zw = r4.xx * r1.yx;
  r2.z = r6.x * r1.x + -r1.z;
  r2.w = r6.x * r1.y + r1.w;
  r3.zw = r2.zw + r0.yz;
  r8.zw = -r2.zw + r0.yz;
  if (r0.x != 0) {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[1].x));
    if (r0.x != 0) {
      r1.x = vThreadIDInGroup.x;
      r1.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r3.xyzw
    } else {
      r5.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.xyyy, r8.xyzw
    }
  } else {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[1].y));
    if (r0.x != 0) {
      r1.x = vThreadGroupID.z;
      r1.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r3.xyzw
    } else {
      r5.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.yxxx, r8.xyzw
    }
  }
  return;
}