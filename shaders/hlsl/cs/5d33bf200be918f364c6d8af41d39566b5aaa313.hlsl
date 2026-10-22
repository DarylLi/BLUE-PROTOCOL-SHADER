// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[128];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[16];
  float4 x1[16];
  float4 x2[9];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 1, 1
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
      r1.x = vThreadIDInGroup.x;
      r1.y = vThreadGroupID.z;
      r1.xy = (int2)r1.xy + asint(cb0[1].xy);
      r0.w = cmp(asuint(cb0[1].z) >= (uint)r1.x);
      if (r0.w != 0) {
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x1[0].xy = r2.xy;
        x1[8].xy = r2.zw;
      }
      r2.xyzw = (int4)r1.xxxx + int4(32,8,16,24);
      r3.xyzw = cmp(asuint(cb0[1].zzzz) >= (uint4)r2.yzwx);
      if (r3.x != 0) {
        r4.x = r2.y;
        r4.y = r1.y;
        r4.zw = float2(0,0);
        r4.xyzw = t0.Load(r4.xyz).xyzw;
        x1[1].xy = r4.xy;
        x1[9].xy = r4.zw;
      }
      if (r3.y != 0) {
        r4.x = r2.z;
        r4.y = r1.y;
        r4.zw = float2(0,0);
        r4.xyzw = t0.Load(r4.xyz).xyzw;
        x1[2].xy = r4.xy;
        x1[10].xy = r4.zw;
      }
      if (r3.z != 0) {
        r4.x = r2.w;
        r4.y = r1.y;
        r4.zw = float2(0,0);
        r4.xyzw = t0.Load(r4.xyz).xyzw;
        x1[3].xy = r4.xy;
        x1[11].xy = r4.zw;
      }
      if (r3.w != 0) {
        r2.y = r1.y;
        r2.zw = float2(0,0);
        r2.xyzw = t0.Load(r2.xyz).xyzw;
        x1[4].xy = r2.xy;
        x1[12].xy = r2.zw;
      }
      r2.xyz = (int3)r1.xxx + int3(40,48,56);
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
      r1.y = vThreadIDInGroup.x;
      r1.xy = (int2)r1.xy + asint(cb0[1].xy);
      r0.w = cmp(asuint(cb0[1].w) >= (uint)r1.y);
      if (r0.w != 0) {
        r1.zw = float2(0,0);
        r2.xyzw = t0.Load(r1.xyz).xyzw;
        x1[0].xy = r2.xy;
        x1[8].xy = r2.zw;
      }
      r2.xyzw = (int4)r1.yyyy + int4(8,32,16,24);
      r3.xyzw = cmp(asuint(cb0[1].wwww) >= (uint4)r2.xzwy);
      if (r3.x != 0) {
        r4.x = r1.x;
        r4.y = r2.x;
        r4.zw = float2(0,0);
        r4.xyzw = t0.Load(r4.xyz).xyzw;
        x1[1].xy = r4.xy;
        x1[9].xy = r4.zw;
      }
      if (r3.y != 0) {
        r4.x = r1.x;
        r4.y = r2.z;
        r4.zw = float2(0,0);
        r4.xyzw = t0.Load(r4.xyz).xyzw;
        x1[2].xy = r4.xy;
        x1[10].xy = r4.zw;
      }
      if (r3.z != 0) {
        r4.x = r1.x;
        r4.y = r2.w;
        r4.zw = float2(0,0);
        r4.xyzw = t0.Load(r4.xyz).xyzw;
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
      r2.xyz = (int3)r1.yyy + int3(40,56,48);
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
      r1.xw = float2(65,0);
      r1.z = vThreadGroupID.z;
      r2.xyzw = t0.Load(r1.xzw).xyzw;
      r1.y = vThreadIDInGroup.x;
      r3.xyzw = t0.Load(r1.yzw).xyzw;
      x2[0].xy = r3.xy;
      x2[8].xy = r3.zw;
      r1.y = (int)vThreadIDInGroup.x + 8;
      r4.xyzw = t0.Load(r1.yzw).zxyw;
      r1.x = (int)r1.y + 8;
      r5.xyzw = t0.Load(r1.xzw).zxyw;
      r1.y = (int)r1.x | 24;
      r6.xyzw = t0.Load(r1.yzw).zxyw;
      r1.x = (int)r1.y + 8;
      r7.xyzw = t0.Load(r1.xzw).xyzw;
      r0.z = cmp((int)r1.x == 32);
      r2.xyzw = r7.xyzw + r2.yxwz;
      r2.xyzw = r0.zzzz ? r2.zxyw : r7.zxyw;
      r1.y = (int)r1.x | 40;
      r7.xyzw = t0.Load(r1.yzw).zxyw;
      r1.x = (int)r1.y + 8;
      r8.xyzw = t0.Load(r1.xzw).zxyw;
      r9.x = (int)r1.x | 56;
      r9.yzw = r1.zww;
      r1.xyzw = t0.Load(r9.xyz).zxyw;
      if (vThreadIDInGroup.x == 0) {
        r9.xzw = float3(64,0,0);
        r9.y = vThreadGroupID.z;
        r9.xyzw = t0.Load(r9.xyz).xyzw;
        r3.xyzw = r9.yxwz + r3.xyzw;
        x2[0].xy = r3.xy;
        x2[8].xy = r3.zw;
      }
    } else {
      r3.y = vThreadGroupID.z;
      r3.xzw = float3(64,0,65);
      r9.xyzw = t0.Load(r3.yxz).xyzw;
      r10.xyzw = t0.Load(r3.ywz).xyzw;
      r3.x = vThreadIDInGroup.x;
      r11.xyzw = t0.Load(r3.yxz).xyzw;
      r3.w = (int)vThreadIDInGroup.x + 8;
      r4.xyzw = t0.Load(r3.ywz).zxyw;
      r3.x = (int)r3.w + 8;
      r5.xyzw = t0.Load(r3.yxz).zxyw;
      r3.w = (int)r3.x | 24;
      r6.xyzw = t0.Load(r3.ywz).zxyw;
      r3.x = (int)r3.w + 8;
      r12.xyzw = t0.Load(r3.yxz).xyzw;
      r0.z = cmp((int)r3.x == 32);
      r10.xyzw = r12.xyzw + r10.yxwz;
      r2.xyzw = r0.zzzz ? r10.zxyw : r12.zxyw;
      r3.w = (int)r3.x | 40;
      r7.xyzw = t0.Load(r3.ywz).zxyw;
      r3.x = (int)r3.w + 8;
      r8.xyzw = t0.Load(r3.yxz).zxyw;
      r3.w = (int)r3.x | 56;
      r1.xyzw = t0.Load(r3.ywz).zxyw;
      r3.xyzw = r11.xyzw + r9.yxwz;
      r3.xyzw = vThreadIDInGroup.xxxx ? r11.xyzw : r3.xyzw;
      x2[0].xy = r3.xy;
      x2[8].xy = r3.zw;
    }
    r0.zw = x2[0].xy;
    r3.xy = x2[8].xy;
    g0[vThreadIDInGroup.x].val[0/4] = r0.w;
    r3.z = (int)vThreadIDInGroup.x + 8;
    g0[r3.z].val[0/4] = r4.z;
    r3.w = (int)r3.z + 8;
    g0[r3.w].val[0/4] = r5.z;
    r9.x = (int)r3.w | 24;
    g0[r9.x].val[0/4] = r6.z;
    r9.y = (int)r9.x + 8;
    g0[r9.y].val[0/4] = r2.z;
    r9.z = (int)r9.y | 40;
    g0[r9.z].val[0/4] = r7.z;
    r9.w = (int)r9.z + 8;
    g0[r9.w].val[0/4] = r8.z;
    r10.x = (int)r9.w | 56;
    g0[r10.x].val[0/4] = r1.z;
    GroupMemoryBarrierWithGroupSync();
    r10.y = cmp(0 < (uint)vThreadIDInGroup.x);
    r10.z = (int)-vThreadIDInGroup.x + 64;
    r10.y = r10.y ? r10.z : 0;
    r10.z = g0[r10.y].val[0/4];
    r11.x = r10.z + r0.z;
    r10.z = (int)-r3.z + 64;
    r10.w = g0[r10.z].val[0/4];
    r12.x = r10.w + r4.y;
    r10.w = (int)-r3.w + 64;
    r11.z = g0[r10.w].val[0/4];
    r13.x = r11.z + r5.y;
    r11.z = (int)-r9.x + 64;
    r11.w = g0[r11.z].val[0/4];
    r14.x = r11.w + r6.y;
    r11.w = (int)-r9.y + 64;
    r12.z = g0[r11.w].val[0/4];
    r12.w = cmp(32 < (uint)r9.y);
    r13.z = r12.w ? -1 : 1;
    r15.y = r12.z * r13.z + r2.y;
    r12.z = (int)-r9.z + 64;
    r13.w = g0[r12.z].val[0/4];
    r16.y = -r13.w + r7.y;
    r14.zw = (int2)-r9.ww + int2(64,56);
    r13.w = g0[r14.z].val[0/4];
    r17.y = -r13.w + r8.y;
    r13.w = g0[r14.w].val[0/4];
    r18.y = -r13.w + r1.y;
    r19.y = g0[0].val[0/4];
    r20.y = g0[32].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r0.z;
    g0[r3.z].val[0/4] = r4.y;
    g0[r3.w].val[0/4] = r5.y;
    g0[r9.x].val[0/4] = r6.y;
    g0[r9.y].val[0/4] = r2.y;
    g0[r9.z].val[0/4] = r7.y;
    g0[r9.w].val[0/4] = r8.y;
    g0[r10.x].val[0/4] = r1.y;
    GroupMemoryBarrierWithGroupSync();
    r19.x = g0[0].val[0/4];
    r20.x = g0[32].val[0/4];
    r0.z = g0[r10.y].val[0/4];
    r11.y = r0.w + r0.z;
    r0.z = g0[r10.z].val[0/4];
    r12.y = r4.z + r0.z;
    r0.z = g0[r10.w].val[0/4];
    r13.y = r5.z + r0.z;
    r0.z = g0[r11.z].val[0/4];
    r14.y = r6.z + r0.z;
    r0.z = g0[r11.w].val[0/4];
    r15.z = r0.z * r13.z + r2.z;
    r0.z = g0[r12.z].val[0/4];
    r0.z = r7.z + -r0.z;
    r0.w = g0[r14.z].val[0/4];
    r0.w = r8.z + -r0.w;
    r1.y = g0[r14.w].val[0/4];
    r1.y = r1.z + -r1.y;
    r15.x = -r15.z;
    r2.yz = r12.ww ? r15.xy : r15.yz;
    r1.z = cmp((int)r9.y == 32);
    r2.yz = r1.zz ? r20.xy : r2.yz;
    r16.x = -r0.z;
    r17.x = -r0.w;
    r18.x = -r1.y;
    r0.zw = vThreadIDInGroup.xx ? r11.xy : r19.xy;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r3.y;
    g0[r3.z].val[0/4] = r4.w;
    g0[r3.w].val[0/4] = r5.w;
    g0[r9.x].val[0/4] = r6.w;
    g0[r9.y].val[0/4] = r2.w;
    g0[r9.z].val[0/4] = r7.w;
    g0[r9.w].val[0/4] = r8.w;
    g0[r10.x].val[0/4] = r1.w;
    GroupMemoryBarrierWithGroupSync();
    r1.y = g0[r10.y].val[0/4];
    r11.x = r3.x + r1.y;
    r1.y = g0[r10.z].val[0/4];
    r15.x = r4.x + r1.y;
    r1.y = g0[r10.w].val[0/4];
    r19.x = r5.x + r1.y;
    r1.y = g0[r11.z].val[0/4];
    r20.x = r6.x + r1.y;
    r1.y = g0[r11.w].val[0/4];
    r21.y = r1.y * r13.z + r2.x;
    r1.y = g0[r12.z].val[0/4];
    r22.y = r7.x + -r1.y;
    r1.y = g0[r14.z].val[0/4];
    r23.y = r8.x + -r1.y;
    r1.y = g0[r14.w].val[0/4];
    r24.y = r1.x + -r1.y;
    r25.y = g0[0].val[0/4];
    r26.y = g0[32].val[0/4];
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r3.x;
    g0[r3.z].val[0/4] = r4.x;
    g0[r3.w].val[0/4] = r5.x;
    g0[r9.x].val[0/4] = r6.x;
    g0[r9.y].val[0/4] = r2.x;
    g0[r9.z].val[0/4] = r7.x;
    g0[r9.w].val[0/4] = r8.x;
    g0[r10.x].val[0/4] = r1.x;
    GroupMemoryBarrierWithGroupSync();
    r25.x = g0[0].val[0/4];
    r26.x = g0[32].val[0/4];
    r1.x = g0[r10.y].val[0/4];
    r11.y = r3.y + r1.x;
    r1.x = g0[r10.z].val[0/4];
    r15.y = r4.w + r1.x;
    r1.x = g0[r10.w].val[0/4];
    r19.y = r5.w + r1.x;
    r1.x = g0[r11.z].val[0/4];
    r20.y = r6.w + r1.x;
    r1.x = g0[r11.w].val[0/4];
    r21.z = r1.x * r13.z + r2.w;
    r1.x = g0[r12.z].val[0/4];
    r1.x = r7.w + -r1.x;
    r1.y = g0[r14.z].val[0/4];
    r1.y = r8.w + -r1.y;
    r2.x = g0[r14.w].val[0/4];
    r1.w = -r2.x + r1.w;
    r21.x = -r21.z;
    r2.xw = r12.ww ? r21.xy : r21.yz;
    r2.xw = r1.zz ? r26.xy : r2.xw;
    r22.x = -r1.x;
    r23.x = -r1.y;
    r24.x = -r1.w;
    r1.xy = vThreadIDInGroup.xx ? r11.xy : r25.xy;
    GroupMemoryBarrierWithGroupSync();
    x0[0].xy = r0.zw;
    x0[1].xy = r12.xy;
    x0[2].xy = r13.xy;
    x0[3].xy = r14.xy;
    x0[4].xy = r2.yz;
    x0[5].xy = r16.xy;
    x0[6].xy = r17.xy;
    x0[7].xy = r18.xy;
    x0[8].xy = r1.xy;
    x0[9].xy = r15.xy;
    x0[10].xy = r19.xy;
    x0[11].xy = r20.xy;
    x0[12].xy = r2.xw;
    x0[13].xy = r22.xy;
    x0[14].xy = r23.xy;
    x0[15].xy = r24.xy;
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
    r0.zw = float2(0.015625,0.015625) * r0.zw;
    r1.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r1.xyzw;
    r2.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r2.xyzw;
    r3.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r3.xyzw;
    r4.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r4.xyzw;
    r5.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r5.xyzw;
    r6.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r6.xyzw;
    r7.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r7.xyzw;
    r8.xy = float2(0.015625,0.015625) * r8.xy;
  }
  r8.zw = r0.zw + r2.zw;
  r0.zw = r0.zw + -r2.zw;
  r2.zw = r1.zw + r3.zw;
  r9.xy = r1.zw + -r3.zw;
  r9.zw = -r9.yx;
  r1.zw = r0.yy ? r9.zx : r9.yw;
  r3.zw = r8.zw + r2.zw;
  r9.xy = r1.zw + r0.zw;
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
  r10.x = r8.w * 0.707106769 + -r3.x;
  r10.y = r8.z * 0.707106769 + r3.y;
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
  if (27 == 0) r1.z = 0; else if (27+2 < 32) {   r1.z = (uint)vThreadIDInGroup.x << (32-(27 + 2)); r1.z = (uint)r1.z >> (32-27);  } else r1.z = (uint)vThreadIDInGroup.x >> 2;
  r1.z = mad((int)vThreadIDInGroup.x, 8, (int)r1.z);
  g0[r1.z].val[0/4] = r3.x;
  bitmask.x = ((~(-1 << 29)) << 3) & 0xffffffff;  r10.x = (((uint)vThreadIDInGroup.x << 3) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 3)) << 0) & 0xffffffff;  r10.y = (((uint)vThreadIDInGroup.x << 0) & bitmask.y) | ((uint)8 & ~bitmask.y);
  r1.w = (uint)r10.x >> 5;
  r1.w = (int)r1.w + (int)r10.x;
  g0[r1.w].val[0/4] = r4.x;
  r11.xy = (int2)r10.xy + int2(1,8);
  r2.w = (uint)r11.x >> 5;
  r3.x = (int)r11.x + (int)r2.w;
  g0[r3.x].val[0/4] = r9.x;
  r12.xy = (int2)r11.xy | int2(3,24);
  r2.w = (int)r2.w + (int)r12.x;
  g0[r2.w].val[0/4] = r1.x;
  r13.xyz = (int3)r12.xyy + int3(1,8,9);
  r1.x = (uint)r13.x >> 5;
  r4.x = (int)r13.x + (int)r1.x;
  g0[r4.x].val[0/4] = r3.z;
  r14.xy = (int2)r13.xy | int2(5,40);
  r1.x = (int)r1.x + (int)r14.x;
  g0[r1.x].val[0/4] = r8.z;
  r15.xyzw = (int4)r14.yxyy + int4(8,1,1,9);
  r3.z = (uint)r15.y >> 5;
  r8.z = (int)r15.y + (int)r3.z;
  g0[r8.z].val[0/4] = r2.x;
  r16.xy = (int2)r15.yx | int2(7,56);
  r2.x = (int)r3.z + (int)r16.x;
  g0[r2.x].val[0/4] = r0.z;
  GroupMemoryBarrierWithGroupSync();
  r17.x = g0[vThreadIDInGroup.x].val[0/4];
  r0.z = g0[r10.y].val[0/4];
  r3.z = g0[r11.y].val[0/4];
  r9.x = g0[r12.y].val[0/4];
  r9.z = g0[r13.z].val[0/4];
  r9.w = g0[r15.z].val[0/4];
  r10.x = g0[r15.w].val[0/4];
  r11.x = (int)r16.y + 1;
  r12.x = g0[r11.x].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.z].val[0/4] = r3.y;
  g0[r1.w].val[0/4] = r4.y;
  g0[r3.x].val[0/4] = r9.y;
  g0[r2.w].val[0/4] = r1.y;
  g0[r4.x].val[0/4] = r3.w;
  g0[r1.x].val[0/4] = r8.w;
  g0[r8.z].val[0/4] = r2.y;
  g0[r2.x].val[0/4] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r17.y = g0[vThreadIDInGroup.x].val[0/4];
  r0.w = g0[r10.y].val[0/4];
  r1.y = g0[r11.y].val[0/4];
  r2.y = g0[r12.y].val[0/4];
  r3.y = g0[r13.z].val[0/4];
  r3.w = g0[r15.z].val[0/4];
  r4.y = g0[r15.w].val[0/4];
  r8.w = g0[r11.x].val[0/4];
  r9.y = (uint)vThreadIDInGroup.x;
  r17.zw = float2(0.0981747732,-0.0981747732) * r9.yy;
  r9.y = r0.y ? r17.z : r17.w;
  sincos(r9.y, r13.x, r14.x);
  r9.y = r13.x * r0.w;
  r18.y = r14.x * r0.z + -r9.y;
  r0.z = r13.x * r0.z;
  r18.x = r14.x * r0.w + r0.z;
  r0.z = r13.x * r13.x;
  r0.z = r14.x * r14.x + -r0.z;
  r0.w = dot(r14.xx, r13.xx);
  r9.y = r0.w * r1.y;
  r19.x = r0.z * r3.z + -r9.y;
  r3.z = r3.z * r0.w;
  r19.y = r0.z * r1.y + r3.z;
  r1.y = r0.w * r13.x;
  r1.y = r0.z * r14.x + -r1.y;
  r3.z = r14.x * r0.w;
  r3.z = r0.z * r13.x + r3.z;
  r9.y = r3.z * r2.y;
  r20.x = r1.y * r9.x + -r9.y;
  r9.x = r9.x * r3.z;
  r20.y = r1.y * r2.y + r9.x;
  r2.y = r3.z * r13.x;
  r2.y = r1.y * r14.x + -r2.y;
  r9.x = r14.x * r3.z;
  r9.x = r1.y * r13.x + r9.x;
  r9.y = r9.x * r3.y;
  r21.x = r2.y * r9.z + -r9.y;
  r9.y = r9.z * r9.x;
  r21.y = r2.y * r3.y + r9.y;
  r3.y = r9.x * r13.x;
  r3.y = r2.y * r14.x + -r3.y;
  r9.y = r14.x * r9.x;
  r9.y = r2.y * r13.x + r9.y;
  r9.z = r9.y * r3.w;
  r22.y = r3.y * r9.w + -r9.z;
  r9.z = r9.w * r9.y;
  r22.x = r3.y * r3.w + r9.z;
  r3.w = r9.y * r13.x;
  r3.w = r3.y * r14.x + -r3.w;
  r9.z = r14.x * r9.y;
  r9.z = r3.y * r13.x + r9.z;
  r9.w = r9.z * r4.y;
  r23.x = r3.w * r10.x + -r9.w;
  r9.w = r10.x * r9.z;
  r23.y = r3.w * r4.y + r9.w;
  r4.y = r9.z * r13.x;
  r4.y = r3.w * r14.x + -r4.y;
  r9.w = r14.x * r9.z;
  r9.w = r3.w * r13.x + r9.w;
  r10.x = r9.w * r8.w;
  r24.x = r4.y * r12.x + -r10.x;
  r10.x = r12.x * r9.w;
  r24.y = r4.y * r8.w + r10.x;
  r17.zw = r21.xy + r17.xy;
  r17.xy = -r21.xy + r17.xy;
  r18.zw = r23.xy + r19.xy;
  r19.xy = -r23.xy + r19.xy;
  r19.zw = -r19.yx;
  r19.xy = r0.yy ? r19.zx : r19.yw;
  r19.zw = r18.zw + r17.zw;
  r20.zw = r19.xy + r17.xy;
  r17.xy = -r19.xy + r17.xy;
  r17.zw = -r18.zw + r17.zw;
  r18.zw = r22.yx + r18.yx;
  r18.xy = -r22.xy + r18.xy;
  r19.xy = r24.xy + r20.xy;
  r21.xy = -r24.xy + r20.xy;
  r21.zw = -r21.yx;
  r20.xy = r0.yy ? r21.xz : r21.wy;
  r21.xy = r19.xy + r18.zw;
  r21.zw = r20.xy + r18.xy;
  r18.xy = -r20.xy + r18.xy;
  r18.zw = -r19.xy + r18.zw;
  r19.xy = r21.zw * r2.zz;
  r20.x = r21.w * 0.707106769 + -r19.x;
  r20.y = r21.z * 0.707106769 + r19.y;
  r19.xy = r21.xy + r19.zw;
  r19.zw = -r21.xy + r19.zw;
  r21.xy = r20.zw + r20.xy;
  r20.xy = r20.zw + -r20.xy;
  r22.zw = r18.zw + r17.wz;
  r22.xy = -r18.wz + r17.zw;
  r22.x = (int)r0.y ? r22.w : r22.x; r23.x = (int)r0.y ? r22.x : r22.w;
  r22.y = (int)r0.y ? r22.y : r22.z; r23.y = (int)r0.y ? r22.z : r22.y;
  r17.zw = r18.xy * r2.zz;
  r24.x = r18.y * -0.707106769 + -r17.z;
  r24.y = r18.x * -0.707106769 + r17.w;
  r17.zw = r24.xy + r17.xy;
  r17.xy = -r24.xy + r17.xy;
  GroupMemoryBarrierWithGroupSync();
  r18.xy = r4.zw + r6.zw;
  r4.zw = r4.zw + -r6.zw;
  r6.zw = r5.zw + r7.zw;
  r24.xy = r5.zw + -r7.zw;
  r24.zw = -r24.yx;
  r5.zw = r0.yy ? r24.zx : r24.yw;
  r7.zw = r18.xy + r6.zw;
  r18.zw = r5.zw + r4.zw;
  r4.zw = -r5.zw + r4.zw;
  r5.zw = r18.xy + -r6.zw;
  r6.zw = r5.xy + r7.xy;
  r5.xy = r5.yx + -r7.yx;
  r7.xy = r6.xy + r8.xy;
  r24.xy = r6.xy + -r8.xy;
  r24.zw = -r24.yx;
  r6.xy = r0.yy ? r24.xz : r24.wy;
  r8.xy = r7.xy + r6.zw;
  r18.xy = r6.xy + r5.xy;
  r5.xy = -r6.xy + r5.xy;
  r6.xy = -r7.xy + r6.zw;
  r6.zw = r18.xy * r2.zz;
  r7.x = r18.y * 0.707106769 + -r6.z;
  r7.y = r18.x * 0.707106769 + r6.w;
  r6.zw = r8.xy + r7.zw;
  r7.zw = -r8.xy + r7.zw;
  r8.xy = r18.zw + r7.xy;
  r7.xy = r18.zw + -r7.xy;
  r18.zw = r6.xy + r5.wz;
  r18.xy = -r6.yx + r5.zw;
  r6.x = (int)r0.y ? r18.w : r18.x; r18.x = (int)r0.y ? r18.x : r18.w;
  r6.y = (int)r0.y ? r18.y : r18.z; r18.y = (int)r0.y ? r18.z : r18.y;
  r5.zw = r5.xy * r2.zz;
  r24.x = r5.y * -0.707106769 + -r5.z;
  r24.y = r5.x * -0.707106769 + r5.w;
  r5.xy = r24.xy + r4.zw;
  r4.zw = -r24.xy + r4.zw;
  g0[r1.z].val[0/4] = r6.z;
  g0[r1.w].val[0/4] = r8.x;
  g0[r3.x].val[0/4] = r18.x;
  g0[r2.w].val[0/4] = r5.x;
  g0[r4.x].val[0/4] = r7.z;
  g0[r1.x].val[0/4] = r7.x;
  g0[r8.z].val[0/4] = r6.x;
  g0[r2.x].val[0/4] = r4.z;
  GroupMemoryBarrierWithGroupSync();
  r5.z = g0[vThreadIDInGroup.x].val[0/4];
  r4.z = g0[r10.y].val[0/4];
  r5.x = g0[r11.y].val[0/4];
  r6.x = g0[r12.y].val[0/4];
  r6.z = g0[r13.z].val[0/4];
  r7.x = g0[r15.z].val[0/4];
  r7.z = g0[r15.w].val[0/4];
  r8.x = g0[r11.x].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  g0[r1.z].val[0/4] = r6.w;
  g0[r1.w].val[0/4] = r8.y;
  g0[r3.x].val[0/4] = r18.y;
  g0[r2.w].val[0/4] = r5.y;
  g0[r4.x].val[0/4] = r7.w;
  g0[r1.x].val[0/4] = r7.y;
  g0[r8.z].val[0/4] = r6.y;
  g0[r2.x].val[0/4] = r4.w;
  GroupMemoryBarrierWithGroupSync();
  r5.w = g0[vThreadIDInGroup.x].val[0/4];
  r1.x = g0[r10.y].val[0/4];
  r1.z = g0[r11.y].val[0/4];
  r1.w = g0[r12.y].val[0/4];
  r2.x = g0[r13.z].val[0/4];
  r2.w = g0[r15.z].val[0/4];
  r3.x = g0[r15.w].val[0/4];
  r4.x = g0[r11.x].val[0/4];
  r4.w = r13.x * r1.x;
  r18.y = r14.x * r4.z + -r4.w;
  r4.z = r4.z * r13.x;
  r18.x = r14.x * r1.x + r4.z;
  r1.x = r1.z * r0.w;
  r24.x = r0.z * r5.x + -r1.x;
  r0.w = r5.x * r0.w;
  r24.y = r0.z * r1.z + r0.w;
  r0.z = r3.z * r1.w;
  r5.x = r1.y * r6.x + -r0.z;
  r0.z = r6.x * r3.z;
  r5.y = r1.y * r1.w + r0.z;
  r0.z = r9.x * r2.x;
  r0.z = r2.y * r6.z + -r0.z;
  r1.x = r6.z * r9.x;
  r0.w = r2.y * r2.x + r1.x;
  r1.x = r9.y * r2.w;
  r1.y = r3.y * r7.x + -r1.x;
  r1.z = r7.x * r9.y;
  r1.x = r3.y * r2.w + r1.z;
  r1.z = r9.z * r3.x;
  r2.x = r3.w * r7.z + -r1.z;
  r1.z = r7.z * r9.z;
  r2.y = r3.w * r3.x + r1.z;
  r1.z = r9.w * r4.x;
  r3.x = r4.y * r8.x + -r1.z;
  r1.z = r8.x * r9.w;
  r3.y = r4.y * r4.x + r1.z;
  r1.zw = r5.zw + r0.zw;
  r0.zw = r5.zw + -r0.zw;
  r3.zw = r24.xy + r2.xy;
  r4.xy = r24.xy + -r2.xy;
  r4.zw = -r4.yx;
  r2.xy = r0.yy ? r4.zx : r4.yw;
  r4.xy = r3.zw + r1.zw;
  r4.zw = r2.xy + r0.zw;
  r0.zw = -r2.xy + r0.zw;
  r1.zw = -r3.zw + r1.zw;
  r2.xy = r18.yx + r1.yx;
  r1.xy = r18.xy + -r1.xy;
  r3.zw = r5.xy + r3.xy;
  r5.xy = r5.xy + -r3.xy;
  r5.zw = -r5.yx;
  r3.xy = r0.yy ? r5.xz : r5.wy;
  r5.xy = r3.zw + r2.xy;
  r5.zw = r3.xy + r1.xy;
  r1.xy = -r3.xy + r1.xy;
  r2.xy = -r3.zw + r2.xy;
  r3.xy = r5.zw * r2.zz;
  r3.z = r5.w * 0.707106769 + -r3.x;
  r3.w = r5.z * 0.707106769 + r3.y;
  r3.xy = r5.xy + r4.xy;
  r4.xy = -r5.xy + r4.xy;
  r5.xy = r4.zw + r3.zw;
  r3.zw = r4.zw + -r3.zw;
  r6.zw = r2.xy + r1.wz;
  r6.xy = -r2.yx + r1.zw;
  r2.x = (int)r0.y ? r6.w : r6.x; r6.x = (int)r0.y ? r6.x : r6.w;
  r2.y = (int)r0.y ? r6.y : r6.z; r6.y = (int)r0.y ? r6.z : r6.y;
  r1.zw = r2.zz * r1.xy;
  r2.z = r1.y * -0.707106769 + -r1.z;
  r2.w = r1.x * -0.707106769 + r1.w;
  r1.xy = r2.zw + r0.zw;
  r0.zw = -r2.zw + r0.zw;
  if (r0.y != 0) {
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r19.x;
    g0[r10.y].val[0/4] = r21.x;
    g0[r11.y].val[0/4] = r23.x;
    g0[r12.y].val[0/4] = r17.z;
    g0[r13.y].val[0/4] = r19.z;
    g0[r14.y].val[0/4] = r20.x;
    g0[r15.x].val[0/4] = r22.x;
    g0[r16.y].val[0/4] = r17.x;
    GroupMemoryBarrierWithGroupSync();
    r0.y = cmp(0 < (uint)vThreadIDInGroup.x);
    r1.z = (int)-vThreadIDInGroup.x + 64;
    r0.y = r0.y ? r1.z : 0;
    r1.z = g0[r0.y].val[0/4];
    r1.z = r19.x + r1.z;
    r1.w = (int)-r10.y + 64;
    r2.z = g0[r1.w].val[0/4];
    r7.x = r21.x + r2.z;
    r2.z = (int)-r11.y + 64;
    r2.w = g0[r2.z].val[0/4];
    r8.x = r23.x + r2.w;
    r2.w = (int)-r12.y + 64;
    r4.z = g0[r2.w].val[0/4];
    r9.x = r17.z + r4.z;
    r4.z = (int)-r13.y + 64;
    r4.w = g0[r4.z].val[0/4];
    r5.z = cmp(32 < (uint)r13.y);
    r5.w = r5.z ? -1 : 1;
    r18.y = r4.w * r5.w + r19.z;
    r4.w = (int)-r14.y + 64;
    r6.z = g0[r4.w].val[0/4];
    r6.z = r20.x + -r6.z;
    r7.zw = (int2)-r15.xx + int2(64,56);
    r6.w = g0[r7.z].val[0/4];
    r6.w = r22.x + -r6.w;
    r8.z = g0[r7.w].val[0/4];
    r8.z = r17.x + -r8.z;
    r8.w = g0[0].val[0/4];
    r8.w = r8.w + r8.w;
    r24.x = vThreadIDInGroup.x ? r1.z : r8.w;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r19.y;
    g0[r10.y].val[0/4] = r21.y;
    g0[r11.y].val[0/4] = r23.y;
    g0[r12.y].val[0/4] = r17.w;
    g0[r13.y].val[0/4] = r19.w;
    g0[r14.y].val[0/4] = r20.y;
    g0[r15.x].val[0/4] = r22.y;
    g0[r16.y].val[0/4] = r17.y;
    GroupMemoryBarrierWithGroupSync();
    r1.z = g0[r0.y].val[0/4];
    r1.z = r19.y + -r1.z;
    r8.w = g0[r1.w].val[0/4];
    r7.y = r21.y + -r8.w;
    r8.w = g0[r2.z].val[0/4];
    r8.y = r23.y + -r8.w;
    r8.w = g0[r2.w].val[0/4];
    r9.y = r17.w + -r8.w;
    r8.w = g0[r4.z].val[0/4];
    r18.x = r19.w + r8.w;
    r8.w = g0[r4.w].val[0/4];
    r8.w = r20.y + r8.w;
    r9.z = g0[r7.z].val[0/4];
    r9.z = r22.y + r9.z;
    r9.w = g0[r7.w].val[0/4];
    r9.w = r17.y + r9.w;
    r10.x = g0[0].val[0/4];
    r10.x = r10.x + r10.x;
    r24.y = vThreadIDInGroup.x ? r1.z : r10.x;
    r24.xy = float2(0.5,0.5) * r24.yx;
    r25.xy = float2(0.5,0.5) * r7.xy;
    r26.xy = float2(0.5,0.5) * r8.xy;
    r27.xy = float2(0.5,0.5) * r9.xy;
    r18.xyzw = float4(0.5,0.5,0.5,-0.5) * r18.yxxy;
    r18.xy = r5.zz ? r18.wz : r18.yx;
    r1.z = -0.5 * r8.w;
    r28.x = -r1.z;
    r28.y = -0.5 * r6.z;
    r1.z = -0.5 * r9.z;
    r29.x = -r1.z;
    r29.y = -0.5 * r6.w;
    r1.z = -0.5 * r9.w;
    r9.x = -r1.z;
    r9.y = -0.5 * r8.z;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r3.x;
    g0[r10.y].val[0/4] = r5.x;
    g0[r11.y].val[0/4] = r6.x;
    g0[r12.y].val[0/4] = r1.x;
    g0[r13.y].val[0/4] = r4.x;
    g0[r14.y].val[0/4] = r3.z;
    g0[r15.x].val[0/4] = r2.x;
    g0[r16.y].val[0/4] = r0.z;
    GroupMemoryBarrierWithGroupSync();
    r1.z = g0[r0.y].val[0/4];
    r1.z = r3.x + r1.z;
    r6.z = g0[r1.w].val[0/4];
    r6.z = r6.z + r5.x;
    r7.x = g0[r2.z].val[0/4];
    r8.z = r7.x + r6.x;
    r7.x = g0[r2.w].val[0/4];
    r20.z = r7.x + r1.x;
    r7.x = g0[r4.z].val[0/4];
    r21.w = r7.x * r5.w + r4.x;
    r5.w = g0[r4.w].val[0/4];
    r5.w = -r5.w + r3.z;
    r7.x = g0[r7.z].val[0/4];
    r7.x = -r7.x + r2.x;
    r7.y = g0[r7.w].val[0/4];
    r7.y = -r7.y + r0.z;
    r8.x = g0[0].val[0/4];
    r8.x = r8.x + r8.x;
    r22.z = vThreadIDInGroup.x ? r1.z : r8.x;
    GroupMemoryBarrierWithGroupSync();
    g0[vThreadIDInGroup.x].val[0/4] = r3.y;
    g0[r10.y].val[0/4] = r5.y;
    g0[r11.y].val[0/4] = r6.y;
    g0[r12.y].val[0/4] = r1.y;
    g0[r13.y].val[0/4] = r4.y;
    g0[r14.y].val[0/4] = r3.w;
    g0[r15.x].val[0/4] = r2.y;
    g0[r16.y].val[0/4] = r0.w;
    GroupMemoryBarrierWithGroupSync();
    r0.y = g0[r0.y].val[0/4];
    r0.y = r3.y + -r0.y;
    r1.z = g0[r1.w].val[0/4];
    r6.w = r5.y + -r1.z;
    r1.z = g0[r2.z].val[0/4];
    r8.w = r6.y + -r1.z;
    r1.z = g0[r2.w].val[0/4];
    r20.w = r1.y + -r1.z;
    r1.z = g0[r4.z].val[0/4];
    r21.z = r4.y + r1.z;
    r1.z = g0[r4.w].val[0/4];
    r1.z = r3.w + r1.z;
    r1.w = g0[r7.z].val[0/4];
    r1.w = r2.y + r1.w;
    r2.z = g0[r7.w].val[0/4];
    r2.z = r2.z + r0.w;
    r2.w = g0[0].val[0/4];
    r2.w = r2.w + r2.w;
    r22.w = vThreadIDInGroup.x ? r0.y : r2.w;
    r24.zw = float2(0.5,0.5) * r22.wz;
    r25.zw = float2(0.5,0.5) * r6.zw;
    r26.zw = float2(0.5,0.5) * r8.zw;
    r27.zw = float2(0.5,0.5) * r20.zw;
    r4.zw = float2(0.5,0.5) * r21.wz;
    r6.zw = float2(0.5,-0.5) * r21.zw;
    r18.zw = r5.zz ? r6.wz : r4.wz;
    r0.y = -0.5 * r1.z;
    r28.z = -r0.y;
    r28.w = -0.5 * r5.w;
    r0.y = -0.5 * r1.w;
    r29.z = -r0.y;
    r29.w = -0.5 * r7.x;
    r0.y = -0.5 * r2.z;
    r9.z = -r0.y;
    r9.w = -0.5 * r7.y;
    if (r0.x != 0) {
      r7.x = vThreadIDInGroup.x;
      r7.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r7.xyzw, r24.yxwz
      r10.z = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.yzzz, r25.xyzw
      r11.z = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r11.yzzz, r26.xyzw
      r12.z = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r12.yzzz, r27.xyzw
      r13.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r13.ywww, r18.yxwz
      r0.y = cmp((int)r13.y == 32);
      if (r0.y != 0) {
        r7.x = 32;
        r7.yzw = vThreadGroupID.zzz;
        r8.xz = r18.yw;
        r8.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r7.xyzw, r8.xyzw
        r7.x = 65;
        r7.yzw = vThreadGroupID.zzz;
        r18.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r7.xyzw, r18.xyzw
      }
      r14.z = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r14.yzzz, r28.xyzw
      r15.yzw = vThreadGroupID.zzz;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r15.xyzw, r29.xyzw
      r16.z = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r16.yzzz, r9.xyzw
      if (vThreadIDInGroup.x == 0) {
        r7.x = 0;
        r7.yzw = vThreadGroupID.zzz;
        r8.xz = r24.yw;
        r8.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r7.xyzw, r8.xyzw
        r7.x = 64;
        r7.yzw = vThreadGroupID.zzz;
        r24.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r7.xyzw, r24.xyzw
      }
    } else {
      r7.x = vThreadGroupID.z;
      r7.yzw = vThreadIDInGroup.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r7.xyzw, r24.yxwz
      r10.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r10.wyyy, r25.xyzw
      r11.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r11.wyyy, r26.xyzw
      r12.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r12.wyyy, r27.xyzw
      r7.x = vThreadGroupID.z;
      r7.yzw = r13.yyy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r7.xyzw, r18.yxwz
      r0.y = cmp((int)r13.y == 32);
      if (r0.y != 0) {
        r7.x = vThreadGroupID.z;
        r7.yzw = float3(4.48415509e-044,4.48415509e-044,4.48415509e-044);
        r8.xz = r18.yw;
        r8.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r7.xyzw, r8.xyzw
        r7.x = vThreadGroupID.z;
        r7.yzw = float3(9.10844002e-044,9.10844002e-044,9.10844002e-044);
        r18.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r7.xyzw, r18.xyzw
      }
      r14.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r14.wyyy, r28.xyzw
      r7.x = vThreadGroupID.z;
      r7.yzw = r15.xxx;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r7.xyzw, r29.xyzw
      r16.w = vThreadGroupID.z;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r16.wyyy, r9.xyzw
      if (vThreadIDInGroup.x == 0) {
        r7.x = vThreadGroupID.z;
        r7.yzw = float3(0,0,0);
        r8.xz = r24.yw;
        r8.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r7.xyzw, r8.xyzw
        r7.x = vThreadGroupID.z;
        r7.yzw = float3(8.96831017e-044,8.96831017e-044,8.96831017e-044);
        r24.yw = float2(0,0);
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r7.xyzw, r24.xyzw
      }
    }
  } else {
    r1.zw = min(float2(0,0), -r19.xy);
    r7.xy = -r1.zw;
    r1.zw = min(float2(0,0), -r3.xy);
    r7.zw = -r1.zw;
    r1.zw = min(float2(0,0), -r21.xy);
    r8.xy = -r1.zw;
    r1.zw = min(float2(0,0), -r5.xy);
    r8.zw = -r1.zw;
    r1.zw = min(float2(0,0), -r23.xy);
    r5.xy = -r1.zw;
    r1.zw = min(float2(0,0), -r6.xy);
    r5.zw = -r1.zw;
    r1.zw = min(float2(0,0), -r17.zw);
    r1.xy = min(float2(0,0), -r1.xy);
    r6.xyzw = -r1.zwxy;
    r1.xy = min(float2(0,0), -r19.zw);
    r1.xy = -r1.xy;
    r2.zw = min(float2(0,0), -r4.xy);
    r1.zw = -r2.zw;
    r2.zw = min(float2(0,0), -r20.xy);
    r4.xy = -r2.zw;
    r2.zw = min(float2(0,0), -r3.zw);
    r4.zw = -r2.zw;
    r2.zw = min(float2(0,0), -r22.xy);
    r2.xy = min(float2(0,0), -r2.xy);
    r3.xyzw = -r2.zwxy;
    r2.xy = min(float2(0,0), -r17.xy);
    r2.xy = -r2.xy;
    r0.yz = min(float2(0,0), -r0.zw);
    r2.zw = -r0.yz;
    if (r0.x != 0) {
      r0.w = (int)vThreadIDInGroup.x + asint(cb0[2].x);
      r0.y = (int)vThreadGroupID.z + asint(cb0[2].y);
      r9.x = cmp((uint)r0.w < asuint(cb0[2].z));
      if (r9.x != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.wyyy, r7.xyzw
        r0.z = (int)r0.w + 8;
      } else {
        r0.z = r0.w;
      }
      r0.w = cmp((uint)r0.z < asuint(cb0[2].z));
      r0.w = r0.w ? r9.x : 0;
      if (r0.w != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.zyyy, r8.xyzw
        r0.x = (int)r0.z + 8;
      } else {
        r0.x = r0.z;
      }
      r0.z = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.z ? r0.w : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r5.xyzw
        r0.x = (int)r0.x + 8;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r6.xyzw
        r0.x = (int)r0.x + 8;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r1.xyzw
        r0.x = (int)r0.x + 8;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r4.xyzw
        r0.x = (int)r0.x + 8;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r3.xyzw
        r0.x = (int)r0.x + 8;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].z));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.xyyy, r2.xyzw
      }
    } else {
      r0.y = (int)vThreadGroupID.z + asint(cb0[2].x);
      r0.x = (int)vThreadIDInGroup.x + asint(cb0[2].y);
      r9.x = cmp((uint)r0.x < asuint(cb0[2].w));
      if (r9.x != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r7.xyzw
        r0.z = (int)r0.x + 8;
      } else {
        r0.z = r0.x;
      }
      r7.x = cmp((uint)r0.z < asuint(cb0[2].w));
      r7.x = r7.x ? r9.x : 0;
      if (r7.x != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yzzz, r8.xyzw
        r0.w = (int)r0.z + 8;
      } else {
        r0.w = r0.z;
      }
      r0.z = cmp((uint)r0.w < asuint(cb0[2].w));
      r0.z = r0.z ? r7.x : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.ywww, r5.xyzw
        r0.x = (int)r0.w + 8;
      } else {
        r0.x = r0.w;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].w));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r6.xyzw
        r0.x = (int)r0.x + 8;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].w));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r1.xyzw
        r0.x = (int)r0.x + 8;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].w));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r4.xyzw
        r0.x = (int)r0.x + 8;
      }
      r0.w = cmp((uint)r0.x < asuint(cb0[2].w));
      r0.z = r0.w ? r0.z : 0;
      if (r0.z != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r0.yxxx, r3.xyzw
        r0.x = (int)r0.x + 8;
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