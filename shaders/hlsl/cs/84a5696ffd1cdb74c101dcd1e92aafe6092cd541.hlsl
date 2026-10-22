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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[16];
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
    r7.xzw = float3(4,0,0);
    r7.y = vThreadGroupID.z;
    r7.xyzw = t1.Load(r7.xyz).zwxy;
    r8.xzw = float3(5,0,0);
    r8.y = vThreadGroupID.z;
    r8.xyzw = t1.Load(r8.xyz).zwxy;
    r9.xzw = float3(6,0,0);
    r9.y = vThreadGroupID.z;
    r9.xyzw = t1.Load(r9.xyz).zwxy;
    r10.xzw = float3(7,0,0);
    r10.y = vThreadGroupID.z;
    r10.xyzw = t1.Load(r10.xyz).zwxy;
  } else {
    r11.x = vThreadGroupID.z;
    r11.yzw = float3(1.40129846e-045,0,2.80259693e-045);
    r3.xyzw = t1.Load(r11.xzz).zwxy;
    r4.xyzw = t1.Load(r11.xyz).zwxy;
    r5.xyzw = t1.Load(r11.xwz).zwxy;
    r11.yw = float2(4.20389539e-045,5.60519386e-045);
    r6.xyzw = t1.Load(r11.xyz).zwxy;
    r7.xyzw = t1.Load(r11.xwz).zwxy;
    r11.yw = float2(7.00649232e-045,8.40779079e-045);
    r8.xyzw = t1.Load(r11.xyz).zwxy;
    r9.xyzw = t1.Load(r11.xwz).zwxy;
    r11.xzw = r11.xzz;
    r11.y = 7;
    r10.xyzw = t1.Load(r11.xyz).zwxy;
  }
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
    r11.x = cb0[1].z;
    r11.y = vThreadGroupID.z;
    r1.y = cmp(asuint(cb0[2].x) >= (uint)r11.x);
    if (r1.y != 0) {
      r11.zw = float2(0,0);
      r12.xyzw = t0.Load(r11.xyz).xyzw;
      x0[0].xy = r12.xy;
      x0[8].xy = r12.zw;
    }
    r12.xyzw = (int4)r11.xxxx + int4(4,1,2,3);
    r13.xyzw = cmp(asuint(cb0[2].xxxx) >= (uint4)r12.yzwx);
    if (r13.x != 0) {
      r14.x = r12.y;
      r14.y = r11.y;
      r14.zw = float2(0,0);
      r14.xyzw = t0.Load(r14.xyz).xyzw;
      x0[1].xy = r14.xy;
      x0[9].xy = r14.zw;
    }
    if (r13.y != 0) {
      r14.x = r12.z;
      r14.y = r11.y;
      r14.zw = float2(0,0);
      r14.xyzw = t0.Load(r14.xyz).xyzw;
      x0[2].xy = r14.xy;
      x0[10].xy = r14.zw;
    }
    if (r13.z != 0) {
      r14.x = r12.w;
      r14.y = r11.y;
      r14.zw = float2(0,0);
      r14.xyzw = t0.Load(r14.xyz).xyzw;
      x0[3].xy = r14.xy;
      x0[11].xy = r14.zw;
    }
    if (r13.w != 0) {
      r12.y = r11.y;
      r12.zw = float2(0,0);
      r12.xyzw = t0.Load(r12.xyz).xyzw;
      x0[4].xy = r12.xy;
      x0[12].xy = r12.zw;
    }
    r1.yzw = (int3)r11.xxx + int3(5,6,7);
    r12.xyz = cmp(asuint(cb0[2].xxx) >= (uint3)r1.yzw);
    if (r12.x != 0) {
      r11.x = r1.y;
      r11.zw = float2(0,0);
      r13.xyzw = t0.Load(r11.xyz).xyzw;
      x0[5].xy = r13.xy;
      x0[13].xy = r13.zw;
    }
    if (r12.y != 0) {
      r11.x = r1.z;
      r11.zw = float2(0,0);
      r13.xyzw = t0.Load(r11.xyz).xyzw;
      x0[6].xy = r13.xy;
      x0[14].xy = r13.zw;
    }
    if (r12.z != 0) {
      r11.x = r1.w;
      r11.zw = float2(0,0);
      r11.xyzw = t0.Load(r11.xyz).xyzw;
      x0[7].xy = r11.xy;
      x0[15].xy = r11.zw;
    }
  } else {
    r11.x = vThreadGroupID.z;
    r11.y = cb0[1].w;
    r1.y = cmp(asuint(cb0[2].y) >= (uint)r11.y);
    if (r1.y != 0) {
      r11.zw = float2(0,0);
      r12.xyzw = t0.Load(r11.xyz).xyzw;
      x0[0].xy = r12.xy;
      x0[8].xy = r12.zw;
    }
    r12.xyzw = (int4)r11.yyyy + int4(1,4,2,3);
    r13.xyzw = cmp(asuint(cb0[2].yyyy) >= (uint4)r12.xzwy);
    if (r13.x != 0) {
      r14.x = r11.x;
      r14.y = r12.x;
      r14.zw = float2(0,0);
      r14.xyzw = t0.Load(r14.xyz).xyzw;
      x0[1].xy = r14.xy;
      x0[9].xy = r14.zw;
    }
    if (r13.y != 0) {
      r14.x = r11.x;
      r14.y = r12.z;
      r14.zw = float2(0,0);
      r14.xyzw = t0.Load(r14.xyz).xyzw;
      x0[2].xy = r14.xy;
      x0[10].xy = r14.zw;
    }
    if (r13.z != 0) {
      r14.x = r11.x;
      r14.y = r12.w;
      r14.zw = float2(0,0);
      r14.xyzw = t0.Load(r14.xyz).xyzw;
      x0[3].xy = r14.xy;
      x0[11].xy = r14.zw;
    }
    if (r13.w != 0) {
      r12.x = r11.x;
      r12.zw = float2(0,0);
      r12.xyzw = t0.Load(r12.xyz).xyzw;
      x0[4].xy = r12.xy;
      x0[12].xy = r12.zw;
    }
    r12.xyz = (int3)r11.yyy + int3(5,7,6);
    r1.yzw = cmp(asuint(cb0[2].yyy) >= (uint3)r12.xzy);
    if (r1.y != 0) {
      r11.y = r12.x;
      r11.zw = float2(0,0);
      r13.xyzw = t0.Load(r11.xyz).xyzw;
      x0[5].xy = r13.xy;
      x0[13].xy = r13.zw;
    }
    if (r1.z != 0) {
      r11.y = r12.z;
      r11.zw = float2(0,0);
      r13.xyzw = t0.Load(r11.xyz).xyzw;
      x0[6].xy = r13.xy;
      x0[14].xy = r13.zw;
    }
    if (r1.w != 0) {
      r12.x = r11.x;
      r12.zw = float2(0,0);
      r11.xyzw = t0.Load(r12.xyz).xyzw;
      x0[7].xy = r11.xy;
      x0[15].xy = r11.zw;
    }
  }
  r1.yz = x0[0].xy;
  r11.xy = x0[1].xy;
  r11.zw = x0[2].xy;
  r12.xy = x0[3].xy;
  r12.zw = x0[4].xy;
  r13.xy = x0[5].xy;
  r13.zw = x0[6].xy;
  r14.xy = x0[7].xy;
  r14.zw = x0[8].xy;
  r15.xy = x0[9].xy;
  r15.zw = x0[10].xy;
  r16.xy = x0[11].xy;
  r16.zw = x0[12].xy;
  r17.xy = x0[13].xy;
  r17.zw = x0[14].xy;
  r18.xy = x0[15].xy;
  if (r0.y == 0) {
    r1.yz = float2(0.125,0.125) * r1.yz;
    r11.xyzw = float4(0.125,0.125,0.125,0.125) * r11.xyzw;
    r12.xyzw = float4(0.125,0.125,0.125,0.125) * r12.xyzw;
    r13.xyzw = float4(0.125,0.125,0.125,0.125) * r13.xyzw;
    r14.xyzw = float4(0.125,0.125,0.125,0.125) * r14.xyzw;
    r15.xyzw = float4(0.125,0.125,0.125,0.125) * r15.xyzw;
    r16.xyzw = float4(0.125,0.125,0.125,0.125) * r16.xyzw;
    r17.xyzw = float4(0.125,0.125,0.125,0.125) * r17.xyzw;
    r18.xy = float2(0.125,0.125) * r18.xy;
  }
  r18.zw = r1.yz + r12.zw;
  r1.yz = r1.yz + -r12.zw;
  r12.zw = r11.zw + r13.zw;
  r19.xy = r11.zw + -r13.zw;
  r19.zw = -r19.yx;
  r11.zw = r0.yy ? r19.zx : r19.yw;
  r13.zw = r18.zw + r12.zw;
  r19.xy = r11.wz + r1.zy;
  r1.yz = -r11.zw + r1.yz;
  r11.zw = r18.zw + -r12.zw;
  r12.zw = r11.xy + r13.xy;
  r11.xy = r11.yx + -r13.yx;
  r13.xy = r12.xy + r14.xy;
  r20.xy = r12.xy + -r14.xy;
  r20.zw = -r20.yx;
  r12.xy = r0.yy ? r20.xz : r20.wy;
  r14.xy = r13.xy + r12.zw;
  r18.zw = r12.xy + r11.xy;
  r11.xy = -r12.xy + r11.xy;
  r12.xy = -r13.xy + r12.zw;
  r12.zw = r0.yy ? float2(0.707106769,-0.707106769) : float2(-0.707106769,0.707106769);
  r13.xy = r12.zz * r18.zw;
  r20.y = r18.w * 0.707106769 + -r13.x;
  r20.x = r18.z * 0.707106769 + r13.y;
  r13.xy = r14.xy + r13.zw;
  r13.zw = -r14.xy + r13.zw;
  r14.xy = r20.xy + r19.xy;
  r18.zw = -r20.xy + r19.xy;
  r19.zw = r12.xy + r11.wz;
  r19.xy = -r12.yx + r11.zw;
  r12.x = (int)r0.y ? r19.w : r19.x; r19.x = (int)r0.y ? r19.x : r19.w;
  r12.y = (int)r0.y ? r19.y : r19.z; r19.y = (int)r0.y ? r19.z : r19.y;
  r11.zw = r12.zz * r11.xy;
  r20.x = r11.y * -0.707106769 + -r11.z;
  r20.y = r11.x * -0.707106769 + r11.w;
  r11.xy = r20.xy + r1.yz;
  r1.yz = -r20.xy + r1.yz;
  r11.zw = r13.xy + r13.zw;
  r13.xy = r13.xy + -r13.zw;
  r13.zw = r19.xy + r12.xy;
  r19.xy = r19.xy + -r12.xy;
  r19.zw = -r19.yx;
  r12.xy = r0.yy ? r19.zx : r19.yw;
  r19.xy = r13.zw + r11.zw;
  r19.zw = r13.xy + r12.xy;
  r12.xy = r13.xy + -r12.xy;
  r11.zw = -r13.zw + r11.zw;
  r13.xy = r18.wz + r14.yx;
  r13.zw = -r18.zw + r14.xy;
  r14.xy = r11.xy + r1.yz;
  r20.xy = r11.xy + -r1.yz;
  r20.zw = -r20.yx;
  r1.yz = r0.yy ? r20.xz : r20.wy;
  r11.xy = r14.xy + r13.xy;
  r18.zw = r13.zw + r1.yz;
  r1.yz = r13.zw + -r1.yz;
  r13.xy = -r14.xy + r13.xy;
  r13.zw = r18.zw * r12.zz;
  r14.x = r18.w * 0.707106769 + -r13.z;
  r14.y = r18.z * 0.707106769 + r13.w;
  r13.zw = r19.xy + r11.xy;
  r11.xy = r19.xy + -r11.xy;
  r18.zw = r19.zw + r14.xy;
  r14.xy = r19.zw + -r14.xy;
  r19.zw = r13.xy + r11.wz;
  r19.xy = -r13.yx + r11.zw;
  r13.x = (int)r0.y ? r19.w : r19.x; r19.x = (int)r0.y ? r19.x : r19.w;
  r13.y = (int)r0.y ? r19.y : r19.z; r19.y = (int)r0.y ? r19.z : r19.y;
  r11.zw = r12.zz * r1.yz;
  r20.x = r1.z * -0.707106769 + -r11.z;
  r20.y = r1.y * -0.707106769 + r11.w;
  r1.yz = r20.xy + r12.xy;
  r11.zw = -r20.xy + r12.xy;
  r12.xy = r14.zw + r16.zw;
  r14.zw = r14.zw + -r16.zw;
  r16.zw = r15.zw + r17.zw;
  r20.xy = r15.zw + -r17.zw;
  r20.zw = -r20.yx;
  r15.zw = r0.yy ? r20.zx : r20.yw;
  r17.zw = r16.zw + r12.xy;
  r19.zw = r15.wz + r14.wz;
  r14.zw = -r15.zw + r14.zw;
  r12.xy = -r16.zw + r12.xy;
  r15.zw = r15.xy + r17.xy;
  r15.xy = r15.yx + -r17.yx;
  r16.zw = r16.xy + r18.xy;
  r20.xy = r16.xy + -r18.xy;
  r20.zw = -r20.yx;
  r16.xy = r0.yy ? r20.xz : r20.wy;
  r17.xy = r16.zw + r15.zw;
  r18.xy = r16.xy + r15.xy;
  r15.xyzw = -r16.xyzw + r15.xyzw;
  r16.xy = r18.xy * r12.zz;
  r20.y = r18.y * 0.707106769 + -r16.x;
  r20.x = r18.x * 0.707106769 + r16.y;
  r16.xy = r17.zw + r17.xy;
  r16.zw = r17.zw + -r17.xy;
  r17.xy = r20.xy + r19.zw;
  r17.zw = -r20.xy + r19.zw;
  r20.zw = r15.zw + r12.yx;
  r20.xy = -r15.wz + r12.xy;
  r12.x = (int)r0.y ? r20.w : r20.x; r18.x = (int)r0.y ? r20.x : r20.w;
  r12.y = (int)r0.y ? r20.y : r20.z; r18.y = (int)r0.y ? r20.z : r20.y;
  r15.zw = r15.xy * r12.zz;
  r20.x = r15.y * -0.707106769 + -r15.z;
  r20.y = r15.x * -0.707106769 + r15.w;
  r15.xy = r20.xy + r14.zw;
  r14.zw = -r20.xy + r14.zw;
  r15.zw = r16.xy + r16.zw;
  r16.xy = r16.xy + -r16.zw;
  r16.zw = r18.xy + r12.xy;
  r20.xy = r18.xy + -r12.xy;
  r20.zw = -r20.yx;
  r12.xy = r0.yy ? r20.zx : r20.yw;
  r18.xy = r16.zw + r15.zw;
  r19.zw = r16.xy + r12.xy;
  r12.xy = r16.xy + -r12.xy;
  r15.zw = -r16.zw + r15.zw;
  r16.xy = r17.yx + r17.wz;
  r16.zw = r17.xy + -r17.zw;
  r17.xy = r15.xy + r14.zw;
  r20.xy = r15.xy + -r14.zw;
  r20.zw = -r20.yx;
  r14.zw = r0.yy ? r20.xz : r20.wy;
  r15.xy = r17.xy + r16.xy;
  r17.zw = r16.zw + r14.zw;
  r14.zw = r16.zw + -r14.zw;
  r16.xy = -r17.xy + r16.xy;
  r16.zw = r17.zw * r12.zz;
  r17.x = r17.w * 0.707106769 + -r16.z;
  r17.y = r17.z * 0.707106769 + r16.w;
  r16.zw = r18.xy + r15.xy;
  r15.xy = r18.xy + -r15.xy;
  r17.zw = r19.zw + r17.xy;
  r17.xy = r19.zw + -r17.xy;
  r20.zw = r16.xy + r15.wz;
  r20.xy = -r16.yx + r15.zw;
  r16.x = (int)r0.y ? r20.w : r20.x; r18.x = (int)r0.y ? r20.x : r20.w;
  r16.y = (int)r0.y ? r20.y : r20.z; r18.y = (int)r0.y ? r20.z : r20.y;
  r15.zw = r14.zw * r12.zz;
  r20.x = r14.w * -0.707106769 + -r15.z;
  r20.y = r14.z * -0.707106769 + r15.w;
  r14.zw = r20.xy + r12.xy;
  r12.xy = -r20.xy + r12.xy;
  r1.w = r13.w * r3.w;
  r20.x = r13.z * r3.z + -r1.w;
  r20.y = dot(r13.wz, r3.zw);
  r1.w = r18.w * r4.w;
  r21.x = r18.z * r4.z + -r1.w;
  r21.y = dot(r18.wz, r4.zw);
  r1.w = r19.y * r5.w;
  r22.x = r19.x * r5.z + -r1.w;
  r22.y = dot(r19.yx, r5.zw);
  r1.w = r1.z * r6.w;
  r19.x = r1.y * r6.z + -r1.w;
  r19.y = dot(r1.zy, r6.zw);
  r1.y = r11.y * r7.w;
  r23.x = r11.x * r7.z + -r1.y;
  r23.y = dot(r11.yx, r7.zw);
  r1.y = r14.y * r8.w;
  r11.x = r14.x * r8.z + -r1.y;
  r11.y = dot(r14.yx, r8.zw);
  r1.y = r13.y * r9.w;
  r14.x = r13.x * r9.z + -r1.y;
  r14.y = dot(r13.yx, r9.zw);
  r1.y = r11.w * r10.w;
  r13.x = r11.z * r10.z + -r1.y;
  r13.y = dot(r11.wz, r10.zw);
  r1.y = ~(int)r1.x;
  r0.w = (int)r0.w | (int)r1.y;
  r1.y = r16.w * r3.y;
  r24.x = r16.z * r3.x + -r1.y;
  r24.y = dot(r16.wz, r3.xy);
  r1.yz = r0.ww ? r24.xy : r16.zw;
  r1.w = r17.w * r4.y;
  r3.x = r17.z * r4.x + -r1.w;
  r3.y = dot(r17.wz, r4.xy);
  r3.xy = r0.ww ? r3.xy : r17.zw;
  r1.w = r18.y * r5.y;
  r4.x = r18.x * r5.x + -r1.w;
  r4.y = dot(r18.yx, r5.xy);
  r3.zw = r0.ww ? r4.xy : r18.xy;
  r1.w = r14.w * r6.y;
  r4.x = r14.z * r6.x + -r1.w;
  r4.y = dot(r14.wz, r6.xy);
  r4.xy = r0.ww ? r4.xy : r14.zw;
  r1.w = r15.y * r7.y;
  r5.x = r15.x * r7.x + -r1.w;
  r5.y = dot(r15.yx, r7.xy);
  r4.zw = r0.ww ? r5.xy : r15.xy;
  r1.w = r17.y * r8.y;
  r5.x = r17.x * r8.x + -r1.w;
  r5.y = dot(r17.yx, r8.xy);
  r5.xy = r0.ww ? r5.xy : r17.xy;
  r1.w = r16.y * r9.y;
  r6.x = r16.x * r9.x + -r1.w;
  r6.y = dot(r16.yx, r9.xy);
  r5.zw = r0.ww ? r6.xy : r16.xy;
  r1.w = r12.y * r10.y;
  r6.x = r12.x * r10.x + -r1.w;
  r6.y = dot(r12.yx, r10.xy);
  r6.xy = r0.ww ? r6.xy : r12.xy;
  if (r0.x == 0) {
    r6.zw = t1.Load(float4(0,0,0,0)).xz;
    r2.y = 0;
    r2.yw = t1.Load(r2.xyy).xz;
  } else {
    r6.zw = t1.Load(float4(0,0,0,0)).xz;
    r2.z = 0;
    r2.yw = t1.Load(r2.zxz).xz;
  }
  r0.w = max(r6.w, r2.y);
  r0.w = max(r6.z, r0.w);
  r0.z = r0.z ? r2.w : 1;
  r2.xy = r20.xy / r0.ww;
  r2.zw = r21.xy / r0.ww;
  r6.zw = r22.xy / r0.ww;
  r7.xy = r19.xy / r0.ww;
  r7.zw = r23.xy / r0.ww;
  r8.xy = r11.xy / r0.ww;
  r8.zw = r14.xy / r0.ww;
  r9.xy = r13.xy / r0.ww;
  r0.z = r1.x ? r0.z : r0.w;
  r1.xy = r1.yz / r0.zz;
  r1.zw = r3.xy / r0.zz;
  r3.xy = r3.zw / r0.zz;
  r3.zw = r4.xy / r0.zz;
  r4.xy = r4.zw / r0.zz;
  r4.zw = r5.xy / r0.zz;
  r5.xy = r5.zw / r0.zz;
  r0.zw = r6.xy / r0.zz;
  if (r0.y != 0) {
    r2.xyzw = float4(0.125,0.125,0.125,0.125) * r2.xyzw;
    r6.zw = float2(0.125,0.125) * r6.zw;
    r7.xyzw = float4(0.125,0.125,0.125,0.125) * r7.xyzw;
    r8.xyzw = float4(0.125,0.125,0.125,0.125) * r8.xyzw;
    r9.xy = float2(0.125,0.125) * r9.xy;
    r1.xyzw = float4(0.125,0.125,0.125,0.125) * r1.xyzw;
    r3.xyzw = float4(0.125,0.125,0.125,0.125) * r3.xyzw;
    r4.xyzw = float4(0.125,0.125,0.125,0.125) * r4.xyzw;
    r5.xy = float2(0.125,0.125) * r5.xy;
    r0.zw = float2(0.125,0.125) * r0.zw;
  }
  r5.zw = r2.xy + r7.zw;
  r2.xy = r2.xy + -r7.zw;
  r6.xy = r6.zw + r8.zw;
  r10.xy = r6.zw + -r8.zw;
  r10.zw = -r10.xy;
  r6.zw = r0.yy ? r10.yz : r10.wx;
  r7.zw = r6.xy + r5.zw;
  r8.zw = r6.wz + r2.yx;
  r2.xy = -r6.zw + r2.xy;
  r5.zw = -r6.xy + r5.zw;
  r6.xy = r2.zw + r8.xy;
  r2.zw = r2.wz + -r8.yx;
  r6.zw = r7.xy + r9.xy;
  r9.xy = r7.xy + -r9.xy;
  r9.zw = -r9.xy;
  r7.xy = r0.yy ? r9.zy : r9.xw;
  r8.xy = r6.xy + r6.zw;
  r9.xy = r7.xy + r2.zw;
  r2.zw = -r7.xy + r2.zw;
  r6.xy = r6.xy + -r6.zw;
  r6.zw = r12.ww * r9.xy;
  r7.y = r9.y * 0.707106769 + -r6.z;
  r7.x = r9.x * 0.707106769 + r6.w;
  r6.zw = r8.xy + r7.zw;
  r7.zw = -r8.xy + r7.zw;
  r8.xy = r8.zw + r7.xy;
  r7.xy = r8.zw + -r7.xy;
  r9.xy = r6.xy + r5.wz;
  r9.zw = -r6.yx + r5.zw;
  r6.x = (int)r0.y ? r9.z : r9.y; r9.x = (int)r0.y ? r9.y : r9.z;
  r6.y = (int)r0.y ? r9.x : r9.w; r9.y = (int)r0.y ? r9.w : r9.x;
  r5.zw = r12.ww * r2.zw;
  r10.x = r2.w * -0.707106769 + -r5.z;
  r10.y = r2.z * -0.707106769 + r5.w;
  r2.zw = r10.xy + r2.xy;
  r2.xy = -r10.xy + r2.xy;
  r5.zw = r7.zw + r6.zw;
  r6.zw = -r7.zw + r6.zw;
  r7.zw = r9.xy + r6.xy;
  r9.xy = r9.xy + -r6.xy;
  r9.zw = -r9.xy;
  r6.xy = r0.yy ? r9.yz : r9.wx;
  r8.zw = r7.zw + r5.zw;
  r9.xy = r6.zw + r6.xy;
  r6.xy = r6.zw + -r6.xy;
  r5.zw = -r7.zw + r5.zw;
  r6.zw = r8.yx + r7.yx;
  r7.xy = r8.xy + -r7.xy;
  r7.zw = r2.zw + r2.xy;
  r2.xy = r2.zw + -r2.xy;
  r2.zw = -r2.xy;
  r2.xy = r0.yy ? r2.zy : r2.xw;
  r2.zw = r7.zw + r6.zw;
  r8.xy = r7.xy + r2.xy;
  r2.xy = r7.xy + -r2.xy;
  r6.zw = -r7.zw + r6.zw;
  r7.xy = r12.ww * r8.xy;
  r10.x = r8.y * 0.707106769 + -r7.x;
  r10.y = r8.x * 0.707106769 + r7.y;
  r7.xy = r8.zw + r2.zw;
  r8.xy = r8.zw + -r2.zw;
  r11.xy = r10.xy + r9.xy;
  r9.xy = -r10.xy + r9.xy;
  r10.xy = r6.zw + r5.wz;
  r10.zw = -r6.wz + r5.zw;
  r10.x = (int)r0.y ? r10.z : r10.y; r13.x = (int)r0.y ? r10.y : r10.z;
  r10.y = (int)r0.y ? r10.x : r10.w; r13.y = (int)r0.y ? r10.w : r10.x;
  r2.zw = r12.ww * r2.xy;
  r12.x = r2.y * -0.707106769 + -r2.z;
  r12.y = r2.x * -0.707106769 + r2.w;
  r2.xy = r12.xy + r6.xy;
  r6.xy = -r12.xy + r6.xy;
  r5.zw = r1.xy + r4.xy;
  r1.xy = r1.xy + -r4.xy;
  r4.xy = r3.xy + r5.xy;
  r14.xy = r3.xy + -r5.xy;
  r14.zw = -r14.xy;
  r3.xy = r0.yy ? r14.yz : r14.wx;
  r5.xy = r5.zw + r4.xy;
  r12.xy = r3.yx + r1.yx;
  r1.xy = -r3.xy + r1.xy;
  r3.xy = r5.zw + -r4.xy;
  r4.xy = r1.zw + r4.zw;
  r1.zw = r1.wz + -r4.wz;
  r4.zw = r3.zw + r0.zw;
  r14.xy = r3.zw + -r0.zw;
  r14.zw = -r14.xy;
  r0.zw = r0.yy ? r14.zy : r14.xw;
  r3.zw = r4.xy + r4.zw;
  r5.zw = r1.zw + r0.zw;
  r0.zw = r1.zw + -r0.zw;
  r1.zw = r4.xy + -r4.zw;
  r4.xy = r12.ww * r5.zw;
  r14.y = r5.w * 0.707106769 + -r4.x;
  r14.x = r5.z * 0.707106769 + r4.y;
  r4.xy = r5.xy + r3.zw;
  r3.zw = r5.xy + -r3.zw;
  r4.zw = r14.xy + r12.xy;
  r5.xy = -r14.xy + r12.xy;
  r14.xy = r3.yx + r1.zw;
  r14.zw = r3.xy + -r1.wz;
  r3.x = (int)r0.y ? r14.z : r14.y; r12.x = (int)r0.y ? r14.y : r14.z;
  r3.y = (int)r0.y ? r14.x : r14.w; r12.y = (int)r0.y ? r14.w : r14.x;
  r1.zw = r12.ww * r0.zw;
  r14.x = r0.w * -0.707106769 + -r1.z;
  r14.y = r0.z * -0.707106769 + r1.w;
  r0.zw = r14.xy + r1.xy;
  r1.xy = -r14.xy + r1.xy;
  r1.zw = r4.xy + r3.zw;
  r3.zw = r4.xy + -r3.zw;
  r4.xy = r12.xy + r3.xy;
  r14.xy = r12.xy + -r3.xy;
  r14.zw = -r14.xy;
  r3.xy = r0.yy ? r14.yz : r14.wx;
  r5.zw = r4.xy + r1.zw;
  r12.xy = r3.zw + r3.xy;
  r3.xy = r3.zw + -r3.xy;
  r1.zw = -r4.xy + r1.zw;
  r3.zw = r5.yx + r4.wz;
  r4.xy = -r5.xy + r4.zw;
  r4.zw = r1.xy + r0.zw;
  r14.xy = -r1.xy + r0.zw;
  r14.zw = -r14.xy;
  r0.zw = r0.yy ? r14.zy : r14.xw;
  r1.xy = r4.zw + r3.zw;
  r5.xy = r4.xy + r0.zw;
  r0.zw = r4.xy + -r0.zw;
  r3.zw = -r4.zw + r3.zw;
  r4.xy = r12.ww * r5.xy;
  r4.z = r5.y * 0.707106769 + -r4.x;
  r4.w = r5.x * 0.707106769 + r4.y;
  r7.zw = r5.zw + r1.xy;
  r8.zw = r5.zw + -r1.xy;
  r11.zw = r12.xy + r4.zw;
  r9.zw = r12.xy + -r4.zw;
  r4.xy = r3.zw + r1.wz;
  r4.zw = -r3.wz + r1.zw;
  r1.x = (int)r0.y ? r4.z : r4.y; r4.x = (int)r0.y ? r4.y : r4.z;
  r1.y = (int)r0.y ? r4.x : r4.w; r4.y = (int)r0.y ? r4.w : r4.x;
  r1.zw = r12.ww * r0.zw;
  r3.z = r0.w * -0.707106769 + -r1.z;
  r3.w = r0.z * -0.707106769 + r1.w;
  r2.zw = r3.xy + r3.zw;
  r6.zw = r3.xy + -r3.zw;
  if (r0.x != 0) {
    if (cb0[1].x != 0) {
      r0.x = 0;
      r0.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r7.xyzw
      r0.x = 1;
    } else {
      r0.x = 0;
    }
    r0.y = cmp((uint)r0.x < asuint(cb0[1].x));
    if (r0.y != 0) {
      r3.x = 1;
      r3.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r11.xyzw
      r0.x = 2;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[1].x));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r3.x = 2;
      r3.yzw = vThreadGroupID.zzz;
      r13.zw = r4.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r13.xyzw
      r0.x = 3;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[1].x));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r3.x = 3;
      r3.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r2.xyzw
      r0.x = 4;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[1].x));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r3.x = 4;
      r3.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r8.xyzw
      r0.x = 5;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[1].x));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r3.x = 5;
      r3.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r9.xyzw
      r0.x = 6;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[1].x));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r3.x = 6;
      r3.yzw = vThreadGroupID.zzz;
      r10.zw = r1.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r10.xyzw
      r0.x = 7;
    }
    r0.x = cmp((uint)r0.x < asuint(cb0[1].x));
    r0.x = r0.x ? r0.y : 0;
    if (r0.x != 0) {
      r0.x = 7;
      r0.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r6.xyzw
    }
  } else {
    if (cb0[1].y != 0) {
      r0.x = vThreadGroupID.z;
      r0.yzw = float3(0,0,0);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r7.xyzw
      r0.x = 1;
    } else {
      r0.x = 0;
    }
    r0.y = cmp((uint)r0.x < asuint(cb0[1].y));
    if (r0.y != 0) {
      r3.x = vThreadGroupID.z;
      r3.yzw = float3(1.40129846e-045,1.40129846e-045,1.40129846e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r11.xyzw
      r0.x = 2;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[1].y));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r3.x = vThreadGroupID.z;
      r3.yzw = float3(2.80259693e-045,2.80259693e-045,2.80259693e-045);
      r13.zw = r4.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r13.xyzw
      r0.x = 3;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[1].y));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r3.x = vThreadGroupID.z;
      r3.yzw = float3(4.20389539e-045,4.20389539e-045,4.20389539e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r3.xyzw, r2.xyzw
      r0.x = 4;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[1].y));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r2.x = vThreadGroupID.z;
      r2.yzw = float3(5.60519386e-045,5.60519386e-045,5.60519386e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r8.xyzw
      r0.x = 5;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[1].y));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r2.x = vThreadGroupID.z;
      r2.yzw = float3(7.00649232e-045,7.00649232e-045,7.00649232e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r9.xyzw
      r0.x = 6;
    }
    r0.z = cmp((uint)r0.x < asuint(cb0[1].y));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r2.x = vThreadGroupID.z;
      r2.yzw = float3(8.40779079e-045,8.40779079e-045,8.40779079e-045);
      r10.zw = r1.xy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.xyzw, r10.xyzw
      r0.x = 7;
    }
    r0.x = cmp((uint)r0.x < asuint(cb0[1].y));
    r0.x = r0.x ? r0.y : 0;
    if (r0.x != 0) {
      r0.x = vThreadGroupID.z;
      r0.yzw = float3(9.80908925e-045,9.80908925e-045,9.80908925e-045);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r6.xyzw
    }
  }
  return;
}