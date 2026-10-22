// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[32];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[8];
  float4 x1[8];
  float4 x2[5];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 1, 1
  r0.xy = asint(cb0[0].ww) & int2(1,2);
  if (r0.y != 0) {
    r0.z = asint(cb0[0].w) & 4;
    x1[0].xy = float2(0,0);
    x1[1].xy = float2(0,0);
    x1[2].xy = float2(0,0);
    x1[3].xy = float2(0,0);
    x1[4].xy = float2(0,0);
    x1[5].xy = float2(0,0);
    x1[6].xy = float2(0,0);
    x1[7].xy = float2(0,0);
    if (r0.x != 0) {
      r1.x = vThreadIDInGroup.x;
      r1.y = vThreadGroupID.z;
      r1.xy = (int2)r1.xy + asint(cb0[1].xy);
      r0.w = cmp(asuint(cb0[1].z) >= (uint)r1.x);
      if (r0.w != 0) {
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x1[0].xy = r2.xy;
        x1[4].xy = r2.zw;
      }
      r2.xyz = (int3)r1.xxx + int3(4,8,12);
      r3.xyz = cmp(asuint(cb0[1].zzz) >= (uint3)r2.xyz);
      if (r3.x != 0) {
        r1.x = r2.x;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[1].xy = r4.xy;
        x1[5].xy = r4.zw;
      }
      if (r3.y != 0) {
        r1.x = r2.y;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[2].xy = r4.xy;
        x1[6].xy = r4.zw;
      }
      if (r3.z != 0) {
        r1.x = r2.z;
        r1.zw = float2(0,0);
        r1.xyzw = t0.Load(r1.xyz).xyzw;
        x1[3].xy = r1.xy;
        x1[7].xy = r1.zw;
      }
    } else {
      r1.x = vThreadGroupID.z;
      r1.y = vThreadIDInGroup.x;
      r1.xy = (int2)r1.xy + asint(cb0[1].xy);
      r0.w = cmp(asuint(cb0[1].w) >= (uint)r1.y);
      if (r0.w != 0) {
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x1[0].xy = r2.xy;
        x1[4].xy = r2.zw;
      }
      r2.xyz = (int3)r1.yyy + int3(4,12,8);
      r3.xyz = cmp(asuint(cb0[1].www) >= (uint3)r2.xzy);
      if (r3.x != 0) {
        r1.y = r2.x;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[1].xy = r4.xy;
        x1[5].xy = r4.zw;
      }
      if (r3.y != 0) {
        r1.y = r2.z;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[2].xy = r4.xy;
        x1[6].xy = r4.zw;
      }
      if (r3.z != 0) {
        r2.x = r1.x;
        r2.zw = float2(0,0);
        r1.xyzw = t0.Load(r2.xyz).xyzw;
        x1[3].xy = r1.xy;
        x1[7].xy = r1.zw;
      }
    }
    r1.xy = x1[0].xy;
    r1.zw = x1[1].xy;
    r2.xy = x1[2].xy;
    r2.zw = x1[3].xy;
    r3.xy = x1[4].xy;
    r3.zw = x1[5].xy;
    r4.xy = x1[6].xy;
    r4.zw = x1[7].xy;
    r1.xy = min(float2(0,0), -r1.xy);
    r5.xy = -r1.xy;
    r1.xy = min(float2(0,0), -r3.xy);
    r5.zw = -r1.xy;
    r1.xy = min(float2(0,0), -r1.zw);
    r1.xy = -r1.xy;
    r3.xy = min(float2(0,0), -r3.zw);
    r1.zw = -r3.xy;
    r2.xy = min(float2(0,0), -r2.xy);
    r3.xy = -r2.xy;
    r2.xy = min(float2(0,0), -r4.xy);
    r3.zw = -r2.xy;
    r2.xy = min(float2(0,0), -r2.zw);
    r2.xy = -r2.xy;
    r4.xy = min(float2(0,0), -r4.zw);
    r2.zw = -r4.xy;
    x0[0].xy = r5.xy;
    x0[1].xy = r1.xy;
    x0[2].xy = r3.xy;
    x0[3].xy = r2.xy;
    x0[4].xy = r5.zw;
    x0[5].xy = r1.zw;
    x0[6].xy = r3.zw;
    x0[7].xy = r2.zw;
    if (r0.z != 0) {
      r0.z = dot(r5.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r0.w = cmp(cb0[0].x < r0.z);
      r4.x = -cb0[0].x + r0.z;
      r4.x = cb0[0].z * r4.x + cb0[0].x;
      r4.x = min(cb0[0].y, r4.x);
      r0.z = r4.x / r0.z;
      r4.xyz = r5.xyz * r0.zzz;
      r4.xzw = r0.www ? r4.zxy : r5.zxy;
      r4.y = r5.w;
      r0.zw = r0.ww ? r4.xy : r5.zw;
      r4.x = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r4.y = cmp(cb0[0].x < r4.x);
      r5.x = -cb0[0].x + r4.x;
      r5.x = cb0[0].z * r5.x + cb0[0].x;
      r5.x = min(cb0[0].y, r5.x);
      r4.x = r5.x / r4.x;
      r5.xyz = r4.xxx * r1.xyz;
      r5.xzw = r4.yyy ? r5.zxy : r1.zxy;
      r5.y = r1.w;
      r1.xy = r4.yy ? r5.xy : r1.zw;
      r1.z = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r1.w = cmp(cb0[0].x < r1.z);
      r4.x = -cb0[0].x + r1.z;
      r4.x = cb0[0].z * r4.x + cb0[0].x;
      r4.x = min(cb0[0].y, r4.x);
      r1.z = r4.x / r1.z;
      r6.xyz = r3.xyz * r1.zzz;
      r6.xzw = r1.www ? r6.zxy : r3.zxy;
      r6.y = r3.w;
      r1.zw = r1.ww ? r6.xy : r3.zw;
      r3.x = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r3.y = cmp(cb0[0].x < r3.x);
      r3.z = -cb0[0].x + r3.x;
      r3.z = cb0[0].z * r3.z + cb0[0].x;
      r3.z = min(cb0[0].y, r3.z);
      r3.x = r3.z / r3.x;
      r3.xzw = r3.xxx * r2.xyz;
      r7.xzw = r3.yyy ? r3.wxz : r2.zxy;
      r7.y = r2.w;
      r2.xy = r3.yy ? r7.xy : r2.zw;
      x0[0].xy = r4.zw;
      x0[1].xy = r5.zw;
      x0[2].xy = r6.zw;
      x0[3].xy = r7.zw;
      x0[4].xy = r0.zw;
      x0[5].xy = r1.xy;
      x0[6].xy = r1.zw;
      x0[7].xy = r2.xy;
    }
  } else {
    if (r0.x != 0) {
      r1.xw = float2(17,0);
      r1.z = vThreadGroupID.z;
      r2.xyzw = t0.Load(r1.xzw).xyzw;
      r1.y = vThreadIDInGroup.x;
      r3.xyzw = t0.Load(r1.yzw).xyzw;
      x2[0].xy = r3.xy;
      x2[4].xy = r3.zw;
      r1.y = (int)vThreadIDInGroup.x + 4;
      r4.xyzw = t0.Load(r1.yzw).zxyw;
      r1.x = (int)r1.y + 4;
      r5.xyzw = t0.Load(r1.xzw).xyzw;
      r0.z = cmp((int)r1.x == 8);
      r2.xyzw = r5.xyzw + r2.yxwz;
      r2.xyzw = r0.zzzz ? r2.zxyw : r5.zxyw;
      r5.x = (int)r1.x | 12;
      r5.yzw = r1.zww;
      r1.xyzw = t0.Load(r5.xyz).zxyw;
      if (vThreadIDInGroup.x == 0) {
        r5.xzw = float3(16,0,0);
        r5.y = vThreadGroupID.z;
        r5.xyzw = t0.Load(r5.xyz).xyzw;
        r3.xyzw = r5.yxwz + r3.xyzw;
        x2[0].xy = r3.xy;
        x2[4].xy = r3.zw;
      }
    } else {
      r3.y = vThreadGroupID.z;
      r3.xzw = float3(16,0,17);
      r5.xyzw = t0.Load(r3.yxz).xyzw;
      r6.xyzw = t0.Load(r3.ywz).xyzw;
      r3.x = vThreadIDInGroup.x;
      r7.xyzw = t0.Load(r3.yxz).xyzw;
      r3.w = (int)vThreadIDInGroup.x + 4;
      r4.xyzw = t0.Load(r3.ywz).zxyw;
      r3.x = (int)r3.w + 4;
      r8.xyzw = t0.Load(r3.yxz).xyzw;
      r0.z = cmp((int)r3.x == 8);
      r6.xyzw = r8.xyzw + r6.yxwz;
      r2.xyzw = r0.zzzz ? r6.zxyw : r8.zxyw;
      r3.w = (int)r3.x | 12;
      r1.xyzw = t0.Load(r3.ywz).zxyw;
      r3.xyzw = r7.xyzw + r5.yxwz;
      r3.xyzw = vThreadIDInGroup.xxxx ? r7.xyzw : r3.xyzw;
      x2[0].xy = r3.xy;
      x2[4].xy = r3.zw;
    }
    r0.zw = x2[0].xy;
    r3.xy = x2[4].xy;
    g0[vThreadIDInGroup.x].val[0/4] = r0.w;
    r3.z = (int)vThreadIDInGroup.x + 4;
    g0[r3.z].val[0/4] = r4.z;
    r3.w = (int)r3.z + 4;
    g0[r3.w].val[0/4] = r2.z;
    r5.x = (int)r3.w | 12;
    g0[r5.x].val[0/4] = r1.z;
    GroupMemoryBarrierWithGroupSync();
    r5.y = cmp(0 < (uint)vThreadIDInGroup.x);
    r5.z = (int)-vThreadIDInGroup.x + 16;
    r5.y = r5.y ? r5.z : 0;
    r5.z = g0[r5.y].val[0/4];
    r6.x = r5.z + r0.z;
    r5.z = (int)-r3.z + 16;
    r5.w = g0[r5.z].val[0/4];
    r7.x = r5.w + r4.y;
    r6.zw = (int2)-r3.ww + int2(16,12);
    r5.w = g0[r6.z].val[0/4];
    r7.z = cmp(8 < (uint)r3.w);
    r7.w = r7.z ? -1 : 1;
    r8.y = r5.w * r7.w + r2.y;
    r5.w = g0[r6.w].val[0/4];
    r9.y = -r5.w + r1.y;
    r10.y = g0[0].val[0/4];
    r11.y = g0[8].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r0.z;
    g0[r3.z].val[0/4] = r4.y;
    g0[r3.w].val[0/4] = r2.y;
    g0[r5.x].val[0/4] = r1.y;
    GroupMemoryBarrierWithGroupSync();
    r10.x = g0[0].val[0/4];
    r11.x = g0[8].val[0/4];
    r0.z = g0[r5.y].val[0/4];
    r6.y = r0.w + r0.z;
    r0.z = g0[r5.z].val[0/4];
    r7.y = r4.z + r0.z;
    r0.z = g0[r6.z].val[0/4];
    r8.z = r0.z * r7.w + r2.z;
    r0.z = g0[r6.w].val[0/4];
    r0.z = r1.z + -r0.z;
    r8.x = -r8.z;
    r1.yz = r7.zz ? r8.xy : r8.yz;
    r0.w = cmp((int)r3.w == 8);
    r1.yz = r0.ww ? r11.xy : r1.yz;
    r9.x = -r0.z;
    r2.yz = vThreadIDInGroup.xx ? r6.xy : r10.xy;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r3.y;
    g0[r3.z].val[0/4] = r4.w;
    g0[r3.w].val[0/4] = r2.w;
    g0[r5.x].val[0/4] = r1.w;
    GroupMemoryBarrierWithGroupSync();
    r0.z = g0[r5.y].val[0/4];
    r6.x = r3.x + r0.z;
    r0.z = g0[r5.z].val[0/4];
    r8.x = r4.x + r0.z;
    r0.z = g0[r6.z].val[0/4];
    r10.y = r0.z * r7.w + r2.x;
    r0.z = g0[r6.w].val[0/4];
    r11.y = r1.x + -r0.z;
    r12.y = g0[0].val[0/4];
    r13.y = g0[8].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r3.x;
    g0[r3.z].val[0/4] = r4.x;
    g0[r3.w].val[0/4] = r2.x;
    g0[r5.x].val[0/4] = r1.x;
    GroupMemoryBarrierWithGroupSync();
    r12.x = g0[0].val[0/4];
    r13.x = g0[8].val[0/4];
    r0.z = g0[r5.y].val[0/4];
    r6.y = r3.y + r0.z;
    r0.z = g0[r5.z].val[0/4];
    r8.y = r4.w + r0.z;
    r0.z = g0[r6.z].val[0/4];
    r10.z = r0.z * r7.w + r2.w;
    r0.z = g0[r6.w].val[0/4];
    r0.z = r1.w + -r0.z;
    r10.x = -r10.z;
    r1.xw = r7.zz ? r10.xy : r10.yz;
    r1.xw = r0.ww ? r13.xy : r1.xw;
    r11.x = -r0.z;
    r0.zw = vThreadIDInGroup.xx ? r6.xy : r12.xy;
    GroupMemoryBarrierWithGroupSync();
    x0[0].xy = r2.yz;
    x0[1].xy = r7.xy;
    x0[2].xy = r1.yz;
    x0[3].xy = r9.xy;
    x0[4].xy = r0.zw;
    x0[5].xy = r8.xy;
    x0[6].xy = r1.xw;
    x0[7].xy = r11.xy;
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
    r0.zw = float2(0.0625,0.0625) * r0.zw;
    r1.xyzw = float4(0.0625,0.0625,0.0625,0.0625) * r1.xyzw;
    r2.xyzw = float4(0.0625,0.0625,0.0625,0.0625) * r2.xyzw;
    r3.xyzw = float4(0.0625,0.0625,0.0625,0.0625) * r3.xyzw;
    r4.xy = float2(0.0625,0.0625) * r4.xy;
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
  g0[r4.z].val[0/4] = r1.z;
  bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r5.x = (((uint)vThreadIDInGroup.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 2)) << 0) & 0xffffffff;  r5.y = (((uint)vThreadIDInGroup.x << 0) & bitmask.y) | ((uint)4 & ~bitmask.y);
  g0[r5.x].val[0/4] = r2.x;
  r6.xy = (int2)r5.xy + int2(1,4);
  g0[r6.x].val[0/4] = r1.x;
  r7.xy = (int2)r6.xy | int2(3,12);
  g0[r7.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r8.x = g0[vThreadIDInGroup.x].val[0/4];
  r0.z = g0[r5.y].val[0/4];
  r1.x = g0[r6.y].val[0/4];
  r1.z = g0[r7.y].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r4.z].val[0/4] = r1.w;
  g0[r5.x].val[0/4] = r2.y;
  g0[r6.x].val[0/4] = r1.y;
  g0[r7.x].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r8.y = g0[vThreadIDInGroup.x].val[0/4];
  r0.w = g0[r5.y].val[0/4];
  r1.y = g0[r6.y].val[0/4];
  r1.w = g0[r7.y].val[0/4];
  r2.x = (uint)vThreadIDInGroup.x;
  r2.xy = float2(0.392699093,-0.392699093) * r2.xx;
  r2.x = r0.y ? r2.x : r2.y;
  sincos(r2.x, r2.x, r9.x);
  r2.y = r2.x * r0.w;
  r10.x = r9.x * r0.z + -r2.y;
  r0.z = r2.x * r0.z;
  r10.y = r9.x * r0.w + r0.z;
  r0.z = r2.x * r2.x;
  r0.z = r9.x * r9.x + -r0.z;
  r0.w = dot(r9.xx, r2.xx);
  r2.y = r0.w * r1.y;
  r11.x = r0.z * r1.x + -r2.y;
  r1.x = r1.x * r0.w;
  r11.y = r0.z * r1.y + r1.x;
  r1.x = r0.w * r2.x;
  r1.x = r0.z * r9.x + -r1.x;
  r1.y = r9.x * r0.w;
  r1.y = r0.z * r2.x + r1.y;
  r2.y = r1.y * r1.w;
  r12.x = r1.x * r1.z + -r2.y;
  r1.z = r1.z * r1.y;
  r12.y = r1.x * r1.w + r1.z;
  r1.zw = r11.xy + r8.xy;
  r8.zw = r12.xy + r10.xy;
  r8.xy = -r11.xy + r8.xy;
  r10.xy = -r12.xy + r10.xy;
  r10.zw = -r10.yx;
  r9.yz = r0.yy ? r10.zx : r10.yw;
  r10.xy = r8.zw + r1.zw;
  r10.zw = r9.yz + r8.xy;
  r8.xy = -r9.yz + r8.xy;
  r1.zw = -r8.zw + r1.zw;
  GroupMemoryBarrierWithGroupSync();
  r8.zw = r2.zw + r3.zw;
  r9.yz = r3.xy + r4.xy;
  r2.yz = r2.zw + -r3.zw;
  r3.xy = r3.xy + -r4.xy;
  r3.zw = -r3.yx;
  r3.xy = r0.yy ? r3.zx : r3.yw;
  r3.zw = r9.yz + r8.zw;
  r4.xy = r3.xy + r2.yz;
  r2.yz = -r3.xy + r2.yz;
  r3.xy = -r9.yz + r8.zw;
  g0[r4.z].val[0/4] = r3.z;
  g0[r5.x].val[0/4] = r4.x;
  g0[r6.x].val[0/4] = r3.x;
  g0[r7.x].val[0/4] = r2.y;
  GroupMemoryBarrierWithGroupSync();
  r8.z = g0[vThreadIDInGroup.x].val[0/4];
  r2.y = g0[r5.y].val[0/4];
  r2.w = g0[r6.y].val[0/4];
  r3.x = g0[r7.y].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r4.z].val[0/4] = r3.w;
  g0[r5.x].val[0/4] = r4.y;
  g0[r6.x].val[0/4] = r3.y;
  g0[r7.x].val[0/4] = r2.z;
  GroupMemoryBarrierWithGroupSync();
  r8.w = g0[vThreadIDInGroup.x].val[0/4];
  r2.z = g0[r5.y].val[0/4];
  r3.y = g0[r6.y].val[0/4];
  r3.z = g0[r7.y].val[0/4];
  r3.w = r2.x * r2.z;
  r4.x = r9.x * r2.y + -r3.w;
  r2.x = r2.y * r2.x;
  r4.y = r9.x * r2.z + r2.x;
  r2.x = r3.y * r0.w;
  r4.z = r0.z * r2.w + -r2.x;
  r0.w = r2.w * r0.w;
  r4.w = r0.z * r3.y + r0.w;
  r0.z = r3.z * r1.y;
  r2.x = r1.x * r3.x + -r0.z;
  r0.z = r3.x * r1.y;
  r2.y = r1.x * r3.z + r0.z;
  r0.zw = r8.zw + r4.zw;
  r1.xy = r4.xy + r2.xy;
  r2.zw = r8.zw + -r4.zw;
  r3.xy = r4.xy + -r2.xy;
  r3.zw = -r3.yx;
  r2.xy = r0.yy ? r3.zx : r3.yw;
  r3.xy = r1.xy + r0.zw;
  r3.zw = r2.zw + r2.xy;
  r2.xy = r2.zw + -r2.xy;
  r0.zw = -r1.xy + r0.zw;
  if (r0.y != 0) {
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r10.x;
    g0[r5.y].val[0/4] = r10.z;
    g0[r6.y].val[0/4] = r1.z;
    g0[r7.y].val[0/4] = r8.x;
    GroupMemoryBarrierWithGroupSync();
    r0.y = cmp(0 < (uint)vThreadIDInGroup.x);
    r1.x = (int)-vThreadIDInGroup.x + 16;
    r0.y = r0.y ? r1.x : 0;
    r1.x = g0[r0.y].val[0/4];
    r1.x = r10.x + r1.x;
    r1.y = (int)-r5.y + 16;
    r2.z = g0[r1.y].val[0/4];
    r4.x = r10.z + r2.z;
    r2.zw = (int2)-r6.yy + int2(16,12);
    r4.z = g0[r2.z].val[0/4];
    r4.w = cmp(8 < (uint)r6.y);
    r5.x = r4.w ? -1 : 1;
    r9.y = r4.z * r5.x + r1.z;
    r4.z = g0[r2.w].val[0/4];
    r4.z = r8.x + -r4.z;
    r6.x = g0[0].val[0/4];
    r6.x = r6.x + r6.x;
    r11.x = vThreadIDInGroup.x ? r1.x : r6.x;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r10.y;
    g0[r5.y].val[0/4] = r10.w;
    g0[r6.y].val[0/4] = r1.w;
    g0[r7.y].val[0/4] = r8.y;
    GroupMemoryBarrierWithGroupSync();
    r1.x = g0[r0.y].val[0/4];
    r1.x = r10.y + -r1.x;
    r6.x = g0[r1.y].val[0/4];
    r4.y = r10.w + -r6.x;
    r6.x = g0[r2.z].val[0/4];
    r9.x = r6.x + r1.w;
    r6.x = g0[r2.w].val[0/4];
    r6.x = r8.y + r6.x;
    r7.x = g0[0].val[0/4];
    r7.x = r7.x + r7.x;
    r11.y = vThreadIDInGroup.x ? r1.x : r7.x;
    r11.xy = float2(0.5,0.5) * r11.yx;
    r12.xy = float2(0.5,0.5) * r4.xy;
    r9.xyzw = float4(0.5,0.5,0.5,-0.5) * r9.yxxy;
    r9.xy = r4.ww ? r9.wz : r9.yx;
    r1.x = -0.5 * r6.x;
    r13.x = -r1.x;
    r13.y = -0.5 * r4.z;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r3.x;
    g0[r5.y].val[0/4] = r3.z;
    g0[r6.y].val[0/4] = r0.z;
    g0[r7.y].val[0/4] = r2.x;
    GroupMemoryBarrierWithGroupSync();
    r1.x = g0[r0.y].val[0/4];
    r1.x = r3.x + r1.x;
    r4.x = g0[r1.y].val[0/4];
    r8.z = r4.x + r3.z;
    r4.x = g0[r2.z].val[0/4];
    r14.w = r4.x * r5.x + r0.z;
    r4.x = g0[r2.w].val[0/4];
    r4.x = -r4.x + r2.x;
    r4.y = g0[0].val[0/4];
    r4.y = r4.y + r4.y;
    r15.z = vThreadIDInGroup.x ? r1.x : r4.y;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r3.y;
    g0[r5.y].val[0/4] = r3.w;
    g0[r6.y].val[0/4] = r0.w;
    g0[r7.y].val[0/4] = r2.y;
    GroupMemoryBarrierWithGroupSync();
    r0.y = g0[r0.y].val[0/4];
    r0.y = r3.y + -r0.y;
    r1.x = g0[r1.y].val[0/4];
    r8.w = r3.w + -r1.x;
    r1.x = g0[r2.z].val[0/4];
    r14.z = r1.x + r0.w;
    r1.x = g0[r2.w].val[0/4];
    r1.x = r2.y + r1.x;
    r1.y = g0[0].val[0/4];
    r1.y = r1.y + r1.y;
    r15.w = vThreadIDInGroup.x ? r0.y : r1.y;
    r11.zw = float2(0.5,0.5) * r15.wz;
    r12.zw = float2(0.5,0.5) * r8.zw;
    r2.zw = float2(0.5,0.5) * r14.wz;
    r4.yz = float2(0.5,-0.5) * r14.zw;
    r9.zw = r4.ww ? r4.zy : r2.wz;
    r0.y = -0.5 * r1.x;
    r13.z = -r0.y;
    r13.w = -0.5 * r4.x;
    if (r0.x != 0) {
      r4.x = vThreadIDInGroup.x;
      r4.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.xyzw, r11.yxwz
      r5.z = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.yzzz, r12.xyzw
      r6.z = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r6.yzzz, r9.yxwz
      r0.y = cmp((int)r6.y == 8);
      if (r0.y != 0) {
        r4.x = 8;
        r4.yzw = vThreadGroupID.zzz;
        r14.xz = r9.yw;
        r14.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r14.xyzw
        r4.x = 17;
        r4.yzw = vThreadGroupID.zzz;
        r9.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r9.xyzw
      }
      r7.z = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r7.yzzz, r13.xyzw
      if (vThreadIDInGroup.x == 0) {
        r4.x = 0;
        r4.yzw = vThreadGroupID.zzz;
        r14.xz = r11.yw;
        r14.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r14.xyzw
        r4.x = 16;
        r4.yzw = vThreadGroupID.zzz;
        r11.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r11.xyzw
      }
    } else {
      r4.x = vThreadGroupID.z;
      r4.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.xyzw, r11.yxwz
      r5.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.wyyy, r12.xyzw
      r6.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r6.wyyy, r9.yxwz
      r0.y = cmp((int)r6.y == 8);
      if (r0.y != 0) {
        r4.x = vThreadGroupID.z;
        r4.yzw = float3(1.12103877e-044,1.12103877e-044,1.12103877e-044);
        r5.xz = r9.yw;
        r5.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r5.xyzw
        r4.x = vThreadGroupID.z;
        r4.yzw = float3(2.38220739e-044,2.38220739e-044,2.38220739e-044);
        r9.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r9.xyzw
      }
      r7.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r7.wyyy, r13.xyzw
      if (vThreadIDInGroup.x == 0) {
        r4.x = vThreadGroupID.z;
        r4.yzw = float3(0,0,0);
        r5.xz = r11.yw;
        r5.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r5.xyzw
        r4.x = vThreadGroupID.z;
        r4.yzw = float3(2.24207754e-044,2.24207754e-044,2.24207754e-044);
        r11.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyzw, r11.xyzw
      }
    }
  } else {
    r1.xy = min(float2(0,0), -r10.xy);
    r4.xy = -r1.xy;
    r1.xy = min(float2(0,0), -r3.xy);
    r4.zw = -r1.xy;
    r1.xy = min(float2(0,0), -r10.zw);
    r5.xy = -r1.xy;
    r1.xy = min(float2(0,0), -r3.zw);
    r5.zw = -r1.xy;
    r1.xy = min(float2(0,0), -r1.zw);
    r1.xy = -r1.xy;
    r0.yz = min(float2(0,0), -r0.zw);
    r1.zw = -r0.yz;
    r0.yz = min(float2(0,0), -r8.xy);
    r3.xy = -r0.yz;
    r0.yz = min(float2(0,0), -r2.xy);
    r3.zw = -r0.yz;
    if (r0.x != 0) {
      r0.w = (int)vThreadIDInGroup.x + asint(cb0[2].x);
      r0.y = (int)vThreadGroupID.z + asint(cb0[2].y);
      r2.x = cmp((uint)r0.w < asuint(cb0[2].z));
      if (r2.x != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.wyyy, r4.xyzw
        r0.z = (int)r0.w + 4;
      } else {
        r0.z = r0.w;
      }
      r0.w = cmp((uint)r0.z < asuint(cb0[2].z));
      r0.w = r0.w ? r2.x : 0;
      if (r0.w != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.zyyy, r5.xyzw
        r0.x = (int)r0.z + 4;
      } else {
        r0.x = r0.z;
      }
      r0.z = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.z ? r0.w : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r1.xyzw
        r0.x = (int)r0.x + 4;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r3.xyzw
      }
    } else {
      r0.y = (int)vThreadGroupID.z + asint(cb0[2].x);
      r0.x = (int)vThreadIDInGroup.x + asint(cb0[2].y);
      r2.x = cmp((uint)r0.x < asuint(cb0[2].w));
      if (r2.x != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r4.xyzw
        r0.z = (int)r0.x + 4;
      } else {
        r0.z = r0.x;
      }
      r2.y = cmp((uint)r0.z < asuint(cb0[2].w));
      r2.x = r2.y ? r2.x : 0;
      if (r2.x != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yzzz, r5.xyzw
        r0.w = (int)r0.z + 4;
      } else {
        r0.w = r0.z;
      }
      r0.z = cmp((uint)r0.w < asuint(cb0[2].w));
      r0.z = r0.z ? r2.x : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.ywww, r1.xyzw
        r0.x = (int)r0.w + 4;
      } else {
        r0.x = r0.w;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].w));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r3.xyzw
      }
    }
  }
  return;
}