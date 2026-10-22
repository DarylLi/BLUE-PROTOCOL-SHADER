// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[1024];
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[16];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.xy = asint(cb0[4].xx) & int2(1,2);
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
    r0.z = vThreadIDInGroup.x;
    r1.y = vThreadGroupID.z;
    r1.x = (int)r0.z + asint(cb0[1].x);
    r0.z = cmp(asuint(cb0[1].z) >= (uint)r1.x);
    if (r0.z != 0) {
      r1.zw = float2(0,0);
      r2.xyzw = t0.Load(r1.xyz).xyzw;
      x0[0].xy = r2.xy;
      x0[8].xy = r2.zw;
    }
    r2.xyzw = (int4)r1.xxxx + int4(256,64,128,192);
    r3.xyzw = cmp(asuint(cb0[1].zzzz) >= (uint4)r2.yzwx);
    if (r3.x != 0) {
      r4.x = r2.y;
      r4.y = r1.y;
      r4.zw = float2(0,0);
      r4.xyzw = t0.Load(r4.xyz).xyzw;
      x0[1].xy = r4.xy;
      x0[9].xy = r4.zw;
    }
    if (r3.y != 0) {
      r4.x = r2.z;
      r4.y = r1.y;
      r4.zw = float2(0,0);
      r4.xyzw = t0.Load(r4.xyz).xyzw;
      x0[2].xy = r4.xy;
      x0[10].xy = r4.zw;
    }
    if (r3.z != 0) {
      r4.x = r2.w;
      r4.y = r1.y;
      r4.zw = float2(0,0);
      r4.xyzw = t0.Load(r4.xyz).xyzw;
      x0[3].xy = r4.xy;
      x0[11].xy = r4.zw;
    }
    if (r3.w != 0) {
      r2.y = r1.y;
      r2.zw = float2(0,0);
      r2.xyzw = t0.Load(r2.xyz).xyzw;
      x0[4].xy = r2.xy;
      x0[12].xy = r2.zw;
    }
    r2.xyz = (int3)r1.xxx + int3(320,384,448);
    r3.xyz = cmp(asuint(cb0[1].zzz) >= (uint3)r2.xyz);
    if (r3.x != 0) {
      r1.x = r2.x;
      r1.zw = float2(0,0);
      r4.xyzw = t0.Load(r1.xyz).xyzw;
      x0[5].xy = r4.xy;
      x0[13].xy = r4.zw;
    }
    if (r3.y != 0) {
      r1.x = r2.y;
      r1.zw = float2(0,0);
      r4.xyzw = t0.Load(r1.xyz).xyzw;
      x0[6].xy = r4.xy;
      x0[14].xy = r4.zw;
    }
    if (r3.z != 0) {
      r1.x = r2.z;
      r1.zw = float2(0,0);
      r1.xyzw = t0.Load(r1.xyz).xyzw;
      x0[7].xy = r1.xy;
      x0[15].xy = r1.zw;
    }
  } else {
    r1.x = vThreadGroupID.z;
    r0.z = vThreadIDInGroup.x;
    r1.y = (int)r0.z + asint(cb0[1].y);
    r0.z = cmp(asuint(cb0[1].w) >= (uint)r1.y);
    if (r0.z != 0) {
      r1.zw = float2(0,0);
      r2.xyzw = t0.Load(r1.xyz).xyzw;
      x0[0].xy = r2.xy;
      x0[8].xy = r2.zw;
    }
    r2.xyzw = (int4)r1.yyyy + int4(64,256,128,192);
    r3.xyzw = cmp(asuint(cb0[1].wwww) >= (uint4)r2.xzwy);
    if (r3.x != 0) {
      r4.x = r1.x;
      r4.y = r2.x;
      r4.zw = float2(0,0);
      r4.xyzw = t0.Load(r4.xyz).xyzw;
      x0[1].xy = r4.xy;
      x0[9].xy = r4.zw;
    }
    if (r3.y != 0) {
      r4.x = r1.x;
      r4.y = r2.z;
      r4.zw = float2(0,0);
      r4.xyzw = t0.Load(r4.xyz).xyzw;
      x0[2].xy = r4.xy;
      x0[10].xy = r4.zw;
    }
    if (r3.z != 0) {
      r4.x = r1.x;
      r4.y = r2.w;
      r4.zw = float2(0,0);
      r4.xyzw = t0.Load(r4.xyz).xyzw;
      x0[3].xy = r4.xy;
      x0[11].xy = r4.zw;
    }
    if (r3.w != 0) {
      r2.x = r1.x;
      r2.zw = float2(0,0);
      r2.xyzw = t0.Load(r2.xyz).xyzw;
      x0[4].xy = r2.xy;
      x0[12].xy = r2.zw;
    }
    r2.xyz = (int3)r1.yyy + int3(320,448,384);
    r3.xyz = cmp(asuint(cb0[1].www) >= (uint3)r2.xzy);
    if (r3.x != 0) {
      r1.y = r2.x;
      r1.zw = float2(0,0);
      r4.xyzw = t0.Load(r1.xyz).xyzw;
      x0[5].xy = r4.xy;
      x0[13].xy = r4.zw;
    }
    if (r3.y != 0) {
      r1.y = r2.z;
      r1.zw = float2(0,0);
      r4.xyzw = t0.Load(r1.xyz).xyzw;
      x0[6].xy = r4.xy;
      x0[14].xy = r4.zw;
    }
    if (r3.z != 0) {
      r2.x = r1.x;
      r2.zw = float2(0,0);
      r1.xyzw = t0.Load(r2.xyz).xyzw;
      x0[7].xy = r1.xy;
      x0[15].xy = r1.zw;
    }
  }
  r0.zw = x0[0].xy;
  r1.xy = x0[1].xy;
  r1.zw = x0[2].xy;
  r2.xy = x0[3].xy;
  r2.zw = x0[4].xy;
  r3.xy = x0[5].xy;
  r3.zw = x0[6].xy;
  r4.xy = x0[7].xy;
  r4.zw = x0[8].xy;
  r5.xy = x0[9].xy;
  r5.zw = x0[10].xy;
  r6.xy = x0[11].xy;
  r6.zw = x0[12].xy;
  r7.xy = x0[13].xy;
  r7.zw = x0[14].xy;
  r8.xy = x0[15].xy;
  if (r0.y == 0) {
    r0.zw = float2(0.001953125,0.001953125) * r0.zw;
    r1.xyzw = float4(0.001953125,0.001953125,0.001953125,0.001953125) * r1.xyzw;
    r2.xyzw = float4(0.001953125,0.001953125,0.001953125,0.001953125) * r2.xyzw;
    r3.xyzw = float4(0.001953125,0.001953125,0.001953125,0.001953125) * r3.xyzw;
    r4.xyzw = float4(0.001953125,0.001953125,0.001953125,0.001953125) * r4.xyzw;
    r5.xyzw = float4(0.001953125,0.001953125,0.001953125,0.001953125) * r5.xyzw;
    r6.xyzw = float4(0.001953125,0.001953125,0.001953125,0.001953125) * r6.xyzw;
    r7.xyzw = float4(0.001953125,0.001953125,0.001953125,0.001953125) * r7.xyzw;
    r8.xy = float2(0.001953125,0.001953125) * r8.xy;
  }
  r8.z = (uint)vThreadIDInGroup.x << 3;
  r9.xy = r0.zw + r2.zw;
  r0.zw = r0.zw + -r2.zw;
  r2.zw = r1.zw + r3.zw;
  r10.xy = r1.zw + -r3.zw;
  r10.zw = -r10.yx;
  r1.zw = r0.yy ? r10.zx : r10.yw;
  r3.zw = r9.xy + r2.zw;
  r9.zw = r1.zw + r0.zw;
  r0.zw = -r1.zw + r0.zw;
  r1.zw = r9.xy + -r2.zw;
  r2.zw = r1.xy + r3.xy;
  r1.xy = r1.yx + -r3.yx;
  r3.xy = r2.xy + r4.xy;
  r10.xy = r2.xy + -r4.xy;
  r10.zw = -r10.yx;
  r2.xy = r0.yy ? r10.xz : r10.wy;
  r4.xy = r3.xy + r2.zw;
  r9.xy = r2.xy + r1.xy;
  r1.xy = -r2.xy + r1.xy;
  r2.xy = -r3.xy + r2.zw;
  r2.z = r0.y ? 0.707106769 : -0.707106769;
  r3.xy = r2.zz * r9.xy;
  r10.x = r9.y * 0.707106769 + -r3.x;
  r10.y = r9.x * 0.707106769 + r3.y;
  r3.xy = r4.xy + r3.zw;
  r3.zw = -r4.xy + r3.zw;
  r4.xy = r10.xy + r9.zw;
  r9.xy = -r10.xy + r9.zw;
  r10.zw = r2.xy + r1.wz;
  r10.xy = -r2.yx + r1.zw;
  r2.x = (int)r0.y ? r10.w : r10.x; r10.x = (int)r0.y ? r10.x : r10.w;
  r2.y = (int)r0.y ? r10.y : r10.z; r10.y = (int)r0.y ? r10.z : r10.y;
  r1.zw = r2.zz * r1.xy;
  r11.x = r1.y * -0.707106769 + -r1.z;
  r11.y = r1.x * -0.707106769 + r1.w;
  r1.xy = r11.xy + r0.zw;
  r0.zw = -r11.xy + r0.zw;
  if (27 == 0) r1.z = 0; else if (27+2 < 32) {   r1.z = (uint)vThreadIDInGroup.x << (32-(27 + 2)); r1.z = (uint)r1.z >> (32-27);  } else r1.z = (uint)vThreadIDInGroup.x >> 2;
  r1.z = (int)r1.z + (int)r8.z;
  g0[r1.z].val[0/4] = r3.x;
  bitmask.z = ((~(-1 << 6)) << 0) & 0xffffffff;  r8.z = (((uint)vThreadIDInGroup.x << 0) & bitmask.z) | ((uint)64 & ~bitmask.z);
  bitmask.w = ((~(-1 << 29)) << 3) & 0xffffffff;  r8.w = (((uint)vThreadIDInGroup.x << 3) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r9.zw = (uint2)r8.wz >> int2(5,5);
  r10.zw = (int2)r8.wz + (int2)r9.zw;
  g0[r10.z].val[0/4] = r4.x;
  r11.xy = (int2)r8.wz + int2(1,64);
  r11.zw = (uint2)r11.xy >> int2(5,5);
  r12.xy = (int2)r11.zw + (int2)r11.xy;
  g0[r12.x].val[0/4] = r10.x;
  r12.zw = (int2)r11.xy | int2(3,192);
  r1.w = (int)r11.z + (int)r12.z;
  g0[r1.w].val[0/4] = r1.x;
  r11.xz = (int2)r12.zw + int2(1,64);
  r13.xy = (uint2)r11.xz >> int2(5,5);
  r13.zw = (int2)r11.xz + (int2)r13.xy;
  g0[r13.z].val[0/4] = r3.z;
  r3.xz = (int2)r11.xz | int2(5,320);
  r1.x = (int)r13.x + (int)r3.x;
  g0[r1.x].val[0/4] = r9.x;
  r9.xz = (int2)r3.xz + int2(1,64);
  r14.xy = (uint2)r9.xz >> int2(5,5);
  r14.zw = (int2)r9.xz + (int2)r14.xy;
  g0[r14.z].val[0/4] = r2.x;
  r2.xw = (int2)r9.xz | int2(7,448);
  r2.x = (int)r14.x + (int)r2.x;
  g0[r2.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r15.xy = (uint2)vThreadIDInGroup.xx >> int2(5,3);
  r0.z = (int)r15.x + (int)vThreadIDInGroup.x;
  r16.x = g0[r0.z].val[0/4];
  r3.x = g0[r10.w].val[0/4];
  r4.x = g0[r12.y].val[0/4];
  r9.x = (uint)r12.w >> 5;
  r10.x = (int)r9.x + (int)r12.w;
  r11.x = g0[r10.x].val[0/4];
  r12.z = g0[r13.w].val[0/4];
  r13.x = (uint)r3.z >> 5;
  r14.x = (int)r3.z + (int)r13.x;
  r15.z = g0[r14.x].val[0/4];
  r15.w = g0[r14.w].val[0/4];
  r16.z = (uint)r2.w >> 5;
  r16.w = (int)r2.w + (int)r16.z;
  r17.x = g0[r16.w].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.z].val[0/4] = r3.y;
  g0[r10.z].val[0/4] = r4.y;
  g0[r12.x].val[0/4] = r10.y;
  g0[r1.w].val[0/4] = r1.y;
  g0[r13.z].val[0/4] = r3.w;
  g0[r1.x].val[0/4] = r9.y;
  g0[r14.z].val[0/4] = r2.y;
  g0[r2.x].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r16.y = g0[r0.z].val[0/4];
  r0.w = g0[r10.w].val[0/4];
  r1.y = g0[r12.y].val[0/4];
  r2.y = g0[r10.x].val[0/4];
  r3.y = g0[r13.w].val[0/4];
  r3.w = g0[r14.x].val[0/4];
  r4.y = g0[r14.w].val[0/4];
  r9.y = g0[r16.w].val[0/4];
  r10.y = (int)vThreadIDInGroup.x & 7;
  r17.y = (uint)r10.y;
  r17.yz = float2(0.0981747732,-0.0981747732) * r17.yy;
  r17.y = r0.y ? r17.y : r17.z;
  sincos(r17.y, r18.x, r19.x);
  r17.y = r18.x * r0.w;
  r20.y = r19.x * r3.x + -r17.y;
  r3.x = r18.x * r3.x;
  r20.x = r19.x * r0.w + r3.x;
  r0.w = r18.x * r18.x;
  r0.w = r19.x * r19.x + -r0.w;
  r3.x = dot(r19.xx, r18.xx);
  r17.y = r3.x * r1.y;
  r21.x = r0.w * r4.x + -r17.y;
  r4.x = r4.x * r3.x;
  r21.y = r0.w * r1.y + r4.x;
  r1.y = r3.x * r18.x;
  r1.y = r0.w * r19.x + -r1.y;
  r4.x = r19.x * r3.x;
  r4.x = r0.w * r18.x + r4.x;
  r17.y = r4.x * r2.y;
  r22.x = r1.y * r11.x + -r17.y;
  r11.x = r11.x * r4.x;
  r22.y = r1.y * r2.y + r11.x;
  r2.y = r4.x * r18.x;
  r2.y = r1.y * r19.x + -r2.y;
  r11.x = r19.x * r4.x;
  r11.x = r1.y * r18.x + r11.x;
  r17.y = r11.x * r3.y;
  r23.x = r2.y * r12.z + -r17.y;
  r12.z = r12.z * r11.x;
  r23.y = r2.y * r3.y + r12.z;
  r3.y = r11.x * r18.x;
  r3.y = r2.y * r19.x + -r3.y;
  r12.z = r19.x * r11.x;
  r12.z = r2.y * r18.x + r12.z;
  r17.y = r12.z * r3.w;
  r24.y = r3.y * r15.z + -r17.y;
  r15.z = r15.z * r12.z;
  r24.x = r3.y * r3.w + r15.z;
  r3.w = r12.z * r18.x;
  r3.w = r3.y * r19.x + -r3.w;
  r15.z = r19.x * r12.z;
  r15.z = r3.y * r18.x + r15.z;
  r17.y = r15.z * r4.y;
  r25.x = r3.w * r15.w + -r17.y;
  r15.w = r15.w * r15.z;
  r25.y = r3.w * r4.y + r15.w;
  r4.y = r15.z * r18.x;
  r4.y = r3.w * r19.x + -r4.y;
  r15.w = r19.x * r15.z;
  r15.w = r3.w * r18.x + r15.w;
  r17.y = r15.w * r9.y;
  r26.x = r4.y * r17.x + -r17.y;
  r17.x = r17.x * r15.w;
  r26.y = r4.y * r9.y + r17.x;
  r9.y = mad((int)r15.y, 64, (int)r10.y);
  r17.xy = r23.xy + r16.xy;
  r16.xy = -r23.xy + r16.xy;
  r17.zw = r25.xy + r21.xy;
  r21.xy = -r25.xy + r21.xy;
  r21.zw = -r21.yx;
  r18.yz = r0.yy ? r21.zx : r21.yw;
  r19.yz = r17.xy + r17.zw;
  r20.zw = r18.yz + r16.xy;
  r16.xy = -r18.yz + r16.xy;
  r17.xy = r17.xy + -r17.zw;
  r17.zw = r24.yx + r20.yx;
  r18.yz = -r24.xy + r20.xy;
  r20.xy = r26.xy + r22.xy;
  r21.xy = -r26.xy + r22.xy;
  r21.zw = -r21.yx;
  r21.xy = r0.yy ? r21.xz : r21.wy;
  r21.zw = r20.xy + r17.zw;
  r22.xy = r21.xy + r18.yz;
  r18.yz = -r21.xy + r18.yz;
  r17.zw = -r20.xy + r17.zw;
  r20.xy = r22.xy * r2.zz;
  r21.x = r22.y * 0.707106769 + -r20.x;
  r21.y = r22.x * 0.707106769 + r20.y;
  r20.xy = r21.zw + r19.yz;
  r19.yz = -r21.zw + r19.yz;
  r21.zw = r21.xy + r20.zw;
  r20.zw = -r21.xy + r20.zw;
  r22.zw = r17.yx + r17.zw;
  r22.xy = r17.xy + -r17.wz;
  r17.x = (int)r0.y ? r22.w : r22.x; r21.x = (int)r0.y ? r22.x : r22.w;
  r17.y = (int)r0.y ? r22.y : r22.z; r21.y = (int)r0.y ? r22.z : r22.y;
  r17.zw = r18.yz * r2.zz;
  r22.x = r18.z * -0.707106769 + -r17.z;
  r22.y = r18.y * -0.707106769 + r17.w;
  r17.zw = r22.xy + r16.xy;
  r16.xy = -r22.xy + r16.xy;
  GroupMemoryBarrierWithGroupSync();
  r10.y = (uint)r9.y >> 5;
  r10.y = (uint)r10.y << 3;
  r15.y = (int)r9.y + (int)r10.y;
  g0[r15.y].val[0/4] = r20.x;
  r9.y = (int)r9.y + 8;
  r10.y = (int)r10.y + (int)r9.y;
  g0[r10.y].val[0/4] = r21.z;
  r9.y = (int)r9.y + 8;
  r18.y = (uint)r9.y >> 5;
  r18.y = (uint)r18.y << 3;
  r18.z = (int)r9.y + (int)r18.y;
  g0[r18.z].val[0/4] = r21.x;
  r9.y = (int)r9.y | 24;
  r18.y = (int)r18.y + (int)r9.y;
  g0[r18.y].val[0/4] = r17.z;
  r9.y = (int)r9.y + 8;
  r17.z = (uint)r9.y >> 5;
  r17.z = (uint)r17.z << 3;
  r18.w = (int)r9.y + (int)r17.z;
  g0[r18.w].val[0/4] = r19.y;
  r9.y = (int)r9.y | 40;
  r17.z = (int)r17.z + (int)r9.y;
  g0[r17.z].val[0/4] = r20.z;
  r9.y = (int)r9.y + 8;
  r19.y = (uint)r9.y >> 5;
  r19.y = (uint)r19.y << 3;
  r19.w = (int)r9.y + (int)r19.y;
  g0[r19.w].val[0/4] = r17.x;
  r9.y = (int)r9.y | 56;
  r9.y = (int)r19.y + (int)r9.y;
  g0[r9.y].val[0/4] = r16.x;
  GroupMemoryBarrierWithGroupSync();
  r15.x = (uint)r15.x << 3;
  r15.x = (int)r15.x + (int)vThreadIDInGroup.x;
  r22.x = g0[r15.x].val[0/4];
  r9.xw = (uint2)r9.xw << int2(3,3);
  r9.w = (int)r8.z + (int)r9.w;
  r16.x = g0[r9.w].val[0/4];
  r11.w = (uint)r11.w << 3;
  r11.y = (int)r11.w + (int)r11.y;
  r11.w = g0[r11.y].val[0/4];
  r9.x = (int)r9.x + (int)r12.w;
  r12.w = g0[r9.x].val[0/4];
  r13.xy = (uint2)r13.xy << int2(3,3);
  r11.z = (int)r11.z + (int)r13.y;
  r13.y = g0[r11.z].val[0/4];
  r3.z = (int)r3.z + (int)r13.x;
  r13.x = g0[r3.z].val[0/4];
  r14.y = (uint)r14.y << 3;
  r9.z = (int)r9.z + (int)r14.y;
  r14.y = g0[r9.z].val[0/4];
  r16.z = (uint)r16.z << 3;
  r2.w = (int)r2.w + (int)r16.z;
  r16.z = g0[r2.w].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r15.y].val[0/4] = r20.y;
  g0[r10.y].val[0/4] = r21.w;
  g0[r18.z].val[0/4] = r21.y;
  g0[r18.y].val[0/4] = r17.w;
  g0[r18.w].val[0/4] = r19.z;
  g0[r17.z].val[0/4] = r20.w;
  g0[r19.w].val[0/4] = r17.y;
  g0[r9.y].val[0/4] = r16.y;
  GroupMemoryBarrierWithGroupSync();
  r22.y = g0[r15.x].val[0/4];
  r16.y = g0[r9.w].val[0/4];
  r17.x = g0[r11.y].val[0/4];
  r17.y = g0[r9.x].val[0/4];
  r17.w = g0[r11.z].val[0/4];
  r19.y = g0[r3.z].val[0/4];
  r19.z = g0[r9.z].val[0/4];
  r20.x = g0[r2.w].val[0/4];
  r20.y = (uint)vThreadIDInGroup.x;
  r20.yz = float2(0.0122718466,-0.0122718466) * r20.yy;
  r20.y = r0.y ? r20.y : r20.z;
  sincos(r20.y, r21.x, r23.x);
  r20.y = r21.x * r16.y;
  r24.y = r23.x * r16.x + -r20.y;
  r16.x = r21.x * r16.x;
  r24.x = r23.x * r16.y + r16.x;
  r16.x = r21.x * r21.x;
  r16.x = r23.x * r23.x + -r16.x;
  r16.y = dot(r23.xx, r21.xx);
  r20.y = r16.y * r17.x;
  r25.x = r16.x * r11.w + -r20.y;
  r11.w = r16.y * r11.w;
  r25.y = r16.x * r17.x + r11.w;
  r11.w = r16.y * r21.x;
  r11.w = r16.x * r23.x + -r11.w;
  r17.x = r23.x * r16.y;
  r17.x = r16.x * r21.x + r17.x;
  r20.y = r17.x * r17.y;
  r26.x = r11.w * r12.w + -r20.y;
  r12.w = r17.x * r12.w;
  r26.y = r11.w * r17.y + r12.w;
  r12.w = r17.x * r21.x;
  r12.w = r11.w * r23.x + -r12.w;
  r17.y = r23.x * r17.x;
  r17.y = r11.w * r21.x + r17.y;
  r20.y = r17.y * r17.w;
  r27.x = r12.w * r13.y + -r20.y;
  r13.y = r17.y * r13.y;
  r27.y = r12.w * r17.w + r13.y;
  r13.y = r17.y * r21.x;
  r13.y = r12.w * r23.x + -r13.y;
  r17.w = r23.x * r17.y;
  r17.w = r12.w * r21.x + r17.w;
  r20.y = r17.w * r19.y;
  r28.y = r13.y * r13.x + -r20.y;
  r13.x = r17.w * r13.x;
  r28.x = r13.y * r19.y + r13.x;
  r13.x = r17.w * r21.x;
  r13.x = r13.y * r23.x + -r13.x;
  r19.y = r23.x * r17.w;
  r19.y = r13.y * r21.x + r19.y;
  r20.y = r19.y * r19.z;
  r29.x = r13.x * r14.y + -r20.y;
  r14.y = r19.y * r14.y;
  r29.y = r13.x * r19.z + r14.y;
  r14.y = r19.y * r21.x;
  r14.y = r13.x * r23.x + -r14.y;
  r19.z = r23.x * r19.y;
  r19.z = r13.x * r21.x + r19.z;
  r20.y = r19.z * r20.x;
  r30.x = r14.y * r16.z + -r20.y;
  r16.z = r19.z * r16.z;
  r30.y = r14.y * r20.x + r16.z;
  r20.xy = r27.xy + r22.xy;
  r20.zw = -r27.xy + r22.xy;
  r21.yz = r29.xy + r25.xy;
  r22.xy = -r29.xy + r25.xy;
  r22.zw = -r22.yx;
  r22.xy = r0.yy ? r22.zx : r22.yw;
  r22.zw = r21.yz + r20.xy;
  r23.yz = r22.xy + r20.zw;
  r20.zw = -r22.xy + r20.zw;
  r20.xy = -r21.yz + r20.xy;
  r21.yz = r28.yx + r24.yx;
  r22.xy = -r28.xy + r24.xy;
  r24.xy = r30.xy + r26.xy;
  r25.xy = -r30.xy + r26.xy;
  r25.zw = -r25.yx;
  r24.zw = r0.yy ? r25.xz : r25.wy;
  r25.xy = r24.xy + r21.yz;
  r25.zw = r24.zw + r22.xy;
  r22.xy = -r24.zw + r22.xy;
  r21.yz = -r24.xy + r21.yz;
  r24.xy = r25.zw * r2.zz;
  r26.x = r25.w * 0.707106769 + -r24.x;
  r26.y = r25.z * 0.707106769 + r24.y;
  r24.xy = r25.xy + r22.zw;
  r25.xy = -r25.xy + r22.zw;
  r27.xy = r26.xy + r23.yz;
  r26.xy = -r26.xy + r23.yz;
  r28.zw = r21.yz + r20.yx;
  r28.xy = -r21.zy + r20.xy;
  r28.x = (int)r0.y ? r28.w : r28.x; r29.x = (int)r0.y ? r28.x : r28.w;
  r28.y = (int)r0.y ? r28.y : r28.z; r29.y = (int)r0.y ? r28.z : r28.y;
  r20.xy = r22.xy * r2.zz;
  r30.x = r22.y * -0.707106769 + -r20.x;
  r30.y = r22.x * -0.707106769 + r20.y;
  r22.xy = r30.xy + r20.zw;
  r20.xy = -r30.xy + r20.zw;
  GroupMemoryBarrierWithGroupSync();
  r21.yz = r4.zw + r6.zw;
  r4.zw = r4.zw + -r6.zw;
  r6.zw = r5.zw + r7.zw;
  r30.xy = r5.zw + -r7.zw;
  r30.zw = -r30.yx;
  r5.zw = r0.yy ? r30.zx : r30.yw;
  r7.zw = r21.yz + r6.zw;
  r23.yz = r5.zw + r4.zw;
  r4.zw = -r5.zw + r4.zw;
  r5.zw = r21.yz + -r6.zw;
  r6.zw = r5.xy + r7.xy;
  r5.xy = r5.yx + -r7.yx;
  r7.xy = r6.xy + r8.xy;
  r30.xy = r6.xy + -r8.xy;
  r30.zw = -r30.yx;
  r6.xy = r0.yy ? r30.xz : r30.wy;
  r8.xy = r7.xy + r6.zw;
  r21.yz = r6.xy + r5.xy;
  r5.xy = -r6.xy + r5.xy;
  r6.xy = -r7.xy + r6.zw;
  r6.zw = r21.yz * r2.zz;
  r7.x = r21.z * 0.707106769 + -r6.z;
  r7.y = r21.y * 0.707106769 + r6.w;
  r6.zw = r8.xy + r7.zw;
  r7.zw = -r8.xy + r7.zw;
  r8.xy = r23.yz + r7.xy;
  r7.xy = r23.yz + -r7.xy;
  r30.zw = r6.xy + r5.wz;
  r30.xy = -r6.yx + r5.zw;
  r6.x = (int)r0.y ? r30.w : r30.x; r30.x = (int)r0.y ? r30.x : r30.w;
  r6.y = (int)r0.y ? r30.y : r30.z; r30.y = (int)r0.y ? r30.z : r30.y;
  r5.zw = r5.xy * r2.zz;
  r31.x = r5.y * -0.707106769 + -r5.z;
  r31.y = r5.x * -0.707106769 + r5.w;
  r5.xy = r31.xy + r4.zw;
  r4.zw = -r31.xy + r4.zw;
  g0[r1.z].val[0/4] = r6.z;
  g0[r10.z].val[0/4] = r8.x;
  g0[r12.x].val[0/4] = r30.x;
  g0[r1.w].val[0/4] = r5.x;
  g0[r13.z].val[0/4] = r7.z;
  g0[r1.x].val[0/4] = r7.x;
  g0[r14.z].val[0/4] = r6.x;
  g0[r2.x].val[0/4] = r4.z;
  GroupMemoryBarrierWithGroupSync();
  r31.x = g0[r0.z].val[0/4];
  r4.z = g0[r10.w].val[0/4];
  r5.x = g0[r12.y].val[0/4];
  r5.z = g0[r10.x].val[0/4];
  r5.w = g0[r13.w].val[0/4];
  r6.x = g0[r14.x].val[0/4];
  r6.z = g0[r14.w].val[0/4];
  r7.x = g0[r16.w].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.z].val[0/4] = r6.w;
  g0[r10.z].val[0/4] = r8.y;
  g0[r12.x].val[0/4] = r30.y;
  g0[r1.w].val[0/4] = r5.y;
  g0[r13.z].val[0/4] = r7.w;
  g0[r1.x].val[0/4] = r7.y;
  g0[r14.z].val[0/4] = r6.y;
  g0[r2.x].val[0/4] = r4.w;
  GroupMemoryBarrierWithGroupSync();
  r31.y = g0[r0.z].val[0/4];
  r0.z = g0[r10.w].val[0/4];
  r1.x = g0[r12.y].val[0/4];
  r1.z = g0[r10.x].val[0/4];
  r1.w = g0[r13.w].val[0/4];
  r2.x = g0[r14.x].val[0/4];
  r4.w = g0[r14.w].val[0/4];
  r5.y = g0[r16.w].val[0/4];
  r6.y = r18.x * r0.z;
  r8.y = r19.x * r4.z + -r6.y;
  r4.z = r4.z * r18.x;
  r8.x = r19.x * r0.z + r4.z;
  r0.z = r3.x * r1.x;
  r12.x = r0.w * r5.x + -r0.z;
  r0.z = r5.x * r3.x;
  r12.y = r0.w * r1.x + r0.z;
  r0.z = r4.x * r1.z;
  r30.x = r1.y * r5.z + -r0.z;
  r0.z = r5.z * r4.x;
  r30.y = r1.y * r1.z + r0.z;
  r0.z = r11.x * r1.w;
  r1.x = r2.y * r5.w + -r0.z;
  r0.z = r5.w * r11.x;
  r1.y = r2.y * r1.w + r0.z;
  r0.z = r12.z * r2.x;
  r32.y = r3.y * r6.x + -r0.z;
  r0.z = r6.x * r12.z;
  r32.x = r3.y * r2.x + r0.z;
  r0.z = r15.z * r4.w;
  r2.x = r3.w * r6.z + -r0.z;
  r0.z = r6.z * r15.z;
  r2.y = r3.w * r4.w + r0.z;
  r0.z = r15.w * r5.y;
  r3.x = r4.y * r7.x + -r0.z;
  r0.z = r7.x * r15.w;
  r3.y = r4.y * r5.y + r0.z;
  r0.zw = r31.xy + r1.xy;
  r1.xy = r31.xy + -r1.xy;
  r1.zw = r12.xy + r2.xy;
  r4.xy = r12.xy + -r2.xy;
  r4.zw = -r4.yx;
  r2.xy = r0.yy ? r4.zx : r4.yw;
  r4.xy = r1.zw + r0.zw;
  r4.zw = r2.xy + r1.xy;
  r1.xy = -r2.xy + r1.xy;
  r0.zw = -r1.zw + r0.zw;
  r1.zw = r32.yx + r8.yx;
  r2.xy = -r32.xy + r8.xy;
  r5.xy = r30.xy + r3.xy;
  r6.xy = r30.xy + -r3.xy;
  r6.zw = -r6.yx;
  r3.xy = r0.yy ? r6.xz : r6.wy;
  r5.zw = r5.xy + r1.zw;
  r6.xy = r3.xy + r2.xy;
  r2.xy = -r3.xy + r2.xy;
  r1.zw = -r5.xy + r1.zw;
  r3.xy = r6.xy * r2.zz;
  r5.x = r6.y * 0.707106769 + -r3.x;
  r5.y = r6.x * 0.707106769 + r3.y;
  r3.xy = r5.zw + r4.xy;
  r4.xy = -r5.zw + r4.xy;
  r5.zw = r5.xy + r4.zw;
  r4.zw = -r5.xy + r4.zw;
  r6.zw = r1.zw + r0.wz;
  r6.xy = -r1.wz + r0.zw;
  r5.x = (int)r0.y ? r6.w : r6.x; r6.x = (int)r0.y ? r6.x : r6.w;
  r5.y = (int)r0.y ? r6.y : r6.z; r6.y = (int)r0.y ? r6.z : r6.y;
  r0.zw = r2.zz * r2.xy;
  r7.x = r2.y * -0.707106769 + -r0.z;
  r7.y = r2.x * -0.707106769 + r0.w;
  r0.zw = r7.xy + r1.xy;
  r1.xy = -r7.xy + r1.xy;
  GroupMemoryBarrierWithGroupSync();
  g0[r15.y].val[0/4] = r3.x;
  g0[r10.y].val[0/4] = r5.z;
  g0[r18.z].val[0/4] = r6.x;
  g0[r18.y].val[0/4] = r0.z;
  g0[r18.w].val[0/4] = r4.x;
  g0[r17.z].val[0/4] = r4.z;
  g0[r19.w].val[0/4] = r5.x;
  g0[r9.y].val[0/4] = r1.x;
  GroupMemoryBarrierWithGroupSync();
  r1.z = g0[r15.x].val[0/4];
  r0.z = g0[r9.w].val[0/4];
  r1.x = g0[r11.y].val[0/4];
  r2.x = g0[r9.x].val[0/4];
  r2.y = g0[r11.z].val[0/4];
  r3.x = g0[r3.z].val[0/4];
  r3.w = g0[r9.z].val[0/4];
  r4.x = g0[r2.w].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r15.y].val[0/4] = r3.y;
  g0[r10.y].val[0/4] = r5.w;
  g0[r18.z].val[0/4] = r6.y;
  g0[r18.y].val[0/4] = r0.w;
  g0[r18.w].val[0/4] = r4.y;
  g0[r17.z].val[0/4] = r4.w;
  g0[r19.w].val[0/4] = r5.y;
  g0[r9.y].val[0/4] = r1.y;
  GroupMemoryBarrierWithGroupSync();
  r1.w = g0[r15.x].val[0/4];
  r0.w = g0[r9.w].val[0/4];
  r1.y = g0[r11.y].val[0/4];
  r3.y = g0[r9.x].val[0/4];
  r4.y = g0[r11.z].val[0/4];
  r3.z = g0[r3.z].val[0/4];
  r4.z = g0[r9.z].val[0/4];
  r2.w = g0[r2.w].val[0/4];
  r4.w = r21.x * r0.w;
  r5.y = r23.x * r0.z + -r4.w;
  r0.z = r0.z * r21.x;
  r5.x = r23.x * r0.w + r0.z;
  r0.z = r16.y * r1.y;
  r6.x = r16.x * r1.x + -r0.z;
  r0.z = r1.x * r16.y;
  r6.y = r16.x * r1.y + r0.z;
  r0.z = r17.x * r3.y;
  r1.x = r11.w * r2.x + -r0.z;
  r0.z = r2.x * r17.x;
  r1.y = r11.w * r3.y + r0.z;
  r0.z = r17.y * r4.y;
  r0.z = r12.w * r2.y + -r0.z;
  r2.x = r2.y * r17.y;
  r0.w = r12.w * r4.y + r2.x;
  r2.x = r17.w * r3.z;
  r2.y = r13.y * r3.x + -r2.x;
  r3.x = r3.x * r17.w;
  r2.x = r13.y * r3.z + r3.x;
  r3.x = r19.y * r4.z;
  r3.x = r13.x * r3.w + -r3.x;
  r3.z = r3.w * r19.y;
  r3.y = r13.x * r4.z + r3.z;
  r3.z = r19.z * r2.w;
  r7.x = r14.y * r4.x + -r3.z;
  r3.z = r4.x * r19.z;
  r7.y = r14.y * r2.w + r3.z;
  r3.zw = r1.zw + r0.zw;
  r0.zw = r1.zw + -r0.zw;
  r1.zw = r6.xy + r3.xy;
  r4.xy = r6.xy + -r3.xy;
  r4.zw = -r4.yx;
  r3.xy = r0.yy ? r4.zx : r4.yw;
  r4.xy = r3.zw + r1.zw;
  r4.zw = r3.xy + r0.zw;
  r0.zw = -r3.xy + r0.zw;
  r1.zw = r3.zw + -r1.zw;
  r3.xy = r5.yx + r2.yx;
  r2.xy = r5.xy + -r2.xy;
  r3.zw = r7.xy + r1.xy;
  r5.xy = -r7.xy + r1.xy;
  r5.zw = -r5.yx;
  r1.xy = r0.yy ? r5.xz : r5.wy;
  r5.xy = r3.xy + r3.zw;
  r5.zw = r2.xy + r1.xy;
  r1.xy = r2.xy + -r1.xy;
  r2.xy = r3.xy + -r3.zw;
  r3.xy = r5.zw * r2.zz;
  r3.z = r5.w * 0.707106769 + -r3.x;
  r3.w = r5.z * 0.707106769 + r3.y;
  r24.zw = r5.xy + r4.xy;
  r25.zw = -r5.xy + r4.xy;
  r27.zw = r4.zw + r3.zw;
  r26.zw = r4.zw + -r3.zw;
  r3.zw = r2.xy + r1.wz;
  r3.xy = -r2.yx + r1.zw;
  r2.x = (int)r0.y ? r3.w : r3.x; r3.x = (int)r0.y ? r3.x : r3.w;
  r2.y = (int)r0.y ? r3.y : r3.z; r3.y = (int)r0.y ? r3.z : r3.y;
  r1.zw = r2.zz * r1.xy;
  r2.z = r1.y * -0.707106769 + -r1.z;
  r2.w = r1.x * -0.707106769 + r1.w;
  r22.zw = r2.zw + r0.zw;
  r20.zw = -r2.zw + r0.zw;
  if (r0.x != 0) {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].x));
    if (r0.x != 0) {
      r1.x = vThreadIDInGroup.x;
      r1.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r24.xyzw
    } else {
      r8.z = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r27.xyzw
      r8.z = (int)r8.z + 64;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
      r29.zw = r3.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r29.xyzw
      r8.z = (int)r8.z + 64;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r22.xyzw
      r8.z = (int)r8.z + 64;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r25.xyzw
      r8.z = (int)r8.z + 64;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r26.xyzw
      r8.z = (int)r8.z + 64;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
      r28.zw = r2.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r28.xyzw
      r8.z = (int)r8.z + 64;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r20.xyzw
    }
  } else {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].y));
    if (r0.x != 0) {
      r1.x = vThreadGroupID.z;
      r1.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r24.xyzw
    } else {
      r8.z = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r27.xyzw
      r8.z = (int)r8.z + 64;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
      r29.zw = r3.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r29.xyzw
      r8.z = (int)r8.z + 64;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r22.xyzw
      r8.z = (int)r8.z + 64;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r25.xyzw
      r8.z = (int)r8.z + 64;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r26.xyzw
      r8.z = (int)r8.z + 64;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
      r28.zw = r2.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r28.xyzw
      r8.z = (int)r8.z + 64;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r20.xyzw
    }
  }
  return;
}