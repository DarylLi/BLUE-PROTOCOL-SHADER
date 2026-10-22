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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 32, 1, 1
  r0.xyz = asint(cb0[3].xxx) & int3(1,2,4);
  r0.w = asuint(cb0[3].z) << 1;
  r1.xy = asint(-cb0[1].yx) + asint(cb0[1].wz);
  r1.x = r0.x ? r1.x : r1.y;
  uiDest.x = (uint)vThreadGroupID.z / asuint(cb0[3].z);
  r3.x = (uint)vThreadGroupID.z % asuint(cb0[3].z);
  r2.x = uiDest.x;
  r2.x = mad((int)r2.x, (int)r0.w, (int)r3.x);
  r2.y = (int)r2.x + asint(cb0[3].z);
  r1.y = (uint)r2.x % (uint)r0.w;
  r1.y = (uint)r1.y;
  r0.w = (uint)r0.w;
  r0.w = r1.y / r0.w;
  r1.yz = float2(6.28318548,-6.28318548) * r0.ww;
  r0.w = r0.y ? r1.y : r1.z;
  sincos(r0.w, r3.x, r4.x);
  r0.w = cmp(asint(cb0[3].z) == 1);
  r1.yz = reversebits((uint2)r2.xy);
  r1.w = asint(-cb0[3].y) + 33;
  r1.yz = (uint2)r1.yz >> (uint2)r1.ww;
  r5.xy = r0.ww ? r1.yz : r2.xy;
  r1.y = asint(cb0[3].y) + -1;
  r1.y = 1 << (int)r1.y;
  r0.y = cmp((int)r0.y == 0);
  r0.y = r0.y ? r0.w : 0;
  r0.w = (uint)r1.y;
  r0.w = 1 / r0.w;
  r0.y = r0.y ? r0.w : 1;
  if (r0.x != 0) {
    r6.zw = float2(0,0);
    r7.zw = float2(0,0);
    r0.xw = cb0[1].zw;
    r5.z = vThreadIDInGroup.x;
    while (true) {
      r1.y = cmp((uint)r5.z >= (uint)r1.x);
      if (r1.y != 0) break;
      r7.xy = (int2)r5.xz + asint(cb0[1].xy);
      r6.xy = (int2)r5.yz + asint(cb0[1].xy);
      r2.z = r5.z;
      r8.xyzw = (int4)r2.xzzz + asint(cb0[2].xyyy);
      r9.xyzw = (int4)r2.yzzz + asint(cb0[2].xyyy);
      r1.yz = cmp((uint2)r6.xy >= (uint2)r0.xw);
      r3.yz = cmp((uint2)r6.xy < asuint(cb0[1].xy));
      r1.y = (int)r1.y | (int)r3.y;
      r1.y = (int)r1.z | (int)r1.y;
      r1.y = (int)r3.z | (int)r1.y;
      if (r1.y != 0) {
        r10.xyzw = float4(0,0,0,0);
      } else {
        r10.xyzw = t0.Load(r6.xyz).xyzw;
      }
      r11.xyzw = min(float4(0,0,0,0), -r10.yxwz);
      r10.xyzw = r0.zzzz ? -r11.xyzw : r10.yxwz;
      r11.xyzw = r10.xyzw * r3.xxxx;
      r12.xz = r4.xx * r10.yw + -r11.xz;
      r12.yw = r4.xx * r10.xz + r11.yw;
      r1.yz = cmp((uint2)r7.xy >= (uint2)r0.xw);
      r3.yz = cmp((uint2)r7.xy < asuint(cb0[1].xy));
      r1.y = (int)r1.y | (int)r3.y;
      r1.y = (int)r1.z | (int)r1.y;
      r1.y = (int)r3.z | (int)r1.y;
      if (r1.y != 0) {
        r10.xyzw = float4(0,0,0,0);
      } else {
        r10.xyzw = t0.Load(r7.xyz).xyzw;
      }
      r11.xyzw = min(float4(0,0,0,0), -r10.xyzw);
      r10.xyzw = r0.zzzz ? -r11.xyzw : r10.xyzw;
      r11.xyzw = r10.xyzw + r12.xyzw;
      r10.xyzw = r10.xyzw + -r12.xyzw;
      r11.xyzw = r11.xyzw * r0.yyyy;
      r10.xyzw = r10.xyzw * r0.yyyy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.xyzw, r11.xyzw
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r9.xyzw, r10.xyzw
      r5.z = (int)r5.z + 32;
    }
  } else {
    r6.zw = float2(0,0);
    r7.zw = float2(0,0);
    r0.xw = cb0[1].zw;
    r5.w = vThreadIDInGroup.x;
    while (true) {
      r1.y = cmp((uint)r5.w >= (uint)r1.x);
      if (r1.y != 0) break;
      r7.xy = (int2)r5.wx + asint(cb0[1].xy);
      r6.xy = (int2)r5.wy + asint(cb0[1].xy);
      r2.w = r5.w;
      r8.xyzw = (int4)r2.wxxx + asint(cb0[2].xyyy);
      r9.xyzw = (int4)r2.wyyy + asint(cb0[2].xyyy);
      r1.yz = cmp((uint2)r6.xy >= (uint2)r0.xw);
      r2.zw = cmp((uint2)r6.xy < asuint(cb0[1].xy));
      r1.y = (int)r1.y | (int)r2.z;
      r1.y = (int)r1.z | (int)r1.y;
      r1.y = (int)r2.w | (int)r1.y;
      if (r1.y != 0) {
        r10.xyzw = float4(0,0,0,0);
      } else {
        r10.xyzw = t0.Load(r6.xyz).xyzw;
      }
      r11.xyzw = min(float4(0,0,0,0), -r10.yxwz);
      r10.xyzw = r0.zzzz ? -r11.xyzw : r10.yxwz;
      r11.xyzw = r10.xyzw * r3.xxxx;
      r12.xz = r4.xx * r10.yw + -r11.xz;
      r12.yw = r4.xx * r10.xz + r11.yw;
      r1.yz = cmp((uint2)r7.xy >= (uint2)r0.xw);
      r2.zw = cmp((uint2)r7.xy < asuint(cb0[1].xy));
      r1.y = (int)r1.y | (int)r2.z;
      r1.y = (int)r1.z | (int)r1.y;
      r1.y = (int)r2.w | (int)r1.y;
      if (r1.y != 0) {
        r10.xyzw = float4(0,0,0,0);
      } else {
        r10.xyzw = t0.Load(r7.xyz).xyzw;
      }
      r11.xyzw = min(float4(0,0,0,0), -r10.xyzw);
      r10.xyzw = r0.zzzz ? -r11.xyzw : r10.xyzw;
      r11.xyzw = r10.xyzw + r12.xyzw;
      r10.xyzw = r10.xyzw + -r12.xyzw;
      r11.xyzw = r11.xyzw * r0.yyyy;
      r10.xyzw = r10.xyzw * r0.yyyy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.xyzw, r11.xyzw
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r9.xyzw, r10.xyzw
      r5.w = (int)r5.w + 32;
    }
  }
  return;
}