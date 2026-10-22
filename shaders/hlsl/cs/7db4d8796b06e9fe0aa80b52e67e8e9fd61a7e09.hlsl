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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1, 1, 1
  r0.xy = asint(cb0[4].xx) & int2(1,2);
  x0[0].xy = float2(0,0);
  x0[1].xy = float2(0,0);
  x0[2].xy = float2(0,0);
  x0[3].xy = float2(0,0);
  if (r0.x != 0) {
    r1.x = cb0[1].x;
    r1.y = vThreadGroupID.z;
    r0.z = cmp(asuint(cb0[1].z) >= (uint)r1.x);
    if (r0.z != 0) {
      r1.zw = float2(0,0);
      r2.xyzw = t0.Load(r1.xyz).xyzw;
      x0[0].xy = r2.xy;
      x0[2].xy = r2.zw;
    }
    r1.x = (int)r1.x + 1;
    r0.z = cmp(asuint(cb0[1].z) >= (uint)r1.x);
    if (r0.z != 0) {
      r1.zw = float2(0,0);
      r1.xyzw = t0.Load(r1.xyz).xyzw;
      x0[1].xy = r1.xy;
      x0[3].xy = r1.zw;
    }
  } else {
    r1.x = vThreadGroupID.z;
    r1.y = cb0[1].y;
    r0.z = cmp(asuint(cb0[1].w) >= (uint)r1.y);
    if (r0.z != 0) {
      r1.zw = float2(0,0);
      r2.xyzw = t0.Load(r1.xyz).xyzw;
      x0[0].xy = r2.xy;
      x0[2].xy = r2.zw;
    }
    r1.y = (int)r1.y + 1;
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
  r2.zw = float2(0.5,0.5) * r0.zw;
  r3.xyzw = float4(0.5,0.5,0.5,0.5) * r1.xyzw;
  r4.xy = float2(0.5,0.5) * r2.xy;
  r0.zw = r0.yy ? r0.zw : r2.zw;
  r1.xyzw = r0.yyyy ? r1.xyzw : r3.xyzw;
  r2.xy = r0.yy ? r2.xy : r4.xy;
  r2.zw = r1.xy + r0.zw;
  r0.yz = -r1.xy + r0.zw;
  r3.xy = r2.zw + r0.yz;
  r4.xy = r2.zw + -r0.yz;
  r0.yz = r2.xy + r1.zw;
  r1.xy = -r2.xy + r1.zw;
  r3.zw = r1.xy + r0.yz;
  r4.zw = -r1.xy + r0.yz;
  if (r0.x != 0) {
    if (cb0[2].x != 0) {
      r0.x = 0;
      r0.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r3.xyzw
      r0.x = 1;
    } else {
      r0.x = 0;
    }
    r0.x = cmp((uint)r0.x < asuint(cb0[2].x));
    if (r0.x != 0) {
      r0.x = 1;
      r0.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r4.xyzw
    }
  } else {
    if (cb0[2].y != 0) {
      r0.x = vThreadGroupID.z;
      r0.yzw = float3(0,0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r3.xyzw
      r0.x = 1;
    } else {
      r0.x = 0;
    }
    r0.x = cmp((uint)r0.x < asuint(cb0[2].y));
    if (r0.x != 0) {
      r0.x = vThreadGroupID.z;
      r0.yzw = float3(1.40129846e-045,1.40129846e-045,1.40129846e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r4.xyzw
    }
  }
  return;
}