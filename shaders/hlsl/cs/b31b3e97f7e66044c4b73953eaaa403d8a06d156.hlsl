// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[32];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[8];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 1, 1
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
    r2.xyz = (int3)r1.xxx + int3(4,8,12);
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
    r2.xyz = (int3)r1.yyy + int3(4,12,8);
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
  bitmask.x = ((~(-1 << 2)) << 0) & 0xffffffff;  r5.x = (((uint)vThreadIDInGroup.x << 0) & bitmask.x) | ((uint)4 & ~bitmask.x);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r5.y = (((uint)vThreadIDInGroup.x << 2) & bitmask.y) | ((uint)1 & ~bitmask.y);
  g0[r5.y].val[0/4] = r2.x;
  r5.zw = (int2)r5.yx + int2(1,4);
  g0[r5.z].val[0/4] = r1.x;
  r1.xz = (int2)r5.zw | int2(3,12);
  g0[r1.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r6.x = g0[vThreadIDInGroup.x].val[0/4];
  r0.z = g0[r5.x].val[0/4];
  r2.x = g0[r5.w].val[0/4];
  r4.w = g0[r1.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r4.z].val[0/4] = r1.w;
  g0[r5.y].val[0/4] = r2.y;
  g0[r5.z].val[0/4] = r1.y;
  g0[r1.x].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r6.y = g0[vThreadIDInGroup.x].val[0/4];
  r0.w = g0[r5.x].val[0/4];
  r1.y = g0[r5.w].val[0/4];
  r1.w = g0[r1.z].val[0/4];
  r2.y = (uint)vThreadIDInGroup.x;
  r6.zw = float2(0.392699093,-0.392699093) * r2.yy;
  r2.y = r0.y ? r6.z : r6.w;
  sincos(r2.y, r7.x, r8.x);
  r2.y = r7.x * r0.w;
  r9.x = r8.x * r0.z + -r2.y;
  r0.z = r7.x * r0.z;
  r9.y = r8.x * r0.w + r0.z;
  r0.z = r7.x * r7.x;
  r0.z = r8.x * r8.x + -r0.z;
  r0.w = dot(r8.xx, r7.xx);
  r2.y = r0.w * r1.y;
  r10.x = r0.z * r2.x + -r2.y;
  r2.x = r2.x * r0.w;
  r10.y = r0.z * r1.y + r2.x;
  r1.y = r0.w * r7.x;
  r1.y = r0.z * r8.x + -r1.y;
  r2.x = r8.x * r0.w;
  r2.x = r0.z * r7.x + r2.x;
  r2.y = r2.x * r1.w;
  r11.x = r1.y * r4.w + -r2.y;
  r2.y = r4.w * r2.x;
  r11.y = r1.y * r1.w + r2.y;
  r6.zw = r10.xy + r6.xy;
  r7.yz = r11.xy + r9.xy;
  r6.xy = -r10.xy + r6.xy;
  r9.xy = -r11.xy + r9.xy;
  r9.zw = -r9.yx;
  r8.yz = r0.yy ? r9.zx : r9.yw;
  r9.xy = r7.yz + r6.zw;
  r10.xy = r8.yz + r6.xy;
  r11.xy = -r8.yz + r6.xy;
  r6.xy = -r7.yz + r6.zw;
  GroupMemoryBarrierWithGroupSync();
  r7.yz = r2.zw + r3.zw;
  r8.yz = r3.xy + r4.xy;
  r2.yz = r2.zw + -r3.zw;
  r3.xy = r3.xy + -r4.xy;
  r3.zw = -r3.yx;
  r3.xy = r0.yy ? r3.zx : r3.yw;
  r3.zw = r8.yz + r7.yz;
  r4.xy = r3.xy + r2.yz;
  r2.yz = -r3.xy + r2.yz;
  r3.xy = -r8.yz + r7.yz;
  g0[r4.z].val[0/4] = r3.z;
  g0[r5.y].val[0/4] = r4.x;
  g0[r5.z].val[0/4] = r3.x;
  g0[r1.x].val[0/4] = r2.y;
  GroupMemoryBarrierWithGroupSync();
  r7.z = g0[vThreadIDInGroup.x].val[0/4];
  r1.w = g0[r5.x].val[0/4];
  r2.y = g0[r5.w].val[0/4];
  r2.w = g0[r1.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r4.z].val[0/4] = r3.w;
  g0[r5.y].val[0/4] = r4.y;
  g0[r5.z].val[0/4] = r3.y;
  g0[r1.x].val[0/4] = r2.z;
  GroupMemoryBarrierWithGroupSync();
  r7.w = g0[vThreadIDInGroup.x].val[0/4];
  r1.x = g0[r5.x].val[0/4];
  r2.z = g0[r5.w].val[0/4];
  r1.z = g0[r1.z].val[0/4];
  r3.x = r7.x * r1.x;
  r3.x = r8.x * r1.w + -r3.x;
  r1.w = r1.w * r7.x;
  r3.y = r8.x * r1.x + r1.w;
  r1.x = r2.z * r0.w;
  r3.z = r0.z * r2.y + -r1.x;
  r0.w = r2.y * r0.w;
  r3.w = r0.z * r2.z + r0.w;
  r0.z = r2.x * r1.z;
  r4.x = r1.y * r2.w + -r0.z;
  r0.z = r2.w * r2.x;
  r4.y = r1.y * r1.z + r0.z;
  r0.zw = r7.zw + r3.zw;
  r1.xy = r4.xy + r3.xy;
  r1.zw = r7.zw + -r3.zw;
  r2.xy = -r4.xy + r3.xy;
  r2.zw = -r2.yx;
  r2.xy = r0.yy ? r2.zx : r2.yw;
  r9.zw = r1.xy + r0.zw;
  r10.zw = r2.xy + r1.zw;
  r11.zw = -r2.xy + r1.zw;
  r6.zw = -r1.xy + r0.zw;
  if (r0.x != 0) {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].x));
    if (r0.x != 0) {
      r1.x = vThreadIDInGroup.x;
      r1.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r9.xyzw
    } else {
      r5.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.xyyy, r10.xyzw
      r5.x = (int)r5.x + 4;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.xyyy, r6.xyzw
      r5.x = (int)r5.x + 4;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[2].x));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.xyyy, r11.xyzw
    }
  } else {
    r0.x = cmp((uint)vThreadIDInGroup.x < asuint(cb0[2].y));
    if (r0.x != 0) {
      r1.x = vThreadGroupID.z;
      r1.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r9.xyzw
    } else {
      r5.x = vThreadIDInGroup.x;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.yxxx, r10.xyzw
      r5.x = (int)r5.x + 4;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.yxxx, r6.xyzw
      r5.x = (int)r5.x + 4;
    }
    r0.y = cmp((uint)r5.x < asuint(cb0[2].y));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
      r5.y = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.yxxx, r11.xyzw
    }
  }
  return;
}