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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
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
  r1.w = dot(r0.xy, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r3.x = frac(r1.w);
  r0.xy = float2(32.6650009,11.8149996) + r0.xy;
  r0.x = dot(r0.xy, float2(0.0671105608,0.00583714992));
  r0.x = frac(r0.x);
  r0.x = 52.9829178 * r0.x;
  r3.y = frac(r0.x);
  r0.xy = float2(-0.5,-0.5) + r3.xy;
  r0.xy = cb1[130].zw * r0.xy;
  r0.xy = r0.xy * cb0[23].xx + r0.zw;
  r1.w = cb0[13].x * r2.z;
  r1.w = 2.82842708 * r1.w;
  r3.xy = r0.zw * cb0[6].xy + cb0[6].zw;
  r2.w = cmp(cb1[31].w < 1);
  r3.z = r2.w ? r2.z : 1;
  r2.xy = r3.xy * r3.zz;
  r3.xyz = float3(100000,0,0);
  r4.w = 0;
  r5.x = 1;
  while (true) {
    r5.y = cmp(0 >= (uint)r5.x);
    if (r5.y != 0) break;
    r5.y = (int)r5.x * 3;
    r5.zw = (int2)r5.xx + int2(1,-1);
    r5.z = (uint)r5.z;
    r5.z = r5.z * cb0[23].x + 1;
    r5.z = r5.z * r1.w;
    r6.x = r5.z + r5.z;
    r6.y = (uint)r5.y;
    r6.z = 3.14159274 / r6.y;
    sincos(r6.z, r7.x, r8.x);
    r9.x = -r7.x;
    r6.z = (uint)r5.w >> 1;
    r6.z = mad(-2, (int)r6.z, (int)r5.w);
    r6.z = (uint)r6.z;
    r6.w = (uint)r5.x;
    r7.y = 0.200000003 * r6.w;
    r6.z = r6.z * 0.5 + r7.y;
    r6.z = 3.14159274 * r6.z;
    r6.y = r6.z / r6.y;
    sincos(r6.y, r10.x, r11.x);
    r11.y = r10.x;
    r6.yz = r11.xy * r6.ww;
    r6.yz = cb0[23].xx * r6.yz;
    r9.y = r8.x;
    r9.z = r7.x;
    r4.z = r3.x;
    r4.xy = float2(0,0);
    r7.xy = r3.yz;
    r7.w = r4.w;
    r8.xy = float2(0,0);
    r10.xy = r6.yz;
    r6.w = r5.z;
    r9.w = r6.x;
    r10.z = 0;
    while (true) {
      r10.w = cmp((uint)r10.z >= (uint)r5.y);
      if (r10.w != 0) break;
      r11.x = dot(r10.yx, r9.xy);
      r11.y = dot(r10.yx, r9.yz);
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
      r15.xyz = t2.SampleLevel(s0_s, r11.zw, 0).xyz;
      r12.zw = cmp(r12.xy < cb0[4].xy);
      r16.xy = cmp(cb0[4].zw < r12.xy);
      r12.zw = (int2)r12.zw | (int2)r16.xy;
      r12.z = (int)r12.w | (int)r12.z;
      r16.xyz = t1.SampleLevel(s0_s, r12.xy, 0).xyz;
      r12.w = t0.SampleLevel(s0_s, r12.xy, 0).x;
      r13.w = r12.w * cb1[65].x + cb1[65].y;
      r12.w = r12.w * cb1[65].z + -cb1[65].w;
      r12.w = 1 / r12.w;
      r17.z = r13.w + r12.w;
      r16.xyz = r16.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r12.w = dot(r16.xyz, r16.xyz);
      r12.w = rsqrt(r12.w);
      r16.xyz = r16.xyz * r12.www;
      r18.xyz = t2.SampleLevel(s0_s, r12.xy, 0).xyz;
      r11.zw = r11.zw * cb0[6].xy + cb0[6].zw;
      r12.w = r2.w ? r14.z : 1;
      r14.xy = r12.ww * r11.zw;
      r14.xyz = -r14.xyz + r2.xyz;
      r19.xyz = cb1[53].xyz * r14.yyy;
      r14.xyw = r14.xxx * cb1[52].xyz + r19.xyz;
      r14.xyz = r14.zzz * cb1[54].xyz + r14.xyw;
      r11.z = dot(r14.xyz, r14.xyz);
      r14.xy = r15.yz * r15.xz;
      r11.w = rcp(r14.y);
      r11.z = saturate(-r11.z * r11.w + 1);
      r11.w = dot(r1.xyz, r13.xyz);
      r11.w = max(0, r11.w);
      r11.w = r11.w * r11.w;
      r11.w = r11.w * r11.w;
      r11.z = r11.z * r11.w;
      r13.xy = cmp(r15.yz != float2(0,-1));
      r10.w = ~(int)r10.w;
      r10.w = r10.w ? r13.x : 0;
      r11.w = cmp(0 < r11.z);
      r12.w = min(r15.z, r4.z);
      r12.w = r13.y ? r12.w : r4.z;
      r13.x = r11.w ? r12.w : r4.z;
      r11.w = min(r15.z, r9.w);
      r12.w = r11.w + -r6.w;
      r14.y = saturate(0.5 + r12.w);
      r14.z = 1 + -r14.y;
      r14.z = r14.z * r11.z;
      r19.x = r15.y * r14.z + r8.x;
      r19.y = r14.x * r14.z + r8.y;
      r11.w = r15.y * r11.w;
      r13.y = r11.w * r14.z + r4.x;
      r12.w = saturate(r12.w);
      r14.z = rcp(r15.y);
      r14.w = cmp(0 >= r15.y);
      r14.z = r14.w ? 0 : r14.z;
      r14.w = r14.x * r14.z;
      r14.z = -r14.x * r14.z + 1;
      r12.w = r12.w * r14.z + r14.w;
      r13.z = r12.w + r4.y;
      r11.z = r14.y * r11.z;
      r19.z = r15.y * r11.z + r7.x;
      r19.w = r14.x * r11.z + r7.y;
      r13.w = r11.w * r11.z + r7.w;
      r8.zw = r7.xy;
      r14.xyzw = r10.wwww ? r19.xyzw : r8.xyzw;
      r7.xyz = r4.zxy;
      r13.xyzw = r10.wwww ? r13.xywz : r7.xywz;
      r8.zw = r12.xy * cb0[6].xy + cb0[6].zw;
      r7.z = r2.w ? r17.z : 1;
      r17.xy = r8.zw * r7.zz;
      r12.xyw = -r17.xyz + r2.xyz;
      r15.xyz = cb1[53].xyz * r12.yyy;
      r15.xyz = r12.xxx * cb1[52].xyz + r15.xyz;
      r12.xyw = r12.www * cb1[54].xyz + r15.xyz;
      r7.z = dot(r12.xyw, r12.xyw);
      r8.zw = r18.yz * r18.xz;
      r8.w = rcp(r8.w);
      r7.z = saturate(-r7.z * r8.w + 1);
      r8.w = dot(r1.xyz, r16.xyz);
      r8.w = max(0, r8.w);
      r8.w = r8.w * r8.w;
      r8.w = r8.w * r8.w;
      r7.z = r8.w * r7.z;
      r11.zw = cmp(r18.yz != float2(0,-1));
      r8.w = ~(int)r12.z;
      r8.w = r11.z ? r8.w : 0;
      r10.w = cmp(0 < r7.z);
      r11.z = min(r13.x, r18.z);
      r11.z = r11.w ? r11.z : r13.x;
      r12.x = r10.w ? r11.z : r13.x;
      r10.w = min(r18.z, r9.w);
      r11.z = r10.w + -r6.w;
      r11.w = saturate(0.5 + r11.z);
      r12.w = 1 + -r11.w;
      r12.w = r12.w * r7.z;
      r15.x = r18.y * r12.w + r14.x;
      r15.y = r8.z * r12.w + r14.y;
      r10.w = r18.y * r10.w;
      r12.y = r10.w * r12.w + r13.y;
      r11.z = saturate(r11.z);
      r12.w = rcp(r18.y);
      r15.z = cmp(0 >= r18.y);
      r12.w = r15.z ? 0 : r12.w;
      r15.z = r12.w * r8.z;
      r12.w = -r8.z * r12.w + 1;
      r11.z = r11.z * r12.w + r15.z;
      r12.z = r13.w + r11.z;
      r7.z = r11.w * r7.z;
      r16.x = r18.y * r7.z + r14.z;
      r16.y = r8.z * r7.z + r14.w;
      r16.z = r10.w * r7.z + r13.z;
      r4.xyz = r8.www ? r12.yzx : r13.ywx;
      r13.xy = r14.zw;
      r7.xyw = r8.www ? r16.xyz : r13.xyz;
      r8.xy = r8.ww ? r15.xy : r14.xy;
      r10.z = (int)r10.z + 1;
      r10.xy = r11.xy;
    }
    r5.y = (uint)r5.y << 1;
    r6.x = cmp(r8.x != 0.000000);
    r5.y = (uint)r5.y;
    r5.yz = rcp(r5.yz);
    r5.y = saturate(-r4.y * r5.y + 1);
    r6.y = rcp(r7.x);
    r6.z = cmp(0 >= r7.x);
    r6.y = r6.z ? 0 : r6.y;
    r6.z = rcp(r8.x);
    r6.z = r6.z * r4.x;
    r6.z = r7.w * r6.y + -r6.z;
    r5.z = saturate(r6.z * r5.z);
    r6.z = cmp(r7.x == 0.000000);
    r5.y = -r5.y * r5.z + 1;
    r5.y = r6.z ? 0 : r5.y;
    r5.z = r8.x * r6.y;
    r5.y = r5.y * r5.z;
    r9.xy = r7.xy * r5.yy + r8.xy;
    r9.z = r7.w * r5.y + r4.x;
    r4.xyw = r6.xxx ? r9.xyz : r7.xyw;
    r3.xyz = r4.zxy;
    r5.x = r5.w;
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
    r5.xy = cmp(cb0[4].zw < r0.zw);
    r1.yz = (int2)r1.yz | (int2)r5.xy;
    r1.y = (int)r1.z | (int)r1.y;
    r5.xyz = t2.SampleLevel(s0_s, r0.zw, 0).xyz;
    r0.z = r5.y * r5.x;
    r5.xw = cmp(r5.yz != float2(0,-1));
    r0.w = cmp((int)r1.y == 0);
    r0.w = r0.w ? r5.x : 0;
    r1.y = min(r5.z, r3.x);
    r6.x = r5.w ? r1.y : r3.x;
    r1.x = min(r5.z, r1.x);
    r0.x = -r1.w * r0.x + r1.x;
    r1.y = saturate(0.5 + r0.x);
    r1.z = 1 + -r1.y;
    r7.x = r5.y * r1.z;
    r7.y = r1.z * r0.z;
    r1.x = r5.y * r1.x;
    r6.y = r1.x * r1.z;
    r0.x = saturate(r0.x);
    r1.z = rcp(r5.y);
    r1.w = cmp(0 >= r5.y);
    r1.z = r1.w ? 0 : r1.z;
    r1.w = r1.z * r0.z;
    r1.z = -r0.z * r1.z + 1;
    r6.z = r0.x * r1.z + r1.w;
    r7.z = r5.y * r1.y + r3.y;
    r7.w = r0.z * r1.y + r3.z;
    r6.w = r1.x * r1.y + r4.w;
    r3.w = 0;
    r1.xyzw = r0.wwww ? r7.xyzw : r3.wwyz;
    r4.xyz = r3.xww;
    r3.xyzw = r0.wwww ? r6.yzxw : r4.yzxw;
    r0.x = cmp(r1.x != 0.000000);
    r0.z = saturate(1 + -r3.y);
    r4.xy = rcp(r1.zx);
    r0.w = cmp(0 >= r1.z);
    r0.w = r0.w ? 0 : r4.x;
    r4.x = r4.y * r3.x;
    r4.x = r3.w * r0.w + -r4.x;
    r0.y = rcp(r0.y);
    r0.y = saturate(r4.x * r0.y);
    r4.x = cmp(r1.z == 0.000000);
    r0.y = -r0.z * r0.y + 1;
    r0.y = r4.x ? 0 : r0.y;
    r0.z = r1.x * r0.w;
    r0.y = r0.y * r0.z;
    r0.yz = r1.zw * r0.yy + r1.xy;
    r3.xy = r0.xx ? r0.zy : r1.wz;
    r0.x = cmp(0 < r3.y);
    r0.y = r3.x / r3.y;
    r3.x = r0.x ? r0.y : 1;
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xyzw, r3.xyzw
  }
  return;
}