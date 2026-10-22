// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[131];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[24];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.zw = r0.xy * cb0[2].xy + cb0[2].zw;
  r0.zw = max(cb0[4].xy, r0.zw);
  r0.zw = min(cb0[4].zw, r0.zw);
  r1.xyz = t1.SampleLevel(s0_s, r0.zw, 0).xyz;
  r1.w = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r2.x = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r2.z = r2.x + r1.w;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r3.xyzw = t2.SampleLevel(s0_s, r0.zw, 0).xyzw;
  r1.w = dot(r0.xy, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r4.x = frac(r1.w);
  r0.xy = float2(32.6650009,11.8149996) + r0.xy;
  r0.x = dot(r0.xy, float2(0.0671105608,0.00583714992));
  r0.x = frac(r0.x);
  r0.x = 52.9829178 * r0.x;
  r4.y = frac(r0.x);
  r0.xy = float2(-0.5,-0.5) + r4.xy;
  r0.xy = cb1[130].zw * r0.xy;
  r0.xy = r0.xy * cb0[23].xx + r0.zw;
  r1.w = cb0[13].x * r2.z;
  r1.w = 2.82842708 * r1.w;
  r4.xy = r0.zw * cb0[6].xy + cb0[6].zw;
  r2.w = cmp(cb1[31].w < 1);
  r4.z = r2.w ? r2.z : 1;
  r2.xy = r4.xy * r4.zz;
  r4.xyz = cb1[70].xyz + cb0[19].xyz;
  r5.xyzw = float4(100000,0,0,0);
  r6.z = 0;
  r4.w = 1;
  while (true) {
    r7.x = cmp(0 >= (uint)r4.w);
    if (r7.x != 0) break;
    r7.x = (int)r4.w * 3;
    r7.yz = (int2)r4.ww + int2(1,-1);
    r7.y = (uint)r7.y;
    r7.y = r7.y * cb0[23].x + 1;
    r7.y = r7.y * r1.w;
    r7.w = r7.y + r7.y;
    r8.x = (uint)r7.x;
    r8.y = 3.14159274 / r8.x;
    sincos(r8.y, r9.x, r10.x);
    r11.x = -r9.x;
    r8.y = (uint)r7.z >> 1;
    r8.y = mad(-2, (int)r8.y, (int)r7.z);
    r8.y = (uint)r8.y;
    r8.z = (uint)r4.w;
    r8.w = 0.200000003 * r8.z;
    r8.y = r8.y * 0.5 + r8.w;
    r8.y = 3.14159274 * r8.y;
    r8.x = r8.y / r8.x;
    sincos(r8.x, r8.x, r12.x);
    r12.y = r8.x;
    r8.xy = r12.xy * r8.zz;
    r8.xy = cb0[23].xx * r8.xy;
    r11.y = r10.x;
    r11.z = r9.x;
    r9.xyz = r5.yzw;
    r9.w = r6.z;
    r10.x = r5.x;
    r10.yz = float2(0,0);
    r12.xyz = float3(0,0,0);
    r8.zw = r8.xy;
    r11.w = r7.y;
    r12.w = r7.w;
    r13.x = 0;
    while (true) {
      r13.y = cmp((uint)r13.x >= (uint)r7.x);
      if (r13.y != 0) break;
      r14.x = dot(r8.wz, r11.xy);
      r14.y = dot(r8.wz, r11.yz);
      r13.yz = r14.xy * cb0[3].zw + r0.xy;
      r14.zw = -r14.xy * cb0[3].zw + r0.xy;
      r15.xy = cmp(r13.yz < cb0[4].xy);
      r15.zw = cmp(cb0[4].zw < r13.yz);
      r15.xy = (int2)r15.zw | (int2)r15.xy;
      r13.w = (int)r15.y | (int)r15.x;
      r15.xyz = t1.SampleLevel(s0_s, r13.yz, 0).xyz;
      r15.w = t0.SampleLevel(s0_s, r13.yz, 0).x;
      r16.x = r15.w * cb1[65].x + cb1[65].y;
      r15.w = r15.w * cb1[65].z + -cb1[65].w;
      r15.w = 1 / r15.w;
      r16.z = r16.x + r15.w;
      r15.xyz = r15.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r15.w = dot(r15.xyz, r15.xyz);
      r15.w = rsqrt(r15.w);
      r15.xyz = r15.xyz * r15.www;
      r17.xyzw = t2.SampleLevel(s0_s, r13.yz, 0).xyzw;
      r18.xy = cmp(r14.zw < cb0[4].xy);
      r18.zw = cmp(cb0[4].zw < r14.zw);
      r18.xy = (int2)r18.zw | (int2)r18.xy;
      r15.w = (int)r18.y | (int)r18.x;
      r18.xyz = t1.SampleLevel(s0_s, r14.zw, 0).xyz;
      r16.w = t0.SampleLevel(s0_s, r14.zw, 0).x;
      r18.w = r16.w * cb1[65].x + cb1[65].y;
      r16.w = r16.w * cb1[65].z + -cb1[65].w;
      r16.w = 1 / r16.w;
      r19.z = r18.w + r16.w;
      r18.xyz = r18.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r16.w = dot(r18.xyz, r18.xyz);
      r16.w = rsqrt(r16.w);
      r18.xyz = r18.xyz * r16.www;
      r20.xyzw = t2.SampleLevel(s0_s, r14.zw, 0).xyzw;
      r17.xw = r17.xw * r17.yy;
      r20.xw = r20.xw * r20.yy;
      r13.yz = r13.yz * cb0[6].xy + cb0[6].zw;
      r16.w = r2.w ? r16.z : 1;
      r16.xy = r16.ww * r13.yz;
      r21.xyz = -r16.xyz + r2.xyz;
      r22.xyz = cb1[53].xyz * r21.yyy;
      r21.xyw = r21.xxx * cb1[52].xyz + r22.xyz;
      r21.xyz = r21.zzz * cb1[54].xyz + r21.xyw;
      r13.y = min(r17.z, r3.z);
      r13.y = rcp(r13.y);
      if (cb0[22].x == 0) {
        r22.xyz = -cb0[20].xyz;
      } else {
        r23.xyz = cb1[53].xyz * r16.yyy;
        r16.xyw = r16.xxx * cb1[52].xyz + r23.xyz;
        r16.xyz = r16.zzz * cb1[54].xyz + r16.xyw;
        r16.xyz = cb1[55].xyz + r16.xyz;
        r16.xyz = -r16.xyz + r4.xyz;
        r13.z = dot(r16.xyz, r16.xyz);
        r13.z = rsqrt(r13.z);
        r22.xyz = r16.xyz * r13.zzz;
      }
      r13.z = dot(r22.xyz, r21.xyz);
      r16.xyz = -r22.xyz * r13.zzz + r21.xyz;
      r13.z = dot(r16.xyz, r16.xyz);
      r16.x = r13.y * r13.y;
      r13.z = -r13.z * r16.x + 1;
      r13.z = max(0, r13.z);
      r16.x = dot(r1.xyz, -r21.xyz);
      r16.yzw = -r16.xxx * r1.xyz + -r21.xyz;
      r16.y = dot(r16.yzw, r16.yzw);
      r16.y = sqrt(r16.y);
      r16.x = -r16.y * 0.25 + abs(r16.x);
      r13.y = r16.x * r13.y;
      r13.y = saturate(-r13.y * 6 + 1);
      r13.y = r13.z * r13.y;
      r13.z = dot(r1.xyz, r15.xyz);
      r13.z = max(0, r13.z);
      r13.z = r13.z * r13.z;
      r13.z = r13.z * r13.z;
      r13.y = r13.y * r13.z;
      r15.xy = cmp(r17.yz != float2(0,-1));
      r13.z = ~(int)r13.w;
      r13.z = r15.x ? r13.z : 0;
      r13.w = cmp(0 < r13.y);
      r15.x = min(r17.z, r10.x);
      r15.x = r15.y ? r15.x : r10.x;
      r16.x = r13.w ? r15.x : r10.x;
      r13.w = min(r17.z, r12.w);
      r15.x = r13.w + -r11.w;
      r15.y = saturate(0.5 + r15.x);
      r15.z = 1 + -r15.y;
      r15.z = r15.z * r13.y;
      r21.x = r17.y * r15.z + r12.x;
      r21.yz = r17.xw * r15.zz + r12.yz;
      r13.w = r17.y * r13.w;
      r16.y = r13.w * r15.z + r10.y;
      r15.x = saturate(r15.x);
      r15.z = rcp(r17.y);
      r17.z = cmp(0 >= r17.y);
      r15.z = r17.z ? 0 : r15.z;
      r17.z = r17.x * r15.z;
      r15.z = -r17.x * r15.z + 1;
      r15.x = r15.x * r15.z + r17.z;
      r16.z = r15.x + r10.z;
      r13.y = r15.y * r13.y;
      r15.x = r17.y * r13.y + r9.x;
      r15.yz = r17.xw * r13.yy + r9.yz;
      r16.w = r13.w * r13.y + r9.w;
      r10.w = r9.w;
      r16.xyzw = r13.zzzz ? r16.xyzw : r10.xyzw;
      r17.xyz = r13.zzz ? r21.xyz : r12.xyz;
      r21.xyz = r13.zzz ? r15.xyz : r9.xyz;
      r13.yz = r14.zw * cb0[6].xy + cb0[6].zw;
      r10.w = r2.w ? r19.z : 1;
      r19.xy = r13.yz * r10.ww;
      r13.yzw = -r19.xyz + r2.xyz;
      r15.xyz = cb1[53].xyz * r13.zzz;
      r15.xyz = r13.yyy * cb1[52].xyz + r15.xyz;
      r13.yzw = r13.www * cb1[54].xyz + r15.xyz;
      r10.w = min(r20.z, r3.z);
      r10.w = rcp(r10.w);
      if (cb0[22].x == 0) {
        r15.xyz = -cb0[20].xyz;
      } else {
        r22.xyz = cb1[53].xyz * r19.yyy;
        r19.xyw = r19.xxx * cb1[52].xyz + r22.xyz;
        r19.xyz = r19.zzz * cb1[54].xyz + r19.xyw;
        r19.xyz = cb1[55].xyz + r19.xyz;
        r19.xyz = -r19.xyz + r4.xyz;
        r14.z = dot(r19.xyz, r19.xyz);
        r14.z = rsqrt(r14.z);
        r15.xyz = r19.xyz * r14.zzz;
      }
      r14.z = dot(r15.xyz, r13.yzw);
      r15.xyz = -r15.xyz * r14.zzz + r13.yzw;
      r14.z = dot(r15.xyz, r15.xyz);
      r14.w = r10.w * r10.w;
      r14.z = -r14.z * r14.w + 1;
      r14.z = max(0, r14.z);
      r14.w = dot(r1.xyz, -r13.yzw);
      r13.yzw = -r14.www * r1.xyz + -r13.yzw;
      r13.y = dot(r13.yzw, r13.yzw);
      r13.y = sqrt(r13.y);
      r13.y = -r13.y * 0.25 + abs(r14.w);
      r10.w = r13.y * r10.w;
      r10.w = saturate(-r10.w * 6 + 1);
      r10.w = r14.z * r10.w;
      r13.y = dot(r1.xyz, r18.xyz);
      r13.y = max(0, r13.y);
      r13.y = r13.y * r13.y;
      r13.y = r13.y * r13.y;
      r10.w = r13.y * r10.w;
      r13.yz = cmp(r20.yz != float2(0,-1));
      r13.w = ~(int)r15.w;
      r13.y = r13.y ? r13.w : 0;
      r13.w = cmp(0 < r10.w);
      r14.z = min(r16.x, r20.z);
      r13.z = r13.z ? r14.z : r16.x;
      r15.x = r13.w ? r13.z : r16.x;
      r13.z = min(r20.z, r12.w);
      r13.w = r13.z + -r11.w;
      r14.z = saturate(0.5 + r13.w);
      r14.w = 1 + -r14.z;
      r14.w = r14.w * r10.w;
      r18.x = r20.y * r14.w + r17.x;
      r18.yz = r20.xw * r14.ww + r17.yz;
      r13.z = r20.y * r13.z;
      r15.y = r13.z * r14.w + r16.y;
      r13.w = saturate(r13.w);
      r14.w = rcp(r20.y);
      r15.w = cmp(0 >= r20.y);
      r14.w = r15.w ? 0 : r14.w;
      r15.w = r20.x * r14.w;
      r14.w = -r20.x * r14.w + 1;
      r13.w = r13.w * r14.w + r15.w;
      r15.z = r16.z + r13.w;
      r10.w = r14.z * r10.w;
      r19.x = r20.y * r10.w + r21.x;
      r19.yz = r20.xw * r10.ww + r21.yz;
      r19.w = r13.z * r10.w + r16.w;
      r21.w = r16.w;
      r9.xyzw = r13.yyyy ? r19.xyzw : r21.xyzw;
      r10.xyz = r13.yyy ? r15.xyz : r16.xyz;
      r12.xyz = r13.yyy ? r18.xyz : r17.xyz;
      r13.x = (int)r13.x + 1;
      r8.zw = r14.xy;
    }
    r5.xyz = r10.xyz;
    r7.x = (uint)r7.x << 1;
    r7.w = cmp(r12.x != 0.000000);
    r7.x = (uint)r7.x;
    r7.xy = rcp(r7.xy);
    r7.x = saturate(-r5.z * r7.x + 1);
    r8.x = rcp(r9.x);
    r8.y = cmp(0 >= r9.x);
    r8.x = r8.y ? 0 : r8.x;
    r8.y = rcp(r12.x);
    r8.y = r8.y * r5.y;
    r8.y = r9.w * r8.x + -r8.y;
    r7.y = saturate(r8.y * r7.y);
    r8.y = cmp(r9.x == 0.000000);
    r7.x = -r7.x * r7.y + 1;
    r7.x = r8.y ? 0 : r7.x;
    r7.y = r12.x * r8.x;
    r7.x = r7.x * r7.y;
    r8.xyz = r9.xyz * r7.xxx + r12.xyz;
    r8.w = r9.w * r7.x + r5.y;
    r6.xyzw = r7.wwww ? r8.xywz : r9.xywz;
    r5.yzw = r6.xyw;
    r4.w = r7.z;
  }
  r2.xyzw = cb0[5].xyyy * r0.zwww;
  r2.xyzw = (uint4)r2.xyzw;
  r0.xy = cmp((uint2)r2.xw < asuint(cb0[1].xy));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.x = 1 + cb0[23].x;
    r0.y = r1.w * r0.x;
    r1.x = r0.y + r0.y;
    r1.yz = cmp(r0.zw < cb0[4].xy);
    r0.zw = cmp(cb0[4].zw < r0.zw);
    r0.zw = (int2)r0.zw | (int2)r1.yz;
    r0.z = (int)r0.w | (int)r0.z;
    r1.yz = r3.xw * r3.yy;
    r3.xw = cmp(r3.yz != float2(0,-1));
    r0.z = cmp((int)r0.z == 0);
    r0.z = r0.z ? r3.x : 0;
    r0.w = min(r5.x, r3.z);
    r4.x = r3.w ? r0.w : r5.x;
    r0.w = min(r3.z, r1.x);
    r0.x = -r1.w * r0.x + r0.w;
    r1.x = saturate(0.5 + r0.x);
    r1.w = 1 + -r1.x;
    r7.x = r3.y * r1.w;
    r7.yz = r1.yz * r1.ww;
    r0.w = r3.y * r0.w;
    r8.x = r0.w * r1.w;
    r0.x = saturate(r0.x);
    r1.w = rcp(r3.y);
    r3.x = cmp(0 >= r3.y);
    r1.w = r3.x ? 0 : r1.w;
    r3.x = r1.y * r1.w;
    r1.w = -r1.y * r1.w + 1;
    r8.y = r0.x * r1.w + r3.x;
    r4.y = r3.y * r1.x + r5.y;
    r4.zw = r1.yz * r1.xx + r5.zw;
    r8.z = r0.w * r1.x + r6.z;
    r1.xyz = r0.zzz ? r7.xyz : 0;
    r6.xy = float2(0,0);
    r3.xyz = r0.zzz ? r8.xyz : r6.xyz;
    r4.xyzw = r0.zzzz ? r4.yzxw : r5.yzxw;
    r0.x = cmp(r1.x != 0.000000);
    r0.z = saturate(1 + -r3.y);
    r0.w = rcp(r4.x);
    r1.w = cmp(0 >= r4.x);
    r0.w = r1.w ? 0 : r0.w;
    r1.w = rcp(r1.x);
    r1.w = r3.x * r1.w;
    r1.w = r3.z * r0.w + -r1.w;
    r0.y = rcp(r0.y);
    r0.y = saturate(r1.w * r0.y);
    r1.w = cmp(r4.x == 0.000000);
    r0.y = -r0.z * r0.y + 1;
    r0.y = r1.w ? 0 : r0.y;
    r0.z = r1.x * r0.w;
    r0.y = r0.y * r0.z;
    r0.yzw = r4.xyw * r0.yyy + r1.xyz;
    r0.xyz = r0.xxx ? r0.yzw : r4.xyw;
    r0.w = rcp(r0.x);
    r1.x = cmp(0 >= r0.x);
    r0.w = r1.x ? 0 : r0.w;
    r4.xw = r0.yz * r0.ww;
    r4.y = r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xyzw, r4.xyzw
  }
  return;
}