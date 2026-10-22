// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[145];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[23];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = r0.xy * cb0[2].xy + cb0[2].zw;
  r0.xy = max(cb0[4].xy, r0.xy);
  r0.xy = min(cb0[4].zw, r0.xy);
  r1.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.z = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r2.z = r0.w + r0.z;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r0.zw = r0.yx * cb0[6].yx + cb0[6].wz;
  r1.w = cmp(cb1[31].w < 1);
  r2.w = r1.w ? r2.z : 1;
  r2.xy = r2.ww * r0.wz;
  r3.xyz = cb1[53].xyz * r2.yyy;
  r3.xyz = r2.xxx * cb1[52].xyz + r3.xyz;
  r3.xyz = r2.zzz * cb1[54].xyz + r3.xyz;
  r3.xyz = cb1[55].xyz + r3.xyz;
  r4.xyzw = t2.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r2.w = cmp(0 < r4.y);
  r2.w = r2.w ? 1.000000 : 0;
  r4.xy = r4.xw * r2.ww;
  r5.xyzw = cb0[5].xyyy * r0.xyyy;
  r6.xy = (int2)r5.xw;
  r6.xy = (int2)r6.xy * int2(0x19660d,0x19660d);
  r6.z = asint(cb1[144].y) * 0x0019660d;
  r6.xyz = (int3)r6.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
  r3.w = mad((int)r6.y, (int)r6.z, (int)r6.x);
  r4.w = mad((int)r6.z, (int)r3.w, (int)r6.y);
  r6.x = mad((int)r3.w, (int)r4.w, (int)r6.z);
  r3.w = mad((int)r4.w, (int)r6.x, (int)r3.w);
  r4.w = mad((int)r6.x, (int)r3.w, (int)r4.w);
  r6.x = cb0[13].x * r2.z;
  if (cb0[22].x == 0) {
    r6.yzw = -cb0[20].xyz;
  } else {
    r7.xyz = cb1[70].xyz + cb0[19].xyz;
    r7.xyz = r7.xyz + -r3.xyz;
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = rsqrt(r7.w);
    r6.yzw = r7.xyz * r7.www;
  }
  r7.x = dot(r6.yzw, r1.xyz);
  r7.y = abs(r7.x) * -5.5 + 6;
  r6.yzw = -r7.xxx * r1.xyz + r6.yzw;
  r7.x = dot(r6.yzw, r6.yzw);
  r7.x = rsqrt(r7.x);
  r6.xyzw = r7.yxxx * r6.xyzw;
  r3.xyz = r6.yzw * r6.xxx + r3.xyz;
  r6.xyz = cb1[1].xyw * r3.yyy;
  r6.xyz = r3.xxx * cb1[0].xyw + r6.xyz;
  r3.xyz = r3.zzz * cb1[2].xyw + r6.xyz;
  r3.xyz = cb1[3].xyw + r3.xyz;
  r3.z = rcp(r3.z);
  r0.zw = r3.yx * r3.zz + -r0.zw;
  r0.zw = cb1[130].yx * r0.zw;
  r0.zw = float2(-0.5,0.5) * r0.zw;
  r3.x = dot(r0.zw, r0.zw);
  r3.x = rsqrt(r3.x);
  r0.zw = r3.xx * r0.zw;
  r3.x = r7.y + r7.y;
  r3.x = (uint)r3.x;
  r3.yw = (uint2)r3.xw >> int2(1,16);
  r3.x = (int)r3.x & -2;
  r3.xz = (uint2)r3.xw;
  r6.xy = r0.wz * r7.yy;
  r0.zw = float2(-0.5,0.5) * r0.zw;
  r7.xyz = cb1[70].xyz + cb0[19].xyz;
  r8.x = r2.w;
  r8.yz = r4.xy;
  r3.w = 0;
  while (true) {
    r6.z = cmp((uint)r3.w >= (uint)r3.y);
    if (r6.z != 0) break;
    r6.z = (uint)r3.w << 1;
    r6.w = (uint)r6.z;
    r6.w = r6.w / r3.x;
    r6.w = r3.z * 1.52587891e-005 + r6.w;
    r9.x = frac(r6.w);
    r6.z = reversebits((uint)r6.z);
    r6.z = (int)r4.w ^ (int)r6.z;
    r6.z = (uint)r6.z >> 16;
    r9.y = (uint)r6.z;
    r6.zw = r9.xy * float2(2,3.05175781e-005) + float2(-1,-1);
    r7.w = min(abs(r6.z), abs(r6.w));
    r8.w = max(abs(r6.z), abs(r6.w));
    r9.x = 5.42101086e-020 + r8.w;
    r7.w = r7.w / r9.x;
    r9.x = cmp(abs(r6.w) >= abs(r6.z));
    r9.x = r9.x ? 2.000000 : 0;
    r7.w = r9.x + r7.w;
    r7.w = 0.785398185 * r7.w;
    sincos(r7.w, r9.x, r10.x);
    r10.y = r9.x;
    bitmask.z = ((~(-1 << 31)) << 0) & 0xffffffff;  r6.z = (((uint)r10.x << 0) & bitmask.z) | ((uint)r6.z & ~bitmask.z);
    bitmask.w = ((~(-1 << 31)) << 0) & 0xffffffff;  r6.w = (((uint)r10.y << 0) & bitmask.w) | ((uint)r6.w & ~bitmask.w);
    r6.zw = r6.zw * r8.ww;
    r9.xy = r6.ww * r0.zw;
    r6.zw = r6.xy * r6.zz + r9.xy;
    r6.zw = r6.zw * cb0[3].zw + r0.xy;
    bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r7.w = (((uint)r3.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
    r8.w = (uint)r7.w;
    r8.w = r8.w / r3.x;
    r8.w = r3.z * 1.52587891e-005 + r8.w;
    r9.x = frac(r8.w);
    r7.w = reversebits((uint)r7.w);
    r7.w = (int)r4.w ^ (int)r7.w;
    r7.w = (uint)r7.w >> 16;
    r9.y = (uint)r7.w;
    r9.xy = r9.xy * float2(2,3.05175781e-005) + float2(-1,-1);
    r7.w = min(abs(r9.x), abs(r9.y));
    r8.w = max(abs(r9.x), abs(r9.y));
    r9.z = 5.42101086e-020 + r8.w;
    r7.w = r7.w / r9.z;
    r9.z = cmp(abs(r9.y) >= abs(r9.x));
    r9.z = r9.z ? 2.000000 : 0;
    r7.w = r9.z + r7.w;
    r7.w = 0.785398185 * r7.w;
    sincos(r7.w, r10.x, r11.x);
    r11.y = r10.x;
    bitmask.x = ((~(-1 << 31)) << 0) & 0xffffffff;  r9.x = (((uint)r11.x << 0) & bitmask.x) | ((uint)r9.x & ~bitmask.x);
    bitmask.y = ((~(-1 << 31)) << 0) & 0xffffffff;  r9.y = (((uint)r11.y << 0) & bitmask.y) | ((uint)r9.y & ~bitmask.y);
    r9.xy = r9.xy * r8.ww;
    r9.yz = r9.yy * r0.zw;
    r9.xy = r6.xy * r9.xx + r9.yz;
    r9.xy = r9.xy * cb0[3].zw + r0.xy;
    r9.zw = cmp(r6.zw < cb0[4].xy);
    r10.xy = cmp(cb0[4].zw < r6.zw);
    r9.zw = (int2)r9.zw | (int2)r10.xy;
    r7.w = (int)r9.w | (int)r9.z;
    r10.xyz = t1.SampleLevel(s0_s, r6.zw, 0).xyz;
    r8.w = t0.SampleLevel(s0_s, r6.zw, 0).x;
    r9.z = r8.w * cb1[65].x + cb1[65].y;
    r8.w = r8.w * cb1[65].z + -cb1[65].w;
    r8.w = 1 / r8.w;
    r11.z = r9.z + r8.w;
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.w = dot(r10.xyz, r10.xyz);
    r8.w = rsqrt(r8.w);
    r10.xyz = r10.xyz * r8.www;
    r12.xyzw = t2.SampleLevel(s0_s, r6.zw, 0).xyzw;
    r9.zw = cmp(r9.xy < cb0[4].xy);
    r13.xy = cmp(cb0[4].zw < r9.xy);
    r9.zw = (int2)r9.zw | (int2)r13.xy;
    r8.w = (int)r9.w | (int)r9.z;
    r13.xyz = t1.SampleLevel(s0_s, r9.xy, 0).xyz;
    r9.z = t0.SampleLevel(s0_s, r9.xy, 0).x;
    r9.w = r9.z * cb1[65].x + cb1[65].y;
    r9.z = r9.z * cb1[65].z + -cb1[65].w;
    r9.z = 1 / r9.z;
    r14.z = r9.w + r9.z;
    r13.xyz = r13.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.z = dot(r13.xyz, r13.xyz);
    r9.z = rsqrt(r9.z);
    r13.xyz = r13.xyz * r9.zzz;
    r15.xyzw = t2.SampleLevel(s0_s, r9.xy, 0).xyzw;
    r9.z = cmp(0 < r12.y);
    r9.w = r9.z ? 1.000000 : 0;
    r12.xy = r12.xw * r9.ww;
    r10.w = cmp(0 < r15.y);
    r11.w = r10.w ? 1.000000 : 0;
    r15.xy = r15.xw * r11.ww;
    r6.zw = r6.zw * cb0[6].xy + cb0[6].zw;
    r12.w = r1.w ? r11.z : 1;
    r11.xy = r12.ww * r6.zw;
    r16.xyz = -r11.xyz + r2.xyz;
    r17.xyz = cb1[53].xyz * r16.yyy;
    r16.xyw = r16.xxx * cb1[52].xyz + r17.xyz;
    r16.xyz = r16.zzz * cb1[54].xyz + r16.xyw;
    r6.z = min(r12.z, r4.z);
    r6.z = rcp(r6.z);
    if (cb0[22].x == 0) {
      r17.xyz = -cb0[20].xyz;
    } else {
      r18.xyz = cb1[53].xyz * r11.yyy;
      r18.xyz = r11.xxx * cb1[52].xyz + r18.xyz;
      r11.xyz = r11.zzz * cb1[54].xyz + r18.xyz;
      r11.xyz = cb1[55].xyz + r11.xyz;
      r11.xyz = -r11.xyz + r7.xyz;
      r6.w = dot(r11.xyz, r11.xyz);
      r6.w = rsqrt(r6.w);
      r17.xyz = r11.xyz * r6.www;
    }
    r6.w = dot(r17.xyz, r16.xyz);
    r11.xyz = -r17.xyz * r6.www + r16.xyz;
    r6.w = dot(r11.xyz, r11.xyz);
    r11.x = r6.z * r6.z;
    r6.w = -r6.w * r11.x + 1;
    r6.w = max(0, r6.w);
    r11.x = dot(r1.xyz, -r16.xyz);
    r16.xyz = -r11.xxx * r1.xyz + -r16.xyz;
    r11.y = dot(r16.xyz, r16.xyz);
    r11.y = sqrt(r11.y);
    r11.x = -r11.y * 0.25 + abs(r11.x);
    r6.z = r11.x * r6.z;
    r6.z = saturate(-r6.z * 6 + 1);
    r6.z = r6.w * r6.z;
    r6.w = dot(r1.xyz, r10.xyz);
    r6.w = max(0, r6.w);
    r6.w = r6.w * r6.w;
    r6.w = r6.w * r6.w;
    r6.z = r6.z * r6.w;
    r6.w = ~(int)r7.w;
    r6.w = r9.z ? r6.w : 0;
    r10.x = r9.w * r6.z + r8.x;
    r10.yz = r12.xy * r6.zz + r8.yz;
    r10.xyz = r6.www ? r10.xyz : r8.xyz;
    r6.zw = r9.xy * cb0[6].xy + cb0[6].zw;
    r7.w = r1.w ? r14.z : 1;
    r14.xy = r7.ww * r6.zw;
    r9.xyz = -r14.xyz + r2.xyz;
    r11.xyz = cb1[53].xyz * r9.yyy;
    r9.xyw = r9.xxx * cb1[52].xyz + r11.xyz;
    r9.xyz = r9.zzz * cb1[54].xyz + r9.xyw;
    r6.z = min(r15.z, r4.z);
    r6.z = rcp(r6.z);
    if (cb0[22].x == 0) {
      r11.xyz = -cb0[20].xyz;
    } else {
      r12.xyz = cb1[53].xyz * r14.yyy;
      r12.xyz = r14.xxx * cb1[52].xyz + r12.xyz;
      r12.xyz = r14.zzz * cb1[54].xyz + r12.xyz;
      r12.xyz = cb1[55].xyz + r12.xyz;
      r12.xyz = -r12.xyz + r7.xyz;
      r6.w = dot(r12.xyz, r12.xyz);
      r6.w = rsqrt(r6.w);
      r11.xyz = r12.xyz * r6.www;
    }
    r6.w = dot(r11.xyz, r9.xyz);
    r11.xyz = -r11.xyz * r6.www + r9.xyz;
    r6.w = dot(r11.xyz, r11.xyz);
    r7.w = r6.z * r6.z;
    r6.w = -r6.w * r7.w + 1;
    r6.w = max(0, r6.w);
    r7.w = dot(r1.xyz, -r9.xyz);
    r9.xyz = -r7.www * r1.xyz + -r9.xyz;
    r9.x = dot(r9.xyz, r9.xyz);
    r9.x = sqrt(r9.x);
    r7.w = -r9.x * 0.25 + abs(r7.w);
    r6.z = r7.w * r6.z;
    r6.z = saturate(-r6.z * 6 + 1);
    r6.z = r6.w * r6.z;
    r6.w = dot(r1.xyz, r13.xyz);
    r6.w = max(0, r6.w);
    r6.w = r6.w * r6.w;
    r6.w = r6.w * r6.w;
    r6.z = r6.z * r6.w;
    r6.w = ~(int)r8.w;
    r6.w = r10.w ? r6.w : 0;
    r9.x = r11.w * r6.z + r10.x;
    r9.yz = r15.xy * r6.zz + r10.yz;
    r8.xyz = r6.www ? r9.xyz : r10.xyz;
    r3.w = (int)r3.w + 1;
  }
  r0.xyzw = (uint4)r5.xyzw;
  r1.xy = cmp((uint2)r0.xw < asuint(cb0[1].xy));
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    r1.x = cmp(0 < r8.x);
    r1.yz = r8.yz / r8.xx;
    r1.y = r1.x ? r1.y : 1;
    r1.x = r1.x ? r1.z : r8.z;
    r2.xyw = abs(r1.yxx);
    r2.z = 1;
    r1.xyzw = cb0[22].xxxx ? r2.xwxw : r2.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  }
  return;
}