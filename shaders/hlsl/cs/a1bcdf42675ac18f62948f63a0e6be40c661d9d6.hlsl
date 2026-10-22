// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[64];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[2];
  float4 x2[2];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 1, 1
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
    r1.x = (int)r1.x + 16;
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
    r1.y = (int)r1.y + 16;
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
  r2.zw = float2(0.03125,0.03125) * r0.zw;
  r3.xyzw = float4(0.03125,0.03125,0.03125,0.03125) * r1.xyzw;
  r4.xy = float2(0.03125,0.03125) * r2.xy;
  r0.zw = r0.yy ? r0.zw : r2.zw;
  r1.xyzw = r0.yyyy ? r1.xyzw : r3.xyzw;
  r2.xy = r0.yy ? r2.xy : r4.xy;
  r2.z = (uint)vThreadIDInGroup.x << 1;
  r3.xy = r1.xy + r0.zw;
  r0.zw = -r1.xy + r0.zw;
  g0[r2.z].val[0/4] = r3.x;
  bitmask.x = ((~(-1 << 4)) << 0) & 0xffffffff;  r1.x = (((uint)vThreadIDInGroup.x << 0) & bitmask.x) | ((uint)16 & ~bitmask.x);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.y = (((uint)vThreadIDInGroup.x << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  g0[r1.y].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r4.x = g0[vThreadIDInGroup.x].val[0/4];
  r5.x = g0[r1.x].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r2.z].val[0/4] = r3.y;
  g0[r1.y].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r4.y = g0[vThreadIDInGroup.x].val[0/4];
  r5.y = g0[r1.x].val[0/4];
  x1[0].xy = r4.xy;
  x1[1].xy = r5.xy;
  r0.z = 2;
  while (true) {
    r0.w = cmp((uint)r0.z >= 16);
    if (r0.w != 0) break;
    r3.xy = x1[0].xy;
    r3.zw = x1[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r0.z;
    r5.x = (uint)vThreadIDInGroup.x % (uint)r0.z;
    r4.x = uiDest.x;
    r0.w = (uint)r5.x;
    r0.w = 6.28318548 * r0.w;
    r2.w = (uint)r0.z << 1;
    r4.y = (uint)r2.w;
    r0.w = r0.w / r4.y;
    r0.w = r0.y ? r0.w : -r0.w;
    sincos(r0.w, r6.x, r7.x);
    r4.yz = r6.xx * r3.wz;
    r6.x = r7.x * r3.z + -r4.y;
    r6.y = r7.x * r3.w + r4.z;
    r0.w = (int)r0.z * (int)r4.x;
    r0.w = (uint)r0.w << 1;
    r0.w = (int)r5.x + (int)r0.w;
    r3.zw = r6.xy + r3.xy;
    r3.xy = -r6.xy + r3.xy;
    GroupMemoryBarrierWithGroupSync();
    r4.x = (uint)r0.w >> 5;
    r4.x = mad((int)r4.x, (int)r0.z, (int)r0.w);
    g0[r4.x].val[0/4] = r3.z;
    r0.w = (int)r0.z + (int)r0.w;
    r3.z = (uint)r0.w >> 5;
    r0.w = mad((int)r3.z, (int)r0.z, (int)r0.w);
    g0[r0.w].val[0/4] = r3.x;
    GroupMemoryBarrierWithGroupSync();
    r5.x = g0[vThreadIDInGroup.x].val[0/4];
    r6.x = g0[r1.x].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r4.x].val[0/4] = r3.w;
    g0[r0.w].val[0/4] = r3.y;
    GroupMemoryBarrierWithGroupSync();
    r5.y = g0[vThreadIDInGroup.x].val[0/4];
    r6.y = g0[r1.x].val[0/4];
    x1[0].xy = r5.xy;
    x1[1].xy = r6.xy;
    r0.z = r2.w;
  }
  r0.zw = x1[0].xy;
  r3.xy = x1[1].xy;
  r2.w = (uint)vThreadIDInGroup.x;
  r3.zw = float2(0.196349546,-0.196349546) * r2.ww;
  r2.w = r0.y ? r3.z : r3.w;
  sincos(r2.w, r4.x, r5.x);
  r3.zw = r4.xx * r3.yx;
  r6.x = r5.x * r3.x + -r3.z;
  r6.y = r5.x * r3.y + r3.w;
  r3.xy = r6.xy + r0.zw;
  r6.xy = -r6.xy + r0.zw;
  GroupMemoryBarrierWithGroupSync();
  r0.zw = r2.xy + r1.zw;
  r1.zw = -r2.xy + r1.zw;
  g0[r2.z].val[0/4] = r0.z;
  g0[r1.y].val[0/4] = r1.z;
  GroupMemoryBarrierWithGroupSync();
  r2.x = g0[vThreadIDInGroup.x].val[0/4];
  r7.x = g0[r1.x].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r2.z].val[0/4] = r0.w;
  g0[r1.y].val[0/4] = r1.w;
  GroupMemoryBarrierWithGroupSync();
  r2.y = g0[vThreadIDInGroup.x].val[0/4];
  r7.y = g0[r1.x].val[0/4];
  x2[0].xy = r2.xy;
  x2[1].xy = r7.xy;
  r0.z = 2;
  while (true) {
    r0.w = cmp((uint)r0.z >= 16);
    if (r0.w != 0) break;
    r1.zw = x2[0].xy;
    r2.xy = x2[1].xy;
    uiDest.x = (uint)vThreadIDInGroup.x / (uint)r0.z;
    r8.x = (uint)vThreadIDInGroup.x % (uint)r0.z;
    r7.x = uiDest.x;
    r0.w = (uint)r8.x;
    r0.w = 6.28318548 * r0.w;
    r2.z = (uint)r0.z << 1;
    r2.w = (uint)r2.z;
    r0.w = r0.w / r2.w;
    r0.w = r0.y ? r0.w : -r0.w;
    sincos(r0.w, r9.x, r10.x);
    r4.yz = r9.xx * r2.yx;
    r9.x = r10.x * r2.x + -r4.y;
    r9.y = r10.x * r2.y + r4.z;
    r0.w = (int)r0.z * (int)r7.x;
    r0.w = (uint)r0.w << 1;
    r0.w = (int)r8.x + (int)r0.w;
    r2.xy = r9.xy + r1.zw;
    r1.zw = -r9.xy + r1.zw;
    GroupMemoryBarrierWithGroupSync();
    r2.w = (uint)r0.w >> 5;
    r2.w = mad((int)r2.w, (int)r0.z, (int)r0.w);
    g0[r2.w].val[0/4] = r2.x;
    r0.w = (int)r0.z + (int)r0.w;
    r2.x = (uint)r0.w >> 5;
    r0.w = mad((int)r2.x, (int)r0.z, (int)r0.w);
    g0[r0.w].val[0/4] = r1.z;
    GroupMemoryBarrierWithGroupSync();
    r7.x = g0[vThreadIDInGroup.x].val[0/4];
    r8.x = g0[r1.x].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[r2.w].val[0/4] = r2.y;
    g0[r0.w].val[0/4] = r1.w;
    GroupMemoryBarrierWithGroupSync();
    r7.y = g0[vThreadIDInGroup.x].val[0/4];
    r8.y = g0[r1.x].val[0/4];
    x2[0].xy = r7.xy;
    x2[1].xy = r8.xy;
    r0.z = r2.z;
  }
  r0.yz = x2[0].xy;
  r1.zw = x2[1].xy;
  r2.xy = r4.xx * r1.wz;
  r2.z = r5.x * r1.z + -r2.x;
  r2.w = r5.x * r1.w + r2.y;
  r3.zw = r2.zw + r0.yz;
  r6.zw = -r2.zw + r0.yz;
  if (r0.x != 0) {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].x));
    if (r0.x != 0) {
      r2.x = vThreadIDInGroup.x;
      r2.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r3.xyzw
    } else {
      r1.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyyy, r6.xyzw
    }
  } else {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].y));
    if (r0.x != 0) {
      r2.x = vThreadGroupID.z;
      r2.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r3.xyzw
    } else {
      r1.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r1.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r1.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.yxxx, r6.xyzw
    }
  }
  return;
}