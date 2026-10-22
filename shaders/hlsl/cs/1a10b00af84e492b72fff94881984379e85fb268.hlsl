// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[2048];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[8];
  float4 x1[4];
  float4 x2[4];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 256, 1, 1
  r0.xy = asint(cb0[4].xx) & int2(1,2);
  x0[0].xy = float2(0,0);
  x0[1].xy = float2(0,0);
  x0[2].xy = float2(0,0);
  x0[3].xy = float2(0,0);
  x0[4].xy = float2(0,0);
  x0[5].xy = float2(0,0);
  x0[6].xy = float2(0,0);
  x0[7].xy = float2(0,0);
  if (r0.x != 0) {
    r0.z = vThreadIDInGroup.x;
    r1.y = vThreadGroupID.z;
    r1.x = (int)r0.z + asint(cb0[1].x);
    r0.z = cmp(asuint(cb0[1].z) >= (uint)r1.x);
    if (r0.z != 0) {
      r1.zw = float2(0,0);
      r2.xyzw = t0.Load(r1.xyz).xyzw;
      x0[0].xy = r2.xy;
      x0[4].xy = r2.zw;
    }
    r2.xyz = (int3)r1.xxx + int3(256,512,768);
    r3.xyz = cmp(asuint(cb0[1].zzz) >= (uint3)r2.xyz);
    if (r3.x != 0) {
      r1.x = r2.x;
      r1.zw = float2(0,0);
      r4.xyzw = t0.Load(r1.xyz).xyzw;
      x0[1].xy = r4.xy;
      x0[5].xy = r4.zw;
    }
    if (r3.y != 0) {
      r1.x = r2.y;
      r1.zw = float2(0,0);
      r4.xyzw = t0.Load(r1.xyz).xyzw;
      x0[2].xy = r4.xy;
      x0[6].xy = r4.zw;
    }
    if (r3.z != 0) {
      r1.x = r2.z;
      r1.zw = float2(0,0);
      r1.xyzw = t0.Load(r1.xyz).xyzw;
      x0[3].xy = r1.xy;
      x0[7].xy = r1.zw;
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
      x0[4].xy = r2.zw;
    }
    r2.xyz = (int3)r1.yyy + int3(256,768,512);
    r3.xyz = cmp(asuint(cb0[1].www) >= (uint3)r2.xzy);
    if (r3.x != 0) {
      r1.y = r2.x;
      r1.zw = float2(0,0);
      r4.xyzw = t0.Load(r1.xyz).xyzw;
      x0[1].xy = r4.xy;
      x0[5].xy = r4.zw;
    }
    if (r3.y != 0) {
      r1.y = r2.z;
      r1.zw = float2(0,0);
      r4.xyzw = t0.Load(r1.xyz).xyzw;
      x0[2].xy = r4.xy;
      x0[6].xy = r4.zw;
    }
    if (r3.z != 0) {
      r2.x = r1.x;
      r2.zw = float2(0,0);
      r1.xyzw = t0.Load(r2.xyz).xyzw;
      x0[3].xy = r1.xy;
      x0[7].xy = r1.zw;
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
  if (r0.y == 0) {
    r0.zw = float2(0.0009765625,0.0009765625) * r0.zw;
    r1.xyzw = float4(0.0009765625,0.0009765625,0.0009765625,0.0009765625) * r1.xyzw;
    r2.xyzw = float4(0.0009765625,0.0009765625,0.0009765625,0.0009765625) * r2.xyzw;
    r3.xyzw = float4(0.0009765625,0.0009765625,0.0009765625,0.0009765625) * r3.xyzw;
    r4.xy = float2(0.0009765625,0.0009765625) * r4.xy;
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
  bitmask.x = ((~(-1 << 8)) << 0) & 0xffffffff;  r5.x = (((uint)vThreadIDInGroup.x << 0) & bitmask.x) | ((uint)256 & ~bitmask.x);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r5.y = (((uint)vThreadIDInGroup.x << 2) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r5.zw = (uint2)r5.yx >> int2(5,5);
  r6.xy = (int2)r5.zw + (int2)r5.yx;
  g0[r6.x].val[0/4] = r2.x;
  r6.zw = (int2)r5.yx + int2(1,256);
  r7.xy = (uint2)r6.zw >> int2(5,5);
  r7.zw = (int2)r6.zw + (int2)r7.xy;
  g0[r7.z].val[0/4] = r1.x;
  r1.xz = (int2)r6.zw | int2(3,768);
  r1.x = (int)r7.x + (int)r1.x;
  g0[r1.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r0.z = (uint)vThreadIDInGroup.x >> 5;
  r2.x = (int)r0.z + (int)vThreadIDInGroup.x;
  r8.x = g0[r2.x].val[0/4];
  r9.x = g0[r6.y].val[0/4];
  r10.x = g0[r7.w].val[0/4];
  r4.w = (uint)r1.z >> 5;
  r5.z = (int)r1.z + (int)r4.w;
  r11.x = g0[r5.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r4.z].val[0/4] = r1.w;
  g0[r6.x].val[0/4] = r2.y;
  g0[r7.z].val[0/4] = r1.y;
  g0[r1.x].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r8.y = g0[r2.x].val[0/4];
  r9.y = g0[r6.y].val[0/4];
  r10.y = g0[r7.w].val[0/4];
  r11.y = g0[r5.z].val[0/4];
  x1[0].xy = r8.xy;
  x1[1].xy = r9.xy;
  x1[2].xy = r10.xy;
  x1[3].xy = r11.xy;
  r0.w = 4;
  while (true) {
    r1.y = cmp((uint)r0.w >= 256);
    if (r1.y != 0) break;
    r1.yw = x1[0].xy;
    r8.xy = x1[1].xy;
    r8.zw = x1[2].xy;
    r9.xy = x1[3].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r0.w;
    r10.x = (uint)vThreadIDInGroup.x % (uint)r0.w;
    r7.x = uiDest.x;
    r2.y = (uint)r10.x;
    r2.y = 6.28318548 * r2.y;
    r6.z = (uint)r0.w << 2;
    r9.z = (uint)r6.z;
    r2.y = r2.y / r9.z;
    r2.y = r0.y ? r2.y : -r2.y;
    sincos(r2.y, r11.x, r12.x);
    r9.zw = r11.xx * r8.yx;
    r13.x = r12.x * r8.x + -r9.z;
    r13.y = r12.x * r8.y + r9.w;
    r2.y = r11.x * r11.x;
    r2.y = r12.x * r12.x + -r2.y;
    r8.x = dot(r12.xx, r11.xx);
    r9.zw = r8.xx * r8.wz;
    r14.x = r2.y * r8.z + -r9.z;
    r14.y = r2.y * r8.w + r9.w;
    r8.y = r8.x * r11.x;
    r8.y = r2.y * r12.x + -r8.y;
    r8.x = r12.x * r8.x;
    r2.y = r2.y * r11.x + r8.x;
    r8.xz = r2.yy * r9.yx;
    r11.x = r8.y * r9.x + -r8.x;
    r11.y = r8.y * r9.y + r8.z;
    r2.y = (int)r0.w * (int)r7.x;
    r2.y = (uint)r2.y << 2;
    r2.y = (int)r10.x + (int)r2.y;
    r8.xy = r14.xy + r1.yw;
    r8.zw = r13.xy + r11.xy;
    r1.yw = -r14.xy + r1.yw;
    r9.xy = r13.xy + -r11.xy;
    r9.zw = -r9.yx;
    r9.xy = r0.yy ? r9.zx : r9.yw;
    r9.zw = r8.xy + r8.zw;
    r10.xy = r9.xy + r1.yw;
    r1.yw = -r9.xy + r1.yw;
    r8.xy = r8.xy + -r8.zw;
    GroupMemoryBarrierWithGroupSync();
    r7.x = cmp((uint)r0.w < 32);
    r7.x = r7.x ? r0.w : 0;
    r8.z = (uint)r2.y >> 5;
    r8.z = mad((int)r8.z, (int)r7.x, (int)r2.y);
    g0[r8.z].val[0/4] = r9.z;
    r2.y = (int)r0.w + (int)r2.y;
    r8.w = (uint)r2.y >> 5;
    r8.w = mad((int)r8.w, (int)r7.x, (int)r2.y);
    g0[r8.w].val[0/4] = r10.x;
    r2.y = (int)r0.w + (int)r2.y;
    r9.x = (uint)r2.y >> 5;
    r9.x = mad((int)r9.x, (int)r7.x, (int)r2.y);
    g0[r9.x].val[0/4] = r8.x;
    r2.y = (int)r0.w + (int)r2.y;
    r8.x = (uint)r2.y >> 5;
    r2.y = mad((int)r8.x, (int)r7.x, (int)r2.y);
    g0[r2.y].val[0/4] = r1.y;
    GroupMemoryBarrierWithGroupSync();
    r1.y = mad((int)r0.z, (int)r7.x, (int)vThreadIDInGroup.x);
    r11.x = g0[r1.y].val[0/4];
    r8.x = mad((int)r5.w, (int)r7.x, (int)r5.x);
    r12.x = g0[r8.x].val[0/4];
    r9.y = mad((int)r7.y, (int)r7.x, (int)r6.w);
    r13.x = g0[r9.y].val[0/4];
    r7.x = mad((int)r4.w, (int)r7.x, (int)r1.z);
    r14.x = g0[r7.x].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r8.z].val[0/4] = r9.w;
    g0[r8.w].val[0/4] = r10.y;
    g0[r9.x].val[0/4] = r8.y;
    g0[r2.y].val[0/4] = r1.w;
    GroupMemoryBarrierWithGroupSync();
    r11.y = g0[r1.y].val[0/4];
    r12.y = g0[r8.x].val[0/4];
    r13.y = g0[r9.y].val[0/4];
    r14.y = g0[r7.x].val[0/4];
    x1[0].xy = r11.xy;
    x1[1].xy = r12.xy;
    x1[2].xy = r13.xy;
    x1[3].xy = r14.xy;
    r0.w = r6.z;
  }
  r1.yw = x1[0].xy;
  r8.xy = x1[1].xy;
  r8.zw = x1[2].xy;
  r9.xy = x1[3].xy;
  r0.w = (uint)vThreadIDInGroup.x;
  r9.zw = float2(0.00613592332,-0.00613592332) * r0.ww;
  r0.w = r0.y ? r9.z : r9.w;
  sincos(r0.w, r7.x, r10.x);
  r9.zw = r7.xx * r8.yx;
  r11.x = r10.x * r8.x + -r9.z;
  r11.y = r10.x * r8.y + r9.w;
  r0.w = r7.x * r7.x;
  r0.w = r10.x * r10.x + -r0.w;
  r2.y = dot(r10.xx, r7.xx);
  r8.xy = r2.yy * r8.wz;
  r12.x = r0.w * r8.z + -r8.x;
  r12.y = r0.w * r8.w + r8.y;
  r6.z = r2.y * r7.x;
  r6.z = r0.w * r10.x + -r6.z;
  r8.x = r10.x * r2.y;
  r8.x = r0.w * r7.x + r8.x;
  r8.yz = r8.xx * r9.yx;
  r13.x = r6.z * r9.x + -r8.y;
  r13.y = r6.z * r9.y + r8.z;
  r8.yz = r12.xy + r1.yw;
  r9.xy = r13.xy + r11.xy;
  r1.yw = -r12.xy + r1.yw;
  r11.xy = -r13.xy + r11.xy;
  r11.zw = -r11.yx;
  r9.zw = r0.yy ? r11.zx : r11.yw;
  r11.xy = r9.xy + r8.yz;
  r12.xy = r9.zw + r1.yw;
  r13.xy = -r9.zw + r1.yw;
  r9.xy = -r9.xy + r8.yz;
  GroupMemoryBarrierWithGroupSync();
  r1.yw = r2.zw + r3.zw;
  r8.yz = r3.xy + r4.xy;
  r2.zw = r2.zw + -r3.zw;
  r3.xy = r3.xy + -r4.xy;
  r3.zw = -r3.yx;
  r3.xy = r0.yy ? r3.zx : r3.yw;
  r3.zw = r8.yz + r1.yw;
  r4.xy = r3.xy + r2.zw;
  r2.zw = -r3.xy + r2.zw;
  r1.yw = -r8.yz + r1.yw;
  g0[r4.z].val[0/4] = r3.z;
  g0[r6.x].val[0/4] = r4.x;
  g0[r7.z].val[0/4] = r1.y;
  g0[r1.x].val[0/4] = r2.z;
  GroupMemoryBarrierWithGroupSync();
  r3.x = g0[r2.x].val[0/4];
  r14.x = g0[r6.y].val[0/4];
  r15.x = g0[r7.w].val[0/4];
  r16.x = g0[r5.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r4.z].val[0/4] = r3.w;
  g0[r6.x].val[0/4] = r4.y;
  g0[r7.z].val[0/4] = r1.w;
  g0[r1.x].val[0/4] = r2.w;
  GroupMemoryBarrierWithGroupSync();
  r3.y = g0[r2.x].val[0/4];
  r14.y = g0[r6.y].val[0/4];
  r15.y = g0[r7.w].val[0/4];
  r16.y = g0[r5.z].val[0/4];
  x2[0].xy = r3.xy;
  x2[1].xy = r14.xy;
  x2[2].xy = r15.xy;
  x2[3].xy = r16.xy;
  r1.x = 4;
  while (true) {
    r1.y = cmp((uint)r1.x >= 256);
    if (r1.y != 0) break;
    r1.yw = x2[0].xy;
    r2.xz = x2[1].xy;
    r3.xy = x2[2].xy;
    r3.zw = x2[3].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r1.x;
    r6.x = (uint)vThreadIDInGroup.x % (uint)r1.x;
    r4.x = uiDest.x;
    r2.w = (uint)r6.x;
    r2.w = 6.28318548 * r2.w;
    r4.y = (uint)r1.x << 2;
    r4.z = (uint)r4.y;
    r2.w = r2.w / r4.z;
    r2.w = r0.y ? r2.w : -r2.w;
    sincos(r2.w, r14.x, r15.x);
    r7.zw = r14.xx * r2.zx;
    r16.x = r15.x * r2.x + -r7.z;
    r16.y = r15.x * r2.z + r7.w;
    r2.x = r14.x * r14.x;
    r2.x = r15.x * r15.x + -r2.x;
    r2.z = dot(r15.xx, r14.xx);
    r7.zw = r2.zz * r3.yx;
    r17.x = r2.x * r3.x + -r7.z;
    r17.y = r2.x * r3.y + r7.w;
    r2.w = r2.z * r14.x;
    r2.w = r2.x * r15.x + -r2.w;
    r2.z = r15.x * r2.z;
    r2.x = r2.x * r14.x + r2.z;
    r2.xz = r2.xx * r3.wz;
    r3.x = r2.w * r3.z + -r2.x;
    r3.y = r2.w * r3.w + r2.z;
    r2.x = (int)r1.x * (int)r4.x;
    r2.x = (uint)r2.x << 2;
    r2.x = (int)r6.x + (int)r2.x;
    r2.zw = r17.xy + r1.yw;
    r3.zw = r16.xy + r3.xy;
    r1.yw = -r17.xy + r1.yw;
    r14.xy = r16.xy + -r3.xy;
    r14.zw = -r14.yx;
    r3.xy = r0.yy ? r14.zx : r14.yw;
    r4.xz = r3.zw + r2.zw;
    r6.xy = r3.xy + r1.yw;
    r1.yw = -r3.xy + r1.yw;
    r2.zw = -r3.zw + r2.zw;
    GroupMemoryBarrierWithGroupSync();
    r3.x = cmp((uint)r1.x < 32);
    r3.x = r3.x ? r1.x : 0;
    r3.y = (uint)r2.x >> 5;
    r3.y = mad((int)r3.y, (int)r3.x, (int)r2.x);
    g0[r3.y].val[0/4] = r4.x;
    r2.x = (int)r1.x + (int)r2.x;
    r3.z = (uint)r2.x >> 5;
    r3.z = mad((int)r3.z, (int)r3.x, (int)r2.x);
    g0[r3.z].val[0/4] = r6.x;
    r2.x = (int)r1.x + (int)r2.x;
    r3.w = (uint)r2.x >> 5;
    r3.w = mad((int)r3.w, (int)r3.x, (int)r2.x);
    g0[r3.w].val[0/4] = r2.z;
    r2.x = (int)r1.x + (int)r2.x;
    r2.z = (uint)r2.x >> 5;
    r2.x = mad((int)r2.z, (int)r3.x, (int)r2.x);
    g0[r2.x].val[0/4] = r1.y;
    GroupMemoryBarrierWithGroupSync();
    r1.y = mad((int)r0.z, (int)r3.x, (int)vThreadIDInGroup.x);
    r14.x = g0[r1.y].val[0/4];
    r2.z = mad((int)r5.w, (int)r3.x, (int)r5.x);
    r15.x = g0[r2.z].val[0/4];
    r4.x = mad((int)r7.y, (int)r3.x, (int)r6.w);
    r16.x = g0[r4.x].val[0/4];
    r3.x = mad((int)r4.w, (int)r3.x, (int)r1.z);
    r17.x = g0[r3.x].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r3.y].val[0/4] = r4.z;
    g0[r3.z].val[0/4] = r6.y;
    g0[r3.w].val[0/4] = r2.w;
    g0[r2.x].val[0/4] = r1.w;
    GroupMemoryBarrierWithGroupSync();
    r14.y = g0[r1.y].val[0/4];
    r15.y = g0[r2.z].val[0/4];
    r16.y = g0[r4.x].val[0/4];
    r17.y = g0[r3.x].val[0/4];
    x2[0].xy = r14.xy;
    x2[1].xy = r15.xy;
    x2[2].xy = r16.xy;
    x2[3].xy = r17.xy;
    r1.x = r4.y;
  }
  r1.xy = x2[0].xy;
  r1.zw = x2[1].xy;
  r2.xz = x2[2].xy;
  r3.xy = x2[3].xy;
  r3.zw = r7.xx * r1.wz;
  r4.x = r10.x * r1.z + -r3.z;
  r4.y = r10.x * r1.w + r3.w;
  r1.zw = r2.yy * r2.zx;
  r3.z = r0.w * r2.x + -r1.z;
  r3.w = r0.w * r2.z + r1.w;
  r0.zw = r8.xx * r3.yx;
  r2.x = r6.z * r3.x + -r0.z;
  r2.y = r6.z * r3.y + r0.w;
  r0.zw = r3.zw + r1.xy;
  r1.zw = r4.xy + r2.xy;
  r1.xy = -r3.zw + r1.xy;
  r2.xy = r4.xy + -r2.xy;
  r2.zw = -r2.yx;
  r2.xy = r0.yy ? r2.zx : r2.yw;
  r11.zw = r1.zw + r0.zw;
  r12.zw = r2.xy + r1.xy;
  r13.zw = -r2.xy + r1.xy;
  r9.zw = -r1.zw + r0.zw;
  if (r0.x != 0) {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].x));
    if (r0.x != 0) {
      r1.x = vThreadIDInGroup.x;
      r1.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r11.xyzw
    } else {
      r5.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.xyyy, r12.xyzw
      r5.x = (int)r5.x + 256;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.xyyy, r9.xyzw
      r5.x = (int)r5.x + 256;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.xyyy, r13.xyzw
    }
  } else {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].y));
    if (r0.x != 0) {
      r1.x = vThreadGroupID.z;
      r1.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r11.xyzw
    } else {
      r5.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.yxxx, r12.xyzw
      r5.x = (int)r5.x + 256;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.yxxx, r9.xyzw
      r5.x = (int)r5.x + 256;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.yxxx, r13.xyzw
    }
  }
  return;
}