// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1, 1, 1
  r0.xyz = asint(cb0[0].www) & int3(1,2,8);
  r0.w = cmp((int)r0.z != 0);
  r1.x = r0.x ? cb0[1].y : cb0[1].x;
  r1.y = (uint)vThreadGroupID.z << 1;
  r2.x = (int)r1.x + -2;
  r1.x = cmp((uint)r2.x < (uint)r1.y);
  if (r0.x != 0) {
    r3.xzw = float3(0,0,0);
    r3.y = vThreadGroupID.z;
    r3.xyzw = t1.Load(r3.xyz).zwxy;
    r4.xzw = float3(1,0,0);
    r4.y = vThreadGroupID.z;
    r4.xyzw = t1.Load(r4.xyz).zwxy;
  } else {
    r5.x = vThreadGroupID.z;
    r5.yzw = float3(1.40129846e-045,0,0);
    r3.xyzw = t1.Load(r5.xww).zwxy;
    r4.xyzw = t1.Load(r5.xyz).zwxy;
  }
  x0[0].xy = float2(0,0);
  x0[1].xy = float2(0,0);
  x0[2].xy = float2(0,0);
  x0[3].xy = float2(0,0);
  if (r0.x != 0) {
    r5.x = cb0[1].z;
    r5.y = vThreadGroupID.z;
    r1.y = cmp(asuint(cb0[2].x) >= (uint)r5.x);
    if (r1.y != 0) {
      r5.zw = float2(0,0);
      r6.xyzw = t0.Load(r5.xyz).xyzw;
      x0[0].xy = r6.xy;
      x0[2].xy = r6.zw;
    }
    r5.x = (int)r5.x + 1;
    r1.y = cmp(asuint(cb0[2].x) >= (uint)r5.x);
    if (r1.y != 0) {
      r5.zw = float2(0,0);
      r5.xyzw = t0.Load(r5.xyz).xyzw;
      x0[1].xy = r5.xy;
      x0[3].xy = r5.zw;
    }
  } else {
    r5.x = vThreadGroupID.z;
    r5.y = cb0[1].w;
    r1.y = cmp(asuint(cb0[2].y) >= (uint)r5.y);
    if (r1.y != 0) {
      r5.zw = float2(0,0);
      r6.xyzw = t0.Load(r5.xyz).xyzw;
      x0[0].xy = r6.xy;
      x0[2].xy = r6.zw;
    }
    r5.y = (int)r5.y + 1;
    r1.y = cmp(asuint(cb0[2].y) >= (uint)r5.y);
    if (r1.y != 0) {
      r5.zw = float2(0,0);
      r5.xyzw = t0.Load(r5.xyz).xyzw;
      x0[1].xy = r5.xy;
      x0[3].xy = r5.zw;
    }
  }
  r1.yz = x0[0].xy;
  r5.xy = x0[1].xy;
  r5.zw = x0[2].xy;
  r6.xy = x0[3].xy;
  r6.zw = float2(0.5,0.5) * r1.yz;
  r7.xyzw = float4(0.5,0.5,0.5,0.5) * r5.xyzw;
  r8.xy = float2(0.5,0.5) * r6.xy;
  r1.yz = r0.yy ? r1.yz : r6.zw;
  r5.xyzw = r0.yyyy ? r5.xyzw : r7.xyzw;
  r6.xy = r0.yy ? r6.xy : r8.xy;
  r6.zw = r5.xy + r1.yz;
  r1.yz = -r5.xy + r1.yz;
  r5.xy = r6.zw + r1.yz;
  r1.yz = r6.zw + -r1.yz;
  r6.zw = r6.xy + r5.zw;
  r5.zw = -r6.xy + r5.zw;
  r6.xy = r6.zw + r5.zw;
  r5.zw = r6.zw + -r5.zw;
  r1.w = r5.y * r3.w;
  r7.x = r5.x * r3.z + -r1.w;
  r7.y = dot(r5.yx, r3.zw);
  r1.w = r1.z * r4.w;
  r5.x = r1.y * r4.z + -r1.w;
  r5.y = dot(r1.zy, r4.zw);
  r1.y = ~(int)r1.x;
  r0.w = (int)r0.w | (int)r1.y;
  r1.y = r6.y * r3.y;
  r1.z = r6.x * r3.x + -r1.y;
  r1.w = dot(r6.yx, r3.xy);
  r1.yz = r0.ww ? r1.zw : r6.xy;
  r1.w = r5.w * r4.y;
  r3.z = r5.z * r4.x + -r1.w;
  r3.w = dot(r5.wz, r4.xy);
  r3.xy = r0.ww ? r3.zw : r5.zw;
  if (r0.x == 0) {
    r3.zw = t1.Load(float4(0,0,0,0)).xz;
    r2.y = 0;
    r2.yw = t1.Load(r2.xyy).xz;
  } else {
    r3.zw = t1.Load(float4(0,0,0,0)).xz;
    r2.z = 0;
    r2.yw = t1.Load(r2.zxz).xz;
  }
  r0.w = max(r3.w, r2.y);
  r0.w = max(r3.z, r0.w);
  r0.z = r0.z ? r2.w : 1;
  r2.xy = r7.xy / r0.ww;
  r2.zw = r5.xy / r0.ww;
  r0.z = r1.x ? r0.z : r0.w;
  r1.xy = r1.yz / r0.zz;
  r0.zw = r3.xy / r0.zz;
  r1.zw = float2(0.5,0.5) * r2.xy;
  r3.xy = float2(0.5,0.5) * r2.zw;
  r3.zw = float2(0.5,0.5) * r1.xy;
  r4.xy = float2(0.5,0.5) * r0.zw;
  r1.zw = r0.yy ? r1.zw : r2.xy;
  r2.xy = r0.yy ? r3.xy : r2.zw;
  r1.xy = r0.yy ? r3.zw : r1.xy;
  r0.yz = r0.yy ? r4.xy : r0.zw;
  r2.zw = r2.xy + r1.zw;
  r1.zw = -r2.xy + r1.zw;
  r3.xy = r2.zw + r1.zw;
  r2.xy = r2.zw + -r1.zw;
  r1.zw = r1.xy + r0.yz;
  r0.yz = r1.xy + -r0.yz;
  r3.zw = r1.zw + r0.yz;
  r2.zw = r1.zw + -r0.yz;
  if (r0.x != 0) {
    if (cb0[1].x != 0) {
      r0.x = 0;
      r0.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r3.xyzw
      r0.x = 1;
    } else {
      r0.x = 0;
    }
    r0.x = cmp((uint)r0.x < asuint(cb0[1].x));
    if (r0.x != 0) {
      r0.x = 1;
      r0.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r2.xyzw
    }
  } else {
    if (cb0[1].y != 0) {
      r0.x = vThreadGroupID.z;
      r0.yzw = float3(0,0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r3.xyzw
      r0.x = 1;
    } else {
      r0.x = 0;
    }
    r0.x = cmp((uint)r0.x < asuint(cb0[1].y));
    if (r0.x != 0) {
      r0.x = vThreadGroupID.z;
      r0.yzw = float3(1.40129846e-045,1.40129846e-045,1.40129846e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r2.xyzw
    }
  }
  return;
}