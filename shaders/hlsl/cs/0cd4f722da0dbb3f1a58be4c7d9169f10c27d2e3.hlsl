// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[512];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[8];
  float4 x1[4];
  float4 x2[4];
  float4 x3[4];
  float4 x4[4];
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
    r5.xyzw = t1.Load(r3.xzw).zwxy;
    r3.y = (int)r3.x + 64;
    r6.xyzw = t1.Load(r3.yzw).zwxy;
    r3.x = (int)r3.y | 192;
    r3.xyzw = t1.Load(r3.xzw).zwxy;
  } else {
    r7.y = vThreadGroupID.z;
    r7.x = vThreadIDInGroup.x;
    r7.z = 0;
    r4.xyzw = t1.Load(r7.yxz).zwxy;
    r7.w = (int)vThreadIDInGroup.x + 64;
    r5.xyzw = t1.Load(r7.ywz).zwxy;
    r7.x = (int)r7.w + 64;
    r6.xyzw = t1.Load(r7.yxz).zwxy;
    r7.w = (int)r7.x | 192;
    r3.xyzw = t1.Load(r7.ywz).zwxy;
  }
  x0[0].xy = float2(0,0);
  x0[1].xy = float2(0,0);
  x0[2].xy = float2(0,0);
  x0[3].xy = float2(0,0);
  x0[4].xy = float2(0,0);
  x0[5].xy = float2(0,0);
  x0[6].xy = float2(0,0);
  x0[7].xy = float2(0,0);
  if (r0.x != 0) {
    r1.y = vThreadIDInGroup.x;
    r7.y = vThreadGroupID.z;
    r7.x = (int)r1.y + asint(cb0[1].z);
    r1.y = cmp(asuint(cb0[2].x) >= (uint)r7.x);
    if (r1.y != 0) {
      r7.zw = float2(0,0);
      r8.xyzw = t0.Load(r7.xyz).xyzw;
      x0[0].xy = r8.xy;
      x0[4].xy = r8.zw;
    }
    r1.yzw = (int3)r7.xxx + int3(64,128,192);
    r8.xyz = cmp(asuint(cb0[2].xxx) >= (uint3)r1.yzw);
    if (r8.x != 0) {
      r7.x = r1.y;
      r7.zw = float2(0,0);
      r9.xyzw = t0.Load(r7.xyz).xyzw;
      x0[1].xy = r9.xy;
      x0[5].xy = r9.zw;
    }
    if (r8.y != 0) {
      r7.x = r1.z;
      r7.zw = float2(0,0);
      r9.xyzw = t0.Load(r7.xyz).xyzw;
      x0[2].xy = r9.xy;
      x0[6].xy = r9.zw;
    }
    if (r8.z != 0) {
      r7.x = r1.w;
      r7.zw = float2(0,0);
      r7.xyzw = t0.Load(r7.xyz).xyzw;
      x0[3].xy = r7.xy;
      x0[7].xy = r7.zw;
    }
  } else {
    r7.x = vThreadGroupID.z;
    r1.y = vThreadIDInGroup.x;
    r7.y = (int)r1.y + asint(cb0[1].w);
    r1.y = cmp(asuint(cb0[2].y) >= (uint)r7.y);
    if (r1.y != 0) {
      r7.zw = float2(0,0);
      r8.xyzw = t0.Load(r7.xyz).xyzw;
      x0[0].xy = r8.xy;
      x0[4].xy = r8.zw;
    }
    r8.xyz = (int3)r7.yyy + int3(64,192,128);
    r1.yzw = cmp(asuint(cb0[2].yyy) >= (uint3)r8.xzy);
    if (r1.y != 0) {
      r7.y = r8.x;
      r7.zw = float2(0,0);
      r9.xyzw = t0.Load(r7.xyz).xyzw;
      x0[1].xy = r9.xy;
      x0[5].xy = r9.zw;
    }
    if (r1.z != 0) {
      r7.y = r8.z;
      r7.zw = float2(0,0);
      r9.xyzw = t0.Load(r7.xyz).xyzw;
      x0[2].xy = r9.xy;
      x0[6].xy = r9.zw;
    }
    if (r1.w != 0) {
      r8.x = r7.x;
      r8.zw = float2(0,0);
      r7.xyzw = t0.Load(r8.xyz).xyzw;
      x0[3].xy = r7.xy;
      x0[7].xy = r7.zw;
    }
  }
  r1.yz = x0[0].xy;
  r7.xy = x0[1].xy;
  r7.zw = x0[2].xy;
  r8.xy = x0[3].xy;
  r8.zw = x0[4].xy;
  r9.xy = x0[5].xy;
  r9.zw = x0[6].xy;
  r10.xy = x0[7].xy;
  if (r0.y == 0) {
    r1.yz = float2(0.00390625,0.00390625) * r1.yz;
    r7.xyzw = float4(0.00390625,0.00390625,0.00390625,0.00390625) * r7.xyzw;
    r8.xyzw = float4(0.00390625,0.00390625,0.00390625,0.00390625) * r8.xyzw;
    r9.xyzw = float4(0.00390625,0.00390625,0.00390625,0.00390625) * r9.xyzw;
    r10.xy = float2(0.00390625,0.00390625) * r10.xy;
  }
  r1.w = (uint)vThreadIDInGroup.x << 2;
  r10.zw = r1.yz + r7.zw;
  r11.xy = r7.xy + r8.xy;
  r1.yz = r1.yz + -r7.zw;
  r7.xy = r7.xy + -r8.xy;
  r7.zw = -r7.yx;
  r7.xy = r0.yy ? r7.zx : r7.yw;
  r7.zw = r11.xy + r10.zw;
  r8.xy = r7.xy + r1.yz;
  r1.yz = -r7.xy + r1.yz;
  r7.xy = -r11.xy + r10.zw;
  if (27 == 0) r2.w = 0; else if (27+3 < 32) {   r2.w = (uint)vThreadIDInGroup.x << (32-(27 + 3)); r2.w = (uint)r2.w >> (32-27);  } else r2.w = (uint)vThreadIDInGroup.x >> 3;
  r1.w = (int)r1.w + (int)r2.w;
  g0[r1.w].val[0/4] = r7.z;
  bitmask.z = ((~(-1 << 6)) << 0) & 0xffffffff;  r10.z = (((uint)vThreadIDInGroup.x << 0) & bitmask.z) | ((uint)64 & ~bitmask.z);
  bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r10.w = (((uint)vThreadIDInGroup.x << 2) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r11.xy = (uint2)r10.wz >> int2(5,5);
  r11.xz = (int2)r10.wz + (int2)r11.xy;
  g0[r11.x].val[0/4] = r8.x;
  r12.xy = (int2)r10.wz + int2(1,64);
  r12.zw = (uint2)r12.xy >> int2(5,5);
  r13.xy = (int2)r12.zw + (int2)r12.xy;
  g0[r13.x].val[0/4] = r7.x;
  r7.xz = (int2)r12.xy | int2(3,192);
  r2.w = (int)r12.z + (int)r7.x;
  g0[r2.w].val[0/4] = r1.y;
  GroupMemoryBarrierWithGroupSync();
  r1.y = (uint)vThreadIDInGroup.x >> 5;
  r7.x = (int)r1.y + (int)vThreadIDInGroup.x;
  r14.x = g0[r7.x].val[0/4];
  r15.x = g0[r11.z].val[0/4];
  r16.x = g0[r13.y].val[0/4];
  r8.x = (uint)r7.z >> 5;
  r11.w = (int)r7.z + (int)r8.x;
  r17.x = g0[r11.w].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r7.w;
  g0[r11.x].val[0/4] = r8.y;
  g0[r13.x].val[0/4] = r7.y;
  g0[r2.w].val[0/4] = r1.z;
  GroupMemoryBarrierWithGroupSync();
  r14.y = g0[r7.x].val[0/4];
  r15.y = g0[r11.z].val[0/4];
  r16.y = g0[r13.y].val[0/4];
  r17.y = g0[r11.w].val[0/4];
  x1[0].xy = r14.xy;
  x1[1].xy = r15.xy;
  x1[2].xy = r16.xy;
  x1[3].xy = r17.xy;
  r1.z = 4;
  while (true) {
    r7.y = cmp((uint)r1.z >= 64);
    if (r7.y != 0) break;
    r7.yw = x1[0].xy;
    r12.xz = x1[1].xy;
    r13.zw = x1[2].xy;
    r14.xy = x1[3].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r1.z;
    r16.x = (uint)vThreadIDInGroup.x % (uint)r1.z;
    r15.x = uiDest.x;
    r8.y = (uint)r16.x;
    r8.y = 6.28318548 * r8.y;
    r14.z = (uint)r1.z << 2;
    r14.w = (uint)r14.z;
    r8.y = r8.y / r14.w;
    r8.y = r0.y ? r8.y : -r8.y;
    sincos(r8.y, r17.x, r18.x);
    r15.yz = r17.xx * r12.zx;
    r19.x = r18.x * r12.x + -r15.y;
    r19.y = r18.x * r12.z + r15.z;
    r8.y = r17.x * r17.x;
    r8.y = r18.x * r18.x + -r8.y;
    r12.x = dot(r18.xx, r17.xx);
    r15.yz = r12.xx * r13.wz;
    r20.x = r8.y * r13.z + -r15.y;
    r20.y = r8.y * r13.w + r15.z;
    r12.z = r12.x * r17.x;
    r12.z = r8.y * r18.x + -r12.z;
    r12.x = r18.x * r12.x;
    r8.y = r8.y * r17.x + r12.x;
    r13.zw = r8.yy * r14.yx;
    r17.x = r12.z * r14.x + -r13.z;
    r17.y = r12.z * r14.y + r13.w;
    r8.y = (int)r1.z * (int)r15.x;
    r8.y = (uint)r8.y << 2;
    r8.y = (int)r16.x + (int)r8.y;
    r12.xz = r20.xy + r7.yw;
    r13.zw = r19.xy + r17.xy;
    r7.yw = -r20.xy + r7.yw;
    r15.xy = r19.xy + -r17.xy;
    r15.zw = -r15.yx;
    r14.xy = r0.yy ? r15.zx : r15.yw;
    r15.xy = r13.zw + r12.xz;
    r15.zw = r14.xy + r7.yw;
    r7.yw = -r14.xy + r7.yw;
    r12.xz = -r13.zw + r12.xz;
    GroupMemoryBarrierWithGroupSync();
    r13.z = cmp((uint)r1.z < 32);
    r13.z = r13.z ? r1.z : 0;
    r13.w = (uint)r8.y >> 5;
    r13.w = mad((int)r13.w, (int)r13.z, (int)r8.y);
    g0[r13.w].val[0/4] = r15.x;
    r8.y = (int)r1.z + (int)r8.y;
    r14.x = (uint)r8.y >> 5;
    r14.x = mad((int)r14.x, (int)r13.z, (int)r8.y);
    g0[r14.x].val[0/4] = r15.z;
    r8.y = (int)r1.z + (int)r8.y;
    r14.y = (uint)r8.y >> 5;
    r14.y = mad((int)r14.y, (int)r13.z, (int)r8.y);
    g0[r14.y].val[0/4] = r12.x;
    r8.y = (int)r1.z + (int)r8.y;
    r12.x = (uint)r8.y >> 5;
    r8.y = mad((int)r12.x, (int)r13.z, (int)r8.y);
    g0[r8.y].val[0/4] = r7.y;
    GroupMemoryBarrierWithGroupSync();
    r7.y = mad((int)r1.y, (int)r13.z, (int)vThreadIDInGroup.x);
    r16.x = g0[r7.y].val[0/4];
    r12.x = mad((int)r11.y, (int)r13.z, (int)r10.z);
    r17.x = g0[r12.x].val[0/4];
    r14.w = mad((int)r12.w, (int)r13.z, (int)r12.y);
    r18.x = g0[r14.w].val[0/4];
    r13.z = mad((int)r8.x, (int)r13.z, (int)r7.z);
    r19.x = g0[r13.z].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r13.w].val[0/4] = r15.y;
    g0[r14.x].val[0/4] = r15.w;
    g0[r14.y].val[0/4] = r12.z;
    g0[r8.y].val[0/4] = r7.w;
    GroupMemoryBarrierWithGroupSync();
    r16.y = g0[r7.y].val[0/4];
    r17.y = g0[r12.x].val[0/4];
    r18.y = g0[r14.w].val[0/4];
    r19.y = g0[r13.z].val[0/4];
    x1[0].xy = r16.xy;
    x1[1].xy = r17.xy;
    x1[2].xy = r18.xy;
    x1[3].xy = r19.xy;
    r1.z = r14.z;
  }
  r7.yw = x1[0].xy;
  r12.xz = x1[1].xy;
  r13.zw = x1[2].xy;
  r14.xy = x1[3].xy;
  r1.z = (uint)vThreadIDInGroup.x;
  r14.zw = float2(0.0245436933,-0.0245436933) * r1.zz;
  r14.zw = r0.yy ? r14.zw : r14.wz;
  sincos(r14.z, r15.x, r16.x);
  r15.yz = r15.xx * r12.zx;
  r17.x = r16.x * r12.x + -r15.y;
  r17.y = r16.x * r12.z + r15.z;
  r1.z = r15.x * r15.x;
  r1.z = r16.x * r16.x + -r1.z;
  r8.y = dot(r16.xx, r15.xx);
  r12.xz = r8.yy * r13.wz;
  r18.x = r1.z * r13.z + -r12.x;
  r18.y = r1.z * r13.w + r12.z;
  r12.x = r8.y * r15.x;
  r12.x = r1.z * r16.x + -r12.x;
  r12.z = r16.x * r8.y;
  r12.z = r1.z * r15.x + r12.z;
  r13.zw = r12.zz * r14.yx;
  r19.x = r12.x * r14.x + -r13.z;
  r19.y = r12.x * r14.y + r13.w;
  r13.zw = r18.xy + r7.yw;
  r14.xy = r19.xy + r17.xy;
  r7.yw = -r18.xy + r7.yw;
  r17.xy = -r19.xy + r17.xy;
  r17.zw = -r17.yx;
  r15.yz = r0.yy ? r17.zx : r17.yw;
  r16.yz = r14.xy + r13.zw;
  r17.xy = r15.yz + r7.yw;
  r7.yw = -r15.yz + r7.yw;
  r13.zw = -r14.xy + r13.zw;
  GroupMemoryBarrierWithGroupSync();
  r14.xy = r8.zw + r9.zw;
  r15.yz = r9.xy + r10.xy;
  r8.zw = r8.zw + -r9.zw;
  r9.xy = r9.xy + -r10.xy;
  r9.zw = -r9.yx;
  r9.xy = r0.yy ? r9.zx : r9.yw;
  r9.zw = r15.yz + r14.xy;
  r10.xy = r9.xy + r8.zw;
  r8.zw = -r9.xy + r8.zw;
  r9.xy = -r15.yz + r14.xy;
  g0[r1.w].val[0/4] = r9.z;
  g0[r11.x].val[0/4] = r10.x;
  g0[r13.x].val[0/4] = r9.x;
  g0[r2.w].val[0/4] = r8.z;
  GroupMemoryBarrierWithGroupSync();
  r14.x = g0[r7.x].val[0/4];
  r18.x = g0[r11.z].val[0/4];
  r19.x = g0[r13.y].val[0/4];
  r20.x = g0[r11.w].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r9.w;
  g0[r11.x].val[0/4] = r10.y;
  g0[r13.x].val[0/4] = r9.y;
  g0[r2.w].val[0/4] = r8.w;
  GroupMemoryBarrierWithGroupSync();
  r14.y = g0[r7.x].val[0/4];
  r18.y = g0[r11.z].val[0/4];
  r19.y = g0[r13.y].val[0/4];
  r20.y = g0[r11.w].val[0/4];
  x2[0].xy = r14.xy;
  x2[1].xy = r18.xy;
  x2[2].xy = r19.xy;
  x2[3].xy = r20.xy;
  r8.z = 4;
  while (true) {
    r8.w = cmp((uint)r8.z >= 64);
    if (r8.w != 0) break;
    r9.xy = x2[0].xy;
    r9.zw = x2[1].xy;
    r10.xy = x2[2].xy;
    r14.xy = x2[3].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r8.z;
    r19.x = (uint)vThreadIDInGroup.x % (uint)r8.z;
    r18.x = uiDest.x;
    r8.w = (uint)r19.x;
    r8.w = 6.28318548 * r8.w;
    r14.z = (uint)r8.z << 2;
    r15.y = (uint)r14.z;
    r8.w = r8.w / r15.y;
    r8.w = r0.y ? r8.w : -r8.w;
    sincos(r8.w, r20.x, r21.x);
    r15.yz = r20.xx * r9.wz;
    r22.x = r21.x * r9.z + -r15.y;
    r22.y = r21.x * r9.w + r15.z;
    r8.w = r20.x * r20.x;
    r8.w = r21.x * r21.x + -r8.w;
    r9.z = dot(r21.xx, r20.xx);
    r15.yz = r9.zz * r10.yx;
    r23.x = r8.w * r10.x + -r15.y;
    r23.y = r8.w * r10.y + r15.z;
    r9.w = r9.z * r20.x;
    r9.w = r8.w * r21.x + -r9.w;
    r9.z = r21.x * r9.z;
    r8.w = r8.w * r20.x + r9.z;
    r10.xy = r8.ww * r14.yx;
    r20.x = r9.w * r14.x + -r10.x;
    r20.y = r9.w * r14.y + r10.y;
    r8.w = (int)r8.z * (int)r18.x;
    r8.w = (uint)r8.w << 2;
    r8.w = (int)r19.x + (int)r8.w;
    r9.zw = r23.xy + r9.xy;
    r10.xy = r22.xy + r20.xy;
    r9.xy = -r23.xy + r9.xy;
    r18.xy = r22.xy + -r20.xy;
    r18.zw = -r18.yx;
    r14.xy = r0.yy ? r18.zx : r18.yw;
    r15.yz = r10.xy + r9.zw;
    r17.zw = r14.xy + r9.xy;
    r9.xy = -r14.xy + r9.xy;
    r9.zw = -r10.xy + r9.zw;
    GroupMemoryBarrierWithGroupSync();
    r10.x = cmp((uint)r8.z < 32);
    r10.x = r10.x ? r8.z : 0;
    r10.y = (uint)r8.w >> 5;
    r10.y = mad((int)r10.y, (int)r10.x, (int)r8.w);
    g0[r10.y].val[0/4] = r15.y;
    r8.w = (int)r8.z + (int)r8.w;
    r14.x = (uint)r8.w >> 5;
    r14.x = mad((int)r14.x, (int)r10.x, (int)r8.w);
    g0[r14.x].val[0/4] = r17.z;
    r8.w = (int)r8.z + (int)r8.w;
    r14.y = (uint)r8.w >> 5;
    r14.y = mad((int)r14.y, (int)r10.x, (int)r8.w);
    g0[r14.y].val[0/4] = r9.z;
    r8.w = (int)r8.z + (int)r8.w;
    r9.z = (uint)r8.w >> 5;
    r8.w = mad((int)r9.z, (int)r10.x, (int)r8.w);
    g0[r8.w].val[0/4] = r9.x;
    GroupMemoryBarrierWithGroupSync();
    r9.x = mad((int)r1.y, (int)r10.x, (int)vThreadIDInGroup.x);
    r18.x = g0[r9.x].val[0/4];
    r9.z = mad((int)r11.y, (int)r10.x, (int)r10.z);
    r19.x = g0[r9.z].val[0/4];
    r15.y = mad((int)r12.w, (int)r10.x, (int)r12.y);
    r20.x = g0[r15.y].val[0/4];
    r10.x = mad((int)r8.x, (int)r10.x, (int)r7.z);
    r21.x = g0[r10.x].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r10.y].val[0/4] = r15.z;
    g0[r14.x].val[0/4] = r17.w;
    g0[r14.y].val[0/4] = r9.w;
    g0[r8.w].val[0/4] = r9.y;
    GroupMemoryBarrierWithGroupSync();
    r18.y = g0[r9.x].val[0/4];
    r19.y = g0[r9.z].val[0/4];
    r20.y = g0[r15.y].val[0/4];
    r21.y = g0[r10.x].val[0/4];
    x2[0].xy = r18.xy;
    x2[1].xy = r19.xy;
    x2[2].xy = r20.xy;
    x2[3].xy = r21.xy;
    r8.z = r14.z;
  }
  r8.zw = x2[0].xy;
  r9.xy = x2[1].xy;
  r9.zw = x2[2].xy;
  r10.xy = x2[3].xy;
  r14.xy = r15.xx * r9.yx;
  r15.x = r16.x * r9.x + -r14.x;
  r15.y = r16.x * r9.y + r14.y;
  r9.xy = r9.wz * r8.yy;
  r14.x = r1.z * r9.z + -r9.x;
  r14.y = r1.z * r9.w + r9.y;
  r9.xy = r12.zz * r10.yx;
  r18.x = r12.x * r10.x + -r9.x;
  r18.y = r12.x * r10.y + r9.y;
  r9.xy = r14.xy + r8.zw;
  r9.zw = r18.xy + r15.xy;
  r8.yz = -r14.xy + r8.zw;
  r15.xy = -r18.xy + r15.xy;
  r15.zw = -r15.yx;
  r10.xy = r0.yy ? r15.zx : r15.yw;
  r12.xz = r9.xy + r9.zw;
  r14.xy = r10.xy + r8.yz;
  r8.yz = -r10.xy + r8.yz;
  r9.xy = r9.xy + -r9.zw;
  GroupMemoryBarrierWithGroupSync();
  r1.z = r16.z * r4.w;
  r10.x = r16.y * r4.z + -r1.z;
  r10.y = dot(r16.zy, r4.zw);
  r1.z = r17.y * r5.w;
  r15.x = r17.x * r5.z + -r1.z;
  r15.y = dot(r17.yx, r5.zw);
  r1.z = r13.w * r6.w;
  r16.x = r13.z * r6.z + -r1.z;
  r16.y = dot(r13.wz, r6.zw);
  r1.z = r7.w * r3.w;
  r17.x = r7.y * r3.z + -r1.z;
  r17.y = dot(r7.wy, r3.zw);
  r1.z = ~(int)r1.x;
  r0.w = (int)r0.w | (int)r1.z;
  r1.z = r12.z * r4.y;
  r18.x = r12.x * r4.x + -r1.z;
  r18.y = dot(r12.zx, r4.xy);
  r3.zw = r0.ww ? r18.xy : r12.xz;
  r1.z = r14.y * r5.y;
  r4.x = r14.x * r5.x + -r1.z;
  r4.y = dot(r14.yx, r5.xy);
  r4.xy = r0.ww ? r4.xy : r14.xy;
  r1.z = r9.y * r6.y;
  r5.x = r9.x * r6.x + -r1.z;
  r5.y = dot(r9.yx, r6.xy);
  r4.zw = r0.ww ? r5.xy : r9.xy;
  r1.z = r8.z * r3.y;
  r5.x = r8.y * r3.x + -r1.z;
  r5.y = dot(r8.zy, r3.xy);
  r3.xy = r0.ww ? r5.xy : r8.yz;
  if (r0.x == 0) {
    r5.xy = t1.Load(float4(0,0,0,0)).xz;
    r2.y = 0;
    r5.zw = t1.Load(r2.xyy).xz;
  } else {
    r5.xy = t1.Load(float4(0,0,0,0)).xz;
    r2.z = 0;
    r5.zw = t1.Load(r2.zxz).xz;
  }
  r0.w = max(r5.y, r5.z);
  r0.w = max(r5.x, r0.w);
  r0.z = r0.z ? r5.w : 1;
  r2.xy = r10.xy / r0.ww;
  r5.xy = r15.xy / r0.ww;
  r5.zw = r16.xy / r0.ww;
  r6.xy = r17.xy / r0.ww;
  r0.z = r1.x ? r0.z : r0.w;
  r1.xz = r3.zw / r0.zz;
  r3.zw = r4.xy / r0.zz;
  r4.xy = r4.zw / r0.zz;
  r0.zw = r3.xy / r0.zz;
  if (r0.y != 0) {
    r2.xy = float2(0.00390625,0.00390625) * r2.xy;
    r5.xyzw = float4(0.00390625,0.00390625,0.00390625,0.00390625) * r5.xyzw;
    r6.xy = float2(0.00390625,0.00390625) * r6.xy;
    r1.xz = float2(0.00390625,0.00390625) * r1.xz;
    r3.zw = float2(0.00390625,0.00390625) * r3.zw;
    r4.xy = float2(0.00390625,0.00390625) * r4.xy;
    r0.zw = float2(0.00390625,0.00390625) * r0.zw;
  }
  r3.xy = r2.xy + r5.zw;
  r4.zw = r5.xy + r6.xy;
  r2.xy = r2.xy + -r5.zw;
  r5.xy = r5.xy + -r6.xy;
  r5.zw = -r5.xy;
  r5.xy = r0.yy ? r5.yz : r5.wx;
  r5.zw = r4.zw + r3.xy;
  r6.xy = r5.xy + r2.xy;
  r2.xy = -r5.xy + r2.xy;
  r3.xy = -r4.zw + r3.xy;
  g0[r1.w].val[0/4] = r5.z;
  g0[r11.x].val[0/4] = r6.x;
  g0[r13.x].val[0/4] = r3.x;
  g0[r2.w].val[0/4] = r2.x;
  GroupMemoryBarrierWithGroupSync();
  r5.x = g0[r7.x].val[0/4];
  r9.x = g0[r11.z].val[0/4];
  r10.x = g0[r13.y].val[0/4];
  r14.x = g0[r11.w].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r5.w;
  g0[r11.x].val[0/4] = r6.y;
  g0[r13.x].val[0/4] = r3.y;
  g0[r2.w].val[0/4] = r2.y;
  GroupMemoryBarrierWithGroupSync();
  r5.y = g0[r7.x].val[0/4];
  r9.y = g0[r11.z].val[0/4];
  r10.y = g0[r13.y].val[0/4];
  r14.y = g0[r11.w].val[0/4];
  x3[0].xy = r5.xy;
  x3[1].xy = r9.xy;
  x3[2].xy = r10.xy;
  x3[3].xy = r14.xy;
  r2.x = 4;
  while (true) {
    r2.y = cmp((uint)r2.x >= 64);
    if (r2.y != 0) break;
    r2.yz = x3[0].xy;
    r3.xy = x3[1].xy;
    r4.zw = x3[2].xy;
    r5.xy = x3[3].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r2.x;
    r9.x = (uint)vThreadIDInGroup.x % (uint)r2.x;
    r6.x = uiDest.x;
    r5.z = (uint)r9.x;
    r5.z = 6.28318548 * r5.z;
    r5.w = (uint)r2.x << 2;
    r6.y = (uint)r5.w;
    r5.z = r5.z / r6.y;
    r5.z = r0.y ? -r5.z : r5.z;
    sincos(r5.z, r10.x, r12.x);
    r6.yz = r10.xx * r3.yx;
    r14.x = r12.x * r3.x + -r6.y;
    r14.y = r12.x * r3.y + r6.z;
    r3.x = r10.x * r10.x;
    r3.x = r12.x * r12.x + -r3.x;
    r3.y = dot(r12.xx, r10.xx);
    r6.yz = r3.yy * r4.wz;
    r15.x = r3.x * r4.z + -r6.y;
    r15.y = r3.x * r4.w + r6.z;
    r4.z = r3.y * r10.x;
    r4.z = r3.x * r12.x + -r4.z;
    r3.y = r12.x * r3.y;
    r3.x = r3.x * r10.x + r3.y;
    r3.xy = r3.xx * r5.yx;
    r10.x = r4.z * r5.x + -r3.x;
    r10.y = r4.z * r5.y + r3.y;
    r3.x = (int)r2.x * (int)r6.x;
    r3.x = (uint)r3.x << 2;
    r3.x = (int)r9.x + (int)r3.x;
    r4.zw = r15.xy + r2.yz;
    r5.xy = r14.xy + r10.xy;
    r2.yz = -r15.xy + r2.yz;
    r6.xy = r14.xy + -r10.xy;
    r6.zw = -r6.xy;
    r6.xy = r0.yy ? r6.yz : r6.wx;
    r6.zw = r5.xy + r4.zw;
    r7.yw = r6.xy + r2.yz;
    r2.yz = -r6.xy + r2.yz;
    r4.zw = -r5.xy + r4.zw;
    GroupMemoryBarrierWithGroupSync();
    r3.y = cmp((uint)r2.x < 32);
    r3.y = r3.y ? r2.x : 0;
    r5.x = (uint)r3.x >> 5;
    r5.x = mad((int)r5.x, (int)r3.y, (int)r3.x);
    g0[r5.x].val[0/4] = r6.z;
    r3.x = (int)r2.x + (int)r3.x;
    r5.y = (uint)r3.x >> 5;
    r5.y = mad((int)r5.y, (int)r3.y, (int)r3.x);
    g0[r5.y].val[0/4] = r7.y;
    r3.x = (int)r2.x + (int)r3.x;
    r5.z = (uint)r3.x >> 5;
    r5.z = mad((int)r5.z, (int)r3.y, (int)r3.x);
    g0[r5.z].val[0/4] = r4.z;
    r3.x = (int)r2.x + (int)r3.x;
    r4.z = (uint)r3.x >> 5;
    r3.x = mad((int)r4.z, (int)r3.y, (int)r3.x);
    g0[r3.x].val[0/4] = r2.y;
    GroupMemoryBarrierWithGroupSync();
    r2.y = mad((int)r1.y, (int)r3.y, (int)vThreadIDInGroup.x);
    r6.x = g0[r2.y].val[0/4];
    r4.z = mad((int)r11.y, (int)r3.y, (int)r10.z);
    r9.x = g0[r4.z].val[0/4];
    r6.z = mad((int)r12.w, (int)r3.y, (int)r12.y);
    r10.x = g0[r6.z].val[0/4];
    r3.y = mad((int)r8.x, (int)r3.y, (int)r7.z);
    r14.x = g0[r3.y].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r5.x].val[0/4] = r6.w;
    g0[r5.y].val[0/4] = r7.w;
    g0[r5.z].val[0/4] = r4.w;
    g0[r3.x].val[0/4] = r2.z;
    GroupMemoryBarrierWithGroupSync();
    r6.y = g0[r2.y].val[0/4];
    r9.y = g0[r4.z].val[0/4];
    r10.y = g0[r6.z].val[0/4];
    r14.y = g0[r3.y].val[0/4];
    x3[0].xy = r6.xy;
    x3[1].xy = r9.xy;
    x3[2].xy = r10.xy;
    x3[3].xy = r14.xy;
    r2.x = r5.w;
  }
  r2.xy = x3[0].xy;
  r3.xy = x3[1].xy;
  r4.zw = x3[2].xy;
  r5.xy = x3[3].xy;
  sincos(r14.w, r6.x, r9.x);
  r5.zw = r6.xx * r3.yx;
  r10.x = r9.x * r3.x + -r5.z;
  r10.y = r9.x * r3.y + r5.w;
  r2.z = r6.x * r6.x;
  r2.z = r9.x * r9.x + -r2.z;
  r3.x = dot(r9.xx, r6.xx);
  r5.zw = r3.xx * r4.wz;
  r14.x = r2.z * r4.z + -r5.z;
  r14.y = r2.z * r4.w + r5.w;
  r3.y = r3.x * r6.x;
  r3.y = r2.z * r9.x + -r3.y;
  r4.z = r9.x * r3.x;
  r4.z = r2.z * r6.x + r4.z;
  r5.zw = r4.zz * r5.yx;
  r15.x = r3.y * r5.x + -r5.z;
  r15.y = r3.y * r5.y + r5.w;
  r5.xy = r14.xy + r2.xy;
  r5.zw = r15.xy + r10.xy;
  r2.xy = -r14.xy + r2.xy;
  r14.xy = -r15.xy + r10.xy;
  r14.zw = -r14.xy;
  r6.yz = r0.yy ? r14.yz : r14.wx;
  r14.xy = r5.xy + r5.zw;
  r15.xy = r6.yz + r2.xy;
  r16.xy = -r6.yz + r2.xy;
  r5.xy = r5.xy + -r5.zw;
  GroupMemoryBarrierWithGroupSync();
  r2.xy = r1.xz + r4.xy;
  r6.yz = r3.zw + r0.zw;
  r1.xz = r1.xz + -r4.xy;
  r17.xy = r3.zw + -r0.zw;
  r17.zw = -r17.xy;
  r0.zw = r0.yy ? r17.yz : r17.wx;
  r3.zw = r6.yz + r2.xy;
  r4.xy = r1.xz + r0.zw;
  r0.zw = r1.xz + -r0.zw;
  r1.xz = -r6.yz + r2.xy;
  g0[r1.w].val[0/4] = r3.z;
  g0[r11.x].val[0/4] = r4.x;
  g0[r13.x].val[0/4] = r1.x;
  g0[r2.w].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r2.x = g0[r7.x].val[0/4];
  r10.x = g0[r11.z].val[0/4];
  r17.x = g0[r13.y].val[0/4];
  r18.x = g0[r11.w].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r3.w;
  g0[r11.x].val[0/4] = r4.y;
  g0[r13.x].val[0/4] = r1.z;
  g0[r2.w].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r2.y = g0[r7.x].val[0/4];
  r10.y = g0[r11.z].val[0/4];
  r17.y = g0[r13.y].val[0/4];
  r18.y = g0[r11.w].val[0/4];
  x4[0].xy = r2.xy;
  x4[1].xy = r10.xy;
  x4[2].xy = r17.xy;
  x4[3].xy = r18.xy;
  r0.z = 4;
  while (true) {
    r0.w = cmp((uint)r0.z >= 64);
    if (r0.w != 0) break;
    r1.xz = x4[0].xy;
    r2.xy = x4[1].xy;
    r3.zw = x4[2].xy;
    r4.xy = x4[3].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r0.z;
    r10.x = (uint)vThreadIDInGroup.x % (uint)r0.z;
    r7.x = uiDest.x;
    r0.w = (uint)r10.x;
    r0.w = 6.28318548 * r0.w;
    r1.w = (uint)r0.z << 2;
    r2.w = (uint)r1.w;
    r0.w = r0.w / r2.w;
    r0.w = r0.y ? -r0.w : r0.w;
    sincos(r0.w, r11.x, r12.x);
    r6.yz = r11.xx * r2.yx;
    r13.x = r12.x * r2.x + -r6.y;
    r13.y = r12.x * r2.y + r6.z;
    r0.w = r11.x * r11.x;
    r0.w = r12.x * r12.x + -r0.w;
    r2.x = dot(r12.xx, r11.xx);
    r2.yw = r2.xx * r3.wz;
    r17.x = r0.w * r3.z + -r2.y;
    r17.y = r0.w * r3.w + r2.w;
    r2.y = r2.x * r11.x;
    r2.y = r0.w * r12.x + -r2.y;
    r2.x = r12.x * r2.x;
    r0.w = r0.w * r11.x + r2.x;
    r2.xw = r0.ww * r4.yx;
    r18.x = r2.y * r4.x + -r2.x;
    r18.y = r2.y * r4.y + r2.w;
    r0.w = (int)r0.z * (int)r7.x;
    r0.w = (uint)r0.w << 2;
    r0.w = (int)r10.x + (int)r0.w;
    r2.xy = r17.xy + r1.xz;
    r3.zw = r18.xy + r13.xy;
    r1.xz = -r17.xy + r1.xz;
    r13.xy = -r18.xy + r13.xy;
    r13.zw = -r13.xy;
    r4.xy = r0.yy ? r13.yz : r13.wx;
    r6.yz = r3.zw + r2.xy;
    r7.xy = r4.xy + r1.xz;
    r1.xz = -r4.xy + r1.xz;
    r2.xy = -r3.zw + r2.xy;
    GroupMemoryBarrierWithGroupSync();
    r2.w = cmp((uint)r0.z < 32);
    r2.w = r2.w ? r0.z : 0;
    r3.z = (uint)r0.w >> 5;
    r3.z = mad((int)r3.z, (int)r2.w, (int)r0.w);
    g0[r3.z].val[0/4] = r6.y;
    r0.w = (int)r0.z + (int)r0.w;
    r3.w = (uint)r0.w >> 5;
    r3.w = mad((int)r3.w, (int)r2.w, (int)r0.w);
    g0[r3.w].val[0/4] = r7.x;
    r0.w = (int)r0.z + (int)r0.w;
    r4.x = (uint)r0.w >> 5;
    r4.x = mad((int)r4.x, (int)r2.w, (int)r0.w);
    g0[r4.x].val[0/4] = r2.x;
    r0.w = (int)r0.z + (int)r0.w;
    r2.x = (uint)r0.w >> 5;
    r0.w = mad((int)r2.x, (int)r2.w, (int)r0.w);
    g0[r0.w].val[0/4] = r1.x;
    GroupMemoryBarrierWithGroupSync();
    r1.x = mad((int)r1.y, (int)r2.w, (int)vThreadIDInGroup.x);
    r10.x = g0[r1.x].val[0/4];
    r2.x = mad((int)r11.y, (int)r2.w, (int)r10.z);
    r13.x = g0[r2.x].val[0/4];
    r4.y = mad((int)r12.w, (int)r2.w, (int)r12.y);
    r17.x = g0[r4.y].val[0/4];
    r2.w = mad((int)r8.x, (int)r2.w, (int)r7.z);
    r18.x = g0[r2.w].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r3.z].val[0/4] = r6.z;
    g0[r3.w].val[0/4] = r7.y;
    g0[r4.x].val[0/4] = r2.y;
    g0[r0.w].val[0/4] = r1.z;
    GroupMemoryBarrierWithGroupSync();
    r10.y = g0[r1.x].val[0/4];
    r13.y = g0[r2.x].val[0/4];
    r17.y = g0[r4.y].val[0/4];
    r18.y = g0[r2.w].val[0/4];
    x4[0].xy = r10.xy;
    x4[1].xy = r13.xy;
    x4[2].xy = r17.xy;
    x4[3].xy = r18.xy;
    r0.z = r1.w;
  }
  r0.zw = x4[0].xy;
  r1.xy = x4[1].xy;
  r1.zw = x4[2].xy;
  r2.xy = x4[3].xy;
  r3.zw = r6.xx * r1.yx;
  r4.x = r9.x * r1.x + -r3.z;
  r4.y = r9.x * r1.y + r3.w;
  r1.xy = r3.xx * r1.wz;
  r3.z = r2.z * r1.z + -r1.x;
  r3.w = r2.z * r1.w + r1.y;
  r1.xy = r4.zz * r2.yx;
  r6.x = r3.y * r2.x + -r1.x;
  r6.y = r3.y * r2.y + r1.y;
  r1.xy = r3.zw + r0.zw;
  r1.zw = r6.xy + r4.xy;
  r0.zw = -r3.zw + r0.zw;
  r2.xy = -r6.xy + r4.xy;
  r2.zw = -r2.xy;
  r2.xy = r0.yy ? r2.yz : r2.wx;
  r14.zw = r1.xy + r1.zw;
  r15.zw = r2.xy + r0.zw;
  r16.zw = -r2.xy + r0.zw;
  r5.zw = r1.xy + -r1.zw;
  if (r0.x != 0) {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[1].x));
    if (r0.x != 0) {
      r1.x = vThreadIDInGroup.x;
      r1.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r14.xyzw
    } else {
      r10.z = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r10.z < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.zwww, r15.xyzw
      r10.z = (int)r10.z + 64;
    }
    r0.y = cmp((uint)r10.z < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.zwww, r5.xyzw
      r10.z = (int)r10.z + 64;
    }
    r0.y = cmp((uint)r10.z < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.zwww, r16.xyzw
    }
  } else {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[1].y));
    if (r0.x != 0) {
      r1.x = vThreadGroupID.z;
      r1.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r14.xyzw
    } else {
      r10.z = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r10.z < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.wzzz, r15.xyzw
      r10.z = (int)r10.z + 64;
    }
    r0.y = cmp((uint)r10.z < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.wzzz, r5.xyzw
      r10.z = (int)r10.z + 64;
    }
    r0.y = cmp((uint)r10.z < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.wzzz, r16.xyzw
    }
  }
  return;
}