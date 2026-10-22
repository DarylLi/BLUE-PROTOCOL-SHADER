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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[8];
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
    r5.xzw = float3(2,0,0);
    r5.y = vThreadGroupID.z;
    r5.xyzw = t1.Load(r5.xyz).zwxy;
    r6.xzw = float3(3,0,0);
    r6.y = vThreadGroupID.z;
    r6.xyzw = t1.Load(r6.xyz).zwxy;
  } else {
    r7.x = vThreadGroupID.z;
    r7.yzw = float3(0,1.40129846e-045,2.80259693e-045);
    r3.xyzw = t1.Load(r7.xyy).zwxy;
    r4.xyzw = t1.Load(r7.xzy).zwxy;
    r5.xyzw = t1.Load(r7.xwy).zwxy;
    r7.xzw = r7.xyy;
    r7.y = 3;
    r6.xyzw = t1.Load(r7.xyz).zwxy;
  }
  x0[0].xy = float2(0,0);
  x0[1].xy = float2(0,0);
  x0[2].xy = float2(0,0);
  x0[3].xy = float2(0,0);
  x0[4].xy = float2(0,0);
  x0[5].xy = float2(0,0);
  x0[6].xy = float2(0,0);
  x0[7].xy = float2(0,0);
  if (r0.x != 0) {
    r7.x = cb0[1].z;
    r7.y = vThreadGroupID.z;
    r1.y = cmp(asuint(cb0[2].x) >= (uint)r7.x);
    if (r1.y != 0) {
      r7.zw = float2(0,0);
      r8.xyzw = t0.Load(r7.xyz).xyzw;
      x0[0].xy = r8.xy;
      x0[4].xy = r8.zw;
    }
    r1.yzw = (int3)r7.xxx + int3(1,2,3);
    r8.xyz = cmp(asuint(cb0[2].xxx) >= (uint3)r1.yzw);
    if (r8.x != 0) {
      r7.x = r1.y;
      r7.zw = float2(0,0);
      r9.xyzw = t0.Load(r7.xyz).xyzw;
      x0[1].xy = r9.xy;
      x0[5].xy = r9.zw;
    }
    if (r8.y != 0) {
      r7.x = r1.z;
      r7.zw = float2(0,0);
      r9.xyzw = t0.Load(r7.xyz).xyzw;
      x0[2].xy = r9.xy;
      x0[6].xy = r9.zw;
    }
    if (r8.z != 0) {
      r7.x = r1.w;
      r7.zw = float2(0,0);
      r7.xyzw = t0.Load(r7.xyz).xyzw;
      x0[3].xy = r7.xy;
      x0[7].xy = r7.zw;
    }
  } else {
    r7.x = vThreadGroupID.z;
    r7.y = cb0[1].w;
    r1.y = cmp(asuint(cb0[2].y) >= (uint)r7.y);
    if (r1.y != 0) {
      r7.zw = float2(0,0);
      r8.xyzw = t0.Load(r7.xyz).xyzw;
      x0[0].xy = r8.xy;
      x0[4].xy = r8.zw;
    }
    r8.xyz = (int3)r7.yyy + int3(1,3,2);
    r1.yzw = cmp(asuint(cb0[2].yyy) >= (uint3)r8.xzy);
    if (r1.y != 0) {
      r7.y = r8.x;
      r7.zw = float2(0,0);
      r9.xyzw = t0.Load(r7.xyz).xyzw;
      x0[1].xy = r9.xy;
      x0[5].xy = r9.zw;
    }
    if (r1.z != 0) {
      r7.y = r8.z;
      r7.zw = float2(0,0);
      r9.xyzw = t0.Load(r7.xyz).xyzw;
      x0[2].xy = r9.xy;
      x0[6].xy = r9.zw;
    }
    if (r1.w != 0) {
      r8.x = r7.x;
      r8.zw = float2(0,0);
      r7.xyzw = t0.Load(r8.xyz).xyzw;
      x0[3].xy = r7.xy;
      x0[7].xy = r7.zw;
    }
  }
  r1.yz = x0[0].xy;
  r7.xy = x0[1].xy;
  r7.zw = x0[2].xy;
  r8.xy = x0[3].xy;
  r8.zw = x0[4].xy;
  r9.xy = x0[5].xy;
  r9.zw = x0[6].xy;
  r10.xy = x0[7].xy;
  if (r0.y == 0) {
    r1.yz = float2(0.25,0.25) * r1.yz;
    r7.xyzw = float4(0.25,0.25,0.25,0.25) * r7.xyzw;
    r8.xyzw = float4(0.25,0.25,0.25,0.25) * r8.xyzw;
    r9.xyzw = float4(0.25,0.25,0.25,0.25) * r9.xyzw;
    r10.xy = float2(0.25,0.25) * r10.xy;
  }
  r10.zw = r1.yz + r7.zw;
  r11.xy = r7.xy + r8.xy;
  r1.yz = r1.yz + -r7.zw;
  r7.xy = r7.xy + -r8.xy;
  r7.zw = -r7.yx;
  r7.xy = r0.yy ? r7.zx : r7.yw;
  r7.zw = r11.xy + r10.zw;
  r8.xy = r7.xy + r1.yz;
  r1.yz = -r7.xy + r1.yz;
  r7.xy = -r11.xy + r10.zw;
  r10.zw = r7.zw + r7.xy;
  r11.xy = r8.xy + r1.yz;
  r7.xy = r7.zw + -r7.xy;
  r12.xy = r8.xy + -r1.yz;
  r12.zw = -r12.yx;
  r1.yz = r0.yy ? r12.zx : r12.yw;
  r7.zw = r11.xy + r10.zw;
  r8.xy = r7.xy + r1.yz;
  r1.yz = r7.xy + -r1.yz;
  r7.xy = -r11.xy + r10.zw;
  r10.zw = r8.zw + r9.zw;
  r11.xy = r9.xy + r10.xy;
  r8.zw = r8.zw + -r9.zw;
  r9.xy = r9.xy + -r10.xy;
  r9.zw = -r9.yx;
  r9.xy = r0.yy ? r9.zx : r9.yw;
  r9.zw = r11.xy + r10.zw;
  r10.xy = r9.xy + r8.zw;
  r8.zw = -r9.xy + r8.zw;
  r9.xy = -r11.xy + r10.zw;
  r10.zw = r9.zw + r9.xy;
  r11.xy = r10.xy + r8.zw;
  r9.xy = r9.zw + -r9.xy;
  r12.xy = r10.xy + -r8.zw;
  r12.zw = -r12.yx;
  r8.zw = r0.yy ? r12.zx : r12.yw;
  r9.zw = r11.xy + r10.zw;
  r10.xy = r9.xy + r8.zw;
  r8.zw = r9.xy + -r8.zw;
  r9.xy = -r11.xy + r10.zw;
  r1.w = r7.w * r3.w;
  r11.x = r7.z * r3.z + -r1.w;
  r11.y = dot(r7.wz, r3.zw);
  r1.w = r8.y * r4.w;
  r12.x = r8.x * r4.z + -r1.w;
  r12.y = dot(r8.yx, r4.zw);
  r1.w = r7.y * r5.w;
  r8.x = r7.x * r5.z + -r1.w;
  r8.y = dot(r7.yx, r5.zw);
  r1.w = r1.z * r6.w;
  r7.x = r1.y * r6.z + -r1.w;
  r7.y = dot(r1.zy, r6.zw);
  r1.y = ~(int)r1.x;
  r0.w = (int)r0.w | (int)r1.y;
  r1.y = r9.w * r3.y;
  r13.x = r9.z * r3.x + -r1.y;
  r13.y = dot(r9.wz, r3.xy);
  r1.yz = r0.ww ? r13.xy : r9.zw;
  r1.w = r10.y * r4.y;
  r3.x = r10.x * r4.x + -r1.w;
  r3.y = dot(r10.yx, r4.xy);
  r3.xy = r0.ww ? r3.xy : r10.xy;
  r1.w = r9.y * r5.y;
  r4.x = r9.x * r5.x + -r1.w;
  r4.y = dot(r9.yx, r5.xy);
  r3.zw = r0.ww ? r4.xy : r9.xy;
  r1.w = r8.w * r6.y;
  r4.x = r8.z * r6.x + -r1.w;
  r4.y = dot(r8.wz, r6.xy);
  r4.xy = r0.ww ? r4.xy : r8.zw;
  if (r0.x == 0) {
    r4.zw = t1.Load(float4(0,0,0,0)).xz;
    r2.y = 0;
    r2.yw = t1.Load(r2.xyy).xz;
  } else {
    r4.zw = t1.Load(float4(0,0,0,0)).xz;
    r2.z = 0;
    r2.yw = t1.Load(r2.zxz).xz;
  }
  r0.w = max(r4.w, r2.y);
  r0.w = max(r4.z, r0.w);
  r0.z = r0.z ? r2.w : 1;
  r2.xy = r11.xy / r0.ww;
  r2.zw = r12.xy / r0.ww;
  r4.zw = r8.xy / r0.ww;
  r5.xy = r7.xy / r0.ww;
  r0.z = r1.x ? r0.z : r0.w;
  r1.xy = r1.yz / r0.zz;
  r1.zw = r3.xy / r0.zz;
  r3.xy = r3.zw / r0.zz;
  r0.zw = r4.xy / r0.zz;
  if (r0.y != 0) {
    r2.xyzw = float4(0.25,0.25,0.25,0.25) * r2.xyzw;
    r4.zw = float2(0.25,0.25) * r4.zw;
    r5.xy = float2(0.25,0.25) * r5.xy;
    r1.xyzw = float4(0.25,0.25,0.25,0.25) * r1.xyzw;
    r3.xy = float2(0.25,0.25) * r3.xy;
    r0.zw = float2(0.25,0.25) * r0.zw;
  }
  r3.zw = r2.xy + r4.zw;
  r4.xy = r2.zw + r5.xy;
  r2.xy = r2.xy + -r4.zw;
  r5.xy = r2.zw + -r5.xy;
  r5.zw = -r5.xy;
  r2.zw = r0.yy ? r5.yz : r5.wx;
  r4.zw = r4.xy + r3.zw;
  r5.xy = r2.xy + r2.zw;
  r2.xy = r2.xy + -r2.zw;
  r2.zw = -r4.xy + r3.zw;
  r3.zw = r4.zw + r2.zw;
  r4.xy = r5.xy + r2.xy;
  r2.zw = r4.zw + -r2.zw;
  r5.xy = r5.xy + -r2.xy;
  r5.zw = -r5.xy;
  r2.xy = r0.yy ? r5.yz : r5.wx;
  r5.xy = r4.xy + r3.zw;
  r6.xy = r2.zw + r2.xy;
  r2.xy = r2.zw + -r2.xy;
  r4.xy = -r4.xy + r3.zw;
  r3.zw = r1.xy + r3.xy;
  r7.xy = r1.zw + r0.zw;
  r1.xy = r1.xy + -r3.xy;
  r8.xy = r1.zw + -r0.zw;
  r8.zw = -r8.xy;
  r0.zw = r0.yy ? r8.yz : r8.wx;
  r1.zw = r7.xy + r3.zw;
  r3.xy = r1.xy + r0.zw;
  r0.zw = r1.xy + -r0.zw;
  r1.xy = -r7.xy + r3.zw;
  r3.zw = r1.zw + r1.xy;
  r7.xy = r3.xy + r0.zw;
  r1.xy = r1.zw + -r1.xy;
  r8.xy = r3.xy + -r0.zw;
  r8.zw = -r8.xy;
  r0.yz = r0.yy ? r8.yz : r8.wx;
  r5.zw = r7.xy + r3.zw;
  r6.zw = r1.xy + r0.yz;
  r2.zw = r1.xy + -r0.yz;
  r4.zw = -r7.xy + r3.zw;
  if (r0.x != 0) {
    if (cb0[1].x != 0) {
      r0.x = 0;
      r0.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r5.xyzw
      r0.x = 1;
    } else {
      r0.x = 0;
    }
    r0.y = cmp((uint)r0.x < asuint(cb0[1].x));
    if (r0.y != 0) {
      r1.x = 1;
      r1.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r6.xyzw
      r0.x = 2;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[1].x));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r1.x = 2;
      r1.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r4.xyzw
      r0.x = 3;
    }
    r0.x = cmp((uint)r0.x < asuint(cb0[1].x));
    r0.x = r0.x ? r0.y : 0;
    if (r0.x != 0) {
      r0.x = 3;
      r0.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r2.xyzw
    }
  } else {
    if (cb0[1].y != 0) {
      r0.x = vThreadGroupID.z;
      r0.yzw = float3(0,0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r5.xyzw
      r0.x = 1;
    } else {
      r0.x = 0;
    }
    r0.y = cmp((uint)r0.x < asuint(cb0[1].y));
    if (r0.y != 0) {
      r1.x = vThreadGroupID.z;
      r1.yzw = float3(1.40129846e-045,1.40129846e-045,1.40129846e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r6.xyzw
      r0.x = 2;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[1].y));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r1.x = vThreadGroupID.z;
      r1.yzw = float3(2.80259693e-045,2.80259693e-045,2.80259693e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r4.xyzw
      r0.x = 3;
    }
    r0.x = cmp((uint)r0.x < asuint(cb0[1].y));
    r0.x = r0.x ? r0.y : 0;
    if (r0.x != 0) {
      r0.x = vThreadGroupID.z;
      r0.yzw = float3(4.20389539e-045,4.20389539e-045,4.20389539e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r2.xyzw
    }
  }
  return;
}