// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[128];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[16];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 1, 1
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
    r2.xyzw = (int4)r1.xxxx + int4(32,8,16,24);
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
    r2.xyz = (int3)r1.xxx + int3(40,48,56);
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
    r2.xyzw = (int4)r1.yyyy + int4(8,32,16,24);
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
    r2.xyz = (int3)r1.yyy + int3(40,56,48);
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
    r0.zw = float2(0.015625,0.015625) * r0.zw;
    r1.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r1.xyzw;
    r2.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r2.xyzw;
    r3.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r3.xyzw;
    r4.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r4.xyzw;
    r5.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r5.xyzw;
    r6.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r6.xyzw;
    r7.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r7.xyzw;
    r8.xy = float2(0.015625,0.015625) * r8.xy;
  }
  r8.zw = r0.zw + r2.zw;
  r0.zw = r0.zw + -r2.zw;
  r2.zw = r1.zw + r3.zw;
  r9.xy = r1.zw + -r3.zw;
  r9.zw = -r9.yx;
  r1.zw = r0.yy ? r9.zx : r9.yw;
  r3.zw = r8.zw + r2.zw;
  r9.xy = r1.zw + r0.zw;
  r0.zw = -r1.zw + r0.zw;
  r1.zw = r8.zw + -r2.zw;
  r2.zw = r1.xy + r3.xy;
  r1.xy = r1.yx + -r3.yx;
  r3.xy = r2.xy + r4.xy;
  r10.xy = r2.xy + -r4.xy;
  r10.zw = -r10.yx;
  r2.xy = r0.yy ? r10.xz : r10.wy;
  r4.xy = r3.xy + r2.zw;
  r8.zw = r2.xy + r1.xy;
  r1.xy = -r2.xy + r1.xy;
  r2.xy = -r3.xy + r2.zw;
  r2.z = r0.y ? 0.707106769 : -0.707106769;
  r3.xy = r2.zz * r8.zw;
  r10.x = r8.w * 0.707106769 + -r3.x;
  r10.y = r8.z * 0.707106769 + r3.y;
  r3.xy = r4.xy + r3.zw;
  r3.zw = -r4.xy + r3.zw;
  r4.xy = r10.xy + r9.xy;
  r8.zw = -r10.xy + r9.xy;
  r9.zw = r2.xy + r1.wz;
  r9.xy = -r2.yx + r1.zw;
  r2.x = (int)r0.y ? r9.w : r9.x; r9.x = (int)r0.y ? r9.x : r9.w;
  r2.y = (int)r0.y ? r9.y : r9.z; r9.y = (int)r0.y ? r9.z : r9.y;
  r1.zw = r2.zz * r1.xy;
  r10.x = r1.y * -0.707106769 + -r1.z;
  r10.y = r1.x * -0.707106769 + r1.w;
  r1.xy = r10.xy + r0.zw;
  r0.zw = -r10.xy + r0.zw;
  if (27 == 0) r1.z = 0; else if (27+2 < 32) {   r1.z = (uint)vThreadIDInGroup.x << (32-(27 + 2)); r1.z = (uint)r1.z >> (32-27);  } else r1.z = (uint)vThreadIDInGroup.x >> 2;
  r1.z = mad((int)vThreadIDInGroup.x, 8, (int)r1.z);
  g0[r1.z].val[0/4] = r3.x;
  bitmask.x = ((~(-1 << 3)) << 0) & 0xffffffff;  r10.x = (((uint)vThreadIDInGroup.x << 0) & bitmask.x) | ((uint)8 & ~bitmask.x);
  bitmask.y = ((~(-1 << 29)) << 3) & 0xffffffff;  r10.y = (((uint)vThreadIDInGroup.x << 3) & bitmask.y) | ((uint)1 & ~bitmask.y);
  bitmask.z = ((~(-1 << 3)) << 0) & 0xffffffff;  r10.z = (((uint)vThreadIDInGroup.x << 0) & bitmask.z) | ((uint)8 & ~bitmask.z);
  r1.w = (uint)r10.y >> 5;
  r1.w = (int)r1.w + (int)r10.y;
  g0[r1.w].val[0/4] = r4.x;
  r11.xyz = (int3)r10.yzx + int3(1,8,8);
  r2.w = (uint)r11.x >> 5;
  r3.x = (int)r11.x + (int)r2.w;
  g0[r3.x].val[0/4] = r9.x;
  r9.xzw = (int3)r11.xyz | int3(3,24,24);
  r2.w = (int)r2.w + (int)r9.x;
  g0[r2.w].val[0/4] = r1.x;
  r11.xyw = (int3)r9.xzw + int3(1,8,9);
  r1.x = (uint)r11.x >> 5;
  r4.x = (int)r11.x + (int)r1.x;
  g0[r4.x].val[0/4] = r3.z;
  r12.xyzw = (int4)r11.xyyy | int4(5,40,40,40);
  r1.x = (int)r1.x + (int)r12.x;
  g0[r1.x].val[0/4] = r8.z;
  r12.xyzw = (int4)r12.xyzw + int4(1,1,8,9);
  r3.z = (uint)r12.x >> 5;
  r8.z = (int)r12.x + (int)r3.z;
  g0[r8.z].val[0/4] = r2.x;
  r9.xz = (int2)r12.xz | int2(7,56);
  r2.x = (int)r3.z + (int)r9.x;
  g0[r2.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r11.x = g0[vThreadIDInGroup.x].val[0/4];
  r0.z = g0[r10.x].val[0/4];
  r3.z = g0[r11.z].val[0/4];
  r9.x = g0[r9.w].val[0/4];
  r10.z = g0[r11.w].val[0/4];
  r10.w = g0[r12.y].val[0/4];
  r12.x = g0[r12.w].val[0/4];
  r9.z = (int)r9.z + 1;
  r12.z = g0[r9.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.z].val[0/4] = r3.y;
  g0[r1.w].val[0/4] = r4.y;
  g0[r3.x].val[0/4] = r9.y;
  g0[r2.w].val[0/4] = r1.y;
  g0[r4.x].val[0/4] = r3.w;
  g0[r1.x].val[0/4] = r8.w;
  g0[r8.z].val[0/4] = r2.y;
  g0[r2.x].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r11.y = g0[vThreadIDInGroup.x].val[0/4];
  r0.w = g0[r10.x].val[0/4];
  r1.y = g0[r11.z].val[0/4];
  r2.y = g0[r9.w].val[0/4];
  r3.y = g0[r11.w].val[0/4];
  r3.w = g0[r12.y].val[0/4];
  r4.y = g0[r12.w].val[0/4];
  r8.w = g0[r9.z].val[0/4];
  r9.y = (uint)vThreadIDInGroup.x;
  r13.xy = float2(0.0981747732,-0.0981747732) * r9.yy;
  r9.y = r0.y ? r13.x : r13.y;
  sincos(r9.y, r13.x, r14.x);
  r9.y = r13.x * r0.w;
  r15.y = r14.x * r0.z + -r9.y;
  r0.z = r13.x * r0.z;
  r15.x = r14.x * r0.w + r0.z;
  r0.z = r13.x * r13.x;
  r0.z = r14.x * r14.x + -r0.z;
  r0.w = dot(r14.xx, r13.xx);
  r9.y = r0.w * r1.y;
  r16.x = r0.z * r3.z + -r9.y;
  r3.z = r3.z * r0.w;
  r16.y = r0.z * r1.y + r3.z;
  r1.y = r0.w * r13.x;
  r1.y = r0.z * r14.x + -r1.y;
  r3.z = r14.x * r0.w;
  r3.z = r0.z * r13.x + r3.z;
  r9.y = r3.z * r2.y;
  r17.x = r1.y * r9.x + -r9.y;
  r9.x = r9.x * r3.z;
  r17.y = r1.y * r2.y + r9.x;
  r2.y = r3.z * r13.x;
  r2.y = r1.y * r14.x + -r2.y;
  r9.x = r14.x * r3.z;
  r9.x = r1.y * r13.x + r9.x;
  r9.y = r9.x * r3.y;
  r18.x = r2.y * r10.z + -r9.y;
  r9.y = r10.z * r9.x;
  r18.y = r2.y * r3.y + r9.y;
  r3.y = r9.x * r13.x;
  r3.y = r2.y * r14.x + -r3.y;
  r9.y = r14.x * r9.x;
  r9.y = r2.y * r13.x + r9.y;
  r10.z = r9.y * r3.w;
  r19.y = r3.y * r10.w + -r10.z;
  r10.z = r10.w * r9.y;
  r19.x = r3.y * r3.w + r10.z;
  r3.w = r9.y * r13.x;
  r3.w = r3.y * r14.x + -r3.w;
  r10.z = r14.x * r9.y;
  r10.z = r3.y * r13.x + r10.z;
  r10.w = r10.z * r4.y;
  r20.x = r3.w * r12.x + -r10.w;
  r10.w = r12.x * r10.z;
  r20.y = r3.w * r4.y + r10.w;
  r4.y = r10.z * r13.x;
  r4.y = r3.w * r14.x + -r4.y;
  r10.w = r14.x * r10.z;
  r10.w = r3.w * r13.x + r10.w;
  r12.x = r10.w * r8.w;
  r21.x = r4.y * r12.z + -r12.x;
  r12.x = r12.z * r10.w;
  r21.y = r4.y * r8.w + r12.x;
  r12.xz = r18.xy + r11.xy;
  r11.xy = -r18.xy + r11.xy;
  r13.yz = r20.xy + r16.xy;
  r16.xy = -r20.xy + r16.xy;
  r16.zw = -r16.yx;
  r14.yz = r0.yy ? r16.zx : r16.yw;
  r15.zw = r13.yz + r12.xz;
  r16.xy = r14.yz + r11.xy;
  r11.xy = -r14.yz + r11.xy;
  r12.xz = -r13.yz + r12.xz;
  r13.yz = r19.yx + r15.yx;
  r14.yz = -r19.xy + r15.xy;
  r15.xy = r21.xy + r17.xy;
  r17.xy = -r21.xy + r17.xy;
  r17.zw = -r17.yx;
  r16.zw = r0.yy ? r17.xz : r17.wy;
  r17.xy = r15.xy + r13.yz;
  r17.zw = r16.zw + r14.yz;
  r14.yz = -r16.zw + r14.yz;
  r13.yz = -r15.xy + r13.yz;
  r15.xy = r17.zw * r2.zz;
  r18.x = r17.w * 0.707106769 + -r15.x;
  r18.y = r17.z * 0.707106769 + r15.y;
  r19.xy = r17.xy + r15.zw;
  r15.xy = -r17.xy + r15.zw;
  r17.xy = r18.xy + r16.xy;
  r16.xy = -r18.xy + r16.xy;
  r18.zw = r13.yz + r12.zx;
  r18.xy = -r13.zy + r12.xz;
  r18.x = (int)r0.y ? r18.w : r18.x; r20.x = (int)r0.y ? r18.x : r18.w;
  r18.y = (int)r0.y ? r18.y : r18.z; r20.y = (int)r0.y ? r18.z : r18.y;
  r12.xz = r14.yz * r2.zz;
  r21.x = r14.z * -0.707106769 + -r12.x;
  r21.y = r14.y * -0.707106769 + r12.z;
  r22.xy = r21.xy + r11.xy;
  r21.xy = -r21.xy + r11.xy;
  GroupMemoryBarrierWithGroupSync();
  r11.xy = r4.zw + r6.zw;
  r4.zw = r4.zw + -r6.zw;
  r6.zw = r5.zw + r7.zw;
  r23.xy = r5.zw + -r7.zw;
  r23.zw = -r23.yx;
  r5.zw = r0.yy ? r23.zx : r23.yw;
  r7.zw = r11.xy + r6.zw;
  r12.xz = r5.zw + r4.zw;
  r4.zw = -r5.zw + r4.zw;
  r5.zw = r11.xy + -r6.zw;
  r6.zw = r5.xy + r7.xy;
  r5.xy = r5.yx + -r7.yx;
  r7.xy = r6.xy + r8.xy;
  r23.xy = r6.xy + -r8.xy;
  r23.zw = -r23.yx;
  r6.xy = r0.yy ? r23.xz : r23.wy;
  r8.xy = r7.xy + r6.zw;
  r11.xy = r6.xy + r5.xy;
  r5.xy = -r6.xy + r5.xy;
  r6.xy = -r7.xy + r6.zw;
  r6.zw = r11.xy * r2.zz;
  r7.x = r11.y * 0.707106769 + -r6.z;
  r7.y = r11.x * 0.707106769 + r6.w;
  r6.zw = r8.xy + r7.zw;
  r7.zw = -r8.xy + r7.zw;
  r8.xy = r12.xz + r7.xy;
  r7.xy = r12.xz + -r7.xy;
  r23.zw = r6.xy + r5.wz;
  r23.xy = -r6.yx + r5.zw;
  r6.x = (int)r0.y ? r23.w : r23.x; r11.x = (int)r0.y ? r23.x : r23.w;
  r6.y = (int)r0.y ? r23.y : r23.z; r11.y = (int)r0.y ? r23.z : r23.y;
  r5.zw = r5.xy * r2.zz;
  r23.x = r5.y * -0.707106769 + -r5.z;
  r23.y = r5.x * -0.707106769 + r5.w;
  r5.xy = r23.xy + r4.zw;
  r4.zw = -r23.xy + r4.zw;
  g0[r1.z].val[0/4] = r6.z;
  g0[r1.w].val[0/4] = r8.x;
  g0[r3.x].val[0/4] = r11.x;
  g0[r2.w].val[0/4] = r5.x;
  g0[r4.x].val[0/4] = r7.z;
  g0[r1.x].val[0/4] = r7.x;
  g0[r8.z].val[0/4] = r6.x;
  g0[r2.x].val[0/4] = r4.z;
  GroupMemoryBarrierWithGroupSync();
  r5.z = g0[vThreadIDInGroup.x].val[0/4];
  r4.z = g0[r10.x].val[0/4];
  r5.x = g0[r11.z].val[0/4];
  r6.x = g0[r9.w].val[0/4];
  r6.z = g0[r11.w].val[0/4];
  r7.x = g0[r12.y].val[0/4];
  r7.z = g0[r12.w].val[0/4];
  r8.x = g0[r9.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.z].val[0/4] = r6.w;
  g0[r1.w].val[0/4] = r8.y;
  g0[r3.x].val[0/4] = r11.y;
  g0[r2.w].val[0/4] = r5.y;
  g0[r4.x].val[0/4] = r7.w;
  g0[r1.x].val[0/4] = r7.y;
  g0[r8.z].val[0/4] = r6.y;
  g0[r2.x].val[0/4] = r4.w;
  GroupMemoryBarrierWithGroupSync();
  r5.w = g0[vThreadIDInGroup.x].val[0/4];
  r1.x = g0[r10.x].val[0/4];
  r1.z = g0[r11.z].val[0/4];
  r1.w = g0[r9.w].val[0/4];
  r2.x = g0[r11.w].val[0/4];
  r2.w = g0[r12.y].val[0/4];
  r3.x = g0[r12.w].val[0/4];
  r4.x = g0[r9.z].val[0/4];
  r4.w = r13.x * r1.x;
  r11.y = r14.x * r4.z + -r4.w;
  r4.z = r4.z * r13.x;
  r11.x = r14.x * r1.x + r4.z;
  r1.x = r1.z * r0.w;
  r12.x = r0.z * r5.x + -r1.x;
  r0.w = r5.x * r0.w;
  r12.y = r0.z * r1.z + r0.w;
  r0.z = r3.z * r1.w;
  r5.x = r1.y * r6.x + -r0.z;
  r0.z = r6.x * r3.z;
  r5.y = r1.y * r1.w + r0.z;
  r0.z = r9.x * r2.x;
  r0.z = r2.y * r6.z + -r0.z;
  r1.x = r6.z * r9.x;
  r0.w = r2.y * r2.x + r1.x;
  r1.x = r9.y * r2.w;
  r1.y = r3.y * r7.x + -r1.x;
  r1.z = r7.x * r9.y;
  r1.x = r3.y * r2.w + r1.z;
  r1.z = r10.z * r3.x;
  r2.x = r3.w * r7.z + -r1.z;
  r1.z = r7.z * r10.z;
  r2.y = r3.w * r3.x + r1.z;
  r1.z = r10.w * r4.x;
  r3.x = r4.y * r8.x + -r1.z;
  r1.z = r8.x * r10.w;
  r3.y = r4.y * r4.x + r1.z;
  r1.zw = r5.zw + r0.zw;
  r0.zw = r5.zw + -r0.zw;
  r3.zw = r12.xy + r2.xy;
  r4.xy = r12.xy + -r2.xy;
  r4.zw = -r4.yx;
  r2.xy = r0.yy ? r4.zx : r4.yw;
  r4.xy = r3.zw + r1.zw;
  r4.zw = r2.xy + r0.zw;
  r0.zw = -r2.xy + r0.zw;
  r1.zw = -r3.zw + r1.zw;
  r2.xy = r11.yx + r1.yx;
  r1.xy = r11.xy + -r1.xy;
  r3.zw = r5.xy + r3.xy;
  r5.xy = r5.xy + -r3.xy;
  r5.zw = -r5.yx;
  r3.xy = r0.yy ? r5.xz : r5.wy;
  r5.xy = r3.zw + r2.xy;
  r5.zw = r3.xy + r1.xy;
  r1.xy = -r3.xy + r1.xy;
  r2.xy = -r3.zw + r2.xy;
  r3.xy = r5.zw * r2.zz;
  r3.z = r5.w * 0.707106769 + -r3.x;
  r3.w = r5.z * 0.707106769 + r3.y;
  r19.zw = r5.xy + r4.xy;
  r15.zw = -r5.xy + r4.xy;
  r17.zw = r4.zw + r3.zw;
  r16.zw = r4.zw + -r3.zw;
  r3.zw = r2.xy + r1.wz;
  r3.xy = -r2.yx + r1.zw;
  r2.x = (int)r0.y ? r3.w : r3.x; r3.x = (int)r0.y ? r3.x : r3.w;
  r2.y = (int)r0.y ? r3.y : r3.z; r3.y = (int)r0.y ? r3.z : r3.y;
  r1.zw = r2.zz * r1.xy;
  r2.z = r1.y * -0.707106769 + -r1.z;
  r2.w = r1.x * -0.707106769 + r1.w;
  r22.zw = r2.zw + r0.zw;
  r21.zw = -r2.zw + r0.zw;
  if (r0.x != 0) {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].x));
    if (r0.x != 0) {
      r1.x = vThreadIDInGroup.x;
      r1.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r19.xyzw
    } else {
      r10.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.xyyy, r17.xyzw
      r10.x = (int)r10.x + 8;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
      r20.zw = r3.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.xyyy, r20.xyzw
      r10.x = (int)r10.x + 8;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.xyyy, r22.xyzw
      r10.x = (int)r10.x + 8;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.xyyy, r15.xyzw
      r10.x = (int)r10.x + 8;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.xyyy, r16.xyzw
      r10.x = (int)r10.x + 8;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
      r18.zw = r2.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.xyyy, r18.xyzw
      r10.x = (int)r10.x + 8;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.xyyy, r21.xyzw
    }
  } else {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].y));
    if (r0.x != 0) {
      r1.x = vThreadGroupID.z;
      r1.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r19.xyzw
    } else {
      r10.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.yxxx, r17.xyzw
      r10.x = (int)r10.x + 8;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
      r20.zw = r3.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.yxxx, r20.xyzw
      r10.x = (int)r10.x + 8;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.yxxx, r22.xyzw
      r10.x = (int)r10.x + 8;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.yxxx, r15.xyzw
      r10.x = (int)r10.x + 8;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.yxxx, r16.xyzw
      r10.x = (int)r10.x + 8;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
      r18.zw = r2.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.yxxx, r18.xyzw
      r10.x = (int)r10.x + 8;
    }
    r0.y = cmp((uint)r10.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.yxxx, r21.xyzw
    }
  }
  return;
}