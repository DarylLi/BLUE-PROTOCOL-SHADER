// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[8];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1, 1, 1
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
    r1.x = cb0[1].x;
    r1.y = vThreadGroupID.z;
    r0.z = cmp(asuint(cb0[1].z) >= (uint)r1.x);
    if (r0.z != 0) {
      r1.zw = float2(0,0);
      r2.xyzw = t0.Load(r1.xyz).xyzw;
      x0[0].xy = r2.xy;
      x0[4].xy = r2.zw;
    }
    r2.xyz = (int3)r1.xxx + int3(1,2,3);
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
    r1.y = cb0[1].y;
    r0.z = cmp(asuint(cb0[1].w) >= (uint)r1.y);
    if (r0.z != 0) {
      r1.zw = float2(0,0);
      r2.xyzw = t0.Load(r1.xyz).xyzw;
      x0[0].xy = r2.xy;
      x0[4].xy = r2.zw;
    }
    r2.xyz = (int3)r1.yyy + int3(1,3,2);
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
    r0.zw = float2(0.25,0.25) * r0.zw;
    r1.xyzw = float4(0.25,0.25,0.25,0.25) * r1.xyzw;
    r2.xyzw = float4(0.25,0.25,0.25,0.25) * r2.xyzw;
    r3.xyzw = float4(0.25,0.25,0.25,0.25) * r3.xyzw;
    r4.xy = float2(0.25,0.25) * r4.xy;
  }
  r4.zw = r0.zw + r1.zw;
  r5.xy = r1.xy + r2.xy;
  r0.zw = r0.zw + -r1.zw;
  r1.xy = r1.xy + -r2.xy;
  r1.zw = -r1.yx;
  r1.xy = r0.yy ? r1.zx : r1.yw;
  r1.zw = r5.xy + r4.zw;
  r2.xy = r1.xy + r0.zw;
  r0.zw = -r1.xy + r0.zw;
  r1.xy = -r5.xy + r4.zw;
  r4.zw = r1.zw + r1.xy;
  r5.xy = r2.xy + r0.zw;
  r1.xy = r1.zw + -r1.xy;
  r6.xy = r2.xy + -r0.zw;
  r6.zw = -r6.yx;
  r0.zw = r0.yy ? r6.zx : r6.yw;
  r6.xy = r5.xy + r4.zw;
  r7.xy = r1.xy + r0.zw;
  r1.xy = r1.xy + -r0.zw;
  r5.xy = -r5.xy + r4.zw;
  r0.zw = r2.zw + r3.zw;
  r2.xy = r3.xy + r4.xy;
  r2.zw = r2.zw + -r3.zw;
  r3.xy = r3.xy + -r4.xy;
  r3.zw = -r3.yx;
  r3.xy = r0.yy ? r3.zx : r3.yw;
  r3.zw = r2.xy + r0.zw;
  r4.xy = r3.xy + r2.zw;
  r2.zw = -r3.xy + r2.zw;
  r0.zw = -r2.xy + r0.zw;
  r2.xy = r3.zw + r0.zw;
  r3.xy = r4.xy + r2.zw;
  r0.zw = r3.zw + -r0.zw;
  r4.xy = r4.xy + -r2.zw;
  r4.zw = -r4.yx;
  r2.zw = r0.yy ? r4.zx : r4.yw;
  r6.zw = r3.xy + r2.xy;
  r7.zw = r2.zw + r0.zw;
  r1.zw = -r2.zw + r0.zw;
  r5.zw = -r3.xy + r2.xy;
  if (r0.x != 0) {
    if (cb0[2].x != 0) {
      r0.x = 0;
      r0.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r6.xyzw
      r0.x = 1;
    } else {
      r0.x = 0;
    }
    r0.y = cmp((uint)r0.x < asuint(cb0[2].x));
    if (r0.y != 0) {
      r2.x = 1;
      r2.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r7.xyzw
      r0.x = 2;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[2].x));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r2.x = 2;
      r2.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r5.xyzw
      r0.x = 3;
    }
    r0.x = cmp((uint)r0.x < asuint(cb0[2].x));
    r0.x = r0.x ? r0.y : 0;
    if (r0.x != 0) {
      r0.x = 3;
      r0.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
    }
  } else {
    if (cb0[2].y != 0) {
      r0.x = vThreadGroupID.z;
      r0.yzw = float3(0,0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r6.xyzw
      r0.x = 1;
    } else {
      r0.x = 0;
    }
    r0.y = cmp((uint)r0.x < asuint(cb0[2].y));
    if (r0.y != 0) {
      r2.x = vThreadGroupID.z;
      r2.yzw = float3(1.40129846e-045,1.40129846e-045,1.40129846e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r7.xyzw
      r0.x = 2;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[2].y));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r2.x = vThreadGroupID.z;
      r2.yzw = float3(2.80259693e-045,2.80259693e-045,2.80259693e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r5.xyzw
      r0.x = 3;
    }
    r0.x = cmp((uint)r0.x < asuint(cb0[2].y));
    r0.x = r0.x ? r0.y : 0;
    if (r0.x != 0) {
      r0.x = vThreadGroupID.z;
      r0.yzw = float3(4.20389539e-045,4.20389539e-045,4.20389539e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
    }
  }
  return;
}