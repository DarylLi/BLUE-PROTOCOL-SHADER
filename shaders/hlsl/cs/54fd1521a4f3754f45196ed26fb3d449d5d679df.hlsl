// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

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
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r1.xyzw = r0.xyyy * cb0[2].xyyy + cb0[2].zwww;
  r1.xyzw = max(cb0[4].xyyy, r1.xyzw);
  r1.xyzw = min(cb0[4].zwww, r1.xyzw);
  r2.xyz = t1.SampleLevel(s0_s, r1.xw, 0).xyz;
  r0.z = t0.SampleLevel(s0_s, r1.xw, 0).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r3.z = r0.w + r0.z;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r4.xyzw = t2.SampleLevel(s0_s, r1.xw, 0).xyzw;
  r0.z = t3.SampleLevel(s0_s, r1.xw, 0).x;
  r4.xyzw = r0.zzzz * r4.xyzw;
  r0.w = dot(r0.xy, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.xy = float2(32.6650009,11.8149996) + r0.xy;
  r0.x = dot(r0.xy, float2(0.0671105608,0.00583714992));
  r0.x = frac(r0.x);
  r0.x = 52.9829178 * r0.x;
  r5.xy = frac(r0.wx);
  r0.xy = float2(-0.5,-0.5) + r5.xy;
  r0.xy = cb1[130].zw * r0.xy;
  r0.xy = r0.xy * cb0[23].xx + r1.xw;
  r5.xy = r1.xw * cb0[6].xy + cb0[6].zw;
  r0.w = cb0[13].x * r3.z;
  r2.w = cmp(cb1[31].w < 1);
  r3.w = r2.w ? r3.z : 1;
  r3.xy = r5.xy * r3.ww;
  r5.xyzw = r4.xyzw;
  r6.x = r0.z;
  r3.w = 1;
  while (true) {
    r7.x = cmp(1 < (uint)r3.w);
    if (r7.x != 0) break;
    r7.x = (int)r3.w * 3;
    r7.y = (uint)r7.x;
    r7.z = 3.14159274 / r7.y;
    sincos(r7.z, r8.x, r9.x);
    r10.x = -r8.x;
    r7.zw = (int2)r3.ww + int2(-1,1);
    r7.z = (uint)r7.z;
    r8.y = (uint)r3.w;
    r8.z = 0.200000003 * r8.y;
    r7.z = r7.z * 0.5 + r8.z;
    r7.z = 3.14159274 * r7.z;
    r7.y = r7.z / r7.y;
    sincos(r7.y, r11.x, r12.x);
    r12.y = r11.x;
    r7.yz = r12.xy * r8.yy;
    r7.yz = cb0[23].xx * r7.yz;
    r10.y = r9.x;
    r10.z = r8.x;
    r8.xyzw = r5.xyzw;
    r9.xy = r7.yz;
    r9.z = r6.x;
    r9.w = 0;
    while (true) {
      r10.w = cmp((uint)r9.w >= (uint)r7.x);
      if (r10.w != 0) break;
      r11.x = dot(r9.yx, r10.xy);
      r11.y = dot(r9.yx, r10.yz);
      r11.zw = r11.xy * cb0[3].zw + r0.xy;
      r12.xy = -r11.xy * cb0[3].zw + r0.xy;
      r12.zw = cmp(r11.zw < cb0[4].xy);
      r13.xy = cmp(cb0[4].zw < r11.zw);
      r12.zw = (int2)r12.zw | (int2)r13.xy;
      r10.w = (int)r12.w | (int)r12.z;
      r13.xyz = t1.SampleLevel(s0_s, r11.zw, 0).xyz;
      r12.z = t0.SampleLevel(s0_s, r11.zw, 0).x;
      r12.w = r12.z * cb1[65].x + cb1[65].y;
      r12.z = r12.z * cb1[65].z + -cb1[65].w;
      r12.z = 1 / r12.z;
      r14.z = r12.w + r12.z;
      r13.xyz = r13.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r12.z = dot(r13.xyz, r13.xyz);
      r12.z = rsqrt(r12.z);
      r13.xyz = r13.xyz * r12.zzz;
      r15.xyzw = t2.SampleLevel(s0_s, r11.zw, 0).xyzw;
      r12.z = t3.SampleLevel(s0_s, r11.zw, 0).x;
      r16.xy = cmp(r12.xy < cb0[4].xy);
      r16.zw = cmp(cb0[4].zw < r12.xy);
      r16.xy = (int2)r16.zw | (int2)r16.xy;
      r12.w = (int)r16.y | (int)r16.x;
      r16.xyz = t1.SampleLevel(s0_s, r12.xy, 0).xyz;
      r13.w = t0.SampleLevel(s0_s, r12.xy, 0).x;
      r14.w = r13.w * cb1[65].x + cb1[65].y;
      r13.w = r13.w * cb1[65].z + -cb1[65].w;
      r13.w = 1 / r13.w;
      r17.z = r14.w + r13.w;
      r16.xyz = r16.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r13.w = dot(r16.xyz, r16.xyz);
      r13.w = rsqrt(r13.w);
      r16.xyz = r16.xyz * r13.www;
      r18.xyzw = t2.SampleLevel(s0_s, r12.xy, 0).xyzw;
      r13.w = t3.SampleLevel(s0_s, r12.xy, 0).x;
      r15.xyzw = r12.zzzz * r15.xyzw;
      r18.xyzw = r13.wwww * r18.xyzw;
      r11.zw = r11.zw * cb0[6].xy + cb0[6].zw;
      r14.w = r2.w ? r14.z : 1;
      r14.xy = r14.ww * r11.zw;
      r14.xyw = -r14.xyz + r3.xyz;
      r19.xyz = cb1[53].xyz * r14.yyy;
      r19.xyz = r14.xxx * cb1[52].xyz + r19.xyz;
      r14.xyw = r14.www * cb1[54].xyz + r19.xyz;
      r11.z = cb0[13].x * r14.z;
      r11.z = min(r11.z, r0.w);
      r11.z = 2.82842708 * r11.z;
      r11.z = rcp(r11.z);
      r11.w = dot(r2.xyz, r14.xyw);
      r11.z = saturate(-abs(r11.w) * r11.z + 1);
      r11.w = dot(r2.xyz, r13.xyz);
      r11.w = max(0, r11.w);
      r11.w = r11.w * r11.w;
      r11.w = r11.w * r11.w;
      r11.z = r11.z * r11.w;
      r11.w = cmp(r12.z != 0.000000);
      r10.w = ~(int)r10.w;
      r10.w = r10.w ? r11.w : 0;
      r14.xyzw = r15.xyzw * r11.zzzz + r8.xyzw;
      r11.z = r12.z * r11.z + r9.z;
      r14.xyzw = r10.wwww ? r14.xyzw : r8.xyzw;
      r10.w = r10.w ? r11.z : r9.z;
      r11.zw = r12.xy * cb0[6].xy + cb0[6].zw;
      r12.x = r2.w ? r17.z : 1;
      r17.xy = r12.xx * r11.zw;
      r12.xyz = -r17.xyz + r3.xyz;
      r13.xyz = cb1[53].xyz * r12.yyy;
      r13.xyz = r12.xxx * cb1[52].xyz + r13.xyz;
      r12.xyz = r12.zzz * cb1[54].xyz + r13.xyz;
      r11.z = cb0[13].x * r17.z;
      r11.z = min(r11.z, r0.w);
      r11.z = 2.82842708 * r11.z;
      r11.z = rcp(r11.z);
      r11.w = dot(r2.xyz, r12.xyz);
      r11.z = saturate(-abs(r11.w) * r11.z + 1);
      r11.w = dot(r2.xyz, r16.xyz);
      r11.w = max(0, r11.w);
      r11.w = r11.w * r11.w;
      r11.w = r11.w * r11.w;
      r11.z = r11.z * r11.w;
      r11.w = cmp(r13.w != 0.000000);
      r12.x = ~(int)r12.w;
      r11.w = r11.w ? r12.x : 0;
      r12.xyzw = r18.xyzw * r11.zzzz + r14.xyzw;
      r11.z = r13.w * r11.z + r10.w;
      r8.xyzw = r11.wwww ? r12.xyzw : r14.xyzw;
      r9.z = r11.w ? r11.z : r10.w;
      r9.w = (int)r9.w + 1;
      r9.xy = r11.xy;
    }
    r5.xyzw = r8.xyzw;
    r6.x = r9.z;
    r3.w = r7.w;
  }
  r0.xyzw = cb0[5].xyyy * r1.xyzw;
  r0.xyzw = (uint4)r0.xyzw;
  r1.xy = cmp((uint2)r0.xw < asuint(cb0[1].xy));
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    r1.x = rcp(r6.x);
    r1.y = cmp(0 >= r6.x);
    r1.x = r1.y ? 0 : r1.x;
    r1.xyzw = r5.xyzw * r1.xxxx;
    r1.xyz = min(float3(65504,65504,65504), r1.xyz);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xwww, r1.xyzw
    r6.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xyzw, r6.xyzw
  }
  return;
}