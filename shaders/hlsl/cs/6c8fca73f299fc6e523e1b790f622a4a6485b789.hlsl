// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 32, 1, 1
  r0.xyz = asint(cb0[3].xxx) & int3(1,2,4);
  r0.w = 1 << asint(cb0[3].z);
  r0.w = (uint)r0.w;
  r0.w = 1 / r0.w;
  r0.y = r0.y ? 1 : r0.w;
  r1.xy = asint(-cb0[1].yx) + asint(cb0[1].wz);
  r0.w = r0.x ? r1.x : r1.y;
  r1.w = (uint)vThreadGroupID.z << 1;
  r2.x = mad((int)vThreadGroupID.z, 2, 1);
  r2.w = reversebits((uint)r1.w);
  r3.x = asint(-cb0[3].w) + 32;
  r2.w = (uint)r2.w >> (uint)r3.x;
  r3.z = r2.w;
  r3.yw = float2(0,0);
  while (true) {
    r4.x = cmp((uint)r3.w >= asuint(cb0[3].z));
    if (r4.x != 0) break;
    r4.x = (uint)r3.z >> 1;
    bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.y = (((uint)r3.y << 1) & bitmask.y) | ((uint)r3.z & ~bitmask.y);
    r3.w = (int)r3.w + 1;
    r3.z = r4.x;
  }
  r2.w = asint(-cb0[3].z) + asint(cb0[3].w);
  r3.y = (uint)r3.y << (int)r2.w;
  r3.y = (int)r3.z | (int)r3.y;
  r3.y = reversebits((uint)r3.y);
  r1.y = (uint)r3.y >> (uint)r3.x;
  r3.y = reversebits((uint)r2.x);
  r3.y = (uint)r3.y >> (uint)r3.x;
  r3.z = 0;
  r3.w = r3.y;
  r4.x = 0;
  while (true) {
    r4.y = cmp((uint)r4.x >= asuint(cb0[3].z));
    if (r4.y != 0) break;
    r4.y = (uint)r3.w >> 1;
    bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.z = (((uint)r3.z << 1) & bitmask.z) | ((uint)r3.w & ~bitmask.z);
    r4.x = (int)r4.x + 1;
    r3.w = r4.y;
  }
  r2.w = (uint)r3.z << (int)r2.w;
  r2.w = (int)r3.w | (int)r2.w;
  r2.w = reversebits((uint)r2.w);
  r1.z = (uint)r2.w >> (uint)r3.x;
  if (r0.x != 0) {
    r3.zw = float2(0,0);
    r4.zw = float2(0,0);
    r1.x = vThreadIDInGroup.x;
    while (true) {
      r0.x = cmp((uint)r1.x >= (uint)r0.w);
      if (r0.x != 0) break;
      r3.xy = (int2)r1.yx + asint(cb0[1].xy);
      r4.xy = (int2)r1.zx + asint(cb0[1].xy);
      r5.xyzw = (int4)r1.wxxx + asint(cb0[2].xyyy);
      r2.y = r1.x;
      r6.xyzw = (int4)r2.xyyy + asint(cb0[2].xyyy);
      r2.yw = cmp((uint2)r3.xy >= asuint(cb0[1].zw));
      r7.xy = cmp((uint2)r3.xy < asuint(cb0[1].xy));
      r0.x = (int)r2.y | (int)r7.x;
      r0.x = (int)r2.w | (int)r0.x;
      r0.x = (int)r7.y | (int)r0.x;
      if (r0.x != 0) {
        r7.xyzw = float4(0,0,0,0);
      } else {
        r7.xyzw = t0.Load(r3.xyz).xyzw;
      }
      r8.xyzw = min(float4(0,0,0,0), -r7.xyzw);
      r7.xyzw = r0.zzzz ? -r8.xyzw : r7.xyzw;
      r7.xyzw = r7.xyzw * r0.yyyy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.xyzw, r7.xyzw
      r2.yw = cmp((uint2)r4.xy >= asuint(cb0[1].zw));
      r3.xy = cmp((uint2)r4.xy < asuint(cb0[1].xy));
      r0.x = (int)r2.y | (int)r3.x;
      r0.x = (int)r2.w | (int)r0.x;
      r0.x = (int)r3.y | (int)r0.x;
      if (r0.x != 0) {
        r5.xyzw = float4(0,0,0,0);
      } else {
        r5.xyzw = t0.Load(r4.xyz).xyzw;
      }
      r7.xyzw = min(float4(0,0,0,0), -r5.xyzw);
      r5.xyzw = r0.zzzz ? -r7.xyzw : r5.xyzw;
      r5.xyzw = r5.xyzw * r0.yyyy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r6.xyzw, r5.xyzw
      r1.x = (int)r1.x + 32;
    }
  } else {
    r3.zw = float2(0,0);
    r4.zw = float2(0,0);
    r2.yw = cb0[1].zw;
    r1.x = vThreadIDInGroup.x;
    while (true) {
      r0.x = cmp((uint)r1.x >= (uint)r0.w);
      if (r0.x != 0) break;
      r4.xy = (int2)r1.xy + asint(cb0[1].xy);
      r3.xy = (int2)r1.xz + asint(cb0[1].xy);
      r5.xyzw = (int4)r1.xwww + asint(cb0[2].xyyy);
      r2.z = r1.x;
      r6.xyzw = (int4)r2.zxxx + asint(cb0[2].xyyy);
      r7.xy = cmp((uint2)r3.xy >= (uint2)r2.yw);
      r7.zw = cmp((uint2)r3.xy < asuint(cb0[1].xy));
      r0.x = (int)r7.z | (int)r7.x;
      r0.x = (int)r7.y | (int)r0.x;
      r0.x = (int)r7.w | (int)r0.x;
      if (r0.x != 0) {
        r7.xyzw = float4(0,0,0,0);
      } else {
        r7.xyzw = t0.Load(r3.xyz).xyzw;
      }
      r8.xyzw = min(float4(0,0,0,0), -r7.xyzw);
      r7.xyzw = r0.zzzz ? -r8.xyzw : r7.xyzw;
      r3.xy = cmp((uint2)r4.xy >= (uint2)r2.yw);
      r8.xy = cmp((uint2)r4.xy < asuint(cb0[1].xy));
      r0.x = (int)r3.x | (int)r8.x;
      r0.x = (int)r3.y | (int)r0.x;
      r0.x = (int)r8.y | (int)r0.x;
      if (r0.x != 0) {
        r8.xyzw = float4(0,0,0,0);
      } else {
        r8.xyzw = t0.Load(r4.xyz).xyzw;
      }
      r9.xyzw = min(float4(0,0,0,0), -r8.xyzw);
      r8.xyzw = r0.zzzz ? -r9.xyzw : r8.xyzw;
      r8.xyzw = r8.xyzw * r0.yyyy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.xyzw, r8.xyzw
      r5.xyzw = r7.xyzw * r0.yyyy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r6.xyzw, r5.xyzw
      r1.x = (int)r1.x + 32;
    }
  }
  return;
}