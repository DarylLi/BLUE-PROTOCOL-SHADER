// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[4096];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[2];
  float4 x2[2];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1024, 1, 1
  r0.xy = asint(cb0[4].xx) & int2(1,2);
  x0[0].xy = float2(0,0);
  x0[1].xy = float2(0,0);
  x0[2].xy = float2(0,0);
  x0[3].xy = float2(0,0);
  if (r0.x != 0) {
    r0.z = vThreadIDInGroup.x;
    r1.y = vThreadGroupID.z;
    r1.x = (int)r0.z + asint(cb0[1].x);
    r0.z = cmp(asuint(cb0[1].z) >= (uint)r1.x);
    if (r0.z != 0) {
      r1.zw = float2(0,0);
      r2.xyzw = t0.Load(r1.xyz).xyzw;
      x0[0].xy = r2.xy;
      x0[2].xy = r2.zw;
    }
    r1.x = (int)r1.x + 1024;
    r0.z = cmp(asuint(cb0[1].z) >= (uint)r1.x);
    if (r0.z != 0) {
      r1.zw = float2(0,0);
      r1.xyzw = t0.Load(r1.xyz).xyzw;
      x0[1].xy = r1.xy;
      x0[3].xy = r1.zw;
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
      x0[2].xy = r2.zw;
    }
    r1.y = (int)r1.y + 1024;
    r0.z = cmp(asuint(cb0[1].w) >= (uint)r1.y);
    if (r0.z != 0) {
      r1.zw = float2(0,0);
      r1.xyzw = t0.Load(r1.xyz).xyzw;
      x0[1].xy = r1.xy;
      x0[3].xy = r1.zw;
    }
  }
  r0.zw = x0[0].xy;
  r1.xy = x0[1].xy;
  r1.zw = x0[2].xy;
  r2.xy = x0[3].xy;
  r2.zw = float2(0.00048828125,0.00048828125) * r0.zw;
  r3.xyzw = float4(0.00048828125,0.00048828125,0.00048828125,0.00048828125) * r1.xyzw;
  r4.xy = float2(0.00048828125,0.00048828125) * r2.xy;
  r0.zw = r0.yy ? r0.zw : r2.zw;
  r1.xyzw = r0.yyyy ? r1.xyzw : r3.xyzw;
  r2.xy = r0.yy ? r2.xy : r4.xy;
  r2.z = (uint)vThreadIDInGroup.x << 1;
  r3.xy = r1.xy + r0.zw;
  r0.zw = -r1.xy + r0.zw;
  if (27 == 0) r1.x = 0; else if (27+4 < 32) {   r1.x = (uint)vThreadIDInGroup.x << (32-(27 + 4)); r1.x = (uint)r1.x >> (32-27);  } else r1.x = (uint)vThreadIDInGroup.x >> 4;
  r1.x = (int)r1.x + (int)r2.z;
  g0[r1.x].val[0/4] = r3.x;
  bitmask.z = ((~(-1 << 10)) << 0) & 0xffffffff;  r2.z = (((uint)vThreadIDInGroup.x << 0) & bitmask.z) | ((uint)1024 & ~bitmask.z);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)vThreadIDInGroup.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r3.xz = (uint2)r2.wz >> int2(5,5);
  r3.xw = (int2)r2.wz + (int2)r3.xz;
  g0[r3.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r0.z = (uint)vThreadIDInGroup.x >> 5;
  r1.y = (int)r0.z + (int)vThreadIDInGroup.x;
  r4.x = g0[r1.y].val[0/4];
  r5.x = g0[r3.w].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.x].val[0/4] = r3.y;
  g0[r3.x].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r4.y = g0[r1.y].val[0/4];
  r5.y = g0[r3.w].val[0/4];
  x1[0].xy = r4.xy;
  x1[1].xy = r5.xy;
  r0.w = 2;
  while (true) {
    r3.y = cmp((uint)r0.w >= 1024);
    if (r3.y != 0) break;
    r4.xy = x1[0].xy;
    r4.zw = x1[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r0.w;
    r6.x = (uint)vThreadIDInGroup.x % (uint)r0.w;
    r5.x = uiDest.x;
    r3.y = (uint)r6.x;
    r3.y = 6.28318548 * r3.y;
    r5.y = (uint)r0.w << 1;
    r5.z = (uint)r5.y;
    r3.y = r3.y / r5.z;
    r3.y = r0.y ? r3.y : -r3.y;
    sincos(r3.y, r7.x, r8.x);
    r5.zw = r7.xx * r4.wz;
    r7.x = r8.x * r4.z + -r5.z;
    r7.y = r8.x * r4.w + r5.w;
    r3.y = (int)r0.w * (int)r5.x;
    r3.y = (uint)r3.y << 1;
    r3.y = (int)r6.x + (int)r3.y;
    r4.zw = r7.xy + r4.xy;
    r4.xy = -r7.xy + r4.xy;
    GroupMemoryBarrierWithGroupSync();
    r5.x = cmp((uint)r0.w < 32);
    r5.x = r5.x ? r0.w : 0;
    r5.z = (uint)r3.y >> 5;
    r5.z = mad((int)r5.z, (int)r5.x, (int)r3.y);
    g0[r5.z].val[0/4] = r4.z;
    r3.y = (int)r0.w + (int)r3.y;
    r4.z = (uint)r3.y >> 5;
    r3.y = mad((int)r4.z, (int)r5.x, (int)r3.y);
    g0[r3.y].val[0/4] = r4.x;
    GroupMemoryBarrierWithGroupSync();
    r4.x = mad((int)r0.z, (int)r5.x, (int)vThreadIDInGroup.x);
    r6.x = g0[r4.x].val[0/4];
    r4.z = mad((int)r3.z, (int)r5.x, (int)r2.z);
    r7.x = g0[r4.z].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r5.z].val[0/4] = r4.w;
    g0[r3.y].val[0/4] = r4.y;
    GroupMemoryBarrierWithGroupSync();
    r6.y = g0[r4.x].val[0/4];
    r7.y = g0[r4.z].val[0/4];
    x1[0].xy = r6.xy;
    x1[1].xy = r7.xy;
    r0.w = r5.y;
  }
  r4.xy = x1[0].xy;
  r4.zw = x1[1].xy;
  r0.w = (uint)vThreadIDInGroup.x;
  r5.xy = float2(0.00306796166,-0.00306796166) * r0.ww;
  r0.w = r0.y ? r5.x : r5.y;
  sincos(r0.w, r5.x, r6.x);
  r5.yz = r5.xx * r4.wz;
  r7.x = r6.x * r4.z + -r5.y;
  r7.y = r6.x * r4.w + r5.z;
  r8.xy = r7.xy + r4.xy;
  r4.xy = -r7.xy + r4.xy;
  GroupMemoryBarrierWithGroupSync();
  r5.yz = r2.xy + r1.zw;
  r1.zw = -r2.xy + r1.zw;
  g0[r1.x].val[0/4] = r5.y;
  g0[r3.x].val[0/4] = r1.z;
  GroupMemoryBarrierWithGroupSync();
  r2.x = g0[r1.y].val[0/4];
  r7.x = g0[r3.w].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.x].val[0/4] = r5.z;
  g0[r3.x].val[0/4] = r1.w;
  GroupMemoryBarrierWithGroupSync();
  r2.y = g0[r1.y].val[0/4];
  r7.y = g0[r3.w].val[0/4];
  x2[0].xy = r2.xy;
  x2[1].xy = r7.xy;
  r0.w = 2;
  while (true) {
    r1.x = cmp((uint)r0.w >= 1024);
    if (r1.x != 0) break;
    r1.xy = x2[0].xy;
    r1.zw = x2[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r0.w;
    r3.x = (uint)vThreadIDInGroup.x % (uint)r0.w;
    r2.x = uiDest.x;
    r2.y = (uint)r3.x;
    r2.y = 6.28318548 * r2.y;
    r3.y = (uint)r0.w << 1;
    r3.w = (uint)r3.y;
    r2.y = r2.y / r3.w;
    r2.y = r0.y ? r2.y : -r2.y;
    sincos(r2.y, r7.x, r9.x);
    r5.yz = r7.xx * r1.wz;
    r7.x = r9.x * r1.z + -r5.y;
    r7.y = r9.x * r1.w + r5.z;
    r1.z = (int)r0.w * (int)r2.x;
    r1.z = (uint)r1.z << 1;
    r1.z = (int)r3.x + (int)r1.z;
    r2.xy = r7.xy + r1.xy;
    r1.xy = -r7.xy + r1.xy;
    GroupMemoryBarrierWithGroupSync();
    r1.w = cmp((uint)r0.w < 32);
    r1.w = r1.w ? r0.w : 0;
    r3.x = (uint)r1.z >> 5;
    r3.x = mad((int)r3.x, (int)r1.w, (int)r1.z);
    g0[r3.x].val[0/4] = r2.x;
    r1.z = (int)r0.w + (int)r1.z;
    r2.x = (uint)r1.z >> 5;
    r1.z = mad((int)r2.x, (int)r1.w, (int)r1.z);
    g0[r1.z].val[0/4] = r1.x;
    GroupMemoryBarrierWithGroupSync();
    r1.x = mad((int)r0.z, (int)r1.w, (int)vThreadIDInGroup.x);
    r7.x = g0[r1.x].val[0/4];
    r1.w = mad((int)r3.z, (int)r1.w, (int)r2.z);
    r9.x = g0[r1.w].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r3.x].val[0/4] = r2.y;
    g0[r1.z].val[0/4] = r1.y;
    GroupMemoryBarrierWithGroupSync();
    r7.y = g0[r1.x].val[0/4];
    r9.y = g0[r1.w].val[0/4];
    x2[0].xy = r7.xy;
    x2[1].xy = r9.xy;
    r0.w = r3.y;
  }
  r0.yz = x2[0].xy;
  r1.xy = x2[1].xy;
  r1.zw = r5.xx * r1.yx;
  r3.z = r6.x * r1.x + -r1.z;
  r3.w = r6.x * r1.y + r1.w;
  r8.zw = r3.zw + r0.yz;
  r4.zw = -r3.zw + r0.yz;
  if (r0.x != 0) {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].x));
    if (r0.x != 0) {
      r1.x = vThreadIDInGroup.x;
      r1.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r8.xyzw
    } else {
      r2.z = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r2.z < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r2.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.zwww, r4.xyzw
    }
  } else {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].y));
    if (r0.x != 0) {
      r1.x = vThreadGroupID.z;
      r1.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r8.xyzw
    } else {
      r2.z = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r2.z < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r2.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.wzzz, r4.xyzw
    }
  }
  return;
}