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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[16];
  float4 x1[16];
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
    x1[8].xy = float2(0,0);
    x1[9].xy = float2(0,0);
    x1[10].xy = float2(0,0);
    x1[11].xy = float2(0,0);
    x1[12].xy = float2(0,0);
    x1[13].xy = float2(0,0);
    x1[14].xy = float2(0,0);
    x1[15].xy = float2(0,0);
    if (r0.x != 0) {
      r1.x = 0;
      r1.y = vThreadGroupID.z;
      r1.xy = (int2)r1.xy + asint(cb0[1].xy);
      r0.w = cmp(asuint(cb0[1].z) >= (uint)r1.x);
      if (r0.w != 0) {
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x1[0].xy = r2.xy;
        x1[8].xy = r2.zw;
      }
      r2.xyzw = asint(cb0[1].xxxx) + int4(1,2,3,4);
      r3.xyzw = cmp(asuint(cb0[1].zzzz) >= (uint4)r2.xyzw);
      if (r3.x != 0) {
        r1.x = r2.x;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[1].xy = r4.xy;
        x1[9].xy = r4.zw;
      }
      if (r3.y != 0) {
        r1.x = r2.y;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[2].xy = r4.xy;
        x1[10].xy = r4.zw;
      }
      if (r3.z != 0) {
        r1.x = r2.z;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[3].xy = r4.xy;
        x1[11].xy = r4.zw;
      }
      if (r3.w != 0) {
        r1.x = r2.w;
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x1[4].xy = r2.xy;
        x1[12].xy = r2.zw;
      }
      r2.xyz = asint(cb0[1].xxx) + int3(5,6,7);
      r3.xyz = cmp(asuint(cb0[1].zzz) >= (uint3)r2.xyz);
      if (r3.x != 0) {
        r1.x = r2.x;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[5].xy = r4.xy;
        x1[13].xy = r4.zw;
      }
      if (r3.y != 0) {
        r1.x = r2.y;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[6].xy = r4.xy;
        x1[14].xy = r4.zw;
      }
      if (r3.z != 0) {
        r1.x = r2.z;
        r1.zw = float2(0,0);
        r1.xyzw = t0.Load(r1.xyz).xyzw;
        x1[7].xy = r1.xy;
        x1[15].xy = r1.zw;
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
        x1[8].xy = r2.zw;
      }
      r2.xyzw = asint(cb0[1].yyyy) + int4(1,4,2,3);
      r3.xyzw = cmp(asuint(cb0[1].wwww) >= (uint4)r2.xzwy);
      if (r3.x != 0) {
        r1.y = r2.x;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[1].xy = r4.xy;
        x1[9].xy = r4.zw;
      }
      if (r3.y != 0) {
        r1.y = r2.z;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[2].xy = r4.xy;
        x1[10].xy = r4.zw;
      }
      if (r3.z != 0) {
        r1.y = r2.w;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[3].xy = r4.xy;
        x1[11].xy = r4.zw;
      }
      if (r3.w != 0) {
        r2.x = r1.x;
        r2.zw = float2(0,0);
        r2.xyzw = t0.Load(r2.xyz).xyzw;
        x1[4].xy = r2.xy;
        x1[12].xy = r2.zw;
      }
      r2.xyz = asint(cb0[1].yyy) + int3(5,7,6);
      r3.xyz = cmp(asuint(cb0[1].www) >= (uint3)r2.xzy);
      if (r3.x != 0) {
        r1.y = r2.x;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[5].xy = r4.xy;
        x1[13].xy = r4.zw;
      }
      if (r3.y != 0) {
        r1.y = r2.z;
        r1.zw = float2(0,0);
        r4.xyzw = t0.Load(r1.xyz).xyzw;
        x1[6].xy = r4.xy;
        x1[14].xy = r4.zw;
      }
      if (r3.z != 0) {
        r2.x = r1.x;
        r2.zw = float2(0,0);
        r1.xyzw = t0.Load(r2.xyz).xyzw;
        x1[7].xy = r1.xy;
        x1[15].xy = r1.zw;
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
    r5.xy = x1[8].xy;
    r5.zw = x1[9].xy;
    r6.xy = x1[10].xy;
    r6.zw = x1[11].xy;
    r7.xy = x1[12].xy;
    r7.zw = x1[13].xy;
    r8.xy = x1[14].xy;
    r8.zw = x1[15].xy;
    r1.xy = min(float2(0,0), -r1.xy);
    r9.xy = -r1.xy;
    r1.xy = min(float2(0,0), -r5.xy);
    r9.zw = -r1.xy;
    r1.xy = min(float2(0,0), -r1.zw);
    r1.xy = -r1.xy;
    r5.xy = min(float2(0,0), -r5.zw);
    r1.zw = -r5.xy;
    r2.xy = min(float2(0,0), -r2.xy);
    r5.xy = -r2.xy;
    r2.xy = min(float2(0,0), -r6.xy);
    r5.zw = -r2.xy;
    r2.xy = min(float2(0,0), -r2.zw);
    r2.xy = -r2.xy;
    r6.xy = min(float2(0,0), -r6.zw);
    r2.zw = -r6.xy;
    r3.xy = min(float2(0,0), -r3.xy);
    r6.xy = -r3.xy;
    r3.xy = min(float2(0,0), -r7.xy);
    r6.zw = -r3.xy;
    r3.xy = min(float2(0,0), -r3.zw);
    r3.xy = -r3.xy;
    r7.xy = min(float2(0,0), -r7.zw);
    r3.zw = -r7.xy;
    r4.xy = min(float2(0,0), -r4.xy);
    r7.xy = -r4.xy;
    r4.xy = min(float2(0,0), -r8.xy);
    r7.zw = -r4.xy;
    r4.xy = min(float2(0,0), -r4.zw);
    r4.xy = -r4.xy;
    r8.xy = min(float2(0,0), -r8.zw);
    r4.zw = -r8.xy;
    x0[0].xy = r9.xy;
    x0[1].xy = r1.xy;
    x0[2].xy = r5.xy;
    x0[3].xy = r2.xy;
    x0[4].xy = r6.xy;
    x0[5].xy = r3.xy;
    x0[6].xy = r7.xy;
    x0[7].xy = r4.xy;
    x0[8].xy = r9.zw;
    x0[9].xy = r1.zw;
    x0[10].xy = r5.zw;
    x0[11].xy = r2.zw;
    x0[12].xy = r6.zw;
    x0[13].xy = r3.zw;
    x0[14].xy = r7.zw;
    x0[15].xy = r4.zw;
    if (r0.z != 0) {
      r0.z = dot(r9.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r0.w = cmp(cb0[0].x < r0.z);
      r8.x = -cb0[0].x + r0.z;
      r8.x = cb0[0].z * r8.x + cb0[0].x;
      r8.x = min(cb0[0].y, r8.x);
      r0.z = r8.x / r0.z;
      r8.xyz = r9.xyz * r0.zzz;
      r8.xzw = r0.www ? r8.zxy : r9.zxy;
      r8.y = r9.w;
      r0.zw = r0.ww ? r8.xy : r9.zw;
      r8.x = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r8.y = cmp(cb0[0].x < r8.x);
      r9.x = -cb0[0].x + r8.x;
      r9.x = cb0[0].z * r9.x + cb0[0].x;
      r9.x = min(cb0[0].y, r9.x);
      r8.x = r9.x / r8.x;
      r9.xyz = r8.xxx * r1.xyz;
      r9.xzw = r8.yyy ? r9.zxy : r1.zxy;
      r9.y = r1.w;
      r1.xy = r8.yy ? r9.xy : r1.zw;
      r1.z = dot(r5.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r1.w = cmp(cb0[0].x < r1.z);
      r8.x = -cb0[0].x + r1.z;
      r8.x = cb0[0].z * r8.x + cb0[0].x;
      r8.x = min(cb0[0].y, r8.x);
      r1.z = r8.x / r1.z;
      r10.xyz = r5.xyz * r1.zzz;
      r10.xzw = r1.www ? r10.zxy : r5.zxy;
      r10.y = r5.w;
      r1.zw = r1.ww ? r10.xy : r5.zw;
      r5.x = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r5.y = cmp(cb0[0].x < r5.x);
      r5.z = -cb0[0].x + r5.x;
      r5.z = cb0[0].z * r5.z + cb0[0].x;
      r5.z = min(cb0[0].y, r5.z);
      r5.x = r5.z / r5.x;
      r5.xzw = r5.xxx * r2.xyz;
      r11.xzw = r5.yyy ? r5.wxz : r2.zxy;
      r11.y = r2.w;
      r2.xy = r5.yy ? r11.xy : r2.zw;
      r2.z = dot(r6.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r2.w = cmp(cb0[0].x < r2.z);
      r5.x = -cb0[0].x + r2.z;
      r5.x = cb0[0].z * r5.x + cb0[0].x;
      r5.x = min(cb0[0].y, r5.x);
      r2.z = r5.x / r2.z;
      r5.xyz = r6.xyz * r2.zzz;
      r5.xzw = r2.www ? r5.zxy : r6.zxy;
      r5.y = r6.w;
      r2.zw = r2.ww ? r5.xy : r6.zw;
      r5.x = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r5.y = cmp(cb0[0].x < r5.x);
      r6.x = -cb0[0].x + r5.x;
      r6.x = cb0[0].z * r6.x + cb0[0].x;
      r6.x = min(cb0[0].y, r6.x);
      r5.x = r6.x / r5.x;
      r6.xyz = r5.xxx * r3.xyz;
      r6.xzw = r5.yyy ? r6.zxy : r3.zxy;
      r6.y = r3.w;
      r3.xy = r5.yy ? r6.xy : r3.zw;
      r3.z = dot(r7.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r3.w = cmp(cb0[0].x < r3.z);
      r5.x = -cb0[0].x + r3.z;
      r5.x = cb0[0].z * r5.x + cb0[0].x;
      r5.x = min(cb0[0].y, r5.x);
      r3.z = r5.x / r3.z;
      r12.xyz = r7.xyz * r3.zzz;
      r12.xzw = r3.www ? r12.zxy : r7.zxy;
      r12.y = r7.w;
      r3.zw = r3.ww ? r12.xy : r7.zw;
      r5.x = dot(r4.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r5.y = cmp(cb0[0].x < r5.x);
      r6.x = -cb0[0].x + r5.x;
      r6.x = cb0[0].z * r6.x + cb0[0].x;
      r6.x = min(cb0[0].y, r6.x);
      r5.x = r6.x / r5.x;
      r7.xyz = r5.xxx * r4.xyz;
      r7.xzw = r5.yyy ? r7.zxy : r4.zxy;
      r7.y = r4.w;
      r4.xy = r5.yy ? r7.xy : r4.zw;
      x0[0].xy = r8.zw;
      x0[1].xy = r9.zw;
      x0[2].xy = r10.zw;
      x0[3].xy = r11.zw;
      x0[4].xy = r5.zw;
      x0[5].xy = r6.zw;
      x0[6].xy = r12.zw;
      x0[7].xy = r7.zw;
      x0[8].xy = r0.zw;
      x0[9].xy = r1.xy;
      x0[10].xy = r1.zw;
      x0[11].xy = r2.xy;
      x0[12].xy = r2.zw;
      x0[13].xy = r3.xy;
      x0[14].xy = r3.zw;
      x0[15].xy = r4.xy;
    }
  } else {
    if (r0.x != 0) {
      r1.xzw = float3(8,0,0);
      r1.y = vThreadGroupID.z;
      r1.xyzw = t0.Load(r1.xyz).xyzw;
      r2.xzw = float3(9,0,0);
      r2.y = vThreadGroupID.z;
      r3.xyzw = t0.Load(r2.xyz).xyzw;
      r2.xyzw = t0.Load(r2.wyw).xyzw;
      r4.xzw = float3(1,0,0);
      r4.y = vThreadGroupID.z;
      r4.xyzw = t0.Load(r4.xyz).zxyw;
      r5.xzw = float3(2,0,0);
      r5.y = vThreadGroupID.z;
      r5.xyzw = t0.Load(r5.xyz).zxyw;
      r6.xzw = float3(3,0,0);
      r6.y = vThreadGroupID.z;
      r6.xyzw = t0.Load(r6.xyz).zxyw;
      r7.xzw = float3(4,0,0);
      r7.y = vThreadGroupID.z;
      r7.xyzw = t0.Load(r7.xyz).xyzw;
      r3.xyzw = r7.zwxy + r3.wzyx;
      r7.xzw = float3(5,0,0);
      r7.y = vThreadGroupID.z;
      r7.xyzw = t0.Load(r7.xyz).zwxy;
      r8.xzw = float3(6,0,0);
      r8.y = vThreadGroupID.z;
      r8.xyzw = t0.Load(r8.xyz).zwxy;
      r9.xzw = float3(7,0,0);
      r9.y = vThreadGroupID.z;
      r9.xyzw = t0.Load(r9.xyz).zwxy;
      r1.xyzw = r2.zwxy + r1.wzyx;
    } else {
      r2.x = vThreadGroupID.z;
      r2.yzw = float3(1.12103877e-044,0,1.26116862e-044);
      r10.xyzw = t0.Load(r2.xyz).xyzw;
      r11.xyzw = t0.Load(r2.xwz).xyzw;
      r12.xyzw = t0.Load(r2.xzz).xyzw;
      r2.yw = float2(1.40129846e-045,2.80259693e-045);
      r4.xyzw = t0.Load(r2.xyz).zxyw;
      r5.xyzw = t0.Load(r2.xwz).zxyw;
      r2.yw = float2(4.20389539e-045,5.60519386e-045);
      r6.xyzw = t0.Load(r2.xyz).zxyw;
      r13.xyzw = t0.Load(r2.xwz).xyzw;
      r3.xyzw = r13.zwxy + r11.wzyx;
      r2.yw = float2(7.00649232e-045,8.40779079e-045);
      r7.xyzw = t0.Load(r2.xyz).zwxy;
      r8.xyzw = t0.Load(r2.xwz).zwxy;
      r2.xzw = r2.xzz;
      r2.y = 7;
      r9.xyzw = t0.Load(r2.xyz).zwxy;
      r1.xyzw = r12.zwxy + r10.wzyx;
    }
    r12.y = r7.z + -r6.z;
    r13.y = r8.z + -r5.z;
    r14.y = r9.z + -r4.z;
    r2.xy = r4.yz + r9.wz;
    r10.xy = r5.yz + r8.wz;
    r11.xy = r6.yz + r7.wz;
    r0.z = r7.w + -r6.y;
    r0.w = r8.w + -r5.y;
    r2.z = r9.w + -r4.y;
    r12.x = -r0.z;
    r13.x = -r0.w;
    r14.x = -r2.z;
    r18.y = r7.x + -r6.w;
    r19.y = r8.x + -r5.w;
    r20.y = r9.x + -r4.w;
    r15.xy = r4.xw + r9.yx;
    r16.xy = r5.xw + r8.yx;
    r17.xy = r6.xw + r7.yx;
    r0.z = r7.y + -r6.x;
    r0.w = r8.y + -r5.x;
    r2.z = r9.y + -r4.x;
    r18.x = -r0.z;
    r19.x = -r0.w;
    r20.x = -r2.z;
    x0[0].xy = r1.zw;
    x0[1].xy = r2.xy;
    x0[2].xy = r10.xy;
    x0[3].xy = r11.xy;
    x0[4].xy = r3.zw;
    x0[5].xy = r12.xy;
    x0[6].xy = r13.xy;
    x0[7].xy = r14.xy;
    x0[8].xy = r1.xy;
    x0[9].xy = r15.xy;
    x0[10].xy = r16.xy;
    x0[11].xy = r17.xy;
    x0[12].xy = r3.xy;
    x0[13].xy = r18.xy;
    x0[14].xy = r19.xy;
    x0[15].xy = r20.xy;
  }
  r0.zw = x0[0].xy;
  r1.xy = x0[1].xy;
  r1.zw = x0[2].xy;
  r2.xy = x0[3].xy;
  r2.zw = x0[4].xy;
  r3.xy = x0[5].xy;
  r3.zw = x0[6].xy;
  r4.xy = x0[7].xy;
  r4.zw = x0[8].xy;
  r5.xy = x0[9].xy;
  r5.zw = x0[10].xy;
  r6.xy = x0[11].xy;
  r6.zw = x0[12].xy;
  r7.xy = x0[13].xy;
  r7.zw = x0[14].xy;
  r8.xy = x0[15].xy;
  if (r0.y == 0) {
    r0.zw = float2(0.125,0.125) * r0.zw;
    r1.xyzw = float4(0.125,0.125,0.125,0.125) * r1.xyzw;
    r2.xyzw = float4(0.125,0.125,0.125,0.125) * r2.xyzw;
    r3.xyzw = float4(0.125,0.125,0.125,0.125) * r3.xyzw;
    r4.xyzw = float4(0.125,0.125,0.125,0.125) * r4.xyzw;
    r5.xyzw = float4(0.125,0.125,0.125,0.125) * r5.xyzw;
    r6.xyzw = float4(0.125,0.125,0.125,0.125) * r6.xyzw;
    r7.xyzw = float4(0.125,0.125,0.125,0.125) * r7.xyzw;
    r8.xy = float2(0.125,0.125) * r8.xy;
  }
  r8.zw = r0.zw + r2.zw;
  r0.zw = r0.zw + -r2.zw;
  r2.zw = r1.zw + r3.zw;
  r9.xy = r1.zw + -r3.zw;
  r9.zw = -r9.yx;
  r1.zw = r0.yy ? r9.zx : r9.yw;
  r3.zw = r8.zw + r2.zw;
  r9.xy = r1.wz + r0.wz;
  r0.zw = -r1.zw + r0.zw;
  r1.zw = r8.zw + -r2.zw;
  r2.zw = r1.xy + r3.xy;
  r1.xy = r1.yx + -r3.yx;
  r3.xy = r2.xy + r4.xy;
  r10.xy = r2.xy + -r4.xy;
  r10.zw = -r10.yx;
  r2.xy = r0.yy ? r10.xz : r10.wy;
  r4.xy = r3.xy + r2.zw;
  r8.zw = r2.xy + r1.xy;
  r1.xy = -r2.xy + r1.xy;
  r2.xy = -r3.xy + r2.zw;
  r2.z = r0.y ? 0.707106769 : -0.707106769;
  r3.xy = r2.zz * r8.zw;
  r10.y = r8.w * 0.707106769 + -r3.x;
  r10.x = r8.z * 0.707106769 + r3.y;
  r3.xy = r4.xy + r3.zw;
  r3.zw = -r4.xy + r3.zw;
  r4.xy = r10.xy + r9.xy;
  r8.zw = -r10.xy + r9.xy;
  r9.zw = r2.xy + r1.wz;
  r9.xy = -r2.yx + r1.zw;
  r2.x = (int)r0.y ? r9.w : r9.x; r9.x = (int)r0.y ? r9.x : r9.w;
  r2.y = (int)r0.y ? r9.y : r9.z; r9.y = (int)r0.y ? r9.z : r9.y;
  r1.zw = r2.zz * r1.xy;
  r10.x = r1.y * -0.707106769 + -r1.z;
  r10.y = r1.x * -0.707106769 + r1.w;
  r1.xy = r10.xy + r0.zw;
  r0.zw = -r10.xy + r0.zw;
  r1.zw = r3.xy + r3.zw;
  r3.xy = r3.xy + -r3.zw;
  r3.zw = r9.xy + r2.xy;
  r9.xy = r9.xy + -r2.xy;
  r9.zw = -r9.yx;
  r2.xy = r0.yy ? r9.zx : r9.yw;
  r9.xy = r3.zw + r1.zw;
  r9.zw = r3.xy + r2.xy;
  r2.xy = r3.xy + -r2.xy;
  r1.zw = -r3.zw + r1.zw;
  r3.xy = r8.wz + r4.yx;
  r3.zw = -r8.zw + r4.xy;
  r4.xy = r1.xy + r0.zw;
  r10.xy = r1.xy + -r0.zw;
  r10.zw = -r10.yx;
  r0.zw = r0.yy ? r10.xz : r10.wy;
  r1.xy = r4.xy + r3.xy;
  r8.zw = r3.zw + r0.zw;
  r0.zw = r3.zw + -r0.zw;
  r3.xy = -r4.xy + r3.xy;
  r3.zw = r8.zw * r2.zz;
  r4.x = r8.w * 0.707106769 + -r3.z;
  r4.y = r8.z * 0.707106769 + r3.w;
  r10.xy = r9.yx + r1.yx;
  r11.xy = r9.yx + -r1.yx;
  r1.xy = r9.zw + r4.xy;
  r3.zw = r9.zw + -r4.xy;
  r9.zw = r3.xy + r1.wz;
  r9.xy = -r3.yx + r1.zw;
  r3.x = (int)r0.y ? r9.w : r9.x; r4.x = (int)r0.y ? r9.x : r9.w;
  r3.y = (int)r0.y ? r9.y : r9.z; r4.y = (int)r0.y ? r9.z : r9.y;
  r1.zw = r2.zz * r0.zw;
  r9.x = r0.w * -0.707106769 + -r1.z;
  r9.y = r0.z * -0.707106769 + r1.w;
  r0.zw = r9.xy + r2.xy;
  r1.zw = -r9.xy + r2.xy;
  r2.xy = r4.zw + r6.zw;
  r4.zw = r4.zw + -r6.zw;
  r6.zw = r5.zw + r7.zw;
  r9.xy = r5.zw + -r7.zw;
  r9.zw = -r9.yx;
  r5.zw = r0.yy ? r9.zx : r9.yw;
  r7.zw = r6.zw + r2.xy;
  r8.zw = r5.wz + r4.wz;
  r4.zw = -r5.zw + r4.zw;
  r2.xy = -r6.zw + r2.xy;
  r5.zw = r5.xy + r7.xy;
  r5.xy = r5.yx + -r7.yx;
  r6.zw = r6.xy + r8.xy;
  r9.xy = r6.xy + -r8.xy;
  r9.zw = -r9.yx;
  r6.xy = r0.yy ? r9.xz : r9.wy;
  r7.xy = r6.zw + r5.zw;
  r8.xy = r6.xy + r5.xy;
  r5.xyzw = -r6.xyzw + r5.xyzw;
  r6.xy = r8.xy * r2.zz;
  r9.y = r8.y * 0.707106769 + -r6.x;
  r9.x = r8.x * 0.707106769 + r6.y;
  r6.xy = r7.zw + r7.xy;
  r6.zw = r7.zw + -r7.xy;
  r7.xy = r9.xy + r8.zw;
  r7.zw = -r9.xy + r8.zw;
  r8.zw = r5.zw + r2.yx;
  r8.xy = -r5.wz + r2.xy;
  r2.x = (int)r0.y ? r8.w : r8.x; r8.x = (int)r0.y ? r8.x : r8.w;
  r2.y = (int)r0.y ? r8.y : r8.z; r8.y = (int)r0.y ? r8.z : r8.y;
  r5.zw = r5.xy * r2.zz;
  r9.x = r5.y * -0.707106769 + -r5.z;
  r9.y = r5.x * -0.707106769 + r5.w;
  r5.xy = r9.xy + r4.zw;
  r4.zw = -r9.xy + r4.zw;
  r5.zw = r6.xy + r6.zw;
  r6.xy = r6.xy + -r6.zw;
  r6.zw = r8.xy + r2.xy;
  r8.xy = r8.xy + -r2.xy;
  r8.zw = -r8.yx;
  r2.xy = r0.yy ? r8.zx : r8.yw;
  r8.xy = r6.zw + r5.zw;
  r8.zw = r6.xy + r2.xy;
  r2.xy = r6.xy + -r2.xy;
  r5.zw = -r6.zw + r5.zw;
  r6.xy = r7.yx + r7.wz;
  r6.zw = r7.xy + -r7.zw;
  r7.xy = r5.xy + r4.zw;
  r9.xy = r5.xy + -r4.zw;
  r9.zw = -r9.yx;
  r4.zw = r0.yy ? r9.xz : r9.wy;
  r5.xy = r7.xy + r6.xy;
  r7.zw = r6.zw + r4.zw;
  r4.zw = r6.zw + -r4.zw;
  r6.xy = -r7.xy + r6.xy;
  r6.zw = r7.zw * r2.zz;
  r9.z = r7.w * 0.707106769 + -r6.z;
  r9.w = r7.z * 0.707106769 + r6.w;
  r10.zw = r8.yx + r5.yx;
  r11.zw = r8.yx + -r5.yx;
  r5.xy = r9.zw + r8.zw;
  r6.zw = -r9.zw + r8.zw;
  r7.zw = r6.xy + r5.wz;
  r7.xy = -r6.yx + r5.zw;
  r6.x = (int)r0.y ? r7.w : r7.x; r7.x = (int)r0.y ? r7.x : r7.w;
  r6.y = (int)r0.y ? r7.y : r7.z; r7.y = (int)r0.y ? r7.z : r7.y;
  r2.zw = r4.zw * r2.zz;
  r5.z = r4.w * -0.707106769 + -r2.z;
  r5.w = r4.z * -0.707106769 + r2.w;
  r2.zw = r5.zw + r2.xy;
  r2.xy = -r5.zw + r2.xy;
  if (r0.y != 0) {
    r0.y = r3.z + -r0.z;
    r4.z = -r4.x + r3.x;
    r4.w = r1.z + -r1.x;
    r8.z = r1.y + -r1.w;
    r9.z = r4.y + -r3.y;
    r12.z = r0.w + -r3.w;
    r12.xy = r0.zw + r3.zw;
    r9.xy = r4.xy + r3.xy;
    r8.xy = r1.xy + r1.zw;
    r13.xy = float2(0.5,0.5) * r8.xz;
    r14.xy = float2(0.5,0.5) * r9.xz;
    r15.xy = float2(0.5,0.5) * r12.xz;
    r5.z = -0.5 * r12.y;
    r12.x = -r5.z;
    r12.y = -0.5 * r0.y;
    r0.y = -0.5 * r9.y;
    r9.x = -r0.y;
    r9.y = -0.5 * r4.z;
    r0.y = -0.5 * r8.y;
    r8.x = -r0.y;
    r8.y = -0.5 * r4.w;
    r0.y = r6.z + -r2.z;
    r4.z = -r7.x + r6.x;
    r4.w = r2.x + -r5.x;
    r16.z = r5.y + -r2.y;
    r17.z = r7.y + -r6.y;
    r18.z = r2.w + -r6.w;
    r18.xy = r2.zw + r6.zw;
    r17.xy = r7.xy + r6.xy;
    r16.xy = r5.xy + r2.xy;
    r13.zw = float2(0.5,0.5) * r16.xz;
    r14.zw = float2(0.5,0.5) * r17.xz;
    r15.zw = float2(0.5,0.5) * r18.xz;
    r5.z = -0.5 * r18.y;
    r12.z = -r5.z;
    r12.w = -0.5 * r0.y;
    r0.y = -0.5 * r17.y;
    r9.z = -r0.y;
    r9.w = -0.5 * r4.z;
    r0.y = -0.5 * r16.y;
    r8.z = -r0.y;
    r8.w = -0.5 * r4.w;
    if (r0.x != 0) {
      r16.x = 0;
      r16.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r16.xwww, r10.yxwz
      r17.x = 1;
      r17.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r17.xyzw, r13.xyzw
      r17.x = 2;
      r17.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r17.xyzw, r14.xyzw
      r17.x = 3;
      r17.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r17.xyzw, r15.xyzw
      r17.x = 4;
      r17.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r17.xwww, r11.yxwz
      r18.xz = r11.yw;
      r18.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r17.xyzw, r18.xyzw
      r17.x = 9;
      r17.yzw = vThreadGroupID.zzz;
      r11.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r17.xyzw, r11.xyzw
      r17.x = 5;
      r17.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r17.xyzw, r12.xyzw
      r17.x = 6;
      r17.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r17.xyzw, r9.xyzw
      r17.x = 7;
      r17.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r17.xyzw, r8.xyzw
      r17.xz = r10.yw;
      r17.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r16.xyzw, r17.xyzw
      r16.x = 8;
      r16.yzw = vThreadGroupID.zzz;
      r10.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r16.xyzw, r10.xyzw
    } else {
      r16.x = vThreadGroupID.z;
      r16.yzw = float3(0,0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r16.xwww, r10.yxwz
      r17.x = vThreadGroupID.z;
      r17.yzw = float3(1.40129846e-045,1.40129846e-045,1.40129846e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r17.xyzw, r13.xyzw
      r13.x = vThreadGroupID.z;
      r13.yzw = float3(2.80259693e-045,2.80259693e-045,2.80259693e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r13.xyzw, r14.xyzw
      r13.x = vThreadGroupID.z;
      r13.yzw = float3(4.20389539e-045,4.20389539e-045,4.20389539e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r13.xyzw, r15.xyzw
      r13.x = vThreadGroupID.z;
      r13.yzw = float3(5.60519386e-045,5.60519386e-045,5.60519386e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r13.xwww, r11.yxwz
      r14.xz = r11.yw;
      r14.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r13.xyzw, r14.xyzw
      r13.x = vThreadGroupID.z;
      r13.yzw = float3(1.26116862e-044,1.26116862e-044,1.26116862e-044);
      r11.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r13.xyzw, r11.xyzw
      r13.x = vThreadGroupID.z;
      r13.yzw = float3(7.00649232e-045,7.00649232e-045,7.00649232e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r13.xyzw, r12.xyzw
      r12.x = vThreadGroupID.z;
      r12.yzw = float3(8.40779079e-045,8.40779079e-045,8.40779079e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r12.xyzw, r9.xyzw
      r9.x = vThreadGroupID.z;
      r9.yzw = float3(9.80908925e-045,9.80908925e-045,9.80908925e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r9.xyzw, r8.xyzw
      r8.xz = r10.yw;
      r8.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r16.xyzw, r8.xyzw
      r8.x = vThreadGroupID.z;
      r8.yzw = float3(1.12103877e-044,1.12103877e-044,1.12103877e-044);
      r10.yw = float2(0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r8.xyzw, r10.xyzw
    }
  } else {
    r4.zw = min(float2(0,0), -r10.yx);
    r8.xy = -r4.zw;
    r4.zw = min(float2(0,0), -r10.wz);
    r8.zw = -r4.zw;
    r1.xy = min(float2(0,0), -r1.xy);
    r9.xy = -r1.xy;
    r1.xy = min(float2(0,0), -r5.xy);
    r9.zw = -r1.xy;
    r1.xy = min(float2(0,0), -r4.xy);
    r4.xy = -r1.xy;
    r1.xy = min(float2(0,0), -r7.xy);
    r4.zw = -r1.xy;
    r0.yz = min(float2(0,0), -r0.zw);
    r5.xy = -r0.yz;
    r0.yz = min(float2(0,0), -r2.zw);
    r5.zw = -r0.yz;
    r0.yz = min(float2(0,0), -r11.yx);
    r7.xy = -r0.yz;
    r0.yz = min(float2(0,0), -r11.wz);
    r7.zw = -r0.yz;
    r0.yz = min(float2(0,0), -r3.zw);
    r10.xy = -r0.yz;
    r0.yz = min(float2(0,0), -r6.zw);
    r10.zw = -r0.yz;
    r0.yz = min(float2(0,0), -r3.xy);
    r3.xy = -r0.yz;
    r0.yz = min(float2(0,0), -r6.xy);
    r3.zw = -r0.yz;
    r0.yz = min(float2(0,0), -r1.zw);
    r1.xy = -r0.yz;
    r0.yz = min(float2(0,0), -r2.xy);
    r1.zw = -r0.yz;
    if (r0.x != 0) {
      r0.y = (int)vThreadGroupID.z + asint(cb0[2].y);
      r2.x = cmp(asuint(cb0[2].x) < asuint(cb0[2].z));
      if (r2.x != 0) {
        r0.w = cb0[2].x;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.wyyy, r8.xyzw
        r0.z = asint(cb0[2].x) + 1;
      } else {
        r0.z = cb0[2].x;
      }
      r0.w = cmp((uint)r0.z < asuint(cb0[2].z));
      r0.w = r0.w ? r2.x : 0;
      if (r0.w != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.zyyy, r9.xyzw
        r0.x = (int)r0.z + 1;
      } else {
        r0.x = r0.z;
      }
      r0.z = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.z ? r0.w : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r4.xyzw
        r0.x = (int)r0.x + 1;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r5.xyzw
        r0.x = (int)r0.x + 1;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r7.xyzw
        r0.x = (int)r0.x + 1;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r10.xyzw
        r0.x = (int)r0.x + 1;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r3.xyzw
        r0.x = (int)r0.x + 1;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r1.xyzw
      }
    } else {
      r0.y = (int)vThreadGroupID.z + asint(cb0[2].x);
      r2.x = cmp(asuint(cb0[2].y) < asuint(cb0[2].w));
      if (r2.x != 0) {
        r0.x = cb0[2].y;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r8.xyzw
        r0.z = asint(cb0[2].y) + 1;
      } else {
        r0.z = cb0[2].y;
      }
      r2.y = cmp((uint)r0.z < asuint(cb0[2].w));
      r2.x = r2.y ? r2.x : 0;
      if (r2.x != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yzzz, r9.xyzw
        r0.w = (int)r0.z + 1;
      } else {
        r0.w = r0.z;
      }
      r0.z = cmp((uint)r0.w < asuint(cb0[2].w));
      r0.z = r0.z ? r2.x : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.ywww, r4.xyzw
        r0.x = (int)r0.w + 1;
      } else {
        r0.x = r0.w;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].w));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r5.xyzw
        r0.x = (int)r0.x + 1;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].w));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r7.xyzw
        r0.x = (int)r0.x + 1;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].w));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r10.xyzw
        r0.x = (int)r0.x + 1;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].w));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r3.xyzw
        r0.x = (int)r0.x + 1;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].w));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r1.xyzw
      }
    }
  }
  return;
}