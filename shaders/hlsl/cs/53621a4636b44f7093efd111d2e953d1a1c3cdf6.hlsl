// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

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
  float4 cb0[35];
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
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u2
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u3
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38;
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
  r0.z = min(256, asuint(cb0[34].y));
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
  r9.xyz = cb1[70].xyz + cb0[21].xyz;
  r10.xyz = cb1[70].xyz + cb0[22].xyz;
  r11.xyzw = float4(0,0,0,0);
  r12.xyzw = float4(0,0,0,0);
  r13.xyzw = float4(0,0,0,0);
  r14.xyzw = float4(0,0,0,0);
  r19.x = r5.y;
  r19.y = r6.x;
  r20.x = r5.y;
  r20.y = r6.x;
  r21.x = r5.y;
  r21.y = r6.x;
  r22.x = r5.y;
  r22.y = r6.x;
  r15.xyzw = float4(100000,0,0,0);
  r23.xz = float2(0,0);
  r16.xyzw = float4(100000,0,0,0);
  r24.xz = float2(0,0);
  r17.xyzw = float4(100000,0,0,0);
  r25.xz = float2(0,0);
  r18.xyzw = float4(100000,0,0,0);
  r6.y = 0;
  r26.z = 0;
  r7.w = r2.w;
  r8.w = r5.x;
  r9.w = 0;
  while (true) {
    r10.w = cmp((uint)r9.w >= (uint)r1.w);
    if (r10.w != 0) break;
    r10.w = (int)r1.w + (int)-r9.w;
    r10.w = (uint)r10.w << 1;
    r19.z = (int)r10.w + -1;
    bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r19.w = (((uint)r19.z << 2) & bitmask.w) | ((uint)r4.x & ~bitmask.w);
    r20.zw = icb[r19.w+0].xy * cb0[3].zw + r3.xw;
    r21.zw = cmp(r20.zw < cb0[4].xy);
    r22.zw = cmp(cb0[4].zw < r20.zw);
    r21.zw = (int2)r21.zw | (int2)r22.zw;
    r19.w = (int)r21.w | (int)r21.z;
    r27.xyz = t1.SampleLevel(s0_s, r20.zw, 0).xyz;
    r21.z = t0.SampleLevel(s0_s, r20.zw, 0).x;
    r21.w = r21.z * cb1[65].x + cb1[65].y;
    r21.z = r21.z * cb1[65].z + -cb1[65].w;
    r21.z = 1 / r21.z;
    r28.z = r21.w + r21.z;
    r27.xyz = r27.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r21.z = dot(r27.xyz, r27.xyz);
    r21.z = rsqrt(r21.z);
    r27.xyz = r27.xyz * r21.zzz;
    r29.xyzw = t2.SampleLevel(s0_s, r20.zw, 0).xyzw;
    r30.xyzw = t3.SampleLevel(s0_s, r20.zw, 0).xyzw;
    r31.xyzw = t4.SampleLevel(s0_s, r20.zw, 0).xyzw;
    r32.xyzw = t5.SampleLevel(s0_s, r20.zw, 0).xyzw;
    r21.zw = r29.xw * r29.yy;
    r22.zw = r30.xw * r30.yy;
    r29.xw = r31.xw * r31.yy;
    r30.xw = r32.xw * r32.yy;
    r20.zw = r20.zw * cb0[6].xy + cb0[6].zw;
    r27.w = r6.w ? r28.z : 1;
    r28.xy = r27.ww * r20.zw;
    r33.xyz = cb1[53].xyz * r28.yyy;
    r33.xyz = r28.xxx * cb1[52].xyz + r33.xyz;
    r33.xyz = r28.zzz * cb1[54].xyz + r33.xyz;
    r33.xyz = cb1[55].xyz + r33.xyz;
    r28.xyz = -r28.xyz + r2.xyz;
    r34.xyz = cb1[53].xyz * r28.yyy;
    r28.xyw = r28.xxx * cb1[52].xyz + r34.xyz;
    r28.xyz = r28.zzz * cb1[54].xyz + r28.xyw;
    r20.zw = rcp(r29.zy);
    if (cb0[31].x == 0) {
      r34.xyz = -cb0[23].xyz;
    } else {
      r35.xyz = -r33.xyz + r7.xyz;
      r27.w = dot(r35.xyz, r35.xyz);
      r27.w = rsqrt(r27.w);
      r34.xyz = r35.xyz * r27.www;
    }
    r27.w = dot(r34.xyz, r28.xyz);
    r34.xyz = -r34.xyz * r27.www + r28.xyz;
    r27.w = dot(r34.xyz, r34.xyz);
    r28.w = r20.z * r20.z;
    r27.w = -r27.w * r28.w + 1;
    r27.w = max(0, r27.w);
    r28.w = dot(r1.xyz, -r28.xyz);
    r34.xyz = -r28.www * r1.xyz + -r28.xyz;
    r31.x = dot(r34.xyz, r34.xyz);
    r31.x = sqrt(r31.x);
    r28.w = -r31.x * 0.25 + abs(r28.w);
    r28.w = 6 * r28.w;
    r20.z = saturate(-r28.w * r20.z + 1);
    r20.z = r27.w * r20.z;
    r27.x = dot(r1.xyz, r27.xyz);
    r27.x = max(0, r27.x);
    r27.x = r27.x * r27.x;
    r27.x = r27.x * r27.x;
    r20.z = r27.x * r20.z;
    r27.yz = cmp(r29.yz != float2(0,-1));
    r19.w = ~(int)r19.w;
    r27.y = r27.y ? r19.w : 0;
    r27.w = cmp(0 < r20.z);
    r31.x = min(r29.z, r15.x);
    r27.z = r27.z ? r31.x : r15.x;
    r34.x = r27.w ? r27.z : r15.x;
    r27.z = min(r29.z, r19.y);
    r27.w = r27.z + -r19.x;
    r29.z = saturate(0.5 + r27.w);
    r31.x = 1 + -r29.z;
    r31.x = r31.x * r20.z;
    r35.x = r29.y * r31.x + r11.x;
    r35.yz = r21.zw * r31.xx + r11.yz;
    r27.z = r29.y * r27.z;
    r34.y = r27.z * r31.x + r11.w;
    r27.w = saturate(r27.w);
    r31.x = cmp(0 >= r29.y);
    r20.w = r31.x ? 0 : r20.w;
    r31.x = r21.z * r20.w;
    r20.w = -r21.z * r20.w + 1;
    r20.w = r27.w * r20.w + r31.x;
    r34.z = r23.z + r20.w;
    r20.z = r29.z * r20.z;
    r36.x = r29.y * r20.z + r15.y;
    r36.yz = r21.zw * r20.zz + r15.zw;
    r36.w = r27.z * r20.z + r23.x;
    r37.xyz = r15.yzw;
    r37.w = r23.x;
    r36.xyzw = r27.yyyy ? r36.xyzw : r37.xyzw;
    r11.xyz = r27.yyy ? r35.xyz : r11.xyz;
    r23.x = r15.x;
    r23.y = r11.w;
    r15.xyz = r27.yyy ? r34.xyz : r23.xyz;
    r20.zw = rcp(r30.zy);
    if (cb0[32].x == 0) {
      r27.yzw = -cb0[24].xyz;
    } else {
      r34.xyz = -r33.xyz + r8.xyz;
      r21.z = dot(r34.xyz, r34.xyz);
      r21.z = rsqrt(r21.z);
      r27.yzw = r34.xyz * r21.zzz;
    }
    r21.z = dot(r27.yzw, r28.xyz);
    r27.yzw = -r27.yzw * r21.zzz + r28.xyz;
    r21.z = dot(r27.yzw, r27.yzw);
    r21.w = r20.z * r20.z;
    r21.z = -r21.z * r21.w + 1;
    r21.z = max(0, r21.z);
    r20.z = saturate(-r28.w * r20.z + 1);
    r20.z = r21.z * r20.z;
    r20.z = r20.z * r27.x;
    r21.zw = cmp(r30.yz != float2(0,-1));
    r21.z = r21.z ? r19.w : 0;
    r27.y = cmp(0 < r20.z);
    r27.z = min(r30.z, r16.x);
    r21.w = r21.w ? r27.z : r16.x;
    r34.x = r27.y ? r21.w : r16.x;
    r21.w = min(r30.z, r20.y);
    r27.y = r21.w + -r20.x;
    r27.z = saturate(0.5 + r27.y);
    r27.w = 1 + -r27.z;
    r27.w = r27.w * r20.z;
    r35.x = r30.y * r27.w + r12.x;
    r35.yz = r22.zw * r27.ww + r12.yz;
    r21.w = r30.y * r21.w;
    r34.y = r21.w * r27.w + r12.w;
    r27.y = saturate(r27.y);
    r27.w = cmp(0 >= r30.y);
    r20.w = r27.w ? 0 : r20.w;
    r27.w = r22.z * r20.w;
    r20.w = -r22.z * r20.w + 1;
    r20.w = r27.y * r20.w + r27.w;
    r34.z = r24.z + r20.w;
    r20.z = r27.z * r20.z;
    r37.x = r30.y * r20.z + r16.y;
    r37.yz = r22.zw * r20.zz + r16.zw;
    r37.w = r21.w * r20.z + r24.x;
    r38.xyz = r16.yzw;
    r38.w = r24.x;
    r37.xyzw = r21.zzzz ? r37.xyzw : r38.xyzw;
    r12.xyz = r21.zzz ? r35.xyz : r12.xyz;
    r24.x = r16.x;
    r24.y = r12.w;
    r16.xyz = r21.zzz ? r34.xyz : r24.xyz;
    r20.zw = rcp(r31.zy);
    if (cb0[33].x == 0) {
      r27.yzw = -cb0[25].xyz;
    } else {
      r34.xyz = -r33.xyz + r9.xyz;
      r21.z = dot(r34.xyz, r34.xyz);
      r21.z = rsqrt(r21.z);
      r27.yzw = r34.xyz * r21.zzz;
    }
    r21.z = dot(r27.yzw, r28.xyz);
    r27.yzw = -r27.yzw * r21.zzz + r28.xyz;
    r21.z = dot(r27.yzw, r27.yzw);
    r21.w = r20.z * r20.z;
    r21.z = -r21.z * r21.w + 1;
    r21.z = max(0, r21.z);
    r20.z = saturate(-r28.w * r20.z + 1);
    r20.z = r21.z * r20.z;
    r20.z = r20.z * r27.x;
    r21.zw = cmp(r31.yz != float2(0,-1));
    r21.z = r21.z ? r19.w : 0;
    r22.z = cmp(0 < r20.z);
    r22.w = min(r31.z, r17.x);
    r21.w = r21.w ? r22.w : r17.x;
    r34.x = r22.z ? r21.w : r17.x;
    r21.w = min(r31.z, r21.y);
    r22.z = r21.w + -r21.x;
    r22.w = saturate(0.5 + r22.z);
    r27.y = 1 + -r22.w;
    r27.y = r27.y * r20.z;
    r35.x = r31.y * r27.y + r13.x;
    r35.yz = r29.xw * r27.yy + r13.yz;
    r21.w = r31.y * r21.w;
    r34.y = r21.w * r27.y + r13.w;
    r22.z = saturate(r22.z);
    r27.y = cmp(0 >= r31.y);
    r20.w = r27.y ? 0 : r20.w;
    r27.y = r29.x * r20.w;
    r20.w = -r29.x * r20.w + 1;
    r20.w = r22.z * r20.w + r27.y;
    r34.z = r25.z + r20.w;
    r20.z = r22.w * r20.z;
    r31.x = r31.y * r20.z + r17.y;
    r31.yz = r29.xw * r20.zz + r17.zw;
    r31.w = r21.w * r20.z + r25.x;
    r29.xyz = r17.yzw;
    r29.w = r25.x;
    r29.xyzw = r21.zzzz ? r31.xyzw : r29.xyzw;
    r13.xyz = r21.zzz ? r35.xyz : r13.xyz;
    r25.x = r17.x;
    r25.y = r13.w;
    r17.xyz = r21.zzz ? r34.xyz : r25.xyz;
    r20.zw = rcp(r32.zy);
    if (cb0[34].x == 0) {
      r27.yzw = -cb0[26].xyz;
    } else {
      r31.xyz = -r33.xyz + r10.xyz;
      r21.z = dot(r31.xyz, r31.xyz);
      r21.z = rsqrt(r21.z);
      r27.yzw = r31.xyz * r21.zzz;
    }
    r21.z = dot(r27.yzw, r28.xyz);
    r27.yzw = -r27.yzw * r21.zzz + r28.xyz;
    r21.z = dot(r27.yzw, r27.yzw);
    r21.w = r20.z * r20.z;
    r21.z = -r21.z * r21.w + 1;
    r21.z = max(0, r21.z);
    r20.z = saturate(-r28.w * r20.z + 1);
    r20.z = r21.z * r20.z;
    r20.z = r20.z * r27.x;
    r21.zw = cmp(r32.yz != float2(0,-1));
    r19.w = r21.z ? r19.w : 0;
    r21.z = cmp(0 < r20.z);
    r22.z = min(r32.z, r18.x);
    r21.w = r21.w ? r22.z : r18.x;
    r27.x = r21.z ? r21.w : r18.x;
    r21.z = min(r32.z, r22.y);
    r21.w = r21.z + -r22.x;
    r22.z = saturate(0.5 + r21.w);
    r22.w = 1 + -r22.z;
    r22.w = r22.w * r20.z;
    r28.x = r32.y * r22.w + r14.x;
    r28.yz = r30.xw * r22.ww + r14.yz;
    r21.z = r32.y * r21.z;
    r31.x = r21.z * r22.w + r14.w;
    r21.w = saturate(r21.w);
    r22.w = cmp(0 >= r32.y);
    r20.w = r22.w ? 0 : r20.w;
    r22.w = r30.x * r20.w;
    r20.w = -r30.x * r20.w + 1;
    r20.w = r21.w * r20.w + r22.w;
    r31.y = r20.w + r6.y;
    r20.z = r22.z * r20.z;
    r27.y = r32.y * r20.z + r18.y;
    r27.zw = r30.xw * r20.zz + r18.zw;
    r31.z = r21.z * r20.z + r26.z;
    r18.xyzw = r19.wwww ? r27.xyzw : r18.xyzw;
    r14.xyz = r19.www ? r28.xyz : r14.xyz;
    r26.x = r14.w;
    r26.y = r6.y;
    r26.xyz = r19.www ? r31.xyz : r26.xyz;
    r19.w = cmp((int)r8.w == (int)r19.z);
    if (r19.w != 0) {
      r19.w = (uint)r7.w << 1;
      r20.z = (int)r0.z + (int)-r19.z;
      r19.w = min((uint)r20.z, (uint)r19.w);
      r20.z = cmp(r11.x != 0.000000);
      r19.w = (uint)r19.w;
      r19.w = rcp(r19.w);
      r20.w = saturate(-r15.z * r19.w + 1);
      r21.z = rcp(r36.x);
      r21.w = cmp(0 >= r36.x);
      r21.z = r21.w ? 0 : r21.z;
      r21.w = rcp(r11.x);
      r21.w = r21.w * r15.y;
      r21.w = r36.w * r21.z + -r21.w;
      r22.z = rcp(r19.x);
      r21.w = saturate(r22.z * r21.w);
      r22.z = cmp(r36.x == 0.000000);
      r20.w = -r20.w * r21.w + 1;
      r20.w = r22.z ? 0 : r20.w;
      r21.z = r21.z * r11.x;
      r20.w = r21.z * r20.w;
      r27.xyz = r36.xyz * r20.www + r11.xyz;
      r27.w = r36.w * r20.w + r15.y;
      r23.xyzw = r20.zzzz ? r27.wyxz : r36.wyxz;
      r20.z = cmp(r12.x != 0.000000);
      r20.w = saturate(-r16.z * r19.w + 1);
      r21.z = rcp(r37.x);
      r21.w = cmp(0 >= r37.x);
      r21.z = r21.w ? 0 : r21.z;
      r21.w = rcp(r12.x);
      r21.w = r21.w * r16.y;
      r21.w = r37.w * r21.z + -r21.w;
      r22.z = rcp(r20.x);
      r21.w = saturate(r22.z * r21.w);
      r22.z = cmp(r37.x == 0.000000);
      r20.w = -r20.w * r21.w + 1;
      r20.w = r22.z ? 0 : r20.w;
      r21.z = r21.z * r12.x;
      r20.w = r21.z * r20.w;
      r27.xyz = r37.xyz * r20.www + r12.xyz;
      r27.w = r37.w * r20.w + r16.y;
      r24.xyzw = r20.zzzz ? r27.wyxz : r37.wyxz;
      r20.z = cmp(r13.x != 0.000000);
      r20.w = saturate(-r17.z * r19.w + 1);
      r21.z = rcp(r29.x);
      r21.w = cmp(0 >= r29.x);
      r21.z = r21.w ? 0 : r21.z;
      r21.w = rcp(r13.x);
      r21.w = r21.w * r17.y;
      r21.w = r29.w * r21.z + -r21.w;
      r22.z = rcp(r21.x);
      r21.w = saturate(r22.z * r21.w);
      r22.z = cmp(r29.x == 0.000000);
      r20.w = -r20.w * r21.w + 1;
      r20.w = r22.z ? 0 : r20.w;
      r21.z = r21.z * r13.x;
      r20.w = r21.z * r20.w;
      r27.xyz = r29.xyz * r20.www + r13.xyz;
      r27.w = r29.w * r20.w + r17.y;
      r25.xyzw = r20.zzzz ? r27.wyxz : r29.wyxz;
      r20.z = cmp(r14.x != 0.000000);
      r19.w = saturate(-r26.y * r19.w + 1);
      r20.w = rcp(r18.y);
      r21.z = cmp(0 >= r18.y);
      r20.w = r21.z ? 0 : r20.w;
      r21.z = rcp(r14.x);
      r21.z = r26.x * r21.z;
      r21.z = r26.z * r20.w + -r21.z;
      r21.w = rcp(r22.x);
      r21.z = saturate(r21.z * r21.w);
      r21.w = cmp(r18.y == 0.000000);
      r19.w = -r19.w * r21.z + 1;
      r19.w = r21.w ? 0 : r19.w;
      r20.w = r20.w * r14.x;
      r19.w = r20.w * r19.w;
      r27.xyz = r18.yzw * r19.www + r14.xyz;
      r27.w = r26.z * r19.w + r26.x;
      r28.xyz = r18.yzw;
      r28.w = r26.z;
      r27.xyzw = r20.zzzz ? r27.xyzw : r28.xyzw;
      r19.z = cmp((int)r19.z == 1);
      if (r19.z == 0) {
        r19.w = (int)r7.w + -1;
        r20.z = (uint)r19.w << 1;
        r8.w = (int)r8.w + (int)-r20.z;
        r20.z = (uint)r7.w;
        r20.z = 1 + r20.z;
        r22.x = r20.z * r5.w;
        r21.y = r22.x + r22.x;
        r22.y = 2 * r22.x;
        r19.xy = r22.xy;
        r20.xy = r22.xy;
        r11.xyzw = float4(0,0,0,0);
        r12.xyzw = float4(0,0,0,0);
        r20.zw = float2(0,0);
        r13.xyzw = float4(0,0,0,0);
        r21.z = 0;
        r21.x = r22.x;
        r14.xyzw = float4(0,0,0,0);
        r6.y = 0;
        r7.w = r19.w;
      } else {
        r11.w = r15.y;
        r20.z = r15.z;
        r12.w = r16.y;
        r20.w = r16.z;
        r13.w = r17.y;
        r21.z = r17.z;
        r14.w = r26.x;
        r6.y = r26.y;
      }
      r15.yzw = r23.zyw;
      r16.yzw = r24.zyw;
      r17.yzw = r25.zyw;
      r23.z = r20.z;
      r24.z = r20.w;
      r25.z = r21.z;
      r26.xyzw = r27.xywz;
    } else {
      r11.w = r15.y;
      r23.z = r15.z;
      r23.x = r36.w;
      r12.w = r16.y;
      r24.z = r16.z;
      r24.x = r37.w;
      r13.w = r17.y;
      r25.z = r17.z;
      r25.x = r29.w;
      r14.w = r26.x;
      r6.y = r26.y;
      r26.xyw = r18.yzw;
      r19.z = 0;
      r15.yzw = r36.xyz;
      r16.yzw = r37.xyz;
      r17.yzw = r29.xyz;
    }
    if (r19.z == 0) {
      if (r19.z == 0) {
        r10.w = (int)r10.w + -2;
        r19.z = (uint)r10.w << 2;
        r19.z = (int)r4.x + (int)r19.z;
        r19.zw = icb[r19.z+0].xy * cb0[3].zw + r3.xw;
        r20.zw = cmp(r19.zw < cb0[4].xy);
        r21.zw = cmp(cb0[4].zw < r19.zw);
        r20.zw = (int2)r20.zw | (int2)r21.zw;
        r20.z = (int)r20.w | (int)r20.z;
        r27.xyz = t1.SampleLevel(s0_s, r19.zw, 0).xyz;
        r20.w = t0.SampleLevel(s0_s, r19.zw, 0).x;
        r21.z = r20.w * cb1[65].x + cb1[65].y;
        r20.w = r20.w * cb1[65].z + -cb1[65].w;
        r20.w = 1 / r20.w;
        r28.z = r21.z + r20.w;
        r27.xyz = r27.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r20.w = dot(r27.xyz, r27.xyz);
        r20.w = rsqrt(r20.w);
        r27.xyz = r27.xyz * r20.www;
        r29.xyzw = t2.SampleLevel(s0_s, r19.zw, 0).xyzw;
        r30.xyzw = t3.SampleLevel(s0_s, r19.zw, 0).xyzw;
        r31.xyzw = t4.SampleLevel(s0_s, r19.zw, 0).xyzw;
        r32.xyzw = t5.SampleLevel(s0_s, r19.zw, 0).xyzw;
        r21.zw = r29.xw * r29.yy;
        r22.zw = r30.xw * r30.yy;
        r29.xw = r31.xw * r31.yy;
        r30.xw = r32.xw * r32.yy;
        r19.zw = r19.zw * cb0[6].xy + cb0[6].zw;
        r20.w = r6.w ? r28.z : 1;
        r28.xy = r20.ww * r19.zw;
        r33.xyz = cb1[53].xyz * r28.yyy;
        r33.xyz = r28.xxx * cb1[52].xyz + r33.xyz;
        r33.xyz = r28.zzz * cb1[54].xyz + r33.xyz;
        r33.xyz = cb1[55].xyz + r33.xyz;
        r28.xyz = -r28.xyz + r2.xyz;
        r34.xyz = cb1[53].xyz * r28.yyy;
        r28.xyw = r28.xxx * cb1[52].xyz + r34.xyz;
        r28.xyz = r28.zzz * cb1[54].xyz + r28.xyw;
        r19.zw = rcp(r29.zy);
        if (cb0[31].x == 0) {
          r34.xyz = -cb0[23].xyz;
        } else {
          r35.xyz = -r33.xyz + r7.xyz;
          r20.w = dot(r35.xyz, r35.xyz);
          r20.w = rsqrt(r20.w);
          r34.xyz = r35.xyz * r20.www;
        }
        r20.w = dot(r34.xyz, r28.xyz);
        r34.xyz = -r34.xyz * r20.www + r28.xyz;
        r20.w = dot(r34.xyz, r34.xyz);
        r23.w = r19.z * r19.z;
        r20.w = -r20.w * r23.w + 1;
        r20.w = max(0, r20.w);
        r23.w = dot(r1.xyz, -r28.xyz);
        r34.xyz = -r23.www * r1.xyz + -r28.xyz;
        r24.w = dot(r34.xyz, r34.xyz);
        r24.w = sqrt(r24.w);
        r23.w = -r24.w * 0.25 + abs(r23.w);
        r23.w = 6 * r23.w;
        r19.z = saturate(-r23.w * r19.z + 1);
        r19.z = r20.w * r19.z;
        r20.w = dot(r1.xyz, r27.xyz);
        r20.w = max(0, r20.w);
        r20.w = r20.w * r20.w;
        r20.w = r20.w * r20.w;
        r19.z = r20.w * r19.z;
        r19.z = r10.w ? r19.z : 1;
        r27.xy = cmp(r29.yz != float2(0,-1));
        r20.z = ~(int)r20.z;
        r24.w = r20.z ? r27.x : 0;
        r25.w = cmp(0 < r19.z);
        r27.x = min(r29.z, r15.x);
        r27.x = r27.y ? r27.x : r15.x;
        r27.x = r25.w ? r27.x : r15.x;
        r25.w = min(r29.z, r19.y);
        r27.w = r25.w + -r19.x;
        r28.w = saturate(0.5 + r27.w);
        r29.z = 1 + -r28.w;
        r29.z = r29.z * r19.z;
        r34.x = r29.y * r29.z + r11.x;
        r34.yz = r21.zw * r29.zz + r11.yz;
        r25.w = r29.y * r25.w;
        r34.w = r25.w * r29.z + r11.w;
        r27.w = saturate(r27.w);
        r29.z = cmp(0 >= r29.y);
        r19.w = r29.z ? 0 : r19.w;
        r29.z = r21.z * r19.w;
        r19.w = -r21.z * r19.w + 1;
        r19.w = r27.w * r19.w + r29.z;
        r27.y = r23.z + r19.w;
        r19.z = r28.w * r19.z;
        r35.x = r29.y * r19.z + r15.y;
        r35.yz = r21.zw * r19.zz + r15.zw;
        r27.z = r25.w * r19.z + r23.x;
        r11.xyzw = r24.wwww ? r34.xyzw : r11.xyzw;
        r23.y = r15.x;
        r23.xyz = r24.www ? r27.zyx : r23.xzy;
        r15.yzw = r24.www ? r35.xyz : r15.yzw;
        r19.zw = rcp(r30.zy);
        if (cb0[32].x == 0) {
          r27.xyz = -cb0[24].xyz;
        } else {
          r34.xyz = -r33.xyz + r8.xyz;
          r21.z = dot(r34.xyz, r34.xyz);
          r21.z = rsqrt(r21.z);
          r27.xyz = r34.xyz * r21.zzz;
        }
        r21.z = dot(r27.xyz, r28.xyz);
        r27.xyz = -r27.xyz * r21.zzz + r28.xyz;
        r21.z = dot(r27.xyz, r27.xyz);
        r21.w = r19.z * r19.z;
        r21.z = -r21.z * r21.w + 1;
        r21.z = max(0, r21.z);
        r19.z = saturate(-r23.w * r19.z + 1);
        r19.z = r21.z * r19.z;
        r19.z = r19.z * r20.w;
        r19.z = r10.w ? r19.z : 1;
        r21.zw = cmp(r30.yz != float2(0,-1));
        r21.z = r20.z ? r21.z : 0;
        r24.w = cmp(0 < r19.z);
        r25.w = min(r30.z, r16.x);
        r21.w = r21.w ? r25.w : r16.x;
        r27.x = r24.w ? r21.w : r16.x;
        r21.w = min(r30.z, r20.y);
        r24.w = r21.w + -r20.x;
        r25.w = saturate(0.5 + r24.w);
        r27.w = 1 + -r25.w;
        r27.w = r27.w * r19.z;
        r34.x = r30.y * r27.w + r12.x;
        r34.yz = r22.zw * r27.ww + r12.yz;
        r21.w = r30.y * r21.w;
        r34.w = r21.w * r27.w + r12.w;
        r24.w = saturate(r24.w);
        r27.w = cmp(0 >= r30.y);
        r19.w = r27.w ? 0 : r19.w;
        r27.w = r22.z * r19.w;
        r19.w = -r22.z * r19.w + 1;
        r19.w = r24.w * r19.w + r27.w;
        r27.y = r24.z + r19.w;
        r19.z = r25.w * r19.z;
        r35.x = r30.y * r19.z + r16.y;
        r35.yz = r22.zw * r19.zz + r16.zw;
        r27.z = r21.w * r19.z + r24.x;
        r12.xyzw = r21.zzzz ? r34.xyzw : r12.xyzw;
        r16.yzw = r21.zzz ? r35.xyz : r16.yzw;
        r24.y = r16.x;
        r24.xyz = r21.zzz ? r27.zyx : r24.xzy;
        r19.zw = rcp(r31.zy);
        if (cb0[33].x == 0) {
          r27.xyz = -cb0[25].xyz;
        } else {
          r34.xyz = -r33.xyz + r9.xyz;
          r21.z = dot(r34.xyz, r34.xyz);
          r21.z = rsqrt(r21.z);
          r27.xyz = r34.xyz * r21.zzz;
        }
        r21.z = dot(r27.xyz, r28.xyz);
        r27.xyz = -r27.xyz * r21.zzz + r28.xyz;
        r21.z = dot(r27.xyz, r27.xyz);
        r21.w = r19.z * r19.z;
        r21.z = -r21.z * r21.w + 1;
        r21.z = max(0, r21.z);
        r19.z = saturate(-r23.w * r19.z + 1);
        r19.z = r21.z * r19.z;
        r19.z = r19.z * r20.w;
        r19.z = r10.w ? r19.z : 1;
        r21.zw = cmp(r31.yz != float2(0,-1));
        r21.z = r20.z ? r21.z : 0;
        r22.z = cmp(0 < r19.z);
        r22.w = min(r31.z, r17.x);
        r21.w = r21.w ? r22.w : r17.x;
        r27.x = r22.z ? r21.w : r17.x;
        r21.w = min(r31.z, r21.y);
        r22.z = r21.w + -r21.x;
        r22.w = saturate(0.5 + r22.z);
        r24.w = 1 + -r22.w;
        r24.w = r24.w * r19.z;
        r34.x = r31.y * r24.w + r13.x;
        r34.yz = r29.xw * r24.ww + r13.yz;
        r21.w = r31.y * r21.w;
        r34.w = r21.w * r24.w + r13.w;
        r22.z = saturate(r22.z);
        r24.w = cmp(0 >= r31.y);
        r19.w = r24.w ? 0 : r19.w;
        r24.w = r29.x * r19.w;
        r19.w = -r29.x * r19.w + 1;
        r19.w = r22.z * r19.w + r24.w;
        r27.y = r25.z + r19.w;
        r19.z = r22.w * r19.z;
        r31.x = r31.y * r19.z + r17.y;
        r31.yz = r29.xw * r19.zz + r17.zw;
        r27.z = r21.w * r19.z + r25.x;
        r13.xyzw = r21.zzzz ? r34.xyzw : r13.xyzw;
        r17.yzw = r21.zzz ? r31.xyz : r17.yzw;
        r25.y = r17.x;
        r25.xyz = r21.zzz ? r27.zyx : r25.xzy;
        r19.zw = rcp(r32.zy);
        if (cb0[34].x == 0) {
          r27.xyz = -cb0[26].xyz;
        } else {
          r29.xyz = -r33.xyz + r10.xyz;
          r21.z = dot(r29.xyz, r29.xyz);
          r21.z = rsqrt(r21.z);
          r27.xyz = r29.xyz * r21.zzz;
        }
        r21.z = dot(r27.xyz, r28.xyz);
        r27.xyz = -r27.xyz * r21.zzz + r28.xyz;
        r21.z = dot(r27.xyz, r27.xyz);
        r21.w = r19.z * r19.z;
        r21.z = -r21.z * r21.w + 1;
        r21.z = max(0, r21.z);
        r19.z = saturate(-r23.w * r19.z + 1);
        r19.z = r21.z * r19.z;
        r19.z = r19.z * r20.w;
        r10.w = r10.w ? r19.z : 1;
        r21.zw = cmp(r32.yz != float2(0,-1));
        r19.z = r20.z ? r21.z : 0;
        r20.z = cmp(0 < r10.w);
        r20.w = min(r32.z, r18.x);
        r20.w = r21.w ? r20.w : r18.x;
        r27.x = r20.z ? r20.w : r18.x;
        r20.z = min(r32.z, r22.y);
        r20.w = r20.z + -r22.x;
        r21.z = saturate(0.5 + r20.w);
        r21.w = 1 + -r21.z;
        r21.w = r21.w * r10.w;
        r28.x = r32.y * r21.w + r14.x;
        r28.yz = r30.xw * r21.ww + r14.yz;
        r20.z = r32.y * r20.z;
        r28.w = r20.z * r21.w + r14.w;
        r20.w = saturate(r20.w);
        r21.w = cmp(0 >= r32.y);
        r19.w = r21.w ? 0 : r19.w;
        r21.w = r30.x * r19.w;
        r19.w = -r30.x * r19.w + 1;
        r19.w = r20.w * r19.w + r21.w;
        r27.y = r19.w + r6.y;
        r10.w = r21.z * r10.w;
        r29.x = r32.y * r10.w + r26.x;
        r29.yz = r30.xw * r10.ww + r26.yw;
        r29.w = r20.z * r10.w + r26.z;
        r14.xyzw = r19.zzzz ? r28.xyzw : r14.xyzw;
        r26.xyzw = r19.zzzz ? r29.xywz : r26.xyzw;
        r6.z = r18.x;
        r6.yz = r19.zz ? r27.yx : r6.yz;
        r15.x = r23.z;
        r23.xz = r23.xy;
        r16.x = r24.z;
        r24.xz = r24.xy;
        r17.x = r25.z;
        r25.xz = r25.xy;
        r18.x = r6.z;
        r18.yzw = r26.xyw;
      } else {
        r18.yzw = r26.xyw;
      }
    } else {
      r18.yzw = r26.xyw;
    }
    r9.w = (int)r9.w + 1;
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
    r4.xyzw = t4.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r6.xyzw = t5.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r0.zw = float2(5.65685415,11.3137083) * r5.zz;
    r5.xy = cmp(r0.xy < cb0[4].xy);
    r0.xy = cmp(cb0[4].zw < r0.xy);
    r0.xy = (int2)r0.xy | (int2)r5.xy;
    r0.x = (int)r0.y | (int)r0.x;
    r2.xw = r2.xw * r2.yy;
    r3.xw = r3.xw * r3.yy;
    r4.xw = r4.xw * r4.yy;
    r5.xy = r6.xw * r6.yy;
    r6.xw = cmp(r2.yz != float2(0,-1));
    r0.x = ~(int)r0.x;
    r0.y = r0.x ? r6.x : 0;
    r5.w = min(r15.x, r2.z);
    r7.x = r6.w ? r5.w : r15.x;
    r2.z = min(r2.z, r0.w);
    r5.w = -r5.z * 5.65685415 + r2.z;
    r6.x = saturate(0.5 + r5.w);
    r6.w = 1 + -r6.x;
    r8.xyz = r6.www * r2.yxw;
    r2.z = r2.y * r2.z;
    r9.x = r2.z * r6.w;
    r5.w = saturate(r5.w);
    r6.w = rcp(r2.y);
    r8.w = cmp(0 >= r2.y);
    r6.w = r8.w ? 0 : r6.w;
    r8.w = r6.w * r2.x;
    r6.w = -r2.x * r6.w + 1;
    r9.y = r5.w * r6.w + r8.w;
    r7.y = r2.y * r6.x + r15.y;
    r7.zw = r2.xw * r6.xx + r15.zw;
    r9.z = r2.z * r6.x + r23.x;
    r2.xzw = r0.yyy ? r8.xyz : 0;
    r23.yz = float2(0,0);
    r8.xyz = r0.yyy ? r9.xyz : r23.zyx;
    r7.xyzw = r0.yyyy ? r7.yzxw : r15.yzxw;
    r6.xw = cmp(r3.yz != float2(0,-1));
    r0.y = r0.x ? r6.x : 0;
    r5.w = min(r16.x, r3.z);
    r9.x = r6.w ? r5.w : r16.x;
    r3.z = min(r3.z, r0.w);
    r5.w = -r5.z * 5.65685415 + r3.z;
    r6.x = saturate(0.5 + r5.w);
    r6.w = 1 + -r6.x;
    r10.xyz = r6.www * r3.yxw;
    r3.z = r3.y * r3.z;
    r11.x = r3.z * r6.w;
    r5.w = saturate(r5.w);
    r6.w = rcp(r3.y);
    r8.w = cmp(0 >= r3.y);
    r6.w = r8.w ? 0 : r6.w;
    r8.w = r6.w * r3.x;
    r6.w = -r3.x * r6.w + 1;
    r11.y = r5.w * r6.w + r8.w;
    r9.y = r3.y * r6.x + r16.y;
    r9.zw = r3.xw * r6.xx + r16.zw;
    r11.z = r3.z * r6.x + r24.x;
    r3.xzw = r0.yyy ? r10.xyz : 0;
    r24.yz = float2(0,0);
    r10.xyz = r0.yyy ? r11.xyz : r24.zyx;
    r9.xyzw = r0.yyyy ? r9.yzxw : r16.yzxw;
    r6.xw = cmp(r4.yz != float2(0,-1));
    r0.y = r0.x ? r6.x : 0;
    r5.w = min(r17.x, r4.z);
    r11.x = r6.w ? r5.w : r17.x;
    r4.z = min(r4.z, r0.w);
    r5.w = -r5.z * 5.65685415 + r4.z;
    r6.x = saturate(0.5 + r5.w);
    r6.w = 1 + -r6.x;
    r12.xyz = r6.www * r4.yxw;
    r4.z = r4.y * r4.z;
    r13.x = r4.z * r6.w;
    r5.w = saturate(r5.w);
    r6.w = rcp(r4.y);
    r8.w = cmp(0 >= r4.y);
    r6.w = r8.w ? 0 : r6.w;
    r8.w = r6.w * r4.x;
    r6.w = -r4.x * r6.w + 1;
    r13.y = r5.w * r6.w + r8.w;
    r11.y = r4.y * r6.x + r17.y;
    r11.zw = r4.xw * r6.xx + r17.zw;
    r13.z = r4.z * r6.x + r25.x;
    r4.xzw = r0.yyy ? r12.xyz : 0;
    r25.yz = float2(0,0);
    r12.xyz = r0.yyy ? r13.xyz : r25.zyx;
    r11.xyzw = r0.yyyy ? r11.yzxw : r17.yzxw;
    r6.xw = cmp(r6.yz != float2(0,-1));
    r0.x = r0.x ? r6.x : 0;
    r0.y = min(r18.x, r6.z);
    r13.x = r6.w ? r0.y : r18.x;
    r0.y = min(r6.z, r0.w);
    r0.w = -r5.z * 5.65685415 + r0.y;
    r5.z = saturate(0.5 + r0.w);
    r5.w = 1 + -r5.z;
    r14.x = r6.y * r5.w;
    r14.yz = r5.xy * r5.ww;
    r0.y = r6.y * r0.y;
    r15.x = r0.y * r5.w;
    r0.w = saturate(r0.w);
    r5.w = rcp(r6.y);
    r6.x = cmp(0 >= r6.y);
    r5.w = r6.x ? 0 : r5.w;
    r6.x = r5.x * r5.w;
    r5.w = -r5.x * r5.w + 1;
    r15.y = r0.w * r5.w + r6.x;
    r13.y = r6.y * r5.z + r18.y;
    r13.zw = r5.xy * r5.zz + r18.zw;
    r15.z = r0.y * r5.z + r26.z;
    r5.xyz = r0.xxx ? r14.xyz : 0;
    r26.xy = float2(0,0);
    r6.xzw = r0.xxx ? r15.xyz : r26.xyz;
    r13.xyzw = r0.xxxx ? r13.yzxw : r18.yzxw;
    r0.x = cmp(r2.x != 0.000000);
    r0.y = saturate(1 + -r8.y);
    r0.w = rcp(r7.x);
    r5.w = cmp(0 >= r7.x);
    r0.w = r5.w ? 0 : r0.w;
    r5.w = rcp(r2.x);
    r5.w = r8.x * r5.w;
    r5.w = r8.z * r0.w + -r5.w;
    r0.z = rcp(r0.z);
    r5.w = saturate(r5.w * r0.z);
    r8.x = cmp(r7.x == 0.000000);
    r0.y = -r0.y * r5.w + 1;
    r0.y = r8.x ? 0 : r0.y;
    r0.w = r2.x * r0.w;
    r0.y = r0.y * r0.w;
    r2.xzw = r7.xyw * r0.yyy + r2.xzw;
    r0.xyw = r0.xxx ? r2.xzw : r7.xyw;
    r2.x = cmp(r3.x != 0.000000);
    r2.z = saturate(1 + -r10.y);
    r2.w = rcp(r9.x);
    r5.w = cmp(0 >= r9.x);
    r2.w = r5.w ? 0 : r2.w;
    r5.w = rcp(r3.x);
    r5.w = r10.x * r5.w;
    r5.w = r10.z * r2.w + -r5.w;
    r5.w = saturate(r5.w * r0.z);
    r8.x = cmp(r9.x == 0.000000);
    r2.z = -r2.z * r5.w + 1;
    r2.z = r8.x ? 0 : r2.z;
    r2.w = r3.x * r2.w;
    r2.z = r2.z * r2.w;
    r3.xzw = r9.xyw * r2.zzz + r3.xzw;
    r2.xzw = r2.xxx ? r3.xzw : r9.xyw;
    r3.x = cmp(r4.x != 0.000000);
    r3.z = saturate(1 + -r12.y);
    r3.w = rcp(r11.x);
    r5.w = cmp(0 >= r11.x);
    r3.w = r5.w ? 0 : r3.w;
    r5.w = rcp(r4.x);
    r5.w = r12.x * r5.w;
    r5.w = r12.z * r3.w + -r5.w;
    r5.w = saturate(r5.w * r0.z);
    r8.x = cmp(r11.x == 0.000000);
    r3.z = -r3.z * r5.w + 1;
    r3.z = r8.x ? 0 : r3.z;
    r3.w = r4.x * r3.w;
    r3.z = r3.z * r3.w;
    r4.xzw = r11.xyw * r3.zzz + r4.xzw;
    r3.xzw = r3.xxx ? r4.xzw : r11.xyw;
    r4.x = cmp(r5.x != 0.000000);
    r4.z = saturate(1 + -r6.z);
    r4.w = rcp(r13.x);
    r5.w = cmp(0 >= r13.x);
    r4.w = r5.w ? 0 : r4.w;
    r5.w = rcp(r5.x);
    r5.w = r6.x * r5.w;
    r5.w = r6.w * r4.w + -r5.w;
    r0.z = saturate(r5.w * r0.z);
    r5.w = cmp(r13.x == 0.000000);
    r0.z = -r4.z * r0.z + 1;
    r0.z = r5.w ? 0 : r0.z;
    r4.z = r5.x * r4.w;
    r0.z = r4.z * r0.z;
    r5.xyz = r13.xyw * r0.zzz + r5.xyz;
    r4.xzw = r4.xxx ? r5.xyz : r13.xyw;
    r0.z = min(1024, r2.y);
    r5.x = cmp(0 < r2.y);
    r0.z = r0.z / r2.y;
    r0.z = r5.x ? r0.z : 0;
    r0.xyz = r0.xyw * r0.zzz;
    r0.w = min(1024, r3.y);
    r2.y = cmp(0 < r3.y);
    r0.w = r0.w / r3.y;
    r0.w = r2.y ? r0.w : 0;
    r2.xyz = r2.xzw * r0.www;
    r0.w = min(1024, r4.y);
    r2.w = cmp(0 < r4.y);
    r0.w = r0.w / r4.y;
    r0.w = r2.w ? r0.w : 0;
    r3.xyz = r3.xzw * r0.www;
    r0.w = min(1024, r6.y);
    r2.w = cmp(0 < r6.y);
    r0.w = r0.w / r6.y;
    r0.w = r2.w ? r0.w : 0;
    r4.xyz = r4.xzw * r0.www;
    r0.w = rcp(r0.x);
    r2.w = cmp(0 >= r0.x);
    r0.w = r2.w ? 0 : r0.w;
    r7.xw = r0.yz * r0.ww;
    r0.y = rcp(r2.x);
    r0.z = cmp(0 >= r2.x);
    r0.y = r0.z ? 0 : r0.y;
    r9.xw = r2.yz * r0.yy;
    r0.y = rcp(r3.x);
    r0.z = cmp(0 >= r3.x);
    r0.y = r0.z ? 0 : r0.y;
    r11.xw = r3.yz * r0.yy;
    r0.y = rcp(r4.x);
    r0.z = cmp(0 >= r4.x);
    r0.y = r0.z ? 0 : r0.y;
    r13.xw = r4.yz * r0.yy;
    r7.y = r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xwww, r7.xyzw
    r9.y = r2.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xwww, r9.xyzw
    r11.y = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r1.xwww, r11.xyzw
    r13.y = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r1.xyzw, r13.xyzw
  }
  return;
}