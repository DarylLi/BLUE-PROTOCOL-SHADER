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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[8];
  float4 x1[8];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1, 1, 1
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
      r1.x = 0;
      r1.y = vThreadGroupID.z;
      r1.xy = (int2)r1.xy + asint(cb0[1].xy);
      r0.w = cmp(asuint(cb0[1].z) >= (uint)r1.x);
      if (r0.w != 0) {
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x1[0].xy = r2.xy;
        x1[4].xy = r2.zw;
      }
      r2.xyz = asint(cb0[1].xxx) + int3(1,2,3);
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
      r1.y = 0;
      r1.xy = (int2)r1.xy + asint(cb0[1].xy);
      r0.w = cmp(asuint(cb0[1].w) >= (uint)r1.y);
      if (r0.w != 0) {
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x1[0].xy = r2.xy;
        x1[4].xy = r2.zw;
      }
      r2.xyz = asint(cb0[1].yyy) + int3(1,3,2);
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
      r1.xzw = float3(4,0,0);
      r1.y = vThreadGroupID.z;
      r1.xyzw = t0.Load(r1.xyz).xyzw;
      r2.xzw = float3(5,0,0);
      r2.y = vThreadGroupID.z;
      r3.xyzw = t0.Load(r2.xyz).xyzw;
      r2.xyzw = t0.Load(r2.wyw).xyzw;
      r4.xzw = float3(1,0,0);
      r4.y = vThreadGroupID.z;
      r4.xyzw = t0.Load(r4.xyz).zxyw;
      r5.xzw = float3(2,0,0);
      r5.y = vThreadGroupID.z;
      r5.xyzw = t0.Load(r5.xyz).xyzw;
      r3.xyzw = r5.zwxy + r3.wzyx;
      r5.xzw = float3(3,0,0);
      r5.y = vThreadGroupID.z;
      r5.xyzw = t0.Load(r5.xyz).zwxy;
      r1.xyzw = r2.zwxy + r1.wzyx;
    } else {
      r2.x = vThreadGroupID.z;
      r2.yzw = float3(5.60519386e-045,0,7.00649232e-045);
      r6.xyzw = t0.Load(r2.xyz).xyzw;
      r7.xyzw = t0.Load(r2.xwz).xyzw;
      r8.xyzw = t0.Load(r2.xzz).xyzw;
      r2.yw = float2(1.40129846e-045,2.80259693e-045);
      r4.xyzw = t0.Load(r2.xyz).zxyw;
      r9.xyzw = t0.Load(r2.xwz).xyzw;
      r3.xyzw = r9.zwxy + r7.wzyx;
      r2.xzw = r2.xzz;
      r2.y = 3;
      r5.xyzw = t0.Load(r2.xyz).zwxy;
      r1.xyzw = r8.zwxy + r6.wzyx;
    }
    r6.y = r5.z + -r4.z;
    r2.xy = r4.yz + r5.wz;
    r0.z = r5.w + -r4.y;
    r6.x = -r0.z;
    r8.y = r5.x + -r4.w;
    r7.xy = r4.xw + r5.yx;
    r0.z = r5.y + -r4.x;
    r8.x = -r0.z;
    x0[0].xy = r1.zw;
    x0[1].xy = r2.xy;
    x0[2].xy = r3.zw;
    x0[3].xy = r6.xy;
    x0[4].xy = r1.xy;
    x0[5].xy = r7.xy;
    x0[6].xy = r3.xy;
    x0[7].xy = r8.xy;
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
  r6.xy = r5.yx + r4.wz;
  r1.zw = r1.xy + r0.zw;
  r0.zw = r1.xy + -r0.zw;
  r5.xy = -r5.xy + r4.zw;
  r1.xy = r2.zw + r3.zw;
  r2.xy = r3.xy + r4.xy;
  r2.zw = r2.zw + -r3.zw;
  r3.xy = r3.xy + -r4.xy;
  r3.zw = -r3.yx;
  r3.xy = r0.yy ? r3.zx : r3.yw;
  r3.zw = r2.xy + r1.xy;
  r4.xy = r3.xy + r2.zw;
  r2.zw = -r3.xy + r2.zw;
  r1.xy = -r2.xy + r1.xy;
  r2.xy = r3.zw + r1.xy;
  r3.xy = r4.xy + r2.zw;
  r1.xy = r3.zw + -r1.xy;
  r4.xy = r4.xy + -r2.zw;
  r4.zw = -r4.yx;
  r2.zw = r0.yy ? r4.zx : r4.yw;
  r6.zw = r3.yx + r2.yx;
  r3.zw = r2.zw + r1.xy;
  r1.xy = -r2.zw + r1.xy;
  r2.zw = -r3.xy + r2.xy;
  if (r0.y != 0) {
    r0.y = r0.z + -r1.z;
    r4.z = r1.w + -r0.w;
    r4.xy = r1.zw + r0.zw;
    r7.xy = float2(0.5,0.5) * r4.xz;
    r3.x = -0.5 * r4.y;
    r4.x = -r3.x;
    r4.y = -0.5 * r0.y;
    r0.y = r1.x + -r3.z;
    r8.z = r3.w + -r1.y;
    r8.xy = r3.zw + r1.xy;
    r7.zw = float2(0.5,0.5) * r8.xz;
    r3.x = -0.5 * r8.y;
    r4.z = -r3.x;
    r4.w = -0.5 * r0.y;
    if (r0.x != 0) {
      r8.x = 5;
      r8.yzw = vThreadGroupID.zzz;
      r5.z = 0;
      r5.w = r2.w;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.xyzw, r5.yzwz
      r8.x = 0;
      r8.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.xwww, r6.yxwz
      r9.xz = r6.yw;
      r9.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.xyzw, r9.xyzw
      r8.x = 1;
      r8.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.xyzw, r7.xyzw
      r8.x = 2;
      r8.yzw = vThreadGroupID.zzz;
      r2.xyw = r5.xyw;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.xwww, r2.xyzw
      r2.xyw = r5.xzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.xyzw, r2.xyzw
      r8.x = 3;
      r8.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.xyzw, r4.xyzw
      r8.x = 4;
      r8.yzw = vThreadGroupID.zzz;
      r6.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.xyzw, r6.xyzw
    } else {
      r8.x = vThreadGroupID.z;
      r8.yzw = float3(0,0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.xwww, r6.yxwz
      r9.x = vThreadGroupID.z;
      r9.yzw = float3(1.40129846e-045,1.40129846e-045,1.40129846e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r9.xyzw, r7.xyzw
      r7.x = vThreadGroupID.z;
      r7.yzw = float3(2.80259693e-045,2.80259693e-045,2.80259693e-045);
      r2.xy = r5.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r7.xwww, r2.xyzw
      r9.xz = r2.xz;
      r9.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r7.xyzw, r9.xyzw
      r7.x = vThreadGroupID.z;
      r7.yzw = float3(7.00649232e-045,7.00649232e-045,7.00649232e-045);
      r2.xz = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r7.xyzw, r2.yxwz
      r7.x = vThreadGroupID.z;
      r7.yzw = float3(4.20389539e-045,4.20389539e-045,4.20389539e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r7.xyzw, r4.xyzw
      r4.xz = r6.yw;
      r4.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.xyzw, r4.xyzw
      r4.x = vThreadGroupID.z;
      r4.yzw = float3(5.60519386e-045,5.60519386e-045,5.60519386e-045);
      r6.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.xyzw, r6.xyzw
    }
  } else {
    r2.xy = min(float2(0,0), -r6.yx);
    r4.xy = -r2.xy;
    r2.xy = min(float2(0,0), -r6.wz);
    r4.zw = -r2.xy;
    r1.zw = min(float2(0,0), -r1.zw);
    r6.xy = -r1.zw;
    r1.zw = min(float2(0,0), -r3.zw);
    r6.zw = -r1.zw;
    r1.zw = min(float2(0,0), -r5.xy);
    r3.xy = -r1.zw;
    r1.zw = min(float2(0,0), -r2.zw);
    r3.zw = -r1.zw;
    r0.yz = min(float2(0,0), -r0.zw);
    r2.xy = -r0.yz;
    r0.yz = min(float2(0,0), -r1.xy);
    r2.zw = -r0.yz;
    if (r0.x != 0) {
      r0.y = (int)vThreadGroupID.z + asint(cb0[2].y);
      r1.x = cmp(asuint(cb0[2].x) < asuint(cb0[2].z));
      if (r1.x != 0) {
        r0.w = cb0[2].x;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.wyyy, r4.xyzw
        r0.z = asint(cb0[2].x) + 1;
      } else {
        r0.z = cb0[2].x;
      }
      r0.w = cmp((uint)r0.z < asuint(cb0[2].z));
      r0.w = r0.w ? r1.x : 0;
      if (r0.w != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.zyyy, r6.xyzw
        r0.x = (int)r0.z + 1;
      } else {
        r0.x = r0.z;
      }
      r0.z = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.z ? r0.w : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r3.xyzw
        r0.x = (int)r0.x + 1;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r2.xyzw
      }
    } else {
      r0.y = (int)vThreadGroupID.z + asint(cb0[2].x);
      r1.x = cmp(asuint(cb0[2].y) < asuint(cb0[2].w));
      if (r1.x != 0) {
        r0.x = cb0[2].y;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r4.xyzw
        r0.z = asint(cb0[2].y) + 1;
      } else {
        r0.z = cb0[2].y;
      }
      r1.y = cmp((uint)r0.z < asuint(cb0[2].w));
      r1.x = r1.y ? r1.x : 0;
      if (r1.x != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yzzz, r6.xyzw
        r0.w = (int)r0.z + 1;
      } else {
        r0.w = r0.z;
      }
      r0.z = cmp((uint)r0.w < asuint(cb0[2].w));
      r0.z = r0.z ? r1.x : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.ywww, r3.xyzw
        r0.x = (int)r0.w + 1;
      } else {
        r0.x = r0.w;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].w));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r2.xyzw
      }
    }
  }
  return;
}