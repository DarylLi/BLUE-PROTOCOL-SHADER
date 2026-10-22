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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[16];
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
  x0[8].xy = float2(0,0);
  x0[9].xy = float2(0,0);
  x0[10].xy = float2(0,0);
  x0[11].xy = float2(0,0);
  x0[12].xy = float2(0,0);
  x0[13].xy = float2(0,0);
  x0[14].xy = float2(0,0);
  x0[15].xy = float2(0,0);
  if (r0.x != 0) {
    r1.x = cb0[1].x;
    r1.y = vThreadGroupID.z;
    r0.z = cmp(asuint(cb0[1].z) >= (uint)r1.x);
    if (r0.z != 0) {
      r1.zw = float2(0,0);
      r2.xyzw = t0.Load(r1.xyz).xyzw;
      x0[0].xy = r2.xy;
      x0[8].xy = r2.zw;
    }
    r2.xyzw = (int4)r1.xxxx + int4(4,1,2,3);
    r3.xyzw = cmp(asuint(cb0[1].zzzz) >= (uint4)r2.yzwx);
    if (r3.x != 0) {
      r4.x = r2.y;
      r4.y = r1.y;
      r4.zw = float2(0,0);
      r4.xyzw = t0.Load(r4.xyz).xyzw;
      x0[1].xy = r4.xy;
      x0[9].xy = r4.zw;
    }
    if (r3.y != 0) {
      r4.x = r2.z;
      r4.y = r1.y;
      r4.zw = float2(0,0);
      r4.xyzw = t0.Load(r4.xyz).xyzw;
      x0[2].xy = r4.xy;
      x0[10].xy = r4.zw;
    }
    if (r3.z != 0) {
      r4.x = r2.w;
      r4.y = r1.y;
      r4.zw = float2(0,0);
      r4.xyzw = t0.Load(r4.xyz).xyzw;
      x0[3].xy = r4.xy;
      x0[11].xy = r4.zw;
    }
    if (r3.w != 0) {
      r2.y = r1.y;
      r2.zw = float2(0,0);
      r2.xyzw = t0.Load(r2.xyz).xyzw;
      x0[4].xy = r2.xy;
      x0[12].xy = r2.zw;
    }
    r2.xyz = (int3)r1.xxx + int3(5,6,7);
    r3.xyz = cmp(asuint(cb0[1].zzz) >= (uint3)r2.xyz);
    if (r3.x != 0) {
      r1.x = r2.x;
      r1.zw = float2(0,0);
      r4.xyzw = t0.Load(r1.xyz).xyzw;
      x0[5].xy = r4.xy;
      x0[13].xy = r4.zw;
    }
    if (r3.y != 0) {
      r1.x = r2.y;
      r1.zw = float2(0,0);
      r4.xyzw = t0.Load(r1.xyz).xyzw;
      x0[6].xy = r4.xy;
      x0[14].xy = r4.zw;
    }
    if (r3.z != 0) {
      r1.x = r2.z;
      r1.zw = float2(0,0);
      r1.xyzw = t0.Load(r1.xyz).xyzw;
      x0[7].xy = r1.xy;
      x0[15].xy = r1.zw;
    }
  } else {
    r1.x = vThreadGroupID.z;
    r1.y = cb0[1].y;
    r0.z = cmp(asuint(cb0[1].w) >= (uint)r1.y);
    if (r0.z != 0) {
      r1.zw = float2(0,0);
      r2.xyzw = t0.Load(r1.xyz).xyzw;
      x0[0].xy = r2.xy;
      x0[8].xy = r2.zw;
    }
    r2.xyzw = (int4)r1.yyyy + int4(1,4,2,3);
    r3.xyzw = cmp(asuint(cb0[1].wwww) >= (uint4)r2.xzwy);
    if (r3.x != 0) {
      r4.x = r1.x;
      r4.y = r2.x;
      r4.zw = float2(0,0);
      r4.xyzw = t0.Load(r4.xyz).xyzw;
      x0[1].xy = r4.xy;
      x0[9].xy = r4.zw;
    }
    if (r3.y != 0) {
      r4.x = r1.x;
      r4.y = r2.z;
      r4.zw = float2(0,0);
      r4.xyzw = t0.Load(r4.xyz).xyzw;
      x0[2].xy = r4.xy;
      x0[10].xy = r4.zw;
    }
    if (r3.z != 0) {
      r4.x = r1.x;
      r4.y = r2.w;
      r4.zw = float2(0,0);
      r4.xyzw = t0.Load(r4.xyz).xyzw;
      x0[3].xy = r4.xy;
      x0[11].xy = r4.zw;
    }
    if (r3.w != 0) {
      r2.x = r1.x;
      r2.zw = float2(0,0);
      r2.xyzw = t0.Load(r2.xyz).xyzw;
      x0[4].xy = r2.xy;
      x0[12].xy = r2.zw;
    }
    r2.xyz = (int3)r1.yyy + int3(5,7,6);
    r3.xyz = cmp(asuint(cb0[1].www) >= (uint3)r2.xzy);
    if (r3.x != 0) {
      r1.y = r2.x;
      r1.zw = float2(0,0);
      r4.xyzw = t0.Load(r1.xyz).xyzw;
      x0[5].xy = r4.xy;
      x0[13].xy = r4.zw;
    }
    if (r3.y != 0) {
      r1.y = r2.z;
      r1.zw = float2(0,0);
      r4.xyzw = t0.Load(r1.xyz).xyzw;
      x0[6].xy = r4.xy;
      x0[14].xy = r4.zw;
    }
    if (r3.z != 0) {
      r2.x = r1.x;
      r2.zw = float2(0,0);
      r1.xyzw = t0.Load(r2.xyz).xyzw;
      x0[7].xy = r1.xy;
      x0[15].xy = r1.zw;
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
  r10.xy = r9.xy + r1.xy;
  r11.xy = r9.xy + -r1.xy;
  r12.xy = r9.zw + r4.xy;
  r9.xy = r9.zw + -r4.xy;
  r13.zw = r3.xy + r1.wz;
  r13.xy = -r3.yx + r1.zw;
  r1.x = (int)r0.y ? r13.w : r13.x; r3.x = (int)r0.y ? r13.x : r13.w;
  r1.y = (int)r0.y ? r13.y : r13.z; r3.y = (int)r0.y ? r13.z : r13.y;
  r4.xy = r2.zz * r0.zw;
  r13.x = r0.w * -0.707106769 + -r4.x;
  r13.y = r0.z * -0.707106769 + r4.y;
  r14.xy = r13.xy + r2.xy;
  r13.xy = -r13.xy + r2.xy;
  r0.zw = r4.zw + r6.zw;
  r2.xy = r4.zw + -r6.zw;
  r4.xy = r5.zw + r7.zw;
  r15.xy = r5.zw + -r7.zw;
  r15.zw = -r15.yx;
  r4.zw = r0.yy ? r15.zx : r15.yw;
  r5.zw = r4.xy + r0.zw;
  r6.zw = r4.wz + r2.yx;
  r2.xy = -r4.zw + r2.xy;
  r0.zw = -r4.xy + r0.zw;
  r4.xy = r5.xy + r7.xy;
  r4.zw = r5.yx + -r7.yx;
  r5.xy = r6.xy + r8.xy;
  r7.xy = r6.xy + -r8.xy;
  r7.zw = -r7.yx;
  r6.xy = r0.yy ? r7.xz : r7.wy;
  r7.xy = r5.xy + r4.xy;
  r7.zw = r6.xy + r4.zw;
  r4.zw = -r6.xy + r4.zw;
  r4.xy = -r5.xy + r4.xy;
  r5.xy = r7.zw * r2.zz;
  r6.y = r7.w * 0.707106769 + -r5.x;
  r6.x = r7.z * 0.707106769 + r5.y;
  r5.xy = r7.xy + r5.zw;
  r5.zw = -r7.xy + r5.zw;
  r7.xy = r6.zw + r6.xy;
  r6.xy = r6.zw + -r6.xy;
  r8.zw = r4.xy + r0.wz;
  r8.xy = -r4.yx + r0.zw;
  r4.x = (int)r0.y ? r8.w : r8.x; r8.x = (int)r0.y ? r8.x : r8.w;
  r4.y = (int)r0.y ? r8.y : r8.z; r8.y = (int)r0.y ? r8.z : r8.y;
  r0.zw = r4.zw * r2.zz;
  r15.x = r4.w * -0.707106769 + -r0.z;
  r15.y = r4.z * -0.707106769 + r0.w;
  r0.zw = r15.xy + r2.xy;
  r2.xy = -r15.xy + r2.xy;
  r4.zw = r5.xy + r5.zw;
  r5.xy = r5.xy + -r5.zw;
  r5.zw = r8.xy + r4.xy;
  r8.xy = r8.xy + -r4.xy;
  r8.zw = -r8.yx;
  r4.xy = r0.yy ? r8.zx : r8.yw;
  r6.zw = r5.zw + r4.zw;
  r7.zw = r5.xy + r4.xy;
  r4.xy = r5.xy + -r4.xy;
  r4.zw = -r5.zw + r4.zw;
  r5.xy = r7.yx + r6.yx;
  r5.zw = r7.xy + -r6.xy;
  r6.xy = r2.xy + r0.zw;
  r8.xy = -r2.xy + r0.zw;
  r8.zw = -r8.yx;
  r0.zw = r0.yy ? r8.xz : r8.wy;
  r2.xy = r6.xy + r5.xy;
  r7.xy = r5.zw + r0.zw;
  r0.zw = r5.zw + -r0.zw;
  r5.xy = -r6.xy + r5.xy;
  r5.zw = r7.xy * r2.zz;
  r8.z = r7.y * 0.707106769 + -r5.z;
  r8.w = r7.x * 0.707106769 + r5.w;
  r10.zw = r6.zw + r2.xy;
  r11.zw = r6.zw + -r2.xy;
  r12.zw = r8.zw + r7.zw;
  r9.zw = -r8.zw + r7.zw;
  r6.zw = r5.xy + r4.wz;
  r6.xy = -r5.yx + r4.zw;
  r2.x = (int)r0.y ? r6.w : r6.x; r5.x = (int)r0.y ? r6.x : r6.w;
  r2.y = (int)r0.y ? r6.y : r6.z; r5.y = (int)r0.y ? r6.z : r6.y;
  r2.zw = r2.zz * r0.zw;
  r4.z = r0.w * -0.707106769 + -r2.z;
  r4.w = r0.z * -0.707106769 + r2.w;
  r14.zw = r4.xy + r4.zw;
  r13.zw = r4.xy + -r4.zw;
  if (r0.x != 0) {
    if (cb0[2].x != 0) {
      r0.x = 0;
      r0.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r10.xyzw
      r0.x = 1;
    } else {
      r0.x = 0;
    }
    r0.y = cmp((uint)r0.x < asuint(cb0[2].x));
    if (r0.y != 0) {
      r4.x = 1;
      r4.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.xyzw, r12.xyzw
      r0.x = 2;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[2].x));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r4.x = 2;
      r4.yzw = vThreadGroupID.zzz;
      r3.zw = r5.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.xyzw, r3.xyzw
      r0.x = 3;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[2].x));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r4.x = 3;
      r4.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.xyzw, r14.xyzw
      r0.x = 4;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[2].x));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r4.x = 4;
      r4.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.xyzw, r11.xyzw
      r0.x = 5;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[2].x));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r4.x = 5;
      r4.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.xyzw, r9.xyzw
      r0.x = 6;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[2].x));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r4.x = 6;
      r4.yzw = vThreadGroupID.zzz;
      r1.zw = r2.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.xyzw, r1.xyzw
      r0.x = 7;
    }
    r0.x = cmp((uint)r0.x < asuint(cb0[2].x));
    r0.x = r0.x ? r0.y : 0;
    if (r0.x != 0) {
      r0.x = 7;
      r0.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r13.xyzw
    }
  } else {
    if (cb0[2].y != 0) {
      r0.x = vThreadGroupID.z;
      r0.yzw = float3(0,0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r10.xyzw
      r0.x = 1;
    } else {
      r0.x = 0;
    }
    r0.y = cmp((uint)r0.x < asuint(cb0[2].y));
    if (r0.y != 0) {
      r4.x = vThreadGroupID.z;
      r4.yzw = float3(1.40129846e-045,1.40129846e-045,1.40129846e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.xyzw, r12.xyzw
      r0.x = 2;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[2].y));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r4.x = vThreadGroupID.z;
      r4.yzw = float3(2.80259693e-045,2.80259693e-045,2.80259693e-045);
      r3.zw = r5.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r4.xyzw, r3.xyzw
      r0.x = 3;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[2].y));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r3.x = vThreadGroupID.z;
      r3.yzw = float3(4.20389539e-045,4.20389539e-045,4.20389539e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r14.xyzw
      r0.x = 4;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[2].y));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r3.x = vThreadGroupID.z;
      r3.yzw = float3(5.60519386e-045,5.60519386e-045,5.60519386e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r11.xyzw
      r0.x = 5;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[2].y));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r3.x = vThreadGroupID.z;
      r3.yzw = float3(7.00649232e-045,7.00649232e-045,7.00649232e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r9.xyzw
      r0.x = 6;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[2].y));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r3.x = vThreadGroupID.z;
      r3.yzw = float3(8.40779079e-045,8.40779079e-045,8.40779079e-045);
      r1.zw = r2.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r1.xyzw
      r0.x = 7;
    }
    r0.x = cmp((uint)r0.x < asuint(cb0[2].y));
    r0.x = r0.x ? r0.y : 0;
    if (r0.x != 0) {
      r0.x = vThreadGroupID.z;
      r0.yzw = float3(9.80908925e-045,9.80908925e-045,9.80908925e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r13.xyzw
    }
  }
  return;
}