// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[126];
}

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
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u2
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u3
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  if (1 == 0) r0.x = 0; else if (1+1 < 32) {   r0.x = (uint)vThreadIDInGroupFlattened.x << (32-(1 + 1)); r0.x = (uint)r0.x >> (32-1);  } else r0.x = (uint)vThreadIDInGroupFlattened.x >> 1;
  r1.xyzw = (uint4)vThreadIDInGroupFlattened.xxxx >> int4(2,3,4,5);
  bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.y = (((uint)r1.x << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
  bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.z = (((uint)r1.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
  bitmask.w = ((~(-1 << 1)) << 2) & 0xffffffff;  r0.w = (((uint)r1.z << 2) & bitmask.w) | ((uint)0 & ~bitmask.w);
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.y = (((uint)vThreadIDInGroupFlattened.x << 0) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
  r0.x = (int)r0.z + (int)r0.x;
  r1.x = (int)r0.w + (int)r0.y;
  r1.y = mad((int)r1.w, 4, (int)r0.x);
  r0.xy = mad((int2)vThreadGroupID.xy, int2(8,8), (int2)r1.xy);
  r1.xy = (int2)r0.xy + asint(cb0[2].xy);
  r0.zw = cmp((uint2)r1.xy < asuint(cb0[2].zw));
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r0.xy = (uint2)r0.xy;
    r0.xy = float2(0.5,0.5) + r0.xy;
    r0.xy = cb0[3].zw * r0.xy;
    r2.xy = r0.xy + r0.xy;
    r0.x = r0.x * 2 + -1;
    r0.y = -r0.y * 2 + 1;
    r0.zw = (uint2)r1.xy;
    r0.zw = float2(0.5,0.5) + r0.zw;
    r0.zw = cb0[0].zw * r0.zw;
    r1.zw = float2(0,0);
    r1.w = t0.Load(r1.xyz).x;
    r3.xyzw = (int4)r1.xyxy + int4(1,-1,-1,-1);
    r4.xy = r3.zw;
    r4.zw = float2(0,0);
    r4.x = t0.Load(r4.xyz).x;
    r3.zw = float2(0,0);
    r3.x = t0.Load(r3.xyz).x;
    r5.xyzw = (int4)r1.xyxy + int4(1,1,-1,1);
    r6.xy = r5.zw;
    r6.zw = float2(0,0);
    r3.y = t0.Load(r6.xyz).x;
    r5.zw = float2(0,0);
    r3.z = t0.Load(r5.xyz).x;
    r3.w = cmp(r3.x < r4.x);
    r5.x = r3.w ? -1 : 1;
    r3.w = cmp(r3.z < r3.y);
    r5.z = r3.w ? -1 : 1;
    r3.x = max(r4.x, r3.x);
    r3.y = max(r3.y, r3.z);
    r3.z = cmp(r3.y < r3.x);
    r5.yw = float2(-1,1);
    r4.xy = r3.zz ? r5.xy : r5.zw;
    r4.z = max(r3.x, r3.y);
    r3.x = cmp(r1.w < r4.z);
    r1.z = 0;
    r3.xyz = r3.xxx ? r4.xyz : r1.zzw;
    r4.xyz = cb1[123].xyw * r0.yyy;
    r4.xyz = r0.xxx * cb1[122].xyw + r4.xyz;
    r4.xyz = r3.zzz * cb1[124].xyw + r4.xyz;
    r4.xyz = cb1[125].xyw + r4.xyz;
    r4.xyzw = r4.xyxx / r4.zzzz;
    r2.zw = r2.xy * float2(1,-1) + float2(-1,1);
    r4.xyzw = r2.zwzz + -r4.xyzw;
    r0.xy = r0.zw * cb0[0].xy + r3.xy;
    r0.xy = (uint2)r0.xy;
    r0.zw = float2(0,0);
    r0.xy = t1.Load(r0.xyz).xy;
    r0.z = cmp(0 < r0.x);
    r5.xyzw = r0.xyxx * float4(4.00801611,4.00801611,4.00801611,4.00801611) + float4(-2.00397754,-2.00397754,-2.00397754,-2.00397754);
    r0.xyzw = r0.zzzz ? r5.xyzw : r4.xyzw;
    r1.zw = float2(-1,0) + r2.xw;
    r1.zw = r1.zw + -r0.wy;
    r1.zw = cb0[1].xy * r1.zw + cb0[1].zw;
    r1.zw = cb0[0].zw * r1.zw;
    r1.zw = r1.zw * cb0[0].xy + float2(-0.5,-0.5);
    r2.xy = floor(r1.zw);
    r1.zw = frac(r1.zw);
    r2.zw = float2(1,1) + -r1.zw;
    r2.xy = (uint2)r2.xy;
    r3.xy = cmp((uint2)r2.xy >= asuint(cb0[2].xy));
    r4.xy = cmp((uint2)r2.xy < asuint(cb0[2].zw));
    r3.xy = r3.xy ? r4.xy : 0;
    r3.x = r3.y ? r3.x : 0;
    if (r3.x != 0) {
      r3.x = r2.z * r2.w;
      r3.x = 256 * r3.x;
      r3.x = round(r3.x);
      r3.x = (uint)r3.x;
      // Needs manual fix for instruction:
        atomic_iadd u2, r2.xyxx, r3.x
      InterlockedAdd(dest, value, orig_value);
      if (r3.x != 0) {
        r3.x = f32tof16(r3.z);
        // Needs manual fix for instruction:
            atomic_umax u3, r2.xyxx, r3.x
        InterlockedMax(dest, value, orig_value);
      }
    }
    r4.xyzw = (int4)r2.xyxy + int4(1,0,0,1);
    r5.xyzw = cmp((uint4)r4.xyzw >= asuint(cb0[2].xyxy));
    r6.xyzw = cmp((uint4)r4.xyzw < asuint(cb0[2].zwzw));
    r5.xyzw = r5.xyzw ? r6.xyzw : 0;
    r3.xy = r5.yw ? r5.xz : 0;
    if (r3.x != 0) {
      r2.w = r2.w * r1.z;
      r2.w = 256 * r2.w;
      r2.w = round(r2.w);
      r2.w = (uint)r2.w;
      // Needs manual fix for instruction:
        atomic_iadd u2, r4.xyxx, r2.w
      InterlockedAdd(dest, value, orig_value);
      if (r2.w != 0) {
        r2.w = f32tof16(r3.z);
        // Needs manual fix for instruction:
            atomic_umax u3, r4.xyxx, r2.w
        InterlockedMax(dest, value, orig_value);
      }
    }
    if (r3.y != 0) {
      r2.z = r2.z * r1.w;
      r2.z = 256 * r2.z;
      r2.z = round(r2.z);
      r2.z = (uint)r2.z;
      // Needs manual fix for instruction:
        atomic_iadd u2, r4.zwzz, r2.z
      InterlockedAdd(dest, value, orig_value);
      if (r2.z != 0) {
        r2.z = f32tof16(r3.z);
        // Needs manual fix for instruction:
            atomic_umax u3, r4.zwzz, r2.z
        InterlockedMax(dest, value, orig_value);
      }
    }
    r2.xy = (int2)r2.xy + int2(1,1);
    r2.zw = cmp((uint2)r2.xy >= asuint(cb0[2].xy));
    r3.xy = cmp((uint2)r2.xy < asuint(cb0[2].zw));
    r2.zw = r2.zw ? r3.xy : 0;
    r2.z = r2.w ? r2.z : 0;
    if (r2.z != 0) {
      r1.z = r1.z * r1.w;
      r1.z = 256 * r1.z;
      r1.z = round(r1.z);
      r1.z = (uint)r1.z;
      // Needs manual fix for instruction:
        atomic_iadd u2, r2.xyxx, r1.z
      InterlockedAdd(dest, value, orig_value);
      if (r1.z != 0) {
        r1.z = f32tof16(r3.z);
        // Needs manual fix for instruction:
            atomic_umax u3, r2.xyxx, r1.z
        InterlockedMax(dest, value, orig_value);
      }
    }
    r0.xyzw = r0.xyzw * float4(0.249500006,0.249500006,0.249500006,0.249500006) + float4(0.499992371,0.499992371,0.499992371,0.499992371);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r0.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xyyy, r3.zzzz
  }
  return;
}