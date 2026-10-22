// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[27];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
  const float4 icb[] = { { -0.500000, -0.500000, 0, 0},
                              { 0.500000, -0.500000, 0, 0},
                              { -0.500000, 0.500000, 0, 0},
                              { 0.500000, 0.500000, 0, 0},
                              { -1.500000, 0.500000, 0, 0},
                              { -1.500000, -0.500000, 0, 0},
                              { -0.500000, 1.500000, 0, 0},
                              { 1.500000, -0.500000, 0, 0},
                              { 0.500000, -1.500000, 0, 0},
                              { 2.500000, -0.500000, 0, 0},
                              { 1.500000, 0.500000, 0, 0},
                              { -0.500000, -1.500000, 0, 0},
                              { -1.500000, -2.500000, 0, 0},
                              { -0.500000, -2.500000, 0, 0},
                              { -1.500000, -1.500000, 0, 0},
                              { -0.500000, 2.500000, 0, 0},
                              { -1.500000, 1.500000, 0, 0},
                              { 1.500000, -2.500000, 0, 0},
                              { -1.500000, 2.500000, 0, 0},
                              { 1.500000, 2.500000, 0, 0},
                              { 0.500000, -2.500000, 0, 0},
                              { -2.500000, -0.500000, 0, 0},
                              { -2.500000, -1.500000, 0, 0},
                              { -2.500000, 0.500000, 0, 0},
                              { 0.500000, 1.500000, 0, 0},
                              { 0.500000, 2.500000, 0, 0},
                              { -3.500000, 0.500000, 0, 0},
                              { 0.500000, 3.500000, 0, 0},
                              { 1.500000, -1.500000, 0, 0},
                              { 3.500000, -0.500000, 0, 0},
                              { 2.500000, 1.500000, 0, 0},
                              { 3.500000, 0.500000, 0, 0},
                              { 1.500000, 1.500000, 0, 0},
                              { -2.500000, 1.500000, 0, 0},
                              { -3.500000, 2.500000, 0, 0},
                              { 3.500000, 1.500000, 0, 0},
                              { -3.500000, -0.500000, 0, 0},
                              { -1.500000, -3.500000, 0, 0},
                              { -2.500000, -2.500000, 0, 0},
                              { -2.500000, 2.500000, 0, 0},
                              { 2.500000, 0.500000, 0, 0},
                              { 2.500000, 2.500000, 0, 0},
                              { 1.500000, 3.500000, 0, 0},
                              { 3.500000, -1.500000, 0, 0},
                              { -3.500000, -2.500000, 0, 0},
                              { 3.500000, -2.500000, 0, 0},
                              { 2.500000, -1.500000, 0, 0},
                              { 0.500000, -3.500000, 0, 0},
                              { -0.500000, 3.500000, 0, 0},
                              { -0.500000, -4.500000, 0, 0},
                              { -4.500000, 0.500000, 0, 0},
                              { 4.500000, 0.500000, 0, 0},
                              { -4.500000, -1.500000, 0, 0},
                              { -3.500000, 1.500000, 0, 0},
                              { -0.500000, -3.500000, 0, 0},
                              { 1.500000, -3.500000, 0, 0},
                              { 0.500000, -4.500000, 0, 0},
                              { -1.500000, 3.500000, 0, 0},
                              { 0.500000, 4.500000, 0, 0},
                              { -3.500000, -1.500000, 0, 0},
                              { -4.500000, 1.500000, 0, 0},
                              { 2.500000, -4.500000, 0, 0},
                              { 2.500000, -2.500000, 0, 0},
                              { -1.500000, 4.500000, 0, 0},
                              { -2.500000, -4.500000, 0, 0},
                              { 4.500000, -2.500000, 0, 0},
                              { 2.500000, 3.500000, 0, 0},
                              { -3.500000, 3.500000, 0, 0},
                              { -2.500000, 3.500000, 0, 0},
                              { 0.500000, -5.500000, 0, 0},
                              { -4.500000, 3.500000, 0, 0},
                              { -2.500000, -3.500000, 0, 0},
                              { -4.500000, 2.500000, 0, 0},
                              { 3.500000, 3.500000, 0, 0},
                              { 2.500000, -3.500000, 0, 0},
                              { 4.500000, 3.500000, 0, 0},
                              { 3.500000, -3.500000, 0, 0},
                              { 4.500000, 2.500000, 0, 0},
                              { -5.500000, 1.500000, 0, 0},
                              { -4.500000, -0.500000, 0, 0},
                              { 3.500000, 2.500000, 0, 0},
                              { -0.500000, 4.500000, 0, 0},
                              { -1.500000, 5.500000, 0, 0},
                              { 1.500000, 5.500000, 0, 0},
                              { 4.500000, -0.500000, 0, 0},
                              { 5.500000, 0.500000, 0, 0},
                              { 4.500000, 1.500000, 0, 0},
                              { -1.500000, -4.500000, 0, 0},
                              { -1.500000, -5.500000, 0, 0},
                              { -4.500000, -2.500000, 0, 0},
                              { -2.500000, 5.500000, 0, 0},
                              { 2.500000, 5.500000, 0, 0},
                              { 1.500000, 4.500000, 0, 0},
                              { 5.500000, 1.500000, 0, 0},
                              { 1.500000, -4.500000, 0, 0},
                              { -3.500000, -3.500000, 0, 0},
                              { 3.500000, -4.500000, 0, 0},
                              { -3.500000, -4.500000, 0, 0},
                              { 4.500000, -1.500000, 0, 0},
                              { 4.500000, -3.500000, 0, 0},
                              { -3.500000, -5.500000, 0, 0},
                              { -2.500000, -5.500000, 0, 0},
                              { -4.500000, -3.500000, 0, 0},
                              { 4.500000, 4.500000, 0, 0},
                              { -3.500000, 4.500000, 0, 0},
                              { -2.500000, 4.500000, 0, 0},
                              { -5.500000, -2.500000, 0, 0},
                              { -5.500000, 0.500000, 0, 0},
                              { 2.500000, -5.500000, 0, 0},
                              { 3.500000, 4.500000, 0, 0},
                              { -0.500000, -5.500000, 0, 0},
                              { -0.500000, 6.500000, 0, 0},
                              { 2.500000, 4.500000, 0, 0},
                              { -5.500000, -0.500000, 0, 0},
                              { -6.500000, -1.500000, 0, 0},
                              { 1.500000, -5.500000, 0, 0},
                              { -6.500000, -0.500000, 0, 0},
                              { 0.500000, 5.500000, 0, 0},
                              { 1.500000, 6.500000, 0, 0},
                              { 6.500000, 1.500000, 0, 0},
                              { -0.500000, 5.500000, 0, 0},
                              { 6.500000, -0.500000, 0, 0},
                              { -4.500000, -4.500000, 0, 0},
                              { -5.500000, 2.500000, 0, 0},
                              { 5.500000, -0.500000, 0, 0},
                              { -5.500000, -1.500000, 0, 0},
                              { -6.500000, 3.500000, 0, 0},
                              { -1.500000, 6.500000, 0, 0},
                              { -6.500000, 0.500000, 0, 0},
                              { 4.500000, -5.500000, 0, 0},
                              { -3.500000, 6.500000, 0, 0},
                              { 6.500000, -1.500000, 0, 0},
                              { 0.500000, -6.500000, 0, 0},
                              { -5.500000, -3.500000, 0, 0},
                              { 5.500000, -2.500000, 0, 0},
                              { 4.500000, -4.500000, 0, 0},
                              { 5.500000, -1.500000, 0, 0},
                              { 3.500000, -6.500000, 0, 0},
                              { 5.500000, 3.500000, 0, 0},
                              { 3.500000, -5.500000, 0, 0},
                              { -5.500000, -4.500000, 0, 0},
                              { 6.500000, -3.500000, 0, 0},
                              { -0.500000, -6.500000, 0, 0},
                              { 3.500000, 6.500000, 0, 0},
                              { -5.500000, 3.500000, 0, 0},
                              { 0.500000, 6.500000, 0, 0},
                              { 6.500000, 0.500000, 0, 0},
                              { 6.500000, -2.500000, 0, 0},
                              { -6.500000, -3.500000, 0, 0},
                              { -4.500000, 4.500000, 0, 0},
                              { -7.500000, -0.500000, 0, 0},
                              { 7.500000, 0.500000, 0, 0},
                              { 5.500000, 2.500000, 0, 0},
                              { -0.500000, -7.500000, 0, 0},
                              { 0.500000, 7.500000, 0, 0},
                              { -4.500000, 5.500000, 0, 0},
                              { 3.500000, 5.500000, 0, 0},
                              { -3.500000, 5.500000, 0, 0},
                              { -4.500000, -5.500000, 0, 0},
                              { 4.500000, 6.500000, 0, 0},
                              { 5.500000, -4.500000, 0, 0},
                              { 4.500000, 5.500000, 0, 0},
                              { -4.500000, 6.500000, 0, 0},
                              { 6.500000, 4.500000, 0, 0},
                              { -7.500000, 1.500000, 0, 0},
                              { -6.500000, 1.500000, 0, 0},
                              { 5.500000, -3.500000, 0, 0},
                              { -6.500000, 2.500000, 0, 0},
                              { -2.500000, 6.500000, 0, 0},
                              { -1.500000, -7.500000, 0, 0},
                              { 5.500000, 4.500000, 0, 0},
                              { -1.500000, -6.500000, 0, 0},
                              { -3.500000, -7.500000, 0, 0},
                              { 2.500000, -7.500000, 0, 0},
                              { -7.500000, 2.500000, 0, 0},
                              { -6.500000, -2.500000, 0, 0},
                              { -5.500000, 5.500000, 0, 0},
                              { 2.500000, 6.500000, 0, 0},
                              { -2.500000, -6.500000, 0, 0},
                              { -7.500000, 0.500000, 0, 0},
                              { -0.500000, 7.500000, 0, 0},
                              { 7.500000, -2.500000, 0, 0},
                              { -2.500000, 7.500000, 0, 0},
                              { 0.500000, -7.500000, 0, 0},
                              { -4.500000, -7.500000, 0, 0},
                              { 7.500000, 1.500000, 0, 0},
                              { 1.500000, -6.500000, 0, 0},
                              { -6.500000, 4.500000, 0, 0},
                              { -1.500000, 7.500000, 0, 0},
                              { -5.500000, -5.500000, 0, 0},
                              { 6.500000, 2.500000, 0, 0},
                              { -3.500000, -6.500000, 0, 0},
                              { 3.500000, -7.500000, 0, 0},
                              { -5.500000, 4.500000, 0, 0},
                              { 2.500000, -6.500000, 0, 0},
                              { 1.500000, -7.500000, 0, 0},
                              { 6.500000, 3.500000, 0, 0},
                              { 5.500000, -6.500000, 0, 0},
                              { -6.500000, 5.500000, 0, 0},
                              { 7.500000, 4.500000, 0, 0},
                              { 7.500000, -1.500000, 0, 0},
                              { -7.500000, -1.500000, 0, 0},
                              { 3.500000, 7.500000, 0, 0},
                              { -5.500000, 6.500000, 0, 0},
                              { 1.500000, 7.500000, 0, 0},
                              { 7.500000, 3.500000, 0, 0},
                              { 7.500000, -0.500000, 0, 0},
                              { -7.500000, -2.500000, 0, 0},
                              { 5.500000, 5.500000, 0, 0},
                              { 6.500000, 5.500000, 0, 0},
                              { 5.500000, -5.500000, 0, 0},
                              { -2.500000, -7.500000, 0, 0},
                              { 2.500000, 7.500000, 0, 0},
                              { -7.500000, -3.500000, 0, 0},
                              { -7.500000, -4.500000, 0, 0},
                              { -6.500000, -4.500000, 0, 0},
                              { 7.500000, -3.500000, 0, 0},
                              { 5.500000, 6.500000, 0, 0},
                              { -5.500000, -6.500000, 0, 0},
                              { -4.500000, -6.500000, 0, 0},
                              { 7.500000, 2.500000, 0, 0},
                              { -7.500000, 3.500000, 0, 0},
                              { 4.500000, -6.500000, 0, 0},
                              { 7.500000, -4.500000, 0, 0} };
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
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
  r0.z = min(256, asuint(cb0[26].y));
  r3.xyzw = (int4)vThreadID.xyyy | int4(1,1,1,1);
  r3.xyzw = (uint4)r3.xyzw;
  r3.xyzw = r3.xyzw * cb0[2].xyyy + cb0[2].zwww;
  bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.w = (((uint)vThreadID.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r4.x = (((uint)vThreadID.x << 0) & bitmask.x) | ((uint)r0.w & ~bitmask.x);
  r0.z = (int)r0.z + 1;
  r1.w = (uint)r0.z >> 1;
  r0.z = (int)r0.z & 510;
  r2.w = (uint)r0.z << 2;
  r2.w = (int)r2.w + -7;
  r2.w = (uint)r2.w;
  r2.w = sqrt(r2.w);
  r2.w = floor(r2.w);
  r2.w = (uint)r2.w;
  r2.w = (int)r2.w + 1;
  r2.w = (uint)r2.w >> 1;
  r5.xy = (int2)r2.ww + int2(-1,1);
  r5.x = mad((int)r2.w, (int)r5.x, 1);
  r5.y = (uint)r5.y;
  r5.z = cb0[13].x * r2.z;
  r5.w = 2.82842708 * r5.z;
  r5.y = 1 + r5.y;
  r5.y = r5.w * r5.y;
  r6.x = r5.y + r5.y;
  r6.yz = (int2)r4.xx & int2(1,2);
  r6.yz = r6.yz ? float2(0.5,0.5) : float2(-0.5,-0.5);
  r6.yz = r6.yz * cb0[3].zw + r3.xw;
  r6.yz = r6.yz * cb0[6].xy + cb0[6].zw;
  r6.w = cmp(cb1[31].w < 1);
  r7.x = r6.w ? r2.z : 1;
  r2.xy = r7.xx * r6.yz;
  r7.xyz = cb1[70].xyz + cb0[19].xyz;
  r8.xyz = cb1[70].xyz + cb0[20].xyz;
  r9.xyzw = float4(0,0,0,0);
  r10.xyzw = float4(0,0,0,0);
  r13.x = r5.y;
  r13.y = r6.x;
  r14.x = r5.y;
  r14.y = r6.x;
  r11.xyzw = float4(100000,0,0,0);
  r15.xy = float2(0,0);
  r12.xyzw = float4(100000,0,0,0);
  r16.xy = float2(0,0);
  r6.y = r2.w;
  r6.z = r5.x;
  r7.w = 0;
  while (true) {
    r8.w = cmp((uint)r7.w >= (uint)r1.w);
    if (r8.w != 0) break;
    r8.w = (int)r1.w + (int)-r7.w;
    r8.w = (uint)r8.w << 1;
    r13.z = (int)r8.w + -1;
    bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r13.w = (((uint)r13.z << 2) & bitmask.w) | ((uint)r4.x & ~bitmask.w);
    r14.zw = icb[r13.w+0].xy * cb0[3].zw + r3.xw;
    r17.xy = cmp(r14.zw < cb0[4].xy);
    r17.zw = cmp(cb0[4].zw < r14.zw);
    r17.xy = (int2)r17.zw | (int2)r17.xy;
    r13.w = (int)r17.y | (int)r17.x;
    r17.xyz = t1.SampleLevel(s0_s, r14.zw, 0).xyz;
    r17.w = t0.SampleLevel(s0_s, r14.zw, 0).x;
    r18.x = r17.w * cb1[65].x + cb1[65].y;
    r17.w = r17.w * cb1[65].z + -cb1[65].w;
    r17.w = 1 / r17.w;
    r18.z = r18.x + r17.w;
    r17.xyz = r17.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r17.w = dot(r17.xyz, r17.xyz);
    r17.w = rsqrt(r17.w);
    r17.xyz = r17.xyz * r17.www;
    r19.xyzw = t2.SampleLevel(s0_s, r14.zw, 0).xyzw;
    r20.xyzw = t3.SampleLevel(s0_s, r14.zw, 0).xyzw;
    r19.xw = r19.xw * r19.yy;
    r20.xw = r20.xw * r20.yy;
    r14.zw = r14.zw * cb0[6].xy + cb0[6].zw;
    r17.w = r6.w ? r18.z : 1;
    r18.xy = r17.ww * r14.zw;
    r21.xyz = cb1[53].xyz * r18.yyy;
    r21.xyz = r18.xxx * cb1[52].xyz + r21.xyz;
    r21.xyz = r18.zzz * cb1[54].xyz + r21.xyz;
    r21.xyz = cb1[55].xyz + r21.xyz;
    r18.xyz = -r18.xyz + r2.xyz;
    r22.xyz = cb1[53].xyz * r18.yyy;
    r18.xyw = r18.xxx * cb1[52].xyz + r22.xyz;
    r18.xyz = r18.zzz * cb1[54].xyz + r18.xyw;
    r14.zw = rcp(r19.zy);
    if (cb0[25].x == 0) {
      r22.xyz = -cb0[21].xyz;
    } else {
      r23.xyz = -r21.xyz + r7.xyz;
      r17.w = dot(r23.xyz, r23.xyz);
      r17.w = rsqrt(r17.w);
      r22.xyz = r23.xyz * r17.www;
    }
    r17.w = dot(r22.xyz, r18.xyz);
    r22.xyz = -r22.xyz * r17.www + r18.xyz;
    r17.w = dot(r22.xyz, r22.xyz);
    r18.w = r14.z * r14.z;
    r17.w = -r17.w * r18.w + 1;
    r17.w = max(0, r17.w);
    r18.w = dot(r1.xyz, -r18.xyz);
    r22.xyz = -r18.www * r1.xyz + -r18.xyz;
    r21.w = dot(r22.xyz, r22.xyz);
    r21.w = sqrt(r21.w);
    r18.w = -r21.w * 0.25 + abs(r18.w);
    r18.w = 6 * r18.w;
    r14.z = saturate(-r18.w * r14.z + 1);
    r14.z = r17.w * r14.z;
    r17.x = dot(r1.xyz, r17.xyz);
    r17.x = max(0, r17.x);
    r17.x = r17.x * r17.x;
    r17.x = r17.x * r17.x;
    r14.z = r17.x * r14.z;
    r17.yz = cmp(r19.yz != float2(0,-1));
    r13.w = ~(int)r13.w;
    r17.y = r17.y ? r13.w : 0;
    r17.w = cmp(0 < r14.z);
    r21.w = min(r19.z, r11.x);
    r17.z = r17.z ? r21.w : r11.x;
    r22.x = r17.w ? r17.z : r11.x;
    r17.z = min(r19.z, r13.y);
    r17.w = r17.z + -r13.x;
    r19.z = saturate(0.5 + r17.w);
    r21.w = 1 + -r19.z;
    r21.w = r21.w * r14.z;
    r23.x = r19.y * r21.w + r9.x;
    r23.yz = r19.xw * r21.ww + r9.yz;
    r17.z = r19.y * r17.z;
    r22.y = r17.z * r21.w + r9.w;
    r17.w = saturate(r17.w);
    r21.w = cmp(0 >= r19.y);
    r14.w = r21.w ? 0 : r14.w;
    r21.w = r19.x * r14.w;
    r14.w = -r19.x * r14.w + 1;
    r14.w = r17.w * r14.w + r21.w;
    r22.z = r15.x + r14.w;
    r14.z = r19.z * r14.z;
    r24.x = r19.y * r14.z + r11.y;
    r24.yz = r19.xw * r14.zz + r11.zw;
    r22.w = r17.z * r14.z + r15.y;
    r19.x = r11.x;
    r19.y = r9.w;
    r19.zw = r15.xy;
    r15.xyzw = r17.yyyy ? r22.yzxw : r19.yzxw;
    r9.xyz = r17.yyy ? r23.xyz : r9.xyz;
    r11.yzw = r17.yyy ? r24.xyz : r11.yzw;
    r14.zw = rcp(r20.zy);
    if (cb0[26].x == 0) {
      r17.yzw = -cb0[22].xyz;
    } else {
      r19.xyz = -r21.xyz + r8.xyz;
      r19.w = dot(r19.xyz, r19.xyz);
      r19.w = rsqrt(r19.w);
      r17.yzw = r19.xyz * r19.www;
    }
    r19.x = dot(r17.yzw, r18.xyz);
    r17.yzw = -r17.yzw * r19.xxx + r18.xyz;
    r17.y = dot(r17.yzw, r17.yzw);
    r17.z = r14.z * r14.z;
    r17.y = -r17.y * r17.z + 1;
    r17.y = max(0, r17.y);
    r14.z = saturate(-r18.w * r14.z + 1);
    r14.z = r17.y * r14.z;
    r14.z = r14.z * r17.x;
    r17.xy = cmp(r20.yz != float2(0,-1));
    r13.w = r17.x ? r13.w : 0;
    r17.x = cmp(0 < r14.z);
    r17.z = min(r20.z, r12.x);
    r17.y = r17.y ? r17.z : r12.x;
    r17.x = r17.x ? r17.y : r12.x;
    r18.x = min(r20.z, r14.y);
    r18.y = r18.x + -r14.x;
    r18.z = saturate(0.5 + r18.y);
    r18.w = 1 + -r18.z;
    r18.w = r18.w * r14.z;
    r19.x = r20.y * r18.w + r10.x;
    r19.yz = r20.xw * r18.ww + r10.yz;
    r18.x = r20.y * r18.x;
    r17.y = r18.x * r18.w + r10.w;
    r18.y = saturate(r18.y);
    r18.w = cmp(0 >= r20.y);
    r14.w = r18.w ? 0 : r14.w;
    r18.w = r20.x * r14.w;
    r14.w = -r20.x * r14.w + 1;
    r14.w = r18.y * r14.w + r18.w;
    r17.z = r16.x + r14.w;
    r14.z = r18.z * r14.z;
    r21.x = r20.y * r14.z + r12.y;
    r21.yz = r20.xw * r14.zz + r12.zw;
    r17.w = r18.x * r14.z + r16.y;
    r18.x = r12.x;
    r18.y = r10.w;
    r18.zw = r16.xy;
    r16.xyzw = r13.wwww ? r17.yzxw : r18.yzxw;
    r10.xyz = r13.www ? r19.xyz : r10.xyz;
    r12.yzw = r13.www ? r21.xyz : r12.yzw;
    r13.w = cmp((int)r6.z == (int)r13.z);
    if (r13.w != 0) {
      r13.w = (uint)r6.y << 1;
      r14.z = (int)r0.z + (int)-r13.z;
      r13.w = min((uint)r14.z, (uint)r13.w);
      r14.z = cmp(r9.x != 0.000000);
      r13.w = (uint)r13.w;
      r13.w = rcp(r13.w);
      r14.w = saturate(-r15.y * r13.w + 1);
      r17.x = rcp(r11.y);
      r17.y = cmp(0 >= r11.y);
      r17.x = r17.y ? 0 : r17.x;
      r17.y = rcp(r9.x);
      r17.y = r17.y * r15.x;
      r17.y = r15.w * r17.x + -r17.y;
      r17.z = rcp(r13.x);
      r17.y = saturate(r17.y * r17.z);
      r17.z = cmp(r11.y == 0.000000);
      r14.w = -r14.w * r17.y + 1;
      r14.w = r17.z ? 0 : r14.w;
      r17.x = r17.x * r9.x;
      r14.w = r17.x * r14.w;
      r17.xyz = r11.yzw * r14.www + r9.xyz;
      r17.w = r15.w * r14.w + r15.x;
      r11.x = r15.w;
      r11.xyzw = r14.zzzz ? r17.wxyz : r11.xyzw;
      r14.z = cmp(r10.x != 0.000000);
      r13.w = saturate(-r16.y * r13.w + 1);
      r14.w = rcp(r12.y);
      r17.x = cmp(0 >= r12.y);
      r14.w = r17.x ? 0 : r14.w;
      r17.x = rcp(r10.x);
      r17.x = r17.x * r16.x;
      r17.x = r16.w * r14.w + -r17.x;
      r17.y = rcp(r14.x);
      r17.x = saturate(r17.x * r17.y);
      r17.y = cmp(r12.y == 0.000000);
      r13.w = -r13.w * r17.x + 1;
      r13.w = r17.y ? 0 : r13.w;
      r14.w = r14.w * r10.x;
      r13.w = r14.w * r13.w;
      r17.xyz = r12.yzw * r13.www + r10.xyz;
      r17.w = r16.w * r13.w + r16.x;
      r12.x = r16.w;
      r12.xyzw = r14.zzzz ? r17.wxyz : r12.xyzw;
      r13.z = cmp((int)r13.z == 1);
      if (r13.z == 0) {
        r13.w = (int)r6.y + -1;
        r14.z = (uint)r13.w << 1;
        r6.z = (int)r6.z + (int)-r14.z;
        r14.z = (uint)r6.y;
        r14.z = 1 + r14.z;
        r14.x = r14.z * r5.w;
        r14.y = 2 * r14.x;
        r13.xy = r14.xy;
        r9.xyzw = float4(0,0,0,0);
        r15.x = 0;
        r10.xyzw = float4(0,0,0,0);
        r16.x = 0;
        r6.y = r13.w;
      } else {
        r9.w = r15.x;
        r15.x = r15.y;
        r10.w = r16.x;
        r16.x = r16.y;
      }
      r15.y = r11.x;
      r16.y = r12.x;
    } else {
      r9.w = r15.x;
      r15.x = r15.y;
      r15.y = r15.w;
      r10.w = r16.x;
      r16.x = r16.y;
      r16.y = r16.w;
      r13.z = 0;
    }
    if (r13.z == 0) {
      if (r13.z == 0) {
        r8.w = (int)r8.w + -2;
        r13.z = (uint)r8.w << 2;
        r13.z = (int)r4.x + (int)r13.z;
        r13.zw = icb[r13.z+0].xy * cb0[3].zw + r3.xw;
        r14.zw = cmp(r13.zw < cb0[4].xy);
        r17.xy = cmp(cb0[4].zw < r13.zw);
        r14.zw = (int2)r14.zw | (int2)r17.xy;
        r14.z = (int)r14.w | (int)r14.z;
        r17.xyz = t1.SampleLevel(s0_s, r13.zw, 0).xyz;
        r14.w = t0.SampleLevel(s0_s, r13.zw, 0).x;
        r15.w = r14.w * cb1[65].x + cb1[65].y;
        r14.w = r14.w * cb1[65].z + -cb1[65].w;
        r14.w = 1 / r14.w;
        r18.z = r15.w + r14.w;
        r17.xyz = r17.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r14.w = dot(r17.xyz, r17.xyz);
        r14.w = rsqrt(r14.w);
        r17.xyz = r17.xyz * r14.www;
        r19.xyzw = t2.SampleLevel(s0_s, r13.zw, 0).xyzw;
        r20.xyzw = t3.SampleLevel(s0_s, r13.zw, 0).xyzw;
        r19.xw = r19.xw * r19.yy;
        r20.xw = r20.xw * r20.yy;
        r13.zw = r13.zw * cb0[6].xy + cb0[6].zw;
        r14.w = r6.w ? r18.z : 1;
        r18.xy = r14.ww * r13.zw;
        r21.xyz = cb1[53].xyz * r18.yyy;
        r21.xyz = r18.xxx * cb1[52].xyz + r21.xyz;
        r21.xyz = r18.zzz * cb1[54].xyz + r21.xyz;
        r21.xyz = cb1[55].xyz + r21.xyz;
        r18.xyz = -r18.xyz + r2.xyz;
        r22.xyz = cb1[53].xyz * r18.yyy;
        r18.xyw = r18.xxx * cb1[52].xyz + r22.xyz;
        r18.xyz = r18.zzz * cb1[54].xyz + r18.xyw;
        r13.zw = rcp(r19.zy);
        if (cb0[25].x == 0) {
          r22.xyz = -cb0[21].xyz;
        } else {
          r23.xyz = -r21.xyz + r7.xyz;
          r14.w = dot(r23.xyz, r23.xyz);
          r14.w = rsqrt(r14.w);
          r22.xyz = r23.xyz * r14.www;
        }
        r14.w = dot(r22.xyz, r18.xyz);
        r22.xyz = -r22.xyz * r14.www + r18.xyz;
        r14.w = dot(r22.xyz, r22.xyz);
        r15.w = r13.z * r13.z;
        r14.w = -r14.w * r15.w + 1;
        r14.w = max(0, r14.w);
        r15.w = dot(r1.xyz, -r18.xyz);
        r22.xyz = -r15.www * r1.xyz + -r18.xyz;
        r16.w = dot(r22.xyz, r22.xyz);
        r16.w = sqrt(r16.w);
        r15.w = -r16.w * 0.25 + abs(r15.w);
        r15.w = 6 * r15.w;
        r13.z = saturate(-r15.w * r13.z + 1);
        r13.z = r14.w * r13.z;
        r14.w = dot(r1.xyz, r17.xyz);
        r14.w = max(0, r14.w);
        r14.w = r14.w * r14.w;
        r14.w = r14.w * r14.w;
        r13.z = r14.w * r13.z;
        r13.z = r8.w ? r13.z : 1;
        r17.xy = cmp(r19.yz != float2(0,-1));
        r14.z = ~(int)r14.z;
        r16.w = r14.z ? r17.x : 0;
        r17.x = cmp(0 < r13.z);
        r17.z = min(r19.z, r15.z);
        r17.y = r17.y ? r17.z : r15.z;
        r17.x = r17.x ? r17.y : r15.z;
        r17.w = min(r19.z, r13.y);
        r18.w = r17.w + -r13.x;
        r19.z = saturate(0.5 + r18.w);
        r21.w = 1 + -r19.z;
        r21.w = r21.w * r13.z;
        r22.x = r19.y * r21.w + r9.x;
        r22.yz = r19.xw * r21.ww + r9.yz;
        r17.w = r19.y * r17.w;
        r22.w = r17.w * r21.w + r9.w;
        r18.w = saturate(r18.w);
        r21.w = cmp(0 >= r19.y);
        r13.w = r21.w ? 0 : r13.w;
        r21.w = r19.x * r13.w;
        r13.w = -r19.x * r13.w + 1;
        r13.w = r18.w * r13.w + r21.w;
        r17.y = r15.x + r13.w;
        r13.z = r19.z * r13.z;
        r23.x = r19.y * r13.z + r11.y;
        r23.yz = r19.xw * r13.zz + r11.zw;
        r17.z = r17.w * r13.z + r15.y;
        r9.xyzw = r16.wwww ? r22.xyzw : r9.xyzw;
        r11.yzw = r16.www ? r23.xyz : r11.yzw;
        r15.xyz = r16.www ? r17.xzy : r15.zyx;
        r13.zw = rcp(r20.zy);
        if (cb0[26].x == 0) {
          r17.xyz = -cb0[22].xyz;
        } else {
          r19.xyz = -r21.xyz + r8.xyz;
          r16.w = dot(r19.xyz, r19.xyz);
          r16.w = rsqrt(r16.w);
          r17.xyz = r19.xyz * r16.www;
        }
        r16.w = dot(r17.xyz, r18.xyz);
        r17.xyz = -r17.xyz * r16.www + r18.xyz;
        r16.w = dot(r17.xyz, r17.xyz);
        r17.x = r13.z * r13.z;
        r16.w = -r16.w * r17.x + 1;
        r16.w = max(0, r16.w);
        r13.z = saturate(-r15.w * r13.z + 1);
        r13.z = r16.w * r13.z;
        r13.z = r13.z * r14.w;
        r8.w = r8.w ? r13.z : 1;
        r17.xy = cmp(r20.yz != float2(0,-1));
        r13.z = r14.z ? r17.x : 0;
        r14.z = cmp(0 < r8.w);
        r14.w = min(r20.z, r16.z);
        r14.w = r17.y ? r14.w : r16.z;
        r17.x = r14.z ? r14.w : r16.z;
        r14.z = min(r20.z, r14.y);
        r14.w = r14.z + -r14.x;
        r15.w = saturate(0.5 + r14.w);
        r16.w = 1 + -r15.w;
        r16.w = r16.w * r8.w;
        r18.x = r20.y * r16.w + r10.x;
        r18.yz = r20.xw * r16.ww + r10.yz;
        r14.z = r20.y * r14.z;
        r18.w = r14.z * r16.w + r10.w;
        r14.w = saturate(r14.w);
        r16.w = cmp(0 >= r20.y);
        r13.w = r16.w ? 0 : r13.w;
        r16.w = r20.x * r13.w;
        r13.w = -r20.x * r13.w + 1;
        r13.w = r14.w * r13.w + r16.w;
        r17.y = r16.x + r13.w;
        r8.w = r15.w * r8.w;
        r19.x = r20.y * r8.w + r12.y;
        r19.yz = r20.xw * r8.ww + r12.zw;
        r17.z = r14.z * r8.w + r16.y;
        r10.xyzw = r13.zzzz ? r18.xyzw : r10.xyzw;
        r16.xyz = r13.zzz ? r17.xzy : r16.zyx;
        r12.yzw = r13.zzz ? r19.xyz : r12.yzw;
        r11.x = r15.x;
        r15.xy = r15.zy;
        r12.x = r16.x;
        r16.xy = r16.zy;
      } else {
        r11.x = r15.z;
        r12.x = r16.z;
      }
    } else {
      r11.x = r15.z;
      r12.x = r16.z;
    }
    r7.w = (int)r7.w + 1;
  }
  r1.xyzw = cb0[5].xyyy * r3.xyzw;
  r1.xyzw = (uint4)r1.xyzw;
  r4.yzw = (uint3)r0.www >> int3(1,1,1);
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.x = (((uint)r4.x << 0) & bitmask.x) | ((uint)r1.x & ~bitmask.x);
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.y = (((uint)r4.y << 0) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
  bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.z = (((uint)r4.z << 0) & bitmask.z) | ((uint)r1.z & ~bitmask.z);
  bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.w = (((uint)r4.w << 0) & bitmask.w) | ((uint)r1.w & ~bitmask.w);
  r0.zw = cmp((uint2)r1.xw < asuint(cb0[1].xy));
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r2.xyzw = t2.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r3.xyzw = t3.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r0.zw = float2(5.65685415,11.3137083) * r5.zz;
    r4.xy = cmp(r0.xy < cb0[4].xy);
    r0.xy = cmp(cb0[4].zw < r0.xy);
    r0.xy = (int2)r0.xy | (int2)r4.xy;
    r0.x = (int)r0.y | (int)r0.x;
    r2.xw = r2.xw * r2.yy;
    r3.xw = r3.xw * r3.yy;
    r4.xy = cmp(r2.yz != float2(0,-1));
    r0.x = ~(int)r0.x;
    r0.y = r0.x ? r4.x : 0;
    r4.x = min(r11.x, r2.z);
    r4.x = r4.y ? r4.x : r11.x;
    r2.z = min(r2.z, r0.w);
    r5.x = -r5.z * 5.65685415 + r2.z;
    r5.y = saturate(0.5 + r5.x);
    r5.w = 1 + -r5.y;
    r6.xyz = r5.www * r2.yxw;
    r2.z = r2.y * r2.z;
    r7.x = r2.z * r5.w;
    r5.x = saturate(r5.x);
    r5.w = rcp(r2.y);
    r6.w = cmp(0 >= r2.y);
    r5.w = r6.w ? 0 : r5.w;
    r6.w = r5.w * r2.x;
    r5.w = -r2.x * r5.w + 1;
    r7.y = r5.x * r5.w + r6.w;
    r4.y = r2.y * r5.y + r11.y;
    r4.zw = r2.xw * r5.yy + r11.zw;
    r7.z = r2.z * r5.y + r15.y;
    r2.xzw = r0.yyy ? r6.xyz : 0;
    r15.xz = float2(0,0);
    r5.xyw = r0.yyy ? r7.xyz : r15.xzy;
    r4.xyzw = r0.yyyy ? r4.yzxw : r11.yzxw;
    r6.xy = cmp(r3.yz != float2(0,-1));
    r0.x = r0.x ? r6.x : 0;
    r0.y = min(r12.x, r3.z);
    r6.x = r6.y ? r0.y : r12.x;
    r0.y = min(r3.z, r0.w);
    r0.w = -r5.z * 5.65685415 + r0.y;
    r3.z = saturate(0.5 + r0.w);
    r5.z = 1 + -r3.z;
    r7.xyz = r5.zzz * r3.yxw;
    r0.y = r3.y * r0.y;
    r8.x = r0.y * r5.z;
    r0.w = saturate(r0.w);
    r5.z = rcp(r3.y);
    r7.w = cmp(0 >= r3.y);
    r5.z = r7.w ? 0 : r5.z;
    r7.w = r5.z * r3.x;
    r5.z = -r3.x * r5.z + 1;
    r8.y = r0.w * r5.z + r7.w;
    r6.y = r3.y * r3.z + r12.y;
    r6.zw = r3.xw * r3.zz + r12.zw;
    r8.z = r0.y * r3.z + r16.y;
    r3.xzw = r0.xxx ? r7.xyz : 0;
    r16.xz = float2(0,0);
    r7.xyz = r0.xxx ? r8.xyz : r16.xzy;
    r6.xyzw = r0.xxxx ? r6.yzxw : r12.yzxw;
    r0.x = cmp(r2.x != 0.000000);
    r0.y = saturate(1 + -r5.y);
    r0.w = rcp(r4.x);
    r5.y = cmp(0 >= r4.x);
    r0.w = r5.y ? 0 : r0.w;
    r5.y = rcp(r2.x);
    r5.x = r5.x * r5.y;
    r5.x = r5.w * r0.w + -r5.x;
    r0.z = rcp(r0.z);
    r5.x = saturate(r5.x * r0.z);
    r5.y = cmp(r4.x == 0.000000);
    r0.y = -r0.y * r5.x + 1;
    r0.y = r5.y ? 0 : r0.y;
    r0.w = r2.x * r0.w;
    r0.y = r0.y * r0.w;
    r2.xzw = r4.xyw * r0.yyy + r2.xzw;
    r0.xyw = r0.xxx ? r2.xzw : r4.xyw;
    r2.x = cmp(r3.x != 0.000000);
    r2.z = saturate(1 + -r7.y);
    r2.w = rcp(r6.x);
    r5.x = cmp(0 >= r6.x);
    r2.w = r5.x ? 0 : r2.w;
    r5.x = rcp(r3.x);
    r5.x = r7.x * r5.x;
    r5.x = r7.z * r2.w + -r5.x;
    r0.z = saturate(r5.x * r0.z);
    r5.x = cmp(r6.x == 0.000000);
    r0.z = -r2.z * r0.z + 1;
    r0.z = r5.x ? 0 : r0.z;
    r2.z = r3.x * r2.w;
    r0.z = r2.z * r0.z;
    r3.xzw = r6.xyw * r0.zzz + r3.xzw;
    r2.xzw = r2.xxx ? r3.xzw : r6.xyw;
    r0.z = min(1024, r2.y);
    r3.x = cmp(0 < r2.y);
    r0.z = r0.z / r2.y;
    r0.z = r3.x ? r0.z : 0;
    r0.xyz = r0.xyw * r0.zzz;
    r0.w = min(1024, r3.y);
    r2.y = cmp(0 < r3.y);
    r0.w = r0.w / r3.y;
    r0.w = r2.y ? r0.w : 0;
    r2.xyz = r2.xzw * r0.www;
    r0.w = rcp(r0.x);
    r2.w = cmp(0 >= r0.x);
    r0.w = r2.w ? 0 : r0.w;
    r4.xw = r0.yz * r0.ww;
    r0.y = rcp(r2.x);
    r0.z = cmp(0 >= r2.x);
    r0.y = r0.z ? 0 : r0.y;
    r6.xw = r2.yz * r0.yy;
    r4.y = r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xwww, r4.xyzw
    r6.y = r2.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xyzw, r6.xyzw
  }
  return;
}