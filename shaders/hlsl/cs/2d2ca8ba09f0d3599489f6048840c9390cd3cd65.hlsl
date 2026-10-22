// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[4096];
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
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

  float4 x0[4];
  float4 x1[4];
  float4 x2[2];
  float4 x3[2];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1024, 1, 1
  r0.xy = asint(cb0[3].xx) & int2(1,2);
  uiDest.xz = asuint(cb0[1].xx) / asuint(cb0[0].ww);
  r1.xz = uiDest.xz;
  r1.yw = float2(0,0);
  r1.xyzw = r0.xxxx ? r1.xyzw : r1.wzwz;
  r0.z = (uint)vThreadIDInGroup.x << 1;
  if (27 == 0) r0.w = 0; else if (27+4 < 32) {   r0.w = (uint)vThreadIDInGroup.x << (32-(27 + 4)); r0.w = (uint)r0.w >> (32-27);  } else r0.w = (uint)vThreadIDInGroup.x >> 4;
  r0.z = (int)r0.w + (int)r0.z;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.x = (((uint)vThreadIDInGroup.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 10)) << 0) & 0xffffffff;  r2.y = (((uint)vThreadIDInGroup.x << 0) & bitmask.y) | ((uint)1024 & ~bitmask.y);
  r2.zw = (uint2)r2.xy >> int2(5,5);
  r0.w = (uint)vThreadIDInGroup.x >> 5;
  r3.x = (int)r0.w + (int)vThreadIDInGroup.x;
  r2.xz = (int2)r2.zw + (int2)r2.xy;
  r3.y = (uint)vThreadIDInGroup.x;
  r3.yz = float2(0.00306796166,-0.00306796166) * r3.yy;
  r3.y = r0.y ? r3.y : r3.z;
  sincos(r3.y, r4.x, r5.x);
  r6.yz = vThreadGroupID.zz;
  r7.zw = float2(0,0);
  r8.zw = float2(0,0);
  r6.xw = vThreadIDInGroup.xx;
  r9.yz = float2(0,0);
  r10.zw = float2(0,0);
  r11.zw = float2(0,0);
  r12.xyzw = cb0[2].xyzw;
  r3.y = 0;
  while (true) {
    r3.z = cmp((uint)r3.y >= asuint(cb0[0].w));
    if (r3.z != 0) break;
    GroupMemoryBarrierWithGroupSync();
    x0[0].xy = float2(0,0);
    x0[1].xy = float2(0,0);
    x0[2].xy = float2(0,0);
    x0[3].xy = float2(0,0);
    if (r0.x != 0) {
      r9.x = r12.x;
      r7.xy = (int2)r6.xy + (int2)r9.xy;
      r3.z = cmp((uint)r12.z >= (uint)r7.x);
      if (r3.z != 0) {
        r13.xyzw = t0.Load(r7.xyz).xyzw;
        x0[0].xy = r13.xy;
        x0[2].xy = r13.zw;
      }
      r8.x = (int)r7.x + 1024;
      r3.z = cmp((uint)r12.z >= (uint)r8.x);
      if (r3.z != 0) {
        r8.y = r7.y;
        r13.xyzw = t0.Load(r8.xyz).xyzw;
        x0[1].xy = r13.xy;
        x0[3].xy = r13.zw;
      }
    } else {
      r9.w = r12.y;
      r10.xy = (int2)r6.zw + (int2)r9.zw;
      r3.z = cmp((uint)r12.w >= (uint)r10.y);
      if (r3.z != 0) {
        r13.xyzw = t0.Load(r10.xyz).xyzw;
        x0[0].xy = r13.xy;
        x0[2].xy = r13.zw;
      }
      r11.y = (int)r10.y + 1024;
      r3.z = cmp((uint)r12.w >= (uint)r11.y);
      if (r3.z != 0) {
        r11.x = r10.x;
        r13.xyzw = t0.Load(r11.xyz).xyzw;
        x0[1].xy = r13.xy;
        x0[3].xy = r13.zw;
      }
    }
    r3.zw = x0[0].xy;
    r4.yz = x0[1].xy;
    r5.yz = x0[2].xy;
    r7.xy = x0[3].xy;
    x1[0].xy = r3.zw;
    x1[1].xy = r4.yz;
    x1[2].xy = r5.yz;
    x1[3].xy = r7.xy;
    if (r0.y == 0) {
      r3.zw = float2(0.00048828125,0.00048828125) * r3.zw;
      r4.yz = float2(0.00048828125,0.00048828125) * r4.yz;
      r5.yz = float2(0.00048828125,0.00048828125) * r5.yz;
      r7.xy = float2(0.00048828125,0.00048828125) * r7.xy;
      x1[0].xy = r3.zw;
      x1[1].xy = r4.yz;
      x1[2].xy = r5.yz;
      x1[3].xy = r7.xy;
    }
    r3.zw = x1[0].xy;
    r4.yz = x1[1].xy;
    r5.yz = r4.yz + r3.zw;
    r3.zw = -r4.yz + r3.zw;
    g0[r0.z].val[0/4] = r5.y;
    g0[r2.x].val[0/4] = r3.z;
    GroupMemoryBarrierWithGroupSync();
    r7.x = g0[r3.x].val[0/4];
    r8.x = g0[r2.z].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r0.z].val[0/4] = r5.z;
    g0[r2.x].val[0/4] = r3.w;
    GroupMemoryBarrierWithGroupSync();
    r7.y = g0[r3.x].val[0/4];
    r8.y = g0[r2.z].val[0/4];
    x2[0].xy = r7.xy;
    x2[1].xy = r8.xy;
    r3.z = 2;
    while (true) {
      r3.w = cmp((uint)r3.z >= 1024);
      if (r3.w != 0) break;
      r4.yz = x2[0].xy;
      r5.yz = x2[1].xy;
      uiDest.x = (uint)vThreadIDInGroup.x / (uint)r3.z;
      r8.x = (uint)vThreadIDInGroup.x % (uint)r3.z;
      r7.x = uiDest.x;
      r3.w = (uint)r8.x;
      r3.w = 6.28318548 * r3.w;
      r4.w = (uint)r3.z << 1;
      r5.w = (uint)r4.w;
      r3.w = r3.w / r5.w;
      r3.w = r0.y ? r3.w : -r3.w;
      sincos(r3.w, r9.x, r10.x);
      r9.xw = r9.xx * r5.zy;
      r11.x = r10.x * r5.y + -r9.x;
      r11.y = r10.x * r5.z + r9.w;
      r3.w = (int)r3.z * (int)r7.x;
      r3.w = (uint)r3.w << 1;
      r3.w = (int)r8.x + (int)r3.w;
      r5.yz = r11.xy + r4.yz;
      r4.yz = -r11.xy + r4.yz;
      GroupMemoryBarrierWithGroupSync();
      r5.w = cmp((uint)r3.z < 32);
      r5.w = r5.w ? r3.z : 0;
      r7.x = (uint)r3.w >> 5;
      r7.x = mad((int)r7.x, (int)r5.w, (int)r3.w);
      g0[r7.x].val[0/4] = r5.y;
      r3.w = (int)r3.z + (int)r3.w;
      r5.y = (uint)r3.w >> 5;
      r3.w = mad((int)r5.y, (int)r5.w, (int)r3.w);
      g0[r3.w].val[0/4] = r4.y;
      GroupMemoryBarrierWithGroupSync();
      r4.y = mad((int)r0.w, (int)r5.w, (int)vThreadIDInGroup.x);
      r8.x = g0[r4.y].val[0/4];
      r5.y = mad((int)r2.w, (int)r5.w, (int)r2.y);
      r10.x = g0[r5.y].val[0/4];
      GroupMemoryBarrierWithGroupSync();
      g0[r7.x].val[0/4] = r5.z;
      g0[r3.w].val[0/4] = r4.z;
      GroupMemoryBarrierWithGroupSync();
      r8.y = g0[r4.y].val[0/4];
      r10.y = g0[r5.y].val[0/4];
      x2[0].xy = r8.xy;
      x2[1].xy = r10.xy;
      r3.z = r4.w;
    }
    r3.zw = x2[0].xy;
    r4.yz = x2[1].xy;
    r5.yz = r4.xx * r4.zy;
    r7.x = r5.x * r4.y + -r5.y;
    r7.y = r5.x * r4.z + r5.z;
    r13.xy = r7.xy + r3.zw;
    r14.xy = -r7.xy + r3.zw;
    GroupMemoryBarrierWithGroupSync();
    r3.zw = x1[2].xy;
    r4.yz = x1[3].xy;
    r5.yz = r4.yz + r3.zw;
    r3.zw = -r4.yz + r3.zw;
    g0[r0.z].val[0/4] = r5.y;
    g0[r2.x].val[0/4] = r3.z;
    GroupMemoryBarrierWithGroupSync();
    r7.x = g0[r3.x].val[0/4];
    r8.x = g0[r2.z].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r0.z].val[0/4] = r5.z;
    g0[r2.x].val[0/4] = r3.w;
    GroupMemoryBarrierWithGroupSync();
    r7.y = g0[r3.x].val[0/4];
    r8.y = g0[r2.z].val[0/4];
    x3[0].xy = r7.xy;
    x3[1].xy = r8.xy;
    r3.z = 2;
    while (true) {
      r3.w = cmp((uint)r3.z >= 1024);
      if (r3.w != 0) break;
      r4.yz = x3[0].xy;
      r5.yz = x3[1].xy;
      uiDest.x = (uint)vThreadIDInGroup.x / (uint)r3.z;
      r8.x = (uint)vThreadIDInGroup.x % (uint)r3.z;
      r7.x = uiDest.x;
      r3.w = (uint)r8.x;
      r3.w = 6.28318548 * r3.w;
      r4.w = (uint)r3.z << 1;
      r5.w = (uint)r4.w;
      r3.w = r3.w / r5.w;
      r3.w = r0.y ? r3.w : -r3.w;
      sincos(r3.w, r9.x, r10.x);
      r9.xw = r9.xx * r5.zy;
      r11.x = r10.x * r5.y + -r9.x;
      r11.y = r10.x * r5.z + r9.w;
      r3.w = (int)r3.z * (int)r7.x;
      r3.w = (uint)r3.w << 1;
      r3.w = (int)r8.x + (int)r3.w;
      r5.yz = r11.xy + r4.yz;
      r4.yz = -r11.xy + r4.yz;
      GroupMemoryBarrierWithGroupSync();
      r5.w = cmp((uint)r3.z < 32);
      r5.w = r5.w ? r3.z : 0;
      r7.x = (uint)r3.w >> 5;
      r7.x = mad((int)r7.x, (int)r5.w, (int)r3.w);
      g0[r7.x].val[0/4] = r5.y;
      r3.w = (int)r3.z + (int)r3.w;
      r5.y = (uint)r3.w >> 5;
      r3.w = mad((int)r5.y, (int)r5.w, (int)r3.w);
      g0[r3.w].val[0/4] = r4.y;
      GroupMemoryBarrierWithGroupSync();
      r4.y = mad((int)r0.w, (int)r5.w, (int)vThreadIDInGroup.x);
      r8.x = g0[r4.y].val[0/4];
      r5.y = mad((int)r2.w, (int)r5.w, (int)r2.y);
      r10.x = g0[r5.y].val[0/4];
      GroupMemoryBarrierWithGroupSync();
      g0[r7.x].val[0/4] = r5.z;
      g0[r3.w].val[0/4] = r4.z;
      GroupMemoryBarrierWithGroupSync();
      r8.y = g0[r4.y].val[0/4];
      r10.y = g0[r5.y].val[0/4];
      x3[0].xy = r8.xy;
      x3[1].xy = r10.xy;
      r3.z = r4.w;
    }
    r3.zw = x3[0].xy;
    r4.yz = x3[1].xy;
    r5.yz = r4.xx * r4.zy;
    r15.z = r5.x * r4.y + -r5.y;
    r15.w = r5.x * r4.z + r5.z;
    r13.zw = r15.zw + r3.zw;
    r14.zw = -r15.zw + r3.zw;
    if (r0.x != 0) {
      r15.y = (int)r12.x + (int)vThreadIDInGroup.x;
      r15.z = (int)r12.y + (int)vThreadGroupID.z;
      r3.z = cmp((uint)r15.y < (uint)r12.z);
      if (r3.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r15.yzzz, r13.xyzw
        r15.x = (int)r15.y + 1024;
      } else {
        r15.x = r15.y;
      }
      r3.w = cmp((uint)r15.x < (uint)r12.z);
      r3.z = r3.w ? r3.z : 0;
      if (r3.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r15.xzzz, r14.xyzw
      }
    } else {
      r15.x = (int)r12.x + (int)vThreadGroupID.z;
      r15.y = (int)r12.y + (int)vThreadIDInGroup.x;
      r3.z = cmp((uint)r15.y < (uint)r12.w);
      if (r3.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r15.xyyy, r13.xyzw
        r15.z = (int)r15.y + 1024;
      } else {
        r15.z = r15.y;
      }
      r3.w = cmp((uint)r15.z < (uint)r12.w);
      r3.z = r3.w ? r3.z : 0;
      if (r3.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r15.xzzz, r14.xyzw
      }
    }
    r12.xyzw = (int4)r1.xyzw + (int4)r12.xyzw;
    r3.y = (int)r3.y + 1;
  }
  return;
}