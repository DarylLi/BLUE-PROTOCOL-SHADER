// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1, 1, 1
  r0.xy = asint(cb0[0].ww) & int2(1,2);
  if (r0.y != 0) {
    r0.z = asint(cb0[0].w) & 4;
    r0.w = cmp((int)r0.z != 0);
    x0[0].xy = float2(0,0);
    x0[1].xy = float2(0,0);
    x0[2].xy = float2(0,0);
    x0[3].xy = float2(0,0);
    if (r0.x != 0) {
      r1.x = 0;
      r1.y = vThreadGroupID.z;
      r1.xy = (int2)r1.xy + asint(cb0[1].xy);
      r2.x = cmp(asuint(cb0[1].z) >= (uint)r1.x);
      if (r2.x != 0) {
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x0[0].xy = r2.xy;
        x0[2].xy = r2.zw;
      }
      r1.x = asint(cb0[1].x) + 1;
      r2.x = cmp(asuint(cb0[1].z) >= (uint)r1.x);
      if (r2.x != 0) {
        r1.zw = float2(0,0);
        r1.xyzw = t0.Load(r1.xyz).xyzw;
        x0[1].xy = r1.xy;
        x0[3].xy = r1.zw;
      }
    } else {
      r1.x = vThreadGroupID.z;
      r1.y = 0;
      r1.xy = (int2)r1.xy + asint(cb0[1].xy);
      r2.x = cmp(asuint(cb0[1].w) >= (uint)r1.y);
      if (r2.x != 0) {
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x0[0].xy = r2.xy;
        x0[2].xy = r2.zw;
      }
      r1.y = asint(cb0[1].y) + 1;
      r2.x = cmp(asuint(cb0[1].w) >= (uint)r1.y);
      if (r2.x != 0) {
        r1.zw = float2(0,0);
        r1.xyzw = t0.Load(r1.xyz).xyzw;
        x0[1].xy = r1.xy;
        x0[3].xy = r1.zw;
      }
    }
    r1.xy = x0[0].xy;
    r1.zw = x0[1].xy;
    r2.xy = x0[2].xy;
    r2.zw = x0[3].xy;
    r1.xy = min(float2(0,0), -r1.xy);
    r3.xy = -r1.xy;
    r1.xy = min(float2(0,0), -r2.xy);
    r3.zw = -r1.xy;
    r1.xy = min(float2(0,0), -r1.zw);
    r1.xy = -r1.xy;
    r2.xy = min(float2(0,0), -r2.zw);
    r1.zw = -r2.xy;
    r2.x = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r2.y = cmp(cb0[0].x < r2.x);
    r2.z = -cb0[0].x + r2.x;
    r2.z = cb0[0].z * r2.z + cb0[0].x;
    r2.z = min(cb0[0].y, r2.z);
    r2.x = r2.z / r2.x;
    r2.xzw = r3.xyz * r2.xxx;
    r4.xyz = r2.yyy ? r2.xzw : r3.xyz;
    r2.x = r0.w ? r2.y : 0;
    r4.w = r3.w;
    r2.xyzw = r2.xxxx ? r4.xyzw : r3.xyzw;
    r4.x = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r4.y = cmp(cb0[0].x < r4.x);
    r4.z = -cb0[0].x + r4.x;
    r4.z = cb0[0].z * r4.z + cb0[0].x;
    r4.z = min(cb0[0].y, r4.z);
    r4.x = r4.z / r4.x;
    r4.xzw = r4.xxx * r1.xyz;
    r5.xyz = r4.yyy ? r4.xzw : r1.xyz;
    r0.w = r0.w ? r4.y : 0;
    r5.w = r1.w;
    r4.xyzw = r0.wwww ? r5.xyzw : r1.xyzw;
    r2.xyzw = r0.zzzz ? r2.zwxy : r3.zwxy;
    r1.xyzw = r0.zzzz ? r4.zwxy : r1.zwxy;
  } else {
    if (r0.x != 0) {
      r3.xzw = float3(2,0,0);
      r3.y = vThreadGroupID.z;
      r3.xyzw = t0.Load(r3.xyz).xyzw;
      r4.xzw = float3(3,0,0);
      r4.y = vThreadGroupID.z;
      r5.xyzw = t0.Load(r4.xyz).xyzw;
      r4.xyzw = t0.Load(r4.wyw).xyzw;
      r6.xzw = float3(1,0,0);
      r6.y = vThreadGroupID.z;
      r6.xyzw = t0.Load(r6.xyz).xyzw;
      r1.xyzw = r6.zwxy + r5.wzyx;
      r2.xyzw = r4.zwxy + r3.wzyx;
    } else {
      r3.x = vThreadGroupID.z;
      r3.yzw = float3(2.80259693e-045,0,4.20389539e-045);
      r4.xyzw = t0.Load(r3.xyz).xyzw;
      r5.xyzw = t0.Load(r3.xwz).xyzw;
      r6.xyzw = t0.Load(r3.xzz).xyzw;
      r3.xzw = r3.xzz;
      r3.y = 1;
      r3.xyzw = t0.Load(r3.xyz).xyzw;
      r1.xyzw = r3.zwxy + r5.wzyx;
      r2.xyzw = r6.zwxy + r4.wzyx;
    }
  }
  r0.zw = float2(0.5,0.5) * r2.zw;
  r3.xy = float2(0.5,0.5) * r1.zw;
  r3.zw = float2(0.5,0.5) * r2.xy;
  r4.xy = float2(0.5,0.5) * r1.xy;
  r0.zw = r0.yy ? r2.zw : r0.zw;
  r1.zw = r0.yy ? r1.zw : r3.xy;
  r2.xy = r0.yy ? r2.xy : r3.zw;
  r1.xy = r0.yy ? r1.xy : r4.xy;
  r2.zw = r1.zw + r0.zw;
  r0.zw = -r1.zw + r0.zw;
  r3.xy = r2.wz + r0.wz;
  r4.xy = r2.zw + -r0.zw;
  r0.zw = r2.xy + r1.xy;
  r1.xy = r2.xy + -r1.xy;
  r3.zw = r1.yx + r0.wz;
  r1.zw = -r1.xy + r0.zw;
  if (r0.y != 0) {
    if (r0.x != 0) {
      r2.x = 3;
      r2.yzw = vThreadGroupID.zzz;
      r4.z = 0;
      r4.w = r1.w;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r4.yzwz
      r2.x = 0;
      r2.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xwww, r3.yxwz
      r5.xz = r3.yw;
      r5.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r5.xyzw
      r2.x = 1;
      r2.yzw = vThreadGroupID.zzz;
      r1.xyw = r4.xyw;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xwww, r1.xyzw
      r1.xyw = r4.xzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r1.xyzw
      r2.x = 2;
      r2.yzw = vThreadGroupID.zzz;
      r3.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r3.xyzw
    } else {
      r2.x = vThreadGroupID.z;
      r2.yzw = float3(0,0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xwww, r3.yxwz
      r5.x = vThreadGroupID.z;
      r5.yzw = float3(1.40129846e-045,1.40129846e-045,1.40129846e-045);
      r1.xy = r4.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.xwww, r1.xyzw
      r6.xz = r1.xz;
      r6.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.xyzw, r6.xyzw
      r5.x = vThreadGroupID.z;
      r5.yzw = float3(4.20389539e-045,4.20389539e-045,4.20389539e-045);
      r1.xz = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r5.xyzw, r1.yxwz
      r5.xz = r3.yw;
      r5.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r5.xyzw
      r2.x = vThreadGroupID.z;
      r2.yzw = float3(2.80259693e-045,2.80259693e-045,2.80259693e-045);
      r3.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r3.xyzw
    }
  } else {
    r0.yz = min(float2(0,0), -r3.yx);
    r2.xy = -r0.yz;
    r0.yz = min(float2(0,0), -r3.wz);
    r2.zw = -r0.yz;
    r0.yz = min(float2(0,0), -r4.xy);
    r3.xy = -r0.yz;
    r0.yz = min(float2(0,0), -r1.zw);
    r3.zw = -r0.yz;
    if (r0.x != 0) {
      r0.y = (int)vThreadGroupID.z + asint(cb0[2].y);
      r0.w = cmp(asuint(cb0[2].x) < asuint(cb0[2].z));
      if (r0.w != 0) {
        r0.z = cb0[2].x;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.zyyy, r2.xyzw
        r0.x = asint(cb0[2].x) + 1;
      } else {
        r0.x = cb0[2].x;
      }
      r0.z = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.z ? r0.w : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r3.xyzw
      }
    } else {
      r0.x = (int)vThreadGroupID.z + asint(cb0[2].x);
      r0.w = cmp(asuint(cb0[2].y) < asuint(cb0[2].w));
      if (r0.w != 0) {
        r0.y = cb0[2].y;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r2.xyzw
        r0.z = asint(cb0[2].y) + 1;
      } else {
        r0.z = cb0[2].y;
      }
      r0.y = cmp((uint)r0.z < asuint(cb0[2].w));
      r0.y = r0.y ? r0.w : 0;
      if (r0.y != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xzzz, r3.xyzw
      }
    }
  }
  return;
}