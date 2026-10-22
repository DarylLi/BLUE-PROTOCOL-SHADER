// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[8192];
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
  float4 x1[8];
  float4 x2[8];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 512, 1, 1
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
    r2.xyzw = (int4)r1.xxxx + int4(2048,512,1024,1536);
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
    r2.xyz = (int3)r1.xxx + int3(2560,3072,3584);
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
    r2.xyzw = (int4)r1.yyyy + int4(512,2048,1024,1536);
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
    r2.xyz = (int3)r1.yyy + int3(2560,3584,3072);
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
    r0.zw = float2(0.000244140625,0.000244140625) * r0.zw;
    r1.xyzw = float4(0.000244140625,0.000244140625,0.000244140625,0.000244140625) * r1.xyzw;
    r2.xyzw = float4(0.000244140625,0.000244140625,0.000244140625,0.000244140625) * r2.xyzw;
    r3.xyzw = float4(0.000244140625,0.000244140625,0.000244140625,0.000244140625) * r3.xyzw;
    r4.xyzw = float4(0.000244140625,0.000244140625,0.000244140625,0.000244140625) * r4.xyzw;
    r5.xyzw = float4(0.000244140625,0.000244140625,0.000244140625,0.000244140625) * r5.xyzw;
    r6.xyzw = float4(0.000244140625,0.000244140625,0.000244140625,0.000244140625) * r6.xyzw;
    r7.xyzw = float4(0.000244140625,0.000244140625,0.000244140625,0.000244140625) * r7.xyzw;
    r8.xy = float2(0.000244140625,0.000244140625) * r8.xy;
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
  bitmask.z = ((~(-1 << 9)) << 0) & 0xffffffff;  r8.z = (((uint)vThreadIDInGroup.x << 0) & bitmask.z) | ((uint)512 & ~bitmask.z);
  bitmask.w = ((~(-1 << 29)) << 3) & 0xffffffff;  r8.w = (((uint)vThreadIDInGroup.x << 3) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r9.zw = (uint2)r8.wz >> int2(5,5);
  r10.zw = (int2)r8.wz + (int2)r9.zw;
  g0[r10.z].val[0/4] = r4.x;
  r11.xy = (int2)r8.wz + int2(1,512);
  r11.zw = (uint2)r11.xy >> int2(5,5);
  r12.xy = (int2)r11.zw + (int2)r11.xy;
  g0[r12.x].val[0/4] = r10.x;
  r12.zw = (int2)r11.xy | int2(3,1536);
  r1.w = (int)r11.z + (int)r12.z;
  g0[r1.w].val[0/4] = r1.x;
  r11.xz = (int2)r12.zw + int2(1,512);
  r13.xy = (uint2)r11.xz >> int2(5,5);
  r13.zw = (int2)r11.xz + (int2)r13.xy;
  g0[r13.z].val[0/4] = r3.z;
  r3.xz = (int2)r11.xz | int2(5,2560);
  r1.x = (int)r13.x + (int)r3.x;
  g0[r1.x].val[0/4] = r9.x;
  r9.xz = (int2)r3.xz + int2(1,512);
  r14.xy = (uint2)r9.xz >> int2(5,5);
  r14.zw = (int2)r9.xz + (int2)r14.xy;
  g0[r14.z].val[0/4] = r2.x;
  r2.xw = (int2)r9.xz | int2(7,3584);
  r2.x = (int)r14.x + (int)r2.x;
  g0[r2.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r0.z = (uint)vThreadIDInGroup.x >> 5;
  r3.x = (int)r0.z + (int)vThreadIDInGroup.x;
  r15.x = g0[r3.x].val[0/4];
  r16.x = g0[r10.w].val[0/4];
  r17.x = g0[r12.y].val[0/4];
  r4.x = (uint)r12.w >> 5;
  r9.x = (int)r4.x + (int)r12.w;
  r18.x = g0[r9.x].val[0/4];
  r19.x = g0[r13.w].val[0/4];
  r10.x = (uint)r3.z >> 5;
  r11.x = (int)r3.z + (int)r10.x;
  r20.x = g0[r11.x].val[0/4];
  r21.x = g0[r14.w].val[0/4];
  r12.z = (uint)r2.w >> 5;
  r13.x = (int)r2.w + (int)r12.z;
  r22.x = g0[r13.x].val[0/4];
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
  r15.y = g0[r3.x].val[0/4];
  r16.y = g0[r10.w].val[0/4];
  r17.y = g0[r12.y].val[0/4];
  r18.y = g0[r9.x].val[0/4];
  r19.y = g0[r13.w].val[0/4];
  r20.y = g0[r11.x].val[0/4];
  r21.y = g0[r14.w].val[0/4];
  r22.y = g0[r13.x].val[0/4];
  x1[0].xy = r15.xy;
  x1[1].xy = r16.xy;
  x1[2].xy = r17.xy;
  x1[3].xy = r18.xy;
  x1[4].xy = r19.xy;
  x1[5].xy = r20.xy;
  x1[6].xy = r21.xy;
  x1[7].xy = r22.xy;
  r0.z = (uint)r0.z << 3;
  r0.z = (int)r0.z + (int)vThreadIDInGroup.x;
  r0.w = (uint)r9.w << 3;
  r0.w = (int)r0.w + (int)r8.z;
  r1.y = (uint)r11.w << 3;
  r1.y = (int)r1.y + (int)r11.y;
  r2.y = (uint)r4.x << 3;
  r2.y = (int)r2.y + (int)r12.w;
  r3.y = (uint)r13.y << 3;
  r3.y = (int)r3.y + (int)r11.z;
  r3.w = (uint)r10.x << 3;
  r3.z = (int)r3.w + (int)r3.z;
  r3.w = (uint)r14.y << 3;
  r3.w = (int)r3.w + (int)r9.z;
  r4.x = (uint)r12.z << 3;
  r2.w = (int)r2.w + (int)r4.x;
  r4.x = 8;
  while (true) {
    r4.y = cmp((uint)r4.x >= 512);
    if (r4.y != 0) break;
    r9.yz = x1[0].xy;
    r10.xy = x1[1].xy;
    r11.yz = x1[2].xy;
    r12.zw = x1[3].xy;
    r14.xy = x1[4].xy;
    r15.xy = x1[5].xy;
    r15.zw = x1[6].xy;
    r16.xy = x1[7].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r4.x;
    r18.x = (uint)vThreadIDInGroup.x % (uint)r4.x;
    r17.x = uiDest.x;
    r4.y = (uint)r18.x;
    r4.y = 6.28318548 * r4.y;
    r9.w = (uint)r4.x << 3;
    r11.w = (uint)r9.w;
    r4.y = r4.y / r11.w;
    r4.y = r0.y ? r4.y : -r4.y;
    sincos(r4.y, r19.x, r20.x);
    r16.zw = r19.xx * r10.yx;
    r21.y = r20.x * r10.x + -r16.z;
    r21.x = r20.x * r10.y + r16.w;
    r4.y = r19.x * r19.x;
    r4.y = r20.x * r20.x + -r4.y;
    r10.x = dot(r20.xx, r19.xx);
    r16.zw = r10.xx * r11.zy;
    r22.x = r4.y * r11.y + -r16.z;
    r22.y = r4.y * r11.z + r16.w;
    r10.y = r10.x * r19.x;
    r10.y = r4.y * r20.x + -r10.y;
    r10.x = r20.x * r10.x;
    r4.y = r4.y * r19.x + r10.x;
    r11.yz = r4.yy * r12.wz;
    r23.x = r10.y * r12.z + -r11.y;
    r23.y = r10.y * r12.w + r11.z;
    r10.x = r4.y * r19.x;
    r10.x = r10.y * r20.x + -r10.x;
    r4.y = r20.x * r4.y;
    r4.y = r10.y * r19.x + r4.y;
    r11.yz = r4.yy * r14.yx;
    r24.x = r10.x * r14.x + -r11.y;
    r24.y = r10.x * r14.y + r11.z;
    r10.y = r4.y * r19.x;
    r10.y = r10.x * r20.x + -r10.y;
    r4.y = r20.x * r4.y;
    r4.y = r10.x * r19.x + r4.y;
    r11.yz = r4.yy * r15.yx;
    r14.y = r10.y * r15.x + -r11.y;
    r14.x = r10.y * r15.y + r11.z;
    r10.x = r4.y * r19.x;
    r10.x = r10.y * r20.x + -r10.x;
    r4.y = r20.x * r4.y;
    r4.y = r10.y * r19.x + r4.y;
    r11.yz = r4.yy * r15.wz;
    r15.x = r10.x * r15.z + -r11.y;
    r15.y = r10.x * r15.w + r11.z;
    r10.y = r4.y * r19.x;
    r10.y = r10.x * r20.x + -r10.y;
    r4.y = r20.x * r4.y;
    r4.y = r10.x * r19.x + r4.y;
    r11.yz = r4.yy * r16.yx;
    r19.x = r10.y * r16.x + -r11.y;
    r19.y = r10.y * r16.y + r11.z;
    r4.y = (int)r4.x * (int)r17.x;
    r4.y = (uint)r4.y << 3;
    r4.y = (int)r18.x + (int)r4.y;
    r10.xy = r24.xy + r9.yz;
    r9.yz = -r24.xy + r9.yz;
    r11.yz = r22.xy + r15.xy;
    r15.xy = r22.xy + -r15.xy;
    r15.zw = -r15.yx;
    r12.zw = r0.yy ? r15.zx : r15.yw;
    r15.xy = r11.yz + r10.xy;
    r15.zw = r12.zw + r9.yz;
    r9.yz = -r12.zw + r9.yz;
    r10.xy = -r11.yz + r10.xy;
    r11.yz = r21.yx + r14.yx;
    r12.zw = r21.xy + -r14.xy;
    r14.xy = r23.xy + r19.xy;
    r16.xy = r23.xy + -r19.xy;
    r16.zw = -r16.yx;
    r16.xy = r0.yy ? r16.xz : r16.wy;
    r16.zw = r14.xy + r11.yz;
    r17.xy = r16.xy + r12.zw;
    r12.zw = -r16.xy + r12.zw;
    r11.yz = -r14.xy + r11.yz;
    r14.xy = r17.xy * r2.zz;
    r16.x = r17.y * 0.707106769 + -r14.x;
    r16.y = r17.x * 0.707106769 + r14.y;
    r14.xy = r16.zw + r15.xy;
    r15.xy = -r16.zw + r15.xy;
    r16.zw = r16.xy + r15.zw;
    r15.zw = -r16.xy + r15.zw;
    r17.zw = r11.yz + r10.yx;
    r17.xy = -r11.zy + r10.xy;
    r10.x = (int)r0.y ? r17.w : r17.x; r16.x = (int)r0.y ? r17.x : r17.w;
    r10.y = (int)r0.y ? r17.y : r17.z; r16.y = (int)r0.y ? r17.z : r17.y;
    r11.yz = r12.zw * r2.zz;
    r17.x = r12.w * -0.707106769 + -r11.y;
    r17.y = r12.z * -0.707106769 + r11.z;
    r11.yz = r17.xy + r9.yz;
    r9.yz = -r17.xy + r9.yz;
    GroupMemoryBarrierWithGroupSync();
    r11.w = (uint)r4.y >> 5;
    r11.w = (uint)r11.w << 3;
    r11.w = (int)r4.y + (int)r11.w;
    g0[r11.w].val[0/4] = r14.x;
    r4.y = (int)r4.x + (int)r4.y;
    r12.z = (uint)r4.y >> 5;
    r12.z = (uint)r12.z << 3;
    r12.z = (int)r4.y + (int)r12.z;
    g0[r12.z].val[0/4] = r16.z;
    r4.y = (int)r4.x + (int)r4.y;
    r12.w = (uint)r4.y >> 5;
    r12.w = (uint)r12.w << 3;
    r12.w = (int)r4.y + (int)r12.w;
    g0[r12.w].val[0/4] = r16.x;
    r4.y = (int)r4.x + (int)r4.y;
    r13.y = (uint)r4.y >> 5;
    r13.y = (uint)r13.y << 3;
    r13.y = (int)r4.y + (int)r13.y;
    g0[r13.y].val[0/4] = r11.y;
    r4.y = (int)r4.x + (int)r4.y;
    r11.y = (uint)r4.y >> 5;
    r11.y = (uint)r11.y << 3;
    r11.y = (int)r4.y + (int)r11.y;
    g0[r11.y].val[0/4] = r15.x;
    r4.y = (int)r4.x + (int)r4.y;
    r14.x = (uint)r4.y >> 5;
    r14.x = (uint)r14.x << 3;
    r14.x = (int)r4.y + (int)r14.x;
    g0[r14.x].val[0/4] = r15.z;
    r4.y = (int)r4.x + (int)r4.y;
    r15.x = (uint)r4.y >> 5;
    r15.x = (uint)r15.x << 3;
    r15.x = (int)r4.y + (int)r15.x;
    g0[r15.x].val[0/4] = r10.x;
    r4.y = (int)r4.x + (int)r4.y;
    r10.x = (uint)r4.y >> 5;
    r10.x = (uint)r10.x << 3;
    r4.y = (int)r4.y + (int)r10.x;
    g0[r4.y].val[0/4] = r9.y;
    GroupMemoryBarrierWithGroupSync();
    r17.x = g0[r0.z].val[0/4];
    r18.x = g0[r0.w].val[0/4];
    r19.x = g0[r1.y].val[0/4];
    r20.x = g0[r2.y].val[0/4];
    r21.x = g0[r3.y].val[0/4];
    r22.x = g0[r3.z].val[0/4];
    r23.x = g0[r3.w].val[0/4];
    r24.x = g0[r2.w].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r11.w].val[0/4] = r14.y;
    g0[r12.z].val[0/4] = r16.w;
    g0[r12.w].val[0/4] = r16.y;
    g0[r13.y].val[0/4] = r11.z;
    g0[r11.y].val[0/4] = r15.y;
    g0[r14.x].val[0/4] = r15.w;
    g0[r15.x].val[0/4] = r10.y;
    g0[r4.y].val[0/4] = r9.z;
    GroupMemoryBarrierWithGroupSync();
    r17.y = g0[r0.z].val[0/4];
    r18.y = g0[r0.w].val[0/4];
    r19.y = g0[r1.y].val[0/4];
    r20.y = g0[r2.y].val[0/4];
    r21.y = g0[r3.y].val[0/4];
    r22.y = g0[r3.z].val[0/4];
    r23.y = g0[r3.w].val[0/4];
    r24.y = g0[r2.w].val[0/4];
    x1[0].xy = r17.xy;
    x1[1].xy = r18.xy;
    x1[2].xy = r19.xy;
    x1[3].xy = r20.xy;
    x1[4].xy = r21.xy;
    x1[5].xy = r22.xy;
    x1[6].xy = r23.xy;
    x1[7].xy = r24.xy;
    r4.x = r9.w;
  }
  r4.xy = x1[0].xy;
  r9.yz = x1[1].xy;
  r10.xy = x1[2].xy;
  r11.yz = x1[3].xy;
  r12.zw = x1[4].xy;
  r14.xy = x1[5].xy;
  r15.xy = x1[6].xy;
  r15.zw = x1[7].xy;
  r9.w = (uint)vThreadIDInGroup.x;
  r16.xy = float2(0.00153398083,-0.00153398083) * r9.ww;
  r9.w = r0.y ? r16.x : r16.y;
  sincos(r9.w, r16.x, r17.x);
  r16.yz = r16.xx * r9.zy;
  r18.y = r17.x * r9.y + -r16.y;
  r18.x = r17.x * r9.z + r16.z;
  r9.y = r16.x * r16.x;
  r9.y = r17.x * r17.x + -r9.y;
  r9.z = dot(r17.xx, r16.xx);
  r16.yz = r9.zz * r10.yx;
  r19.x = r9.y * r10.x + -r16.y;
  r19.y = r9.y * r10.y + r16.z;
  r9.w = r9.z * r16.x;
  r9.w = r9.y * r17.x + -r9.w;
  r10.x = r17.x * r9.z;
  r10.x = r9.y * r16.x + r10.x;
  r16.yz = r10.xx * r11.zy;
  r20.x = r9.w * r11.y + -r16.y;
  r20.y = r9.w * r11.z + r16.z;
  r10.y = r10.x * r16.x;
  r10.y = r9.w * r17.x + -r10.y;
  r11.y = r17.x * r10.x;
  r11.y = r9.w * r16.x + r11.y;
  r11.zw = r11.yy * r12.wz;
  r21.x = r10.y * r12.z + -r11.z;
  r21.y = r10.y * r12.w + r11.w;
  r11.z = r11.y * r16.x;
  r11.z = r10.y * r17.x + -r11.z;
  r11.w = r17.x * r11.y;
  r11.w = r10.y * r16.x + r11.w;
  r12.zw = r11.ww * r14.yx;
  r22.y = r11.z * r14.x + -r12.z;
  r22.x = r11.z * r14.y + r12.w;
  r12.z = r11.w * r16.x;
  r12.z = r11.z * r17.x + -r12.z;
  r12.w = r17.x * r11.w;
  r12.w = r11.z * r16.x + r12.w;
  r14.xy = r12.ww * r15.yx;
  r23.x = r12.z * r15.x + -r14.x;
  r23.y = r12.z * r15.y + r14.y;
  r13.y = r12.w * r16.x;
  r13.y = r12.z * r17.x + -r13.y;
  r14.x = r17.x * r12.w;
  r14.x = r12.z * r16.x + r14.x;
  r15.xy = r14.xx * r15.wz;
  r24.x = r13.y * r15.z + -r15.x;
  r24.y = r13.y * r15.w + r15.y;
  r15.xy = r21.xy + r4.xy;
  r4.xy = -r21.xy + r4.xy;
  r15.zw = r23.xy + r19.xy;
  r19.xy = -r23.xy + r19.xy;
  r19.zw = -r19.yx;
  r16.yz = r0.yy ? r19.zx : r19.yw;
  r17.yz = r15.xy + r15.zw;
  r18.zw = r16.yz + r4.xy;
  r4.xy = -r16.yz + r4.xy;
  r15.xy = r15.xy + -r15.zw;
  r15.zw = r22.yx + r18.yx;
  r16.yz = -r22.xy + r18.xy;
  r18.xy = r24.xy + r20.xy;
  r19.xy = -r24.xy + r20.xy;
  r19.zw = -r19.yx;
  r19.xy = r0.yy ? r19.xz : r19.wy;
  r19.zw = r18.xy + r15.zw;
  r20.xy = r19.xy + r16.yz;
  r16.yz = -r19.xy + r16.yz;
  r15.zw = -r18.xy + r15.zw;
  r18.xy = r20.xy * r2.zz;
  r19.x = r20.y * 0.707106769 + -r18.x;
  r19.y = r20.x * 0.707106769 + r18.y;
  r20.xy = r19.zw + r17.yz;
  r21.xy = -r19.zw + r17.yz;
  r22.xy = r19.xy + r18.zw;
  r18.xy = -r19.xy + r18.zw;
  r19.zw = r15.yx + r15.zw;
  r19.xy = r15.xy + -r15.wz;
  r15.x = (int)r0.y ? r19.w : r19.x; r19.x = (int)r0.y ? r19.x : r19.w;
  r15.y = (int)r0.y ? r19.y : r19.z; r19.y = (int)r0.y ? r19.z : r19.y;
  r17.yz = r16.yz * r2.zz;
  r23.x = r16.z * -0.707106769 + -r17.y;
  r23.y = r16.y * -0.707106769 + r17.z;
  r24.xy = r23.xy + r4.xy;
  r23.xy = -r23.xy + r4.xy;
  GroupMemoryBarrierWithGroupSync();
  r4.xy = r4.zw + r6.zw;
  r4.zw = r4.zw + -r6.zw;
  r6.zw = r5.zw + r7.zw;
  r25.xy = r5.zw + -r7.zw;
  r25.zw = -r25.yx;
  r5.zw = r0.yy ? r25.zx : r25.yw;
  r7.zw = r6.zw + r4.xy;
  r16.yz = r5.zw + r4.zw;
  r4.zw = -r5.zw + r4.zw;
  r4.xy = -r6.zw + r4.xy;
  r5.zw = r5.xy + r7.xy;
  r5.xy = r5.yx + -r7.yx;
  r6.zw = r6.xy + r8.xy;
  r25.xy = r6.xy + -r8.xy;
  r25.zw = -r25.yx;
  r6.xy = r0.yy ? r25.xz : r25.wy;
  r7.xy = r6.zw + r5.zw;
  r8.xy = r6.xy + r5.xy;
  r5.xyzw = -r6.xyzw + r5.xyzw;
  r6.xy = r8.xy * r2.zz;
  r25.x = r8.y * 0.707106769 + -r6.x;
  r25.y = r8.x * 0.707106769 + r6.y;
  r6.xy = r7.zw + r7.xy;
  r6.zw = r7.zw + -r7.xy;
  r7.xy = r25.xy + r16.yz;
  r7.zw = -r25.xy + r16.yz;
  r25.zw = r5.zw + r4.yx;
  r25.xy = -r5.wz + r4.xy;
  r4.x = (int)r0.y ? r25.w : r25.x; r8.x = (int)r0.y ? r25.x : r25.w;
  r4.y = (int)r0.y ? r25.y : r25.z; r8.y = (int)r0.y ? r25.z : r25.y;
  r5.zw = r5.xy * r2.zz;
  r25.x = r5.y * -0.707106769 + -r5.z;
  r25.y = r5.x * -0.707106769 + r5.w;
  r5.xy = r25.xy + r4.zw;
  r4.zw = -r25.xy + r4.zw;
  g0[r1.z].val[0/4] = r6.x;
  g0[r10.z].val[0/4] = r7.x;
  g0[r12.x].val[0/4] = r8.x;
  g0[r1.w].val[0/4] = r5.x;
  g0[r13.z].val[0/4] = r6.z;
  g0[r1.x].val[0/4] = r7.z;
  g0[r14.z].val[0/4] = r4.x;
  g0[r2.x].val[0/4] = r4.z;
  GroupMemoryBarrierWithGroupSync();
  r25.x = g0[r3.x].val[0/4];
  r26.x = g0[r10.w].val[0/4];
  r27.x = g0[r12.y].val[0/4];
  r28.x = g0[r9.x].val[0/4];
  r29.x = g0[r13.w].val[0/4];
  r30.x = g0[r11.x].val[0/4];
  r31.x = g0[r14.w].val[0/4];
  r32.x = g0[r13.x].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.z].val[0/4] = r6.y;
  g0[r10.z].val[0/4] = r7.y;
  g0[r12.x].val[0/4] = r8.y;
  g0[r1.w].val[0/4] = r5.y;
  g0[r13.z].val[0/4] = r6.w;
  g0[r1.x].val[0/4] = r7.w;
  g0[r14.z].val[0/4] = r4.y;
  g0[r2.x].val[0/4] = r4.w;
  GroupMemoryBarrierWithGroupSync();
  r25.y = g0[r3.x].val[0/4];
  r26.y = g0[r10.w].val[0/4];
  r27.y = g0[r12.y].val[0/4];
  r28.y = g0[r9.x].val[0/4];
  r29.y = g0[r13.w].val[0/4];
  r30.y = g0[r11.x].val[0/4];
  r31.y = g0[r14.w].val[0/4];
  r32.y = g0[r13.x].val[0/4];
  x2[0].xy = r25.xy;
  x2[1].xy = r26.xy;
  x2[2].xy = r27.xy;
  x2[3].xy = r28.xy;
  x2[4].xy = r29.xy;
  x2[5].xy = r30.xy;
  x2[6].xy = r31.xy;
  x2[7].xy = r32.xy;
  r1.x = 8;
  while (true) {
    r1.z = cmp((uint)r1.x >= 512);
    if (r1.z != 0) break;
    r1.zw = x2[0].xy;
    r4.xy = x2[1].xy;
    r4.zw = x2[2].xy;
    r5.xy = x2[3].xy;
    r5.zw = x2[4].xy;
    r6.xy = x2[5].xy;
    r6.zw = x2[6].xy;
    r7.xy = x2[7].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r1.x;
    r3.x = (uint)vThreadIDInGroup.x % (uint)r1.x;
    r2.x = uiDest.x;
    r7.z = (uint)r3.x;
    r7.z = 6.28318548 * r7.z;
    r7.w = (uint)r1.x << 3;
    r8.x = (uint)r7.w;
    r7.z = r7.z / r8.x;
    r7.z = r0.y ? r7.z : -r7.z;
    sincos(r7.z, r8.x, r9.x);
    r10.zw = r8.xx * r4.yx;
    r12.y = r9.x * r4.x + -r10.z;
    r12.x = r9.x * r4.y + r10.w;
    r4.x = r8.x * r8.x;
    r4.x = r9.x * r9.x + -r4.x;
    r4.y = dot(r9.xx, r8.xx);
    r10.zw = r4.yy * r4.wz;
    r25.x = r4.x * r4.z + -r10.z;
    r25.y = r4.x * r4.w + r10.w;
    r4.z = r4.y * r8.x;
    r4.z = r4.x * r9.x + -r4.z;
    r4.y = r9.x * r4.y;
    r4.x = r4.x * r8.x + r4.y;
    r4.yw = r4.xx * r5.yx;
    r26.x = r4.z * r5.x + -r4.y;
    r26.y = r4.z * r5.y + r4.w;
    r4.y = r4.x * r8.x;
    r4.y = r4.z * r9.x + -r4.y;
    r4.x = r9.x * r4.x;
    r4.x = r4.z * r8.x + r4.x;
    r4.zw = r4.xx * r5.wz;
    r5.x = r4.y * r5.z + -r4.z;
    r5.y = r4.y * r5.w + r4.w;
    r4.z = r4.x * r8.x;
    r4.z = r4.y * r9.x + -r4.z;
    r4.x = r9.x * r4.x;
    r4.x = r4.y * r8.x + r4.x;
    r4.yw = r4.xx * r6.yx;
    r27.y = r4.z * r6.x + -r4.y;
    r27.x = r4.z * r6.y + r4.w;
    r4.y = r4.x * r8.x;
    r4.y = r4.z * r9.x + -r4.y;
    r4.x = r9.x * r4.x;
    r4.x = r4.z * r8.x + r4.x;
    r4.zw = r4.xx * r6.wz;
    r6.x = r4.y * r6.z + -r4.z;
    r6.y = r4.y * r6.w + r4.w;
    r4.z = r4.x * r8.x;
    r4.z = r4.y * r9.x + -r4.z;
    r4.x = r9.x * r4.x;
    r4.x = r4.y * r8.x + r4.x;
    r4.xy = r4.xx * r7.yx;
    r8.x = r4.z * r7.x + -r4.x;
    r8.y = r4.z * r7.y + r4.y;
    r2.x = (int)r1.x * (int)r2.x;
    r2.x = (uint)r2.x << 3;
    r2.x = (int)r3.x + (int)r2.x;
    r4.xy = r5.xy + r1.zw;
    r1.zw = -r5.xy + r1.zw;
    r4.zw = r25.xy + r6.xy;
    r5.xy = r25.xy + -r6.xy;
    r5.zw = -r5.yx;
    r5.xy = r0.yy ? r5.zx : r5.yw;
    r5.zw = r4.xy + r4.zw;
    r6.xy = r5.xy + r1.zw;
    r1.zw = -r5.xy + r1.zw;
    r4.xy = r4.xy + -r4.zw;
    r4.zw = r27.yx + r12.yx;
    r5.xy = -r27.xy + r12.xy;
    r6.zw = r26.xy + r8.xy;
    r25.xy = r26.xy + -r8.xy;
    r25.zw = -r25.yx;
    r7.xy = r0.yy ? r25.xz : r25.wy;
    r8.xy = r6.zw + r4.zw;
    r10.zw = r7.xy + r5.xy;
    r5.xy = -r7.xy + r5.xy;
    r4.zw = -r6.zw + r4.zw;
    r6.zw = r10.zw * r2.zz;
    r7.x = r10.w * 0.707106769 + -r6.z;
    r7.y = r10.z * 0.707106769 + r6.w;
    r6.zw = r8.xy + r5.zw;
    r5.zw = -r8.xy + r5.zw;
    r8.xy = r7.xy + r6.xy;
    r6.xy = -r7.xy + r6.xy;
    r25.zw = r4.yx + r4.zw;
    r25.xy = r4.xy + -r4.wz;
    r4.x = (int)r0.y ? r25.w : r25.x; r7.x = (int)r0.y ? r25.x : r25.w;
    r4.y = (int)r0.y ? r25.y : r25.z; r7.y = (int)r0.y ? r25.z : r25.y;
    r4.zw = r5.xy * r2.zz;
    r12.x = r5.y * -0.707106769 + -r4.z;
    r12.y = r5.x * -0.707106769 + r4.w;
    r4.zw = r12.xy + r1.zw;
    r1.zw = -r12.xy + r1.zw;
    GroupMemoryBarrierWithGroupSync();
    r3.x = (uint)r2.x >> 5;
    r3.x = (uint)r3.x << 3;
    r3.x = (int)r2.x + (int)r3.x;
    g0[r3.x].val[0/4] = r6.z;
    r2.x = (int)r1.x + (int)r2.x;
    r5.x = (uint)r2.x >> 5;
    r5.x = (uint)r5.x << 3;
    r5.x = (int)r2.x + (int)r5.x;
    g0[r5.x].val[0/4] = r8.x;
    r2.x = (int)r1.x + (int)r2.x;
    r5.y = (uint)r2.x >> 5;
    r5.y = (uint)r5.y << 3;
    r5.y = (int)r2.x + (int)r5.y;
    g0[r5.y].val[0/4] = r7.x;
    r2.x = (int)r1.x + (int)r2.x;
    r6.z = (uint)r2.x >> 5;
    r6.z = (uint)r6.z << 3;
    r6.z = (int)r2.x + (int)r6.z;
    g0[r6.z].val[0/4] = r4.z;
    r2.x = (int)r1.x + (int)r2.x;
    r4.z = (uint)r2.x >> 5;
    r4.z = (uint)r4.z << 3;
    r4.z = (int)r2.x + (int)r4.z;
    g0[r4.z].val[0/4] = r5.z;
    r2.x = (int)r1.x + (int)r2.x;
    r5.z = (uint)r2.x >> 5;
    r5.z = (uint)r5.z << 3;
    r5.z = (int)r2.x + (int)r5.z;
    g0[r5.z].val[0/4] = r6.x;
    r2.x = (int)r1.x + (int)r2.x;
    r6.x = (uint)r2.x >> 5;
    r6.x = (uint)r6.x << 3;
    r6.x = (int)r2.x + (int)r6.x;
    g0[r6.x].val[0/4] = r4.x;
    r2.x = (int)r1.x + (int)r2.x;
    r4.x = (uint)r2.x >> 5;
    r4.x = (uint)r4.x << 3;
    r2.x = (int)r2.x + (int)r4.x;
    g0[r2.x].val[0/4] = r1.z;
    GroupMemoryBarrierWithGroupSync();
    r12.x = g0[r0.z].val[0/4];
    r25.x = g0[r0.w].val[0/4];
    r26.x = g0[r1.y].val[0/4];
    r27.x = g0[r2.y].val[0/4];
    r28.x = g0[r3.y].val[0/4];
    r29.x = g0[r3.z].val[0/4];
    r30.x = g0[r3.w].val[0/4];
    r31.x = g0[r2.w].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r3.x].val[0/4] = r6.w;
    g0[r5.x].val[0/4] = r8.y;
    g0[r5.y].val[0/4] = r7.y;
    g0[r6.z].val[0/4] = r4.w;
    g0[r4.z].val[0/4] = r5.w;
    g0[r5.z].val[0/4] = r6.y;
    g0[r6.x].val[0/4] = r4.y;
    g0[r2.x].val[0/4] = r1.w;
    GroupMemoryBarrierWithGroupSync();
    r12.y = g0[r0.z].val[0/4];
    r25.y = g0[r0.w].val[0/4];
    r26.y = g0[r1.y].val[0/4];
    r27.y = g0[r2.y].val[0/4];
    r28.y = g0[r3.y].val[0/4];
    r29.y = g0[r3.z].val[0/4];
    r30.y = g0[r3.w].val[0/4];
    r31.y = g0[r2.w].val[0/4];
    x2[0].xy = r12.xy;
    x2[1].xy = r25.xy;
    x2[2].xy = r26.xy;
    x2[3].xy = r27.xy;
    x2[4].xy = r28.xy;
    x2[5].xy = r29.xy;
    x2[6].xy = r30.xy;
    x2[7].xy = r31.xy;
    r1.x = r7.w;
  }
  r0.zw = x2[0].xy;
  r1.xy = x2[1].xy;
  r1.zw = x2[2].xy;
  r2.xy = x2[3].xy;
  r3.xy = x2[4].xy;
  r3.zw = x2[5].xy;
  r4.xy = x2[6].xy;
  r4.zw = x2[7].xy;
  r5.xy = r16.xx * r1.yx;
  r6.y = r17.x * r1.x + -r5.x;
  r6.x = r17.x * r1.y + r5.y;
  r1.xy = r9.zz * r1.wz;
  r5.x = r9.y * r1.z + -r1.x;
  r5.y = r9.y * r1.w + r1.y;
  r1.xy = r10.xx * r2.yx;
  r7.x = r9.w * r2.x + -r1.x;
  r7.y = r9.w * r2.y + r1.y;
  r1.xy = r11.yy * r3.yx;
  r1.z = r10.y * r3.x + -r1.x;
  r1.w = r10.y * r3.y + r1.y;
  r1.xy = r11.ww * r3.wz;
  r2.y = r11.z * r3.z + -r1.x;
  r2.x = r11.z * r3.w + r1.y;
  r1.xy = r12.ww * r4.yx;
  r3.x = r12.z * r4.x + -r1.x;
  r3.y = r12.z * r4.y + r1.y;
  r1.xy = r14.xx * r4.wz;
  r4.x = r13.y * r4.z + -r1.x;
  r4.y = r13.y * r4.w + r1.y;
  r1.xy = r1.zw + r0.zw;
  r0.zw = -r1.zw + r0.zw;
  r1.zw = r5.xy + r3.xy;
  r3.xy = r5.xy + -r3.xy;
  r3.zw = -r3.yx;
  r3.xy = r0.yy ? r3.zx : r3.yw;
  r3.zw = r1.xy + r1.zw;
  r4.zw = r3.xy + r0.zw;
  r0.zw = -r3.xy + r0.zw;
  r1.xy = r1.xy + -r1.zw;
  r1.zw = r6.yx + r2.yx;
  r2.xy = r6.xy + -r2.xy;
  r3.xy = r7.xy + r4.xy;
  r5.xy = r7.xy + -r4.xy;
  r5.zw = -r5.yx;
  r4.xy = r0.yy ? r5.xz : r5.wy;
  r5.xy = r3.xy + r1.zw;
  r5.zw = r4.xy + r2.xy;
  r2.xy = -r4.xy + r2.xy;
  r1.zw = -r3.xy + r1.zw;
  r3.xy = r5.zw * r2.zz;
  r6.z = r5.w * 0.707106769 + -r3.x;
  r6.w = r5.z * 0.707106769 + r3.y;
  r20.zw = r5.xy + r3.zw;
  r21.zw = -r5.xy + r3.zw;
  r22.zw = r6.zw + r4.zw;
  r18.zw = -r6.zw + r4.zw;
  r3.zw = r1.yx + r1.zw;
  r3.xy = r1.xy + -r1.wz;
  r1.x = (int)r0.y ? r3.w : r3.x; r3.x = (int)r0.y ? r3.x : r3.w;
  r1.y = (int)r0.y ? r3.y : r3.z; r3.y = (int)r0.y ? r3.z : r3.y;
  r1.zw = r2.zz * r2.xy;
  r2.z = r2.y * -0.707106769 + -r1.z;
  r2.w = r2.x * -0.707106769 + r1.w;
  r24.zw = r2.zw + r0.zw;
  r23.zw = -r2.zw + r0.zw;
  if (r0.x != 0) {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].x));
    if (r0.x != 0) {
      r2.x = vThreadIDInGroup.x;
      r2.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r20.xyzw
    } else {
      r8.z = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r22.xyzw
      r8.z = (int)r8.z + 512;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
      r19.zw = r3.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r19.xyzw
      r8.z = (int)r8.z + 512;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r24.xyzw
      r8.z = (int)r8.z + 512;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r21.xyzw
      r8.z = (int)r8.z + 512;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r18.xyzw
      r8.z = (int)r8.z + 512;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
      r15.zw = r1.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r15.xyzw
      r8.z = (int)r8.z + 512;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.zwww, r23.xyzw
    }
  } else {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].y));
    if (r0.x != 0) {
      r2.x = vThreadGroupID.z;
      r2.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r20.xyzw
    } else {
      r8.z = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r22.xyzw
      r8.z = (int)r8.z + 512;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
      r19.zw = r3.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r19.xyzw
      r8.z = (int)r8.z + 512;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r24.xyzw
      r8.z = (int)r8.z + 512;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r21.xyzw
      r8.z = (int)r8.z + 512;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r18.xyzw
      r8.z = (int)r8.z + 512;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
      r15.zw = r1.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r15.xyzw
      r8.z = (int)r8.z + 512;
    }
    r0.y = cmp((uint)r8.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r8.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.wzzz, r23.xyzw
    }
  }
  return;
}