// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[32];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[8];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 1, 1
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
    r3.x = (int)vThreadIDInGroup.x + 4;
    r5.xyzw = t1.Load(r3.xzw).zwxy;
    r3.y = (int)r3.x + 4;
    r6.xyzw = t1.Load(r3.yzw).zwxy;
    r3.x = (int)r3.y | 12;
    r3.xyzw = t1.Load(r3.xzw).zwxy;
  } else {
    r7.y = vThreadGroupID.z;
    r7.x = vThreadIDInGroup.x;
    r7.z = 0;
    r4.xyzw = t1.Load(r7.yxz).zwxy;
    r7.w = (int)vThreadIDInGroup.x + 4;
    r5.xyzw = t1.Load(r7.ywz).zwxy;
    r7.x = (int)r7.w + 4;
    r6.xyzw = t1.Load(r7.yxz).zwxy;
    r7.w = (int)r7.x | 12;
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
    r1.yzw = (int3)r7.xxx + int3(4,8,12);
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
    r8.xyz = (int3)r7.yyy + int3(4,12,8);
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
    r1.yz = float2(0.0625,0.0625) * r1.yz;
    r7.xyzw = float4(0.0625,0.0625,0.0625,0.0625) * r7.xyzw;
    r8.xyzw = float4(0.0625,0.0625,0.0625,0.0625) * r8.xyzw;
    r9.xyzw = float4(0.0625,0.0625,0.0625,0.0625) * r9.xyzw;
    r10.xy = float2(0.0625,0.0625) * r10.xy;
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
  g0[r1.w].val[0/4] = r7.z;
  bitmask.z = ((~(-1 << 2)) << 0) & 0xffffffff;  r10.z = (((uint)vThreadIDInGroup.x << 0) & bitmask.z) | ((uint)4 & ~bitmask.z);
  bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r10.w = (((uint)vThreadIDInGroup.x << 2) & bitmask.w) | ((uint)1 & ~bitmask.w);
  g0[r10.w].val[0/4] = r8.x;
  r11.xy = (int2)r10.wz + int2(1,4);
  g0[r11.x].val[0/4] = r7.x;
  r7.xz = (int2)r11.xy | int2(3,12);
  g0[r7.x].val[0/4] = r1.y;
  GroupMemoryBarrierWithGroupSync();
  r12.x = g0[vThreadIDInGroup.x].val[0/4];
  r1.y = g0[r10.z].val[0/4];
  r2.w = g0[r11.y].val[0/4];
  r8.x = g0[r7.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r7.w;
  g0[r10.w].val[0/4] = r8.y;
  g0[r11.x].val[0/4] = r7.y;
  g0[r7.x].val[0/4] = r1.z;
  GroupMemoryBarrierWithGroupSync();
  r12.y = g0[vThreadIDInGroup.x].val[0/4];
  r1.z = g0[r10.z].val[0/4];
  r7.y = g0[r11.y].val[0/4];
  r7.w = g0[r7.z].val[0/4];
  r8.y = (uint)vThreadIDInGroup.x;
  r11.zw = float2(0.392699093,-0.392699093) * r8.yy;
  r11.zw = r0.yy ? r11.zw : r11.wz;
  sincos(r11.z, r13.x, r14.x);
  r8.y = r13.x * r1.z;
  r15.x = r14.x * r1.y + -r8.y;
  r1.y = r13.x * r1.y;
  r15.y = r14.x * r1.z + r1.y;
  r1.y = r13.x * r13.x;
  r1.y = r14.x * r14.x + -r1.y;
  r1.z = dot(r14.xx, r13.xx);
  r8.y = r1.z * r7.y;
  r16.x = r1.y * r2.w + -r8.y;
  r2.w = r2.w * r1.z;
  r16.y = r1.y * r7.y + r2.w;
  r2.w = r1.z * r13.x;
  r2.w = r1.y * r14.x + -r2.w;
  r7.y = r14.x * r1.z;
  r7.y = r1.y * r13.x + r7.y;
  r8.y = r7.y * r7.w;
  r17.x = r2.w * r8.x + -r8.y;
  r8.x = r8.x * r7.y;
  r17.y = r2.w * r7.w + r8.x;
  r8.xy = r16.xy + r12.xy;
  r12.zw = r17.xy + r15.xy;
  r12.xy = -r16.xy + r12.xy;
  r15.xy = -r17.xy + r15.xy;
  r15.zw = -r15.yx;
  r13.yz = r0.yy ? r15.zx : r15.yw;
  r14.yz = r12.zw + r8.xy;
  r15.xy = r13.yz + r12.xy;
  r12.xy = -r13.yz + r12.xy;
  r8.xy = -r12.zw + r8.xy;
  GroupMemoryBarrierWithGroupSync();
  r12.zw = r8.zw + r9.zw;
  r13.yz = r9.xy + r10.xy;
  r8.zw = r8.zw + -r9.zw;
  r9.xy = r9.xy + -r10.xy;
  r9.zw = -r9.yx;
  r9.xy = r0.yy ? r9.zx : r9.yw;
  r9.zw = r13.yz + r12.zw;
  r10.xy = r9.xy + r8.zw;
  r8.zw = -r9.xy + r8.zw;
  r9.xy = -r13.yz + r12.zw;
  g0[r1.w].val[0/4] = r9.z;
  g0[r10.w].val[0/4] = r10.x;
  g0[r11.x].val[0/4] = r9.x;
  g0[r7.x].val[0/4] = r8.z;
  GroupMemoryBarrierWithGroupSync();
  r16.x = g0[vThreadIDInGroup.x].val[0/4];
  r7.w = g0[r10.z].val[0/4];
  r8.z = g0[r11.y].val[0/4];
  r9.x = g0[r7.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r9.w;
  g0[r10.w].val[0/4] = r10.y;
  g0[r11.x].val[0/4] = r9.y;
  g0[r7.x].val[0/4] = r8.w;
  GroupMemoryBarrierWithGroupSync();
  r16.y = g0[vThreadIDInGroup.x].val[0/4];
  r8.w = g0[r10.z].val[0/4];
  r9.y = g0[r11.y].val[0/4];
  r9.z = g0[r7.z].val[0/4];
  r9.w = r13.x * r8.w;
  r10.x = r14.x * r7.w + -r9.w;
  r7.w = r7.w * r13.x;
  r10.y = r14.x * r8.w + r7.w;
  r7.w = r9.y * r1.z;
  r13.x = r1.y * r8.z + -r7.w;
  r1.z = r8.z * r1.z;
  r13.y = r1.y * r9.y + r1.z;
  r1.y = r9.z * r7.y;
  r17.x = r2.w * r9.x + -r1.y;
  r1.y = r9.x * r7.y;
  r17.y = r2.w * r9.z + r1.y;
  r1.yz = r16.xy + r13.xy;
  r7.yw = r17.xy + r10.xy;
  r8.zw = r16.xy + -r13.xy;
  r9.xy = -r17.xy + r10.xy;
  r9.zw = -r9.yx;
  r9.xy = r0.yy ? r9.zx : r9.yw;
  r9.zw = r7.yw + r1.yz;
  r10.xy = r9.xy + r8.zw;
  r8.zw = -r9.xy + r8.zw;
  r1.yz = -r7.yw + r1.yz;
  GroupMemoryBarrierWithGroupSync();
  r2.w = r14.z * r4.w;
  r9.x = r14.y * r4.z + -r2.w;
  r9.y = dot(r14.zy, r4.zw);
  r2.w = r15.y * r5.w;
  r13.x = r15.x * r5.z + -r2.w;
  r13.y = dot(r15.yx, r5.zw);
  r2.w = r8.y * r6.w;
  r14.x = r8.x * r6.z + -r2.w;
  r14.y = dot(r8.yx, r6.zw);
  r2.w = r12.y * r3.w;
  r8.x = r12.x * r3.z + -r2.w;
  r8.y = dot(r12.yx, r3.zw);
  r2.w = ~(int)r1.x;
  r0.w = (int)r0.w | (int)r2.w;
  r2.w = r9.w * r4.y;
  r12.x = r9.z * r4.x + -r2.w;
  r12.y = dot(r9.wz, r4.xy);
  r3.zw = r0.ww ? r12.xy : r9.zw;
  r2.w = r10.y * r5.y;
  r4.x = r10.x * r5.x + -r2.w;
  r4.y = dot(r10.yx, r5.xy);
  r4.xy = r0.ww ? r4.xy : r10.xy;
  r2.w = r1.z * r6.y;
  r5.x = r1.y * r6.x + -r2.w;
  r5.y = dot(r1.zy, r6.xy);
  r1.yz = r0.ww ? r5.xy : r1.yz;
  r2.w = r8.w * r3.y;
  r5.x = r8.z * r3.x + -r2.w;
  r5.y = dot(r8.wz, r3.xy);
  r3.xy = r0.ww ? r5.xy : r8.zw;
  if (r0.x == 0) {
    r4.zw = t1.Load(float4(0,0,0,0)).xz;
    r2.y = 0;
    r2.yw = t1.Load(r2.xyy).xz;
  } else {
    r4.zw = t1.Load(float4(0,0,0,0)).xz;
    r2.z = 0;
    r2.yw = t1.Load(r2.zxz).xz;
  }
  r0.w = max(r4.w, r2.y);
  r0.w = max(r4.z, r0.w);
  r0.z = r0.z ? r2.w : 1;
  r2.xy = r9.xy / r0.ww;
  r2.zw = r13.xy / r0.ww;
  r4.zw = r14.xy / r0.ww;
  r5.xy = r8.xy / r0.ww;
  r0.z = r1.x ? r0.z : r0.w;
  r3.zw = r3.zw / r0.zz;
  r4.xy = r4.xy / r0.zz;
  r1.xy = r1.yz / r0.zz;
  r0.zw = r3.xy / r0.zz;
  if (r0.y != 0) {
    r2.xyzw = float4(0.0625,0.0625,0.0625,0.0625) * r2.xyzw;
    r5.xy = float2(0.0625,0.0625) * r5.xy;
    r3.zw = float2(0.0625,0.0625) * r3.zw;
    r4.xyzw = float4(0.0625,0.0625,0.0625,0.0625) * r4.xyzw;
    r1.xy = float2(0.0625,0.0625) * r1.xy;
    r0.zw = float2(0.0625,0.0625) * r0.zw;
  }
  r3.xy = r2.xy + r4.zw;
  r5.zw = r2.zw + r5.xy;
  r2.xy = r2.xy + -r4.zw;
  r6.xy = r2.zw + -r5.xy;
  r6.zw = -r6.xy;
  r2.zw = r0.yy ? r6.yz : r6.wx;
  r4.zw = r5.zw + r3.xy;
  r5.xy = r2.xy + r2.zw;
  r2.xy = r2.xy + -r2.zw;
  r2.zw = -r5.zw + r3.xy;
  g0[r1.w].val[0/4] = r4.z;
  g0[r10.w].val[0/4] = r5.x;
  g0[r11.x].val[0/4] = r2.z;
  g0[r7.x].val[0/4] = r2.x;
  GroupMemoryBarrierWithGroupSync();
  r3.x = g0[vThreadIDInGroup.x].val[0/4];
  r1.z = g0[r10.z].val[0/4];
  r2.x = g0[r11.y].val[0/4];
  r2.z = g0[r7.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r4.w;
  g0[r10.w].val[0/4] = r5.y;
  g0[r11.x].val[0/4] = r2.w;
  g0[r7.x].val[0/4] = r2.y;
  GroupMemoryBarrierWithGroupSync();
  r3.y = g0[vThreadIDInGroup.x].val[0/4];
  r2.y = g0[r10.z].val[0/4];
  r2.w = g0[r11.y].val[0/4];
  r4.z = g0[r7.z].val[0/4];
  sincos(r11.w, r5.x, r6.x);
  r4.w = r5.x * r2.y;
  r8.x = r6.x * r1.z + -r4.w;
  r1.z = r5.x * r1.z;
  r8.y = r6.x * r2.y + r1.z;
  r1.z = r5.x * r5.x;
  r1.z = r6.x * r6.x + -r1.z;
  r2.y = dot(r6.xx, r5.xx);
  r4.w = r2.y * r2.w;
  r9.x = r1.z * r2.x + -r4.w;
  r2.x = r2.x * r2.y;
  r9.y = r1.z * r2.w + r2.x;
  r2.x = r2.y * r5.x;
  r2.x = r1.z * r6.x + -r2.x;
  r2.w = r6.x * r2.y;
  r2.w = r1.z * r5.x + r2.w;
  r4.w = r2.w * r4.z;
  r10.x = r2.x * r2.z + -r4.w;
  r2.z = r2.z * r2.w;
  r10.y = r2.x * r4.z + r2.z;
  r4.zw = r9.xy + r3.xy;
  r5.yz = r10.xy + r8.xy;
  r3.xy = -r9.xy + r3.xy;
  r8.xy = -r10.xy + r8.xy;
  r8.zw = -r8.xy;
  r6.yz = r0.yy ? r8.yz : r8.wx;
  r8.xy = r5.yz + r4.zw;
  r9.xy = r6.yz + r3.xy;
  r12.xy = -r6.yz + r3.xy;
  r13.xy = -r5.yz + r4.zw;
  GroupMemoryBarrierWithGroupSync();
  r3.xy = r3.zw + r1.xy;
  r4.zw = r4.xy + r0.zw;
  r1.xy = r3.zw + -r1.xy;
  r14.xy = r4.xy + -r0.zw;
  r14.zw = -r14.xy;
  r0.zw = r0.yy ? r14.yz : r14.wx;
  r3.zw = r4.zw + r3.xy;
  r4.xy = r1.xy + r0.zw;
  r0.zw = r1.xy + -r0.zw;
  r1.xy = -r4.zw + r3.xy;
  g0[r1.w].val[0/4] = r3.z;
  g0[r10.w].val[0/4] = r4.x;
  g0[r11.x].val[0/4] = r1.x;
  g0[r7.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r4.z = g0[vThreadIDInGroup.x].val[0/4];
  r0.z = g0[r10.z].val[0/4];
  r1.x = g0[r11.y].val[0/4];
  r2.z = g0[r7.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.w].val[0/4] = r3.w;
  g0[r10.w].val[0/4] = r4.y;
  g0[r11.x].val[0/4] = r1.y;
  g0[r7.x].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r4.w = g0[vThreadIDInGroup.x].val[0/4];
  r0.w = g0[r10.z].val[0/4];
  r1.y = g0[r11.y].val[0/4];
  r1.w = g0[r7.z].val[0/4];
  r3.x = r5.x * r0.w;
  r3.x = r6.x * r0.z + -r3.x;
  r0.z = r0.z * r5.x;
  r3.y = r6.x * r0.w + r0.z;
  r0.z = r2.y * r1.y;
  r0.z = r1.z * r1.x + -r0.z;
  r1.x = r1.x * r2.y;
  r0.w = r1.z * r1.y + r1.x;
  r1.x = r2.w * r1.w;
  r1.x = r2.x * r2.z + -r1.x;
  r1.z = r2.z * r2.w;
  r1.y = r2.x * r1.w + r1.z;
  r1.zw = r4.zw + r0.zw;
  r2.xy = r3.xy + r1.xy;
  r0.zw = r4.zw + -r0.zw;
  r3.xy = r3.xy + -r1.xy;
  r3.zw = -r3.xy;
  r1.xy = r0.yy ? r3.yz : r3.wx;
  r8.zw = r2.xy + r1.zw;
  r9.zw = r1.xy + r0.zw;
  r12.zw = -r1.xy + r0.zw;
  r13.zw = -r2.xy + r1.zw;
  if (r0.x != 0) {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[1].x));
    if (r0.x != 0) {
      r1.x = vThreadIDInGroup.x;
      r1.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r8.xyzw
    } else {
      r10.z = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r10.z < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.zwww, r9.xyzw
      r10.z = (int)r10.z + 4;
    }
    r0.y = cmp((uint)r10.z < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.zwww, r13.xyzw
      r10.z = (int)r10.z + 4;
    }
    r0.y = cmp((uint)r10.z < asuint(cb0[1].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.zwww, r12.xyzw
    }
  } else {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[1].y));
    if (r0.x != 0) {
      r1.x = vThreadGroupID.z;
      r1.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r8.xyzw
    } else {
      r10.z = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r10.z < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.wzzz, r9.xyzw
      r10.z = (int)r10.z + 4;
    }
    r0.y = cmp((uint)r10.z < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.wzzz, r13.xyzw
      r10.z = (int)r10.z + 4;
    }
    r0.y = cmp((uint)r10.z < asuint(cb0[1].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r10.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.wzzz, r12.xyzw
    }
  }
  return;
}