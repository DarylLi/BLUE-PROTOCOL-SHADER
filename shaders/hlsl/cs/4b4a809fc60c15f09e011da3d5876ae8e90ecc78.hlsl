// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[128];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[16];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 1, 1
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
    r3.x = (int)vThreadIDInGroup.x + 8;
    r5.xyzw = t1.Load(r3.xzw).zwxy;
    r3.y = (int)r3.x + 8;
    r6.xyzw = t1.Load(r3.yzw).zwxy;
    r3.x = (int)r3.y | 24;
    r7.xyzw = t1.Load(r3.xzw).zwxy;
    r3.y = (int)r3.x + 8;
    r8.xyzw = t1.Load(r3.yzw).zwxy;
    r3.x = (int)r3.y | 40;
    r9.xyzw = t1.Load(r3.xzw).zwxy;
    r3.y = (int)r3.x + 8;
    r10.xyzw = t1.Load(r3.yzw).zwxy;
    r3.x = (int)r3.y | 56;
    r3.xyzw = t1.Load(r3.xzw).zwxy;
  } else {
    r11.y = vThreadGroupID.z;
    r11.x = vThreadIDInGroup.x;
    r11.z = 0;
    r4.xyzw = t1.Load(r11.yxz).zwxy;
    r11.w = (int)vThreadIDInGroup.x + 8;
    r5.xyzw = t1.Load(r11.ywz).zwxy;
    r11.x = (int)r11.w + 8;
    r6.xyzw = t1.Load(r11.yxz).zwxy;
    r11.w = (int)r11.x | 24;
    r7.xyzw = t1.Load(r11.ywz).zwxy;
    r11.x = (int)r11.w + 8;
    r8.xyzw = t1.Load(r11.yxz).zwxy;
    r11.w = (int)r11.x | 40;
    r9.xyzw = t1.Load(r11.ywz).zwxy;
    r11.x = (int)r11.w + 8;
    r10.xyzw = t1.Load(r11.yxz).zwxy;
    r11.w = (int)r11.x | 56;
    r3.xyzw = t1.Load(r11.ywz).zwxy;
  }
  x0[0].xy = float2(0,0);
  x0[1].xy = float2(0,0);
  x0[2].xy = float2(0,0);
  x0[3].xy = float2(0,0);
  x0[4].xy = float2(0,0);
  x0[5].xy = float2(0,0);
  x0[6].xy = float2(0,0);
  x0[7].xy = float2(0,0);
  x0[8].xy = float2(0,0);
  x0[9].xy = float2(0,0);
  x0[10].xy = float2(0,0);
  x0[11].xy = float2(0,0);
  x0[12].xy = float2(0,0);
  x0[13].xy = float2(0,0);
  x0[14].xy = float2(0,0);
  x0[15].xy = float2(0,0);
  if (r0.x != 0) {
    r1.y = vThreadIDInGroup.x;
    r11.y = vThreadGroupID.z;
    r11.x = (int)r1.y + asint(cb0[1].z);
    r1.y = cmp(asuint(cb0[2].x) >= (uint)r11.x);
    if (r1.y != 0) {
      r11.zw = float2(0,0);
      r12.xyzw = t0.Load(r11.xyz).xyzw;
      x0[0].xy = r12.xy;
      x0[8].xy = r12.zw;
    }
    r12.xyzw = (int4)r11.xxxx + int4(32,8,16,24);
    r13.xyzw = cmp(asuint(cb0[2].xxxx) >= (uint4)r12.yzwx);
    if (r13.x != 0) {
      r14.x = r12.y;
      r14.y = r11.y;
      r14.zw = float2(0,0);
      r14.xyzw = t0.Load(r14.xyz).xyzw;
      x0[1].xy = r14.xy;
      x0[9].xy = r14.zw;
    }
    if (r13.y != 0) {
      r14.x = r12.z;
      r14.y = r11.y;
      r14.zw = float2(0,0);
      r14.xyzw = t0.Load(r14.xyz).xyzw;
      x0[2].xy = r14.xy;
      x0[10].xy = r14.zw;
    }
    if (r13.z != 0) {
      r14.x = r12.w;
      r14.y = r11.y;
      r14.zw = float2(0,0);
      r14.xyzw = t0.Load(r14.xyz).xyzw;
      x0[3].xy = r14.xy;
      x0[11].xy = r14.zw;
    }
    if (r13.w != 0) {
      r12.y = r11.y;
      r12.zw = float2(0,0);
      r12.xyzw = t0.Load(r12.xyz).xyzw;
      x0[4].xy = r12.xy;
      x0[12].xy = r12.zw;
    }
    r1.yzw = (int3)r11.xxx + int3(40,48,56);
    r12.xyz = cmp(asuint(cb0[2].xxx) >= (uint3)r1.yzw);
    if (r12.x != 0) {
      r11.x = r1.y;
      r11.zw = float2(0,0);
      r13.xyzw = t0.Load(r11.xyz).xyzw;
      x0[5].xy = r13.xy;
      x0[13].xy = r13.zw;
    }
    if (r12.y != 0) {
      r11.x = r1.z;
      r11.zw = float2(0,0);
      r13.xyzw = t0.Load(r11.xyz).xyzw;
      x0[6].xy = r13.xy;
      x0[14].xy = r13.zw;
    }
    if (r12.z != 0) {
      r11.x = r1.w;
      r11.zw = float2(0,0);
      r11.xyzw = t0.Load(r11.xyz).xyzw;
      x0[7].xy = r11.xy;
      x0[15].xy = r11.zw;
    }
  } else {
    r11.x = vThreadGroupID.z;
    r1.y = vThreadIDInGroup.x;
    r11.y = (int)r1.y + asint(cb0[1].w);
    r1.y = cmp(asuint(cb0[2].y) >= (uint)r11.y);
    if (r1.y != 0) {
      r11.zw = float2(0,0);
      r12.xyzw = t0.Load(r11.xyz).xyzw;
      x0[0].xy = r12.xy;
      x0[8].xy = r12.zw;
    }
    r12.xyzw = (int4)r11.yyyy + int4(8,32,16,24);
    r13.xyzw = cmp(asuint(cb0[2].yyyy) >= (uint4)r12.xzwy);
    if (r13.x != 0) {
      r14.x = r11.x;
      r14.y = r12.x;
      r14.zw = float2(0,0);
      r14.xyzw = t0.Load(r14.xyz).xyzw;
      x0[1].xy = r14.xy;
      x0[9].xy = r14.zw;
    }
    if (r13.y != 0) {
      r14.x = r11.x;
      r14.y = r12.z;
      r14.zw = float2(0,0);
      r14.xyzw = t0.Load(r14.xyz).xyzw;
      x0[2].xy = r14.xy;
      x0[10].xy = r14.zw;
    }
    if (r13.z != 0) {
      r14.x = r11.x;
      r14.y = r12.w;
      r14.zw = float2(0,0);
      r14.xyzw = t0.Load(r14.xyz).xyzw;
      x0[3].xy = r14.xy;
      x0[11].xy = r14.zw;
    }
    if (r13.w != 0) {
      r12.x = r11.x;
      r12.zw = float2(0,0);
      r12.xyzw = t0.Load(r12.xyz).xyzw;
      x0[4].xy = r12.xy;
      x0[12].xy = r12.zw;
    }
    r12.xyz = (int3)r11.yyy + int3(40,56,48);
    r1.yzw = cmp(asuint(cb0[2].yyy) >= (uint3)r12.xzy);
    if (r1.y != 0) {
      r11.y = r12.x;
      r11.zw = float2(0,0);
      r13.xyzw = t0.Load(r11.xyz).xyzw;
      x0[5].xy = r13.xy;
      x0[13].xy = r13.zw;
    }
    if (r1.z != 0) {
      r11.y = r12.z;
      r11.zw = float2(0,0);
      r13.xyzw = t0.Load(r11.xyz).xyzw;
      x0[6].xy = r13.xy;
      x0[14].xy = r13.zw;
    }
    if (r1.w != 0) {
      r12.x = r11.x;
      r12.zw = float2(0,0);
      r11.xyzw = t0.Load(r12.xyz).xyzw;
      x0[7].xy = r11.xy;
      x0[15].xy = r11.zw;
    }
  }
  r1.yz = x0[0].xy;
  r11.xy = x0[1].xy;
  r11.zw = x0[2].xy;
  r12.xy = x0[3].xy;
  r12.zw = x0[4].xy;
  r13.xy = x0[5].xy;
  r13.zw = x0[6].xy;
  r14.xy = x0[7].xy;
  r14.zw = x0[8].xy;
  r15.xy = x0[9].xy;
  r15.zw = x0[10].xy;
  r16.xy = x0[11].xy;
  r16.zw = x0[12].xy;
  r17.xy = x0[13].xy;
  r17.zw = x0[14].xy;
  r18.xy = x0[15].xy;
  if (r0.y == 0) {
    r1.yz = float2(0.015625,0.015625) * r1.yz;
    r11.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r11.xyzw;
    r12.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r12.xyzw;
    r13.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r13.xyzw;
    r14.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r14.xyzw;
    r15.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r15.xyzw;
    r16.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r16.xyzw;
    r17.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r17.xyzw;
    r18.xy = float2(0.015625,0.015625) * r18.xy;
  }
  r18.zw = r1.yz + r12.zw;
  r1.yz = r1.yz + -r12.zw;
  r12.zw = r11.zw + r13.zw;
  r19.xy = r11.zw + -r13.zw;
  r19.zw = -r19.yx;
  r11.zw = r0.yy ? r19.zx : r19.yw;
  r13.zw = r18.zw + r12.zw;
  r19.xy = r11.zw + r1.yz;
  r1.yz = -r11.zw + r1.yz;
  r11.zw = r18.zw + -r12.zw;
  r12.zw = r11.xy + r13.xy;
  r11.xy = r11.yx + -r13.yx;
  r13.xy = r12.xy + r14.xy;
  r20.xy = r12.xy + -r14.xy;
  r20.zw = -r20.yx;
  r12.xy = r0.yy ? r20.xz : r20.wy;
  r14.xy = r13.xy + r12.zw;
  r18.zw = r12.xy + r11.xy;
  r11.xy = -r12.xy + r11.xy;
  r12.xy = -r13.xy + r12.zw;
  r12.zw = r0.yy ? float2(0.707106769,-0.707106769) : float2(-0.707106769,0.707106769);
  r13.xy = r12.zz * r18.zw;
  r20.x = r18.w * 0.707106769 + -r13.x;
  r20.y = r18.z * 0.707106769 + r13.y;
  r13.xy = r14.xy + r13.zw;
  r13.zw = -r14.xy + r13.zw;
  r14.xy = r20.xy + r19.xy;
  r18.zw = -r20.xy + r19.xy;
  r19.zw = r12.xy + r11.wz;
  r19.xy = -r12.yx + r11.zw;
  r12.x = (int)r0.y ? r19.w : r19.x; r19.x = (int)r0.y ? r19.x : r19.w;
  r12.y = (int)r0.y ? r19.y : r19.z; r19.y = (int)r0.y ? r19.z : r19.y;
  r11.zw = r12.zz * r11.xy;
  r20.x = r11.y * -0.707106769 + -r11.z;
  r20.y = r11.x * -0.707106769 + r11.w;
  r11.xy = r20.xy + r1.yz;
  r1.yz = -r20.xy + r1.yz;
  if (27 == 0) r1.w = 0; else if (27+2 < 32) {   r1.w = (uint)vThreadIDInGroup.x << (32-(27 + 2)); r1.w = (uint)r1.w >> (32-27);  } else r1.w = (uint)vThreadIDInGroup.x >> 2;
  r1.w = mad((int)vThreadIDInGroup.x, 8, (int)r1.w);
  g0[r1.w].val[0/4] = r13.x;
  bitmask.x = ((~(-1 << 29)) << 3) & 0xffffffff;  r20.x = (((uint)vThreadIDInGroup.x << 3) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 3)) << 0) & 0xffffffff;  r20.y = (((uint)vThreadIDInGroup.x << 0) & bitmask.y) | ((uint)8 & ~bitmask.y);
  bitmask.z = ((~(-1 << 3)) << 0) & 0xffffffff;  r20.z = (((uint)vThreadIDInGroup.x << 0) & bitmask.z) | ((uint)8 & ~bitmask.z);
  r2.w = (uint)r20.x >> 5;
  r2.w = (int)r2.w + (int)r20.x;
  g0[r2.w].val[0/4] = r14.x;
  r20.xyw = (int3)r20.xyz + int3(1,8,8);
  r11.z = (uint)r20.x >> 5;
  r11.w = (int)r20.x + (int)r11.z;
  g0[r11.w].val[0/4] = r19.x;
  r19.xzw = (int3)r20.xyw | int3(3,24,24);
  r11.z = (int)r11.z + (int)r19.x;
  g0[r11.z].val[0/4] = r11.x;
  r21.xyz = (int3)r19.xzw + int3(1,8,9);
  r11.x = (uint)r21.x >> 5;
  r13.x = (int)r21.x + (int)r11.x;
  g0[r13.x].val[0/4] = r13.z;
  r22.xyzw = (int4)r21.xyyy | int4(5,40,40,40);
  r11.x = (int)r11.x + (int)r22.x;
  g0[r11.x].val[0/4] = r18.z;
  r22.xyzw = (int4)r22.xyzw + int4(1,1,8,9);
  r13.z = (uint)r22.x >> 5;
  r14.x = (int)r22.x + (int)r13.z;
  g0[r14.x].val[0/4] = r12.x;
  r19.xz = (int2)r22.xz | int2(7,56);
  r12.x = (int)r13.z + (int)r19.x;
  g0[r12.x].val[0/4] = r1.y;
  GroupMemoryBarrierWithGroupSync();
  r20.x = g0[vThreadIDInGroup.x].val[0/4];
  r1.y = g0[r20.z].val[0/4];
  r13.z = g0[r20.w].val[0/4];
  r18.z = g0[r19.w].val[0/4];
  r19.x = g0[r21.z].val[0/4];
  r21.x = g0[r22.y].val[0/4];
  r21.y = g0[r22.w].val[0/4];
  r19.z = (int)r19.z + 1;
  r21.w = g0[r19.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r13.y;
  g0[r2.w].val[0/4] = r14.y;
  g0[r11.w].val[0/4] = r19.y;
  g0[r11.z].val[0/4] = r11.y;
  g0[r13.x].val[0/4] = r13.w;
  g0[r11.x].val[0/4] = r18.w;
  g0[r14.x].val[0/4] = r12.y;
  g0[r12.x].val[0/4] = r1.z;
  GroupMemoryBarrierWithGroupSync();
  r20.y = g0[vThreadIDInGroup.x].val[0/4];
  r1.z = g0[r20.z].val[0/4];
  r11.y = g0[r20.w].val[0/4];
  r12.y = g0[r19.w].val[0/4];
  r13.y = g0[r21.z].val[0/4];
  r13.w = g0[r22.y].val[0/4];
  r14.y = g0[r22.w].val[0/4];
  r18.w = g0[r19.z].val[0/4];
  r19.y = (uint)vThreadIDInGroup.x;
  r22.xz = float2(0.0981747732,-0.0981747732) * r19.yy;
  r22.xz = r0.yy ? r22.xz : r22.zx;
  sincos(r22.x, r22.x, r23.x);
  r19.y = r22.x * r1.z;
  r24.y = r23.x * r1.y + -r19.y;
  r1.y = r22.x * r1.y;
  r24.x = r23.x * r1.z + r1.y;
  r1.y = r22.x * r22.x;
  r1.y = r23.x * r23.x + -r1.y;
  r1.z = dot(r23.xx, r22.xx);
  r19.y = r1.z * r11.y;
  r25.x = r1.y * r13.z + -r19.y;
  r13.z = r13.z * r1.z;
  r25.y = r1.y * r11.y + r13.z;
  r11.y = r1.z * r22.x;
  r11.y = r1.y * r23.x + -r11.y;
  r13.z = r23.x * r1.z;
  r13.z = r1.y * r22.x + r13.z;
  r19.y = r13.z * r12.y;
  r26.x = r11.y * r18.z + -r19.y;
  r18.z = r18.z * r13.z;
  r26.y = r11.y * r12.y + r18.z;
  r12.y = r13.z * r22.x;
  r12.y = r11.y * r23.x + -r12.y;
  r18.z = r23.x * r13.z;
  r18.z = r11.y * r22.x + r18.z;
  r19.y = r18.z * r13.y;
  r27.x = r12.y * r19.x + -r19.y;
  r19.x = r19.x * r18.z;
  r27.y = r12.y * r13.y + r19.x;
  r13.y = r18.z * r22.x;
  r13.y = r12.y * r23.x + -r13.y;
  r19.x = r23.x * r18.z;
  r19.x = r12.y * r22.x + r19.x;
  r19.y = r19.x * r13.w;
  r28.y = r13.y * r21.x + -r19.y;
  r19.y = r21.x * r19.x;
  r28.x = r13.y * r13.w + r19.y;
  r13.w = r19.x * r22.x;
  r13.w = r13.y * r23.x + -r13.w;
  r19.y = r23.x * r19.x;
  r19.y = r13.y * r22.x + r19.y;
  r21.x = r19.y * r14.y;
  r29.x = r13.w * r21.y + -r21.x;
  r21.x = r21.y * r19.y;
  r29.y = r13.w * r14.y + r21.x;
  r14.y = r19.y * r22.x;
  r14.y = r13.w * r23.x + -r14.y;
  r21.x = r23.x * r19.y;
  r21.x = r13.w * r22.x + r21.x;
  r21.y = r21.x * r18.w;
  r30.x = r14.y * r21.w + -r21.y;
  r21.y = r21.w * r21.x;
  r30.y = r14.y * r18.w + r21.y;
  r21.yw = r27.xy + r20.xy;
  r20.xy = -r27.xy + r20.xy;
  r23.yz = r29.xy + r25.xy;
  r25.xy = -r29.xy + r25.xy;
  r25.zw = -r25.yx;
  r24.zw = r0.yy ? r25.zx : r25.yw;
  r25.xy = r23.yz + r21.yw;
  r25.zw = r24.zw + r20.xy;
  r20.xy = -r24.zw + r20.xy;
  r21.yw = -r23.yz + r21.yw;
  r23.yz = r28.yx + r24.yx;
  r24.xy = -r28.xy + r24.xy;
  r24.zw = r30.xy + r26.xy;
  r26.xy = -r30.xy + r26.xy;
  r26.zw = -r26.yx;
  r26.xy = r0.yy ? r26.xz : r26.wy;
  r26.zw = r24.zw + r23.yz;
  r27.xy = r26.xy + r24.xy;
  r24.xy = -r26.xy + r24.xy;
  r23.yz = -r24.zw + r23.yz;
  r24.zw = r27.xy * r12.zz;
  r26.x = r27.y * 0.707106769 + -r24.z;
  r26.y = r27.x * 0.707106769 + r24.w;
  r24.zw = r26.zw + r25.xy;
  r25.xy = -r26.zw + r25.xy;
  r26.zw = r26.xy + r25.zw;
  r25.zw = -r26.xy + r25.zw;
  r27.zw = r23.yz + r21.wy;
  r27.xy = -r23.zy + r21.yw;
  r26.x = (int)r0.y ? r27.w : r27.x; r27.x = (int)r0.y ? r27.x : r27.w;
  r26.y = (int)r0.y ? r27.y : r27.z; r27.y = (int)r0.y ? r27.z : r27.y;
  r21.yw = r24.xy * r12.zz;
  r28.x = r24.y * -0.707106769 + -r21.y;
  r28.y = r24.x * -0.707106769 + r21.w;
  r21.yw = r28.xy + r20.xy;
  r20.xy = -r28.xy + r20.xy;
  GroupMemoryBarrierWithGroupSync();
  r23.yz = r14.zw + r16.zw;
  r14.zw = r14.zw + -r16.zw;
  r16.zw = r15.zw + r17.zw;
  r28.xy = r15.zw + -r17.zw;
  r28.zw = -r28.yx;
  r15.zw = r0.yy ? r28.zx : r28.yw;
  r17.zw = r23.yz + r16.zw;
  r24.xy = r15.zw + r14.zw;
  r14.zw = -r15.zw + r14.zw;
  r15.zw = r23.yz + -r16.zw;
  r16.zw = r15.xy + r17.xy;
  r15.xy = r15.yx + -r17.yx;
  r17.xy = r16.xy + r18.xy;
  r28.xy = r16.xy + -r18.xy;
  r28.zw = -r28.yx;
  r16.xy = r0.yy ? r28.xz : r28.wy;
  r18.xy = r17.xy + r16.zw;
  r23.yz = r16.xy + r15.xy;
  r15.xy = -r16.xy + r15.xy;
  r16.xy = -r17.xy + r16.zw;
  r16.zw = r23.yz * r12.zz;
  r17.x = r23.z * 0.707106769 + -r16.z;
  r17.y = r23.y * 0.707106769 + r16.w;
  r16.zw = r18.xy + r17.zw;
  r17.zw = -r18.xy + r17.zw;
  r18.xy = r24.xy + r17.xy;
  r17.xy = r24.xy + -r17.xy;
  r28.zw = r16.xy + r15.wz;
  r28.xy = -r16.yx + r15.zw;
  r16.x = (int)r0.y ? r28.w : r28.x; r24.x = (int)r0.y ? r28.x : r28.w;
  r16.y = (int)r0.y ? r28.y : r28.z; r24.y = (int)r0.y ? r28.z : r28.y;
  r15.zw = r15.xy * r12.zz;
  r28.x = r15.y * -0.707106769 + -r15.z;
  r28.y = r15.x * -0.707106769 + r15.w;
  r15.xy = r28.xy + r14.zw;
  r14.zw = -r28.xy + r14.zw;
  g0[r1.w].val[0/4] = r16.z;
  g0[r2.w].val[0/4] = r18.x;
  g0[r11.w].val[0/4] = r24.x;
  g0[r11.z].val[0/4] = r15.x;
  g0[r13.x].val[0/4] = r17.z;
  g0[r11.x].val[0/4] = r17.x;
  g0[r14.x].val[0/4] = r16.x;
  g0[r12.x].val[0/4] = r14.z;
  GroupMemoryBarrierWithGroupSync();
  r28.x = g0[vThreadIDInGroup.x].val[0/4];
  r14.z = g0[r20.z].val[0/4];
  r15.x = g0[r20.w].val[0/4];
  r15.z = g0[r19.w].val[0/4];
  r15.w = g0[r21.z].val[0/4];
  r16.x = g0[r22.y].val[0/4];
  r16.z = g0[r22.w].val[0/4];
  r17.x = g0[r19.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r16.w;
  g0[r2.w].val[0/4] = r18.y;
  g0[r11.w].val[0/4] = r24.y;
  g0[r11.z].val[0/4] = r15.y;
  g0[r13.x].val[0/4] = r17.w;
  g0[r11.x].val[0/4] = r17.y;
  g0[r14.x].val[0/4] = r16.y;
  g0[r12.x].val[0/4] = r14.w;
  GroupMemoryBarrierWithGroupSync();
  r28.y = g0[vThreadIDInGroup.x].val[0/4];
  r14.w = g0[r20.z].val[0/4];
  r15.y = g0[r20.w].val[0/4];
  r16.y = g0[r19.w].val[0/4];
  r16.w = g0[r21.z].val[0/4];
  r17.y = g0[r22.y].val[0/4];
  r17.z = g0[r22.w].val[0/4];
  r17.w = g0[r19.z].val[0/4];
  r18.x = r22.x * r14.w;
  r18.y = r23.x * r14.z + -r18.x;
  r14.z = r14.z * r22.x;
  r18.x = r23.x * r14.w + r14.z;
  r14.z = r15.y * r1.z;
  r23.x = r1.y * r15.x + -r14.z;
  r1.z = r15.x * r1.z;
  r23.y = r1.y * r15.y + r1.z;
  r1.y = r16.y * r13.z;
  r15.x = r11.y * r15.z + -r1.y;
  r1.y = r15.z * r13.z;
  r15.y = r11.y * r16.y + r1.y;
  r1.y = r18.z * r16.w;
  r24.x = r12.y * r15.w + -r1.y;
  r1.y = r15.w * r18.z;
  r24.y = r12.y * r16.w + r1.y;
  r1.y = r19.x * r17.y;
  r29.y = r13.y * r16.x + -r1.y;
  r1.y = r16.x * r19.x;
  r29.x = r13.y * r17.y + r1.y;
  r1.y = r19.y * r17.z;
  r16.x = r13.w * r16.z + -r1.y;
  r1.y = r16.z * r19.y;
  r16.y = r13.w * r17.z + r1.y;
  r1.y = r21.x * r17.w;
  r19.x = r14.y * r17.x + -r1.y;
  r1.y = r17.x * r21.x;
  r19.y = r14.y * r17.w + r1.y;
  r1.yz = r28.xy + r24.xy;
  r13.yz = r28.xy + -r24.xy;
  r14.yz = r23.xy + r16.xy;
  r16.xy = r23.xy + -r16.xy;
  r16.zw = -r16.yx;
  r15.zw = r0.yy ? r16.zx : r16.yw;
  r16.xy = r14.yz + r1.yz;
  r16.zw = r15.zw + r13.yz;
  r13.yz = -r15.zw + r13.yz;
  r1.yz = -r14.yz + r1.yz;
  r14.yz = r29.yx + r18.yx;
  r15.zw = -r29.xy + r18.xy;
  r17.xy = r19.xy + r15.xy;
  r18.xy = -r19.xy + r15.xy;
  r18.zw = -r18.yx;
  r15.xy = r0.yy ? r18.xz : r18.wy;
  r17.zw = r17.xy + r14.yz;
  r18.xy = r15.zw + r15.xy;
  r15.xy = r15.zw + -r15.xy;
  r14.yz = -r17.xy + r14.yz;
  r15.zw = r18.xy * r12.zz;
  r17.x = r18.y * 0.707106769 + -r15.z;
  r17.y = r18.x * 0.707106769 + r15.w;
  r15.zw = r17.zw + r16.xy;
  r16.xy = -r17.zw + r16.xy;
  r17.zw = r17.xy + r16.zw;
  r16.zw = -r17.xy + r16.zw;
  r18.zw = r14.yz + r1.zy;
  r18.xy = -r14.zy + r1.yz;
  r17.x = (int)r0.y ? r18.w : r18.x; r18.x = (int)r0.y ? r18.x : r18.w;
  r17.y = (int)r0.y ? r18.y : r18.z; r18.y = (int)r0.y ? r18.z : r18.y;
  r1.yz = r15.xy * r12.zz;
  r19.x = r15.y * -0.707106769 + -r1.y;
  r19.y = r15.x * -0.707106769 + r1.z;
  r1.yz = r19.xy + r13.yz;
  r12.yz = -r19.xy + r13.yz;
  GroupMemoryBarrierWithGroupSync();
  r11.y = r24.w * r4.w;
  r15.x = r24.z * r4.z + -r11.y;
  r15.y = dot(r24.wz, r4.zw);
  r4.z = r26.w * r5.w;
  r19.x = r26.z * r5.z + -r4.z;
  r19.y = dot(r26.wz, r5.zw);
  r4.z = r27.y * r6.w;
  r23.x = r27.x * r6.z + -r4.z;
  r23.y = dot(r27.yx, r6.zw);
  r4.z = r21.w * r7.w;
  r24.x = r21.y * r7.z + -r4.z;
  r24.y = dot(r21.wy, r7.zw);
  r4.z = r25.y * r8.w;
  r21.x = r25.x * r8.z + -r4.z;
  r21.y = dot(r25.yx, r8.zw);
  r4.z = r25.w * r9.w;
  r25.x = r25.z * r9.z + -r4.z;
  r25.y = dot(r25.wz, r9.zw);
  r4.z = r26.y * r10.w;
  r27.x = r26.x * r10.z + -r4.z;
  r27.y = dot(r26.yx, r10.zw);
  r4.z = r20.y * r3.w;
  r26.x = r20.x * r3.z + -r4.z;
  r26.y = dot(r20.yx, r3.zw);
  r3.z = ~(int)r1.x;
  r0.w = (int)r0.w | (int)r3.z;
  r3.z = r15.w * r4.y;
  r20.x = r15.z * r4.x + -r3.z;
  r20.y = dot(r15.wz, r4.xy);
  r3.zw = r0.ww ? r20.xy : r15.zw;
  r4.x = r17.w * r5.y;
  r4.x = r17.z * r5.x + -r4.x;
  r4.y = dot(r17.wz, r5.xy);
  r4.xy = r0.ww ? r4.xy : r17.zw;
  r4.z = r18.y * r6.y;
  r5.x = r18.x * r6.x + -r4.z;
  r5.y = dot(r18.yx, r6.xy);
  r4.zw = r0.ww ? r5.xy : r18.xy;
  r5.x = r1.z * r7.y;
  r5.x = r1.y * r7.x + -r5.x;
  r5.y = dot(r1.zy, r7.xy);
  r1.yz = r0.ww ? r5.xy : r1.yz;
  r5.x = r16.y * r8.y;
  r5.x = r16.x * r8.x + -r5.x;
  r5.y = dot(r16.yx, r8.xy);
  r5.xy = r0.ww ? r5.xy : r16.xy;
  r5.z = r16.w * r9.y;
  r6.x = r16.z * r9.x + -r5.z;
  r6.y = dot(r16.wz, r9.xy);
  r5.zw = r0.ww ? r6.xy : r16.zw;
  r6.x = r17.y * r10.y;
  r6.x = r17.x * r10.x + -r6.x;
  r6.y = dot(r17.yx, r10.xy);
  r6.xy = r0.ww ? r6.xy : r17.xy;
  r6.z = r12.z * r3.y;
  r7.x = r12.y * r3.x + -r6.z;
  r7.y = dot(r12.zy, r3.xy);
  r3.xy = r0.ww ? r7.xy : r12.yz;
  if (r0.x == 0) {
    r6.zw = t1.Load(float4(0,0,0,0)).xz;
    r2.y = 0;
    r7.xy = t1.Load(r2.xyy).xz;
  } else {
    r6.zw = t1.Load(float4(0,0,0,0)).xz;
    r2.z = 0;
    r7.xy = t1.Load(r2.zxz).xz;
  }
  r0.w = max(r6.w, r7.x);
  r0.w = max(r6.z, r0.w);
  r0.z = r0.z ? r7.y : 1;
  r2.xy = r15.xy / r0.ww;
  r6.zw = r19.xy / r0.ww;
  r7.xy = r23.xy / r0.ww;
  r7.zw = r24.xy / r0.ww;
  r8.xy = r21.xy / r0.ww;
  r8.zw = r25.xy / r0.ww;
  r9.xy = r27.xy / r0.ww;
  r9.zw = r26.xy / r0.ww;
  r0.z = r1.x ? r0.z : r0.w;
  r3.zw = r3.zw / r0.zz;
  r4.xyzw = r4.xyzw / r0.zzzz;
  r1.xy = r1.yz / r0.zz;
  r5.xyzw = r5.xyzw / r0.zzzz;
  r6.xy = r6.xy / r0.zz;
  r0.zw = r3.xy / r0.zz;
  if (r0.y != 0) {
    r2.xy = float2(0.015625,0.015625) * r2.xy;
    r7.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r7.xyzw;
    r8.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r8.xyzw;
    r9.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r9.xyzw;
    r3.zw = float2(0.015625,0.015625) * r3.zw;
    r4.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r4.xyzw;
    r1.xy = float2(0.015625,0.015625) * r1.xy;
    r5.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r5.xyzw;
    r6.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r6.xyzw;
    r0.zw = float2(0.015625,0.015625) * r0.zw;
  }
  r3.xy = r2.xy + r8.xy;
  r2.xy = r2.xy + -r8.xy;
  r8.xy = r7.xy + r9.xy;
  r10.xy = r7.xy + -r9.xy;
  r10.zw = -r10.xy;
  r7.xy = r0.yy ? r10.yz : r10.wx;
  r9.xy = r8.xy + r3.xy;
  r10.xy = r7.xy + r2.xy;
  r2.xy = -r7.xy + r2.xy;
  r3.xy = -r8.xy + r3.xy;
  r7.xy = r6.zw + r8.zw;
  r6.zw = r6.wz + -r8.wz;
  r8.xy = r7.zw + r9.zw;
  r15.xy = r7.zw + -r9.zw;
  r15.zw = -r15.xy;
  r7.zw = r0.yy ? r15.zy : r15.xw;
  r8.zw = r8.xy + r7.xy;
  r9.zw = r7.zw + r6.zw;
  r6.zw = -r7.zw + r6.zw;
  r7.xy = -r8.xy + r7.xy;
  r7.zw = r12.ww * r9.zw;
  r8.x = r9.w * 0.707106769 + -r7.z;
  r8.y = r9.z * 0.707106769 + r7.w;
  r7.zw = r9.xy + r8.zw;
  r8.zw = r9.xy + -r8.zw;
  r9.xy = r10.xy + r8.xy;
  r8.xy = r10.xy + -r8.xy;
  r10.xy = r7.xy + r3.yx;
  r10.zw = -r7.yx + r3.xy;
  r3.x = (int)r0.y ? r10.z : r10.y; r7.x = (int)r0.y ? r10.y : r10.z;
  r3.y = (int)r0.y ? r10.x : r10.w; r7.y = (int)r0.y ? r10.w : r10.x;
  r9.zw = r12.ww * r6.zw;
  r10.x = r6.w * -0.707106769 + -r9.z;
  r10.y = r6.z * -0.707106769 + r9.w;
  r6.zw = r10.xy + r2.xy;
  r2.xy = -r10.xy + r2.xy;
  g0[r1.w].val[0/4] = r7.z;
  g0[r2.w].val[0/4] = r9.x;
  g0[r11.w].val[0/4] = r7.x;
  g0[r11.z].val[0/4] = r6.z;
  g0[r13.x].val[0/4] = r8.z;
  g0[r11.x].val[0/4] = r8.x;
  g0[r14.x].val[0/4] = r3.x;
  g0[r12.x].val[0/4] = r2.x;
  GroupMemoryBarrierWithGroupSync();
  r10.x = g0[vThreadIDInGroup.x].val[0/4];
  r1.z = g0[r20.z].val[0/4];
  r2.x = g0[r20.w].val[0/4];
  r2.z = g0[r19.w].val[0/4];
  r3.x = g0[r21.z].val[0/4];
  r6.z = g0[r22.y].val[0/4];
  r7.x = g0[r22.w].val[0/4];
  r7.z = g0[r19.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r7.w;
  g0[r2.w].val[0/4] = r9.y;
  g0[r11.w].val[0/4] = r7.y;
  g0[r11.z].val[0/4] = r6.w;
  g0[r13.x].val[0/4] = r8.w;
  g0[r11.x].val[0/4] = r8.y;
  g0[r14.x].val[0/4] = r3.y;
  g0[r12.x].val[0/4] = r2.y;
  GroupMemoryBarrierWithGroupSync();
  r10.y = g0[vThreadIDInGroup.x].val[0/4];
  r2.y = g0[r20.z].val[0/4];
  r3.y = g0[r20.w].val[0/4];
  r6.w = g0[r19.w].val[0/4];
  r7.y = g0[r21.z].val[0/4];
  r7.w = g0[r22.y].val[0/4];
  r8.x = g0[r22.w].val[0/4];
  r8.y = g0[r19.z].val[0/4];
  sincos(r22.z, r9.x, r15.x);
  r8.z = r9.x * r2.y;
  r16.y = r15.x * r1.z + -r8.z;
  r1.z = r9.x * r1.z;
  r16.x = r15.x * r2.y + r1.z;
  r1.z = r9.x * r9.x;
  r1.z = r15.x * r15.x + -r1.z;
  r2.y = dot(r15.xx, r9.xx);
  r8.z = r2.y * r3.y;
  r17.x = r1.z * r2.x + -r8.z;
  r2.x = r2.x * r2.y;
  r17.y = r1.z * r3.y + r2.x;
  r2.x = r2.y * r9.x;
  r2.x = r1.z * r15.x + -r2.x;
  r3.y = r15.x * r2.y;
  r3.y = r1.z * r9.x + r3.y;
  r8.z = r3.y * r6.w;
  r18.x = r2.x * r2.z + -r8.z;
  r2.z = r3.y * r2.z;
  r18.y = r2.x * r6.w + r2.z;
  r2.z = r3.y * r9.x;
  r2.z = r2.x * r15.x + -r2.z;
  r6.w = r15.x * r3.y;
  r6.w = r2.x * r9.x + r6.w;
  r8.z = r6.w * r7.y;
  r19.x = r2.z * r3.x + -r8.z;
  r3.x = r6.w * r3.x;
  r19.y = r2.z * r7.y + r3.x;
  r3.x = r6.w * r9.x;
  r3.x = r2.z * r15.x + -r3.x;
  r7.y = r15.x * r6.w;
  r7.y = r2.z * r9.x + r7.y;
  r8.z = r7.y * r7.w;
  r20.y = r3.x * r6.z + -r8.z;
  r6.z = r7.y * r6.z;
  r20.x = r3.x * r7.w + r6.z;
  r6.z = r7.y * r9.x;
  r6.z = r3.x * r15.x + -r6.z;
  r7.w = r15.x * r7.y;
  r7.w = r3.x * r9.x + r7.w;
  r8.z = r7.w * r8.x;
  r21.x = r6.z * r7.x + -r8.z;
  r7.x = r7.x * r7.w;
  r21.y = r6.z * r8.x + r7.x;
  r7.x = r7.w * r9.x;
  r7.x = r6.z * r15.x + -r7.x;
  r8.x = r15.x * r7.w;
  r8.x = r6.z * r9.x + r8.x;
  r8.z = r8.x * r8.y;
  r23.x = r7.x * r7.z + -r8.z;
  r7.z = r8.x * r7.z;
  r23.y = r7.x * r8.y + r7.z;
  r8.yz = r19.xy + r10.xy;
  r9.yz = -r19.xy + r10.xy;
  r10.xy = r21.xy + r17.xy;
  r17.xy = -r21.xy + r17.xy;
  r17.zw = -r17.xy;
  r10.zw = r0.yy ? r17.yz : r17.wx;
  r12.yz = r10.xy + r8.yz;
  r13.yz = r10.zw + r9.yz;
  r9.yz = -r10.zw + r9.yz;
  r8.yz = -r10.xy + r8.yz;
  r10.xy = r20.yx + r16.yx;
  r10.zw = -r20.xy + r16.xy;
  r14.yz = r23.xy + r18.xy;
  r16.xy = -r23.xy + r18.xy;
  r16.zw = -r16.xy;
  r15.yz = r0.yy ? r16.zy : r16.xw;
  r16.xy = r14.yz + r10.xy;
  r16.zw = r15.yz + r10.zw;
  r10.zw = -r15.yz + r10.zw;
  r10.xy = -r14.yz + r10.xy;
  r14.yz = r16.zw * r12.ww;
  r17.x = r16.w * 0.707106769 + -r14.y;
  r17.y = r16.z * 0.707106769 + r14.z;
  r18.xy = r16.xy + r12.yz;
  r16.xy = -r16.xy + r12.yz;
  r23.xy = r17.xy + r13.yz;
  r17.xy = -r17.xy + r13.yz;
  r24.xy = r10.xy + r8.zy;
  r24.zw = -r10.yx + r8.yz;
  r24.x = (int)r0.y ? r24.z : r24.y; r25.x = (int)r0.y ? r24.y : r24.z;
  r24.y = (int)r0.y ? r24.x : r24.w; r25.y = (int)r0.y ? r24.w : r24.x;
  r8.yz = r12.ww * r10.zw;
  r10.x = r10.w * -0.707106769 + -r8.y;
  r10.y = r10.z * -0.707106769 + r8.z;
  r26.xy = r10.xy + r9.yz;
  r10.xy = -r10.xy + r9.yz;
  GroupMemoryBarrierWithGroupSync();
  r8.yz = r3.zw + r5.xy;
  r3.zw = r3.zw + -r5.xy;
  r5.xy = r6.xy + r4.zw;
  r27.xy = -r6.xy + r4.zw;
  r27.zw = -r27.xy;
  r4.zw = r0.yy ? r27.yz : r27.wx;
  r6.xy = r8.yz + r5.xy;
  r9.yz = r4.zw + r3.zw;
  r3.zw = -r4.zw + r3.zw;
  r4.zw = r8.yz + -r5.xy;
  r5.xy = r4.xy + r5.zw;
  r4.xy = r4.yx + -r5.wz;
  r5.zw = r1.xy + r0.zw;
  r27.xy = r1.xy + -r0.zw;
  r27.zw = -r27.xy;
  r0.zw = r0.yy ? r27.zy : r27.xw;
  r1.xy = r5.xy + r5.zw;
  r8.yz = r4.xy + r0.zw;
  r0.zw = r4.xy + -r0.zw;
  r4.xy = r5.xy + -r5.zw;
  r5.xy = r12.ww * r8.yz;
  r19.x = r8.z * 0.707106769 + -r5.x;
  r19.y = r8.y * 0.707106769 + r5.y;
  r5.xy = r6.xy + r1.xy;
  r1.xy = r6.xy + -r1.xy;
  r5.zw = r19.xy + r9.yz;
  r6.xy = -r19.xy + r9.yz;
  r27.xy = r4.wz + r4.xy;
  r27.zw = r4.zw + -r4.yx;
  r4.x = (int)r0.y ? r27.z : r27.y; r19.x = (int)r0.y ? r27.y : r27.z;
  r4.y = (int)r0.y ? r27.x : r27.w; r19.y = (int)r0.y ? r27.w : r27.x;
  r4.zw = r12.ww * r0.zw;
  r20.x = r0.w * -0.707106769 + -r4.z;
  r20.y = r0.z * -0.707106769 + r4.w;
  r0.zw = r20.xy + r3.zw;
  r3.zw = -r20.xy + r3.zw;
  g0[r1.w].val[0/4] = r5.x;
  g0[r2.w].val[0/4] = r5.z;
  g0[r11.w].val[0/4] = r19.x;
  g0[r11.z].val[0/4] = r0.z;
  g0[r13.x].val[0/4] = r1.x;
  g0[r11.x].val[0/4] = r6.x;
  g0[r14.x].val[0/4] = r4.x;
  g0[r12.x].val[0/4] = r3.z;
  GroupMemoryBarrierWithGroupSync();
  r4.z = g0[vThreadIDInGroup.x].val[0/4];
  r0.z = g0[r20.z].val[0/4];
  r1.x = g0[r20.w].val[0/4];
  r3.z = g0[r19.w].val[0/4];
  r4.x = g0[r21.z].val[0/4];
  r5.x = g0[r22.y].val[0/4];
  r5.z = g0[r22.w].val[0/4];
  r6.x = g0[r19.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r5.y;
  g0[r2.w].val[0/4] = r5.w;
  g0[r11.w].val[0/4] = r19.y;
  g0[r11.z].val[0/4] = r0.w;
  g0[r13.x].val[0/4] = r1.y;
  g0[r11.x].val[0/4] = r6.y;
  g0[r14.x].val[0/4] = r4.y;
  g0[r12.x].val[0/4] = r3.w;
  GroupMemoryBarrierWithGroupSync();
  r4.w = g0[vThreadIDInGroup.x].val[0/4];
  r0.w = g0[r20.z].val[0/4];
  r1.y = g0[r20.w].val[0/4];
  r1.w = g0[r19.w].val[0/4];
  r2.w = g0[r21.z].val[0/4];
  r3.w = g0[r22.y].val[0/4];
  r4.y = g0[r22.w].val[0/4];
  r5.y = g0[r19.z].val[0/4];
  r5.w = r9.x * r0.w;
  r11.y = r15.x * r0.z + -r5.w;
  r0.z = r0.z * r9.x;
  r11.x = r15.x * r0.w + r0.z;
  r0.z = r2.y * r1.y;
  r9.x = r1.z * r1.x + -r0.z;
  r0.z = r1.x * r2.y;
  r9.y = r1.z * r1.y + r0.z;
  r0.z = r3.y * r1.w;
  r1.x = r2.x * r3.z + -r0.z;
  r0.z = r3.z * r3.y;
  r1.y = r2.x * r1.w + r0.z;
  r0.z = r6.w * r2.w;
  r0.z = r2.z * r4.x + -r0.z;
  r1.z = r4.x * r6.w;
  r0.w = r2.z * r2.w + r1.z;
  r1.z = r7.y * r3.w;
  r2.y = r3.x * r5.x + -r1.z;
  r1.z = r5.x * r7.y;
  r2.x = r3.x * r3.w + r1.z;
  r1.z = r7.w * r4.y;
  r3.x = r6.z * r5.z + -r1.z;
  r1.z = r5.z * r7.w;
  r3.y = r6.z * r4.y + r1.z;
  r1.z = r8.x * r5.y;
  r4.x = r7.x * r6.x + -r1.z;
  r1.z = r6.x * r8.x;
  r4.y = r7.x * r5.y + r1.z;
  r1.zw = r4.zw + r0.zw;
  r0.zw = r4.zw + -r0.zw;
  r2.zw = r9.xy + r3.xy;
  r3.xy = r9.xy + -r3.xy;
  r3.zw = -r3.xy;
  r3.xy = r0.yy ? r3.yz : r3.wx;
  r3.zw = r2.zw + r1.zw;
  r4.zw = r3.xy + r0.zw;
  r0.zw = -r3.xy + r0.zw;
  r1.zw = -r2.zw + r1.zw;
  r2.zw = r11.yx + r2.yx;
  r2.xy = r11.xy + -r2.xy;
  r3.xy = r4.xy + r1.xy;
  r5.xy = -r4.xy + r1.xy;
  r5.zw = -r5.xy;
  r1.xy = r0.yy ? r5.zy : r5.xw;
  r4.xy = r3.xy + r2.zw;
  r5.xy = r2.xy + r1.xy;
  r1.xy = r2.xy + -r1.xy;
  r2.xy = -r3.xy + r2.zw;
  r2.zw = r12.ww * r5.xy;
  r5.z = r5.y * 0.707106769 + -r2.z;
  r5.w = r5.x * 0.707106769 + r2.w;
  r18.zw = r4.xy + r3.zw;
  r16.zw = -r4.xy + r3.zw;
  r23.zw = r5.zw + r4.zw;
  r17.zw = -r5.zw + r4.zw;
  r3.xy = r2.xy + r1.wz;
  r3.zw = -r2.yx + r1.zw;
  r2.x = (int)r0.y ? r3.z : r3.y; r3.x = (int)r0.y ? r3.y : r3.z;
  r2.y = (int)r0.y ? r3.x : r3.w; r3.y = (int)r0.y ? r3.w : r3.x;
  r1.zw = r12.ww * r1.xy;
  r2.z = r1.y * -0.707106769 + -r1.z;
  r2.w = r1.x * -0.707106769 + r1.w;
  r26.zw = r2.zw + r0.zw;
  r10.zw = -r2.zw + r0.zw;
  if (r0.x != 0) {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[1].x));
    if (r0.x != 0) {
      r1.x = vThreadIDInGroup.x;
      r1.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r18.xyzw
      r1.x = (int)vThreadIDInGroup.x + 8;
    } else {
      r1.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyyy, r23.xyzw
      r1.x = (int)r1.x + 8;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
      r25.zw = r3.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyyy, r25.xyzw
      r1.x = (int)r1.x + 8;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyyy, r26.xyzw
      r1.x = (int)r1.x + 8;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyyy, r16.xyzw
      r1.x = (int)r1.x + 8;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyyy, r17.xyzw
      r1.x = (int)r1.x + 8;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
      r24.zw = r2.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyyy, r24.xyzw
      r1.x = (int)r1.x + 8;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyyy, r10.xyzw
    }
  } else {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[1].y));
    if (r0.x != 0) {
      r1.x = vThreadGroupID.z;
      r1.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r18.xyzw
      r1.x = (int)vThreadIDInGroup.x + 8;
    } else {
      r1.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.yxxx, r23.xyzw
      r1.x = (int)r1.x + 8;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
      r25.zw = r3.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.yxxx, r25.xyzw
      r1.x = (int)r1.x + 8;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.yxxx, r26.xyzw
      r1.x = (int)r1.x + 8;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.yxxx, r16.xyzw
      r1.x = (int)r1.x + 8;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.yxxx, r17.xyzw
      r1.x = (int)r1.x + 8;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
      r24.zw = r2.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.yxxx, r24.xyzw
      r1.x = (int)r1.x + 8;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.yxxx, r10.xyzw
    }
  }
  return;
}