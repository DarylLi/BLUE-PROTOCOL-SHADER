// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<uint4> t3 : register(t3);

Texture2D<uint4> t2 : register(t2);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34;
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
  r0.zw = cb0[5].xy * r0.xy;
  r3.xy = (uint2)r0.zw;
  r3.zw = float2(0,0);
  r0.zw = t2.Load(r3.xyw).xy;
  r1.w = t3.Load(r3.xyz).x;
  r3.xy = (uint2)r0.zw >> int2(16,16);
  r3.xy = f16tof32(r3.xy);
  r2.w = (uint)r1.w >> 16;
  r2.w = f16tof32(r2.w);
  r3.z = min(256, asuint(cb0[30].y));
  r4.xyzw = (int4)vThreadID.xyyy | int4(1,1,1,1);
  r4.xyzw = (uint4)r4.xyzw;
  r4.xyzw = r4.xyzw * cb0[2].xyyy + cb0[2].zwww;
  bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r3.w = (((uint)vThreadID.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r5.x = (((uint)vThreadID.x << 0) & bitmask.x) | ((uint)r3.w & ~bitmask.x);
  r3.z = (int)r3.z + 1;
  r6.x = (uint)r3.z >> 1;
  r3.z = (int)r3.z & 510;
  r6.y = (uint)r3.z << 2;
  r6.y = (int)r6.y + -7;
  r6.y = (uint)r6.y;
  r6.y = sqrt(r6.y);
  r6.y = floor(r6.y);
  r6.y = (uint)r6.y;
  r6.y = (int)r6.y + 1;
  r6.y = (uint)r6.y >> 1;
  r6.zw = (int2)r6.yy + int2(-1,1);
  r6.z = mad((int)r6.y, (int)r6.z, 1);
  r6.w = (uint)r6.w;
  r7.x = cb0[13].x * r2.z;
  r7.y = 2.82842708 * r7.x;
  r6.w = 1 + r6.w;
  r6.w = r7.y * r6.w;
  r7.z = r6.w + r6.w;
  r8.xy = (int2)r5.xx & int2(1,2);
  r8.xy = r8.xy ? float2(0.5,0.5) : float2(-0.5,-0.5);
  r8.xy = r8.xy * cb0[3].zw + r4.xw;
  r8.xy = r8.xy * cb0[6].xy + cb0[6].zw;
  r7.w = cmp(cb1[31].w < 1);
  r8.z = r7.w ? r2.z : 1;
  r2.xy = r8.xy * r8.zz;
  r8.xyz = cb1[70].xyz + cb0[19].xyz;
  r9.xyz = cb1[70].xyz + cb0[20].xyz;
  r10.xyz = cb1[70].xyz + cb0[21].xyz;
  r11.zw = float2(0,0);
  r12.zw = float2(0,0);
  r13.xyzw = float4(0,0,0,0);
  r14.xyzw = float4(0,0,0,0);
  r15.xyzw = float4(0,0,0,0);
  r19.x = r6.w;
  r19.y = r7.z;
  r20.x = r6.w;
  r20.y = r7.z;
  r21.x = r6.w;
  r21.y = r7.z;
  r16.xyzw = float4(100000,0,0,0);
  r22.xy = float2(0,0);
  r17.xyzw = float4(100000,0,0,0);
  r23.xy = float2(0,0);
  r18.xyzw = float4(100000,0,0,0);
  r24.xy = float2(0,0);
  r8.w = r6.y;
  r9.w = r6.z;
  r10.w = 0;
  while (true) {
    r19.z = cmp((uint)r10.w >= (uint)r6.x);
    if (r19.z != 0) break;
    r19.z = (int)r6.x + (int)-r10.w;
    r19.z = (uint)r19.z << 1;
    r19.w = (int)r19.z + -1;
    bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r20.z = (((uint)r19.w << 2) & bitmask.z) | ((uint)r5.x & ~bitmask.z);
    r20.zw = icb[r20.z+0].xy * cb0[3].zw + r4.xw;
    r21.zw = cmp(r20.zw < cb0[4].xy);
    r25.xy = cmp(cb0[4].zw < r20.zw);
    r21.zw = (int2)r21.zw | (int2)r25.xy;
    r21.z = (int)r21.w | (int)r21.z;
    r25.xy = cb0[5].xy * r20.zw;
    r11.xy = (uint2)r25.xy;
    r25.xyz = t1.SampleLevel(s0_s, r20.zw, 0).xyz;
    r21.w = t0.SampleLevel(s0_s, r20.zw, 0).x;
    r25.w = r21.w * cb1[65].x + cb1[65].y;
    r21.w = r21.w * cb1[65].z + -cb1[65].w;
    r21.w = 1 / r21.w;
    r26.z = r25.w + r21.w;
    r25.xyz = r25.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r21.w = dot(r25.xyz, r25.xyz);
    r21.w = rsqrt(r21.w);
    r25.xyz = r25.xyz * r21.www;
    r27.xy = t2.Load(r11.xyw).xy;
    r11.x = t3.Load(r11.xyz).x;
    r27.zw = (int2)r27.xy & int2(255,255);
    r27.zw = (uint2)r27.zw;
    r27.zw = float2(0.00392156886,0.00392156886) * r27.zw;
    if (8 == 0) r28.x = 0; else if (8+8 < 32) {     r28.x = (uint)r27.x << (32-(8 + 8)); r28.x = (uint)r28.x >> (32-8);    } else r28.x = (uint)r27.x >> 8;
    if (8 == 0) r28.y = 0; else if (8+8 < 32) {     r28.y = (uint)r27.y << (32-(8 + 8)); r28.y = (uint)r28.y >> (32-8);    } else r28.y = (uint)r27.y >> 8;
    r28.xy = (uint2)r28.xy;
    r27.xy = (uint2)r27.xy >> int2(16,16);
    r27.xy = f16tof32(r27.xy);
    r28.zw = cmp(r27.xy == float2(-2,-2));
    r29.xy = r28.zw ? float2(0,0) : float2(1,1);
    r28.xy = float2(0.00392156886,0.00392156886) * r28.xy;
    r30.xy = r29.xy * r27.zw;
    r11.y = (int)r11.x & 255;
    r11.y = (uint)r11.y;
    r11.y = 0.00392156886 * r11.y;
    if (8 == 0) r21.w = 0; else if (8+8 < 32) {     r21.w = (uint)r11.x << (32-(8 + 8)); r21.w = (uint)r21.w >> (32-8);    } else r21.w = (uint)r11.x >> 8;
    r21.w = (uint)r21.w;
    r31.z = 0.00392156886 * r21.w;
    r11.x = (uint)r11.x >> 16;
    r11.x = f16tof32(r11.x);
    r21.w = cmp(r11.x == -2.000000);
    r31.x = r21.w ? 0 : 1;
    r31.y = r31.x * r11.y;
    r27.zw = max(cb0[32].xy, r20.zw);
    r27.zw = min(cb0[32].zw, r27.zw);
    r27.zw = cmp(r20.zw != r27.zw);
    r11.y = (int)r27.w | (int)r27.z;
    r29.z = r30.x;
    r29.w = r28.x;
    r28.xzw = r11.yyy ? float3(0,0,0) : r29.xzw;
    r27.zw = max(cb0[33].xy, r20.zw);
    r27.zw = min(cb0[33].zw, r27.zw);
    r27.zw = cmp(r20.zw != r27.zw);
    r11.y = (int)r27.w | (int)r27.z;
    r30.z = r29.y;
    r30.w = r28.y;
    r29.xyz = r11.yyy ? float3(0,0,0) : r30.zyw;
    r27.zw = max(cb0[34].xy, r20.zw);
    r27.zw = min(cb0[34].zw, r27.zw);
    r27.zw = cmp(r20.zw != r27.zw);
    r11.y = (int)r27.w | (int)r27.z;
    r30.xyz = r11.yyy ? float3(0,0,0) : r31.xyz;
    r20.zw = r20.zw * cb0[6].xy + cb0[6].zw;
    r11.y = r7.w ? r26.z : 1;
    r26.xy = r20.zw * r11.yy;
    r31.xyz = cb1[53].xyz * r26.yyy;
    r31.xyz = r26.xxx * cb1[52].xyz + r31.xyz;
    r31.xyz = r26.zzz * cb1[54].xyz + r31.xyz;
    r31.xyz = cb1[55].xyz + r31.xyz;
    r26.xyz = -r26.xyz + r2.xyz;
    r32.xyz = cb1[53].xyz * r26.yyy;
    r26.xyw = r26.xxx * cb1[52].xyz + r32.xyz;
    r26.xyz = r26.zzz * cb1[54].xyz + r26.xyw;
    r20.zw = min(r27.xy, r3.xy);
    r20.zw = rcp(r20.zw);
    if (cb0[28].x == 0) {
      r32.xyz = -cb0[22].xyz;
    } else {
      r33.xyz = -r31.xyz + r8.xyz;
      r11.y = dot(r33.xyz, r33.xyz);
      r11.y = rsqrt(r11.y);
      r32.xyz = r33.xyz * r11.yyy;
    }
    r11.y = dot(r32.xyz, r26.xyz);
    r32.xyz = -r32.xyz * r11.yyy + r26.xyz;
    r11.y = dot(r32.xyz, r32.xyz);
    r27.zw = r20.zw * r20.zw;
    r11.y = -r11.y * r27.z + 1;
    r11.y = max(0, r11.y);
    r21.w = dot(r1.xyz, -r26.xyz);
    r32.xyz = -r21.www * r1.xyz + -r26.xyz;
    r25.w = dot(r32.xyz, r32.xyz);
    r25.w = sqrt(r25.w);
    r21.w = -r25.w * 0.25 + abs(r21.w);
    r21.w = 6 * r21.w;
    r20.zw = saturate(-r21.ww * r20.zw + float2(1,1));
    r11.y = r20.z * r11.y;
    r20.z = dot(r1.xyz, r25.xyz);
    r20.z = max(0, r20.z);
    r20.z = r20.z * r20.z;
    r20.z = r20.z * r20.z;
    r11.y = r20.z * r11.y;
    r25.x = cmp(r28.x != 0.000000);
    r21.z = ~(int)r21.z;
    r25.x = r21.z ? r25.x : 0;
    r25.y = cmp(0 < r11.y);
    r25.zw = cmp(r27.xy != float2(-1,-1));
    r26.w = min(r27.x, r16.x);
    r25.z = r25.z ? r26.w : r16.x;
    r32.x = r25.y ? r25.z : r16.x;
    r25.y = min(r27.x, r19.y);
    r25.z = r25.y + -r19.x;
    r26.w = saturate(0.5 + r25.z);
    r27.x = 1 + -r26.w;
    r27.x = r27.x * r11.y;
    r33.xyz = r28.xzw * r27.xxx + r13.xyz;
    r25.y = r28.x * r25.y;
    r32.y = r25.y * r27.x + r13.w;
    r25.z = saturate(r25.z);
    r27.x = rcp(r28.x);
    r27.z = cmp(0 >= r28.x);
    r27.x = r27.z ? 0 : r27.x;
    r27.z = r28.z * r27.x;
    r27.x = -r28.z * r27.x + 1;
    r25.z = r25.z * r27.x + r27.z;
    r32.z = r25.z + r22.x;
    r11.y = r26.w * r11.y;
    r28.xyz = r28.xzw * r11.yyy + r16.yzw;
    r32.w = r25.y * r11.y + r22.y;
    r34.x = r16.x;
    r34.y = r13.w;
    r34.zw = r22.xy;
    r22.xyzw = r25.xxxx ? r32.yzxw : r34.yzxw;
    r13.xyz = r25.xxx ? r33.xyz : r13.xyz;
    r16.yzw = r25.xxx ? r28.xyz : r16.yzw;
    if (cb0[29].x == 0) {
      r25.xyz = -cb0[23].xyz;
    } else {
      r28.xyz = -r31.xyz + r9.xyz;
      r11.y = dot(r28.xyz, r28.xyz);
      r11.y = rsqrt(r11.y);
      r25.xyz = r28.xyz * r11.yyy;
    }
    r11.y = dot(r25.xyz, r26.xyz);
    r25.xyz = -r25.xyz * r11.yyy + r26.xyz;
    r11.y = dot(r25.xyz, r25.xyz);
    r11.y = -r11.y * r27.w + 1;
    r11.y = max(0, r11.y);
    r11.y = r11.y * r20.w;
    r11.y = r11.y * r20.z;
    r20.w = cmp(r29.x != 0.000000);
    r20.w = r21.z ? r20.w : 0;
    r25.x = cmp(0 < r11.y);
    r25.y = min(r27.y, r17.x);
    r25.y = r25.w ? r25.y : r17.x;
    r25.x = r25.x ? r25.y : r17.x;
    r26.w = min(r27.y, r20.y);
    r27.x = r26.w + -r20.x;
    r27.y = saturate(0.5 + r27.x);
    r27.z = 1 + -r27.y;
    r27.z = r27.z * r11.y;
    r28.xyz = r29.xyz * r27.zzz + r14.xyz;
    r26.w = r29.x * r26.w;
    r25.y = r26.w * r27.z + r14.w;
    r27.x = saturate(r27.x);
    r27.z = rcp(r29.x);
    r27.w = cmp(0 >= r29.x);
    r27.z = r27.w ? 0 : r27.z;
    r27.w = r29.y * r27.z;
    r27.z = -r29.y * r27.z + 1;
    r27.x = r27.x * r27.z + r27.w;
    r25.z = r27.x + r23.x;
    r11.y = r27.y * r11.y;
    r27.xyz = r29.xyz * r11.yyy + r17.yzw;
    r25.w = r26.w * r11.y + r23.y;
    r29.x = r17.x;
    r29.y = r14.w;
    r29.zw = r23.xy;
    r23.xyzw = r20.wwww ? r25.yzxw : r29.yzxw;
    r14.xyz = r20.www ? r28.xyz : r14.xyz;
    r17.yzw = r20.www ? r27.xyz : r17.yzw;
    r11.y = min(r11.x, r2.w);
    r11.y = rcp(r11.y);
    if (cb0[30].x == 0) {
      r25.xyz = -cb0[24].xyz;
    } else {
      r27.xyz = -r31.xyz + r10.xyz;
      r20.w = dot(r27.xyz, r27.xyz);
      r20.w = rsqrt(r20.w);
      r25.xyz = r27.xyz * r20.www;
    }
    r20.w = dot(r25.xyz, r26.xyz);
    r25.xyz = -r25.xyz * r20.www + r26.xyz;
    r20.w = dot(r25.xyz, r25.xyz);
    r25.x = r11.y * r11.y;
    r20.w = -r20.w * r25.x + 1;
    r20.w = max(0, r20.w);
    r11.y = saturate(-r21.w * r11.y + 1);
    r11.y = r20.w * r11.y;
    r11.y = r11.y * r20.z;
    r20.z = cmp(r30.x != 0.000000);
    r20.z = r21.z ? r20.z : 0;
    r20.w = cmp(0 < r11.y);
    r21.z = cmp(r11.x != -1.000000);
    r21.w = min(r18.x, r11.x);
    r21.z = r21.z ? r21.w : r18.x;
    r25.x = r20.w ? r21.z : r18.x;
    r11.x = min(r11.x, r21.y);
    r20.w = r11.x + -r21.x;
    r21.z = saturate(0.5 + r20.w);
    r21.w = 1 + -r21.z;
    r21.w = r21.w * r11.y;
    r26.xyz = r30.xyz * r21.www + r15.xyz;
    r11.x = r30.x * r11.x;
    r25.y = r11.x * r21.w + r15.w;
    r20.w = saturate(r20.w);
    r21.w = rcp(r30.x);
    r26.w = cmp(0 >= r30.x);
    r21.w = r26.w ? 0 : r21.w;
    r26.w = r30.y * r21.w;
    r21.w = -r30.y * r21.w + 1;
    r20.w = r20.w * r21.w + r26.w;
    r25.z = r24.x + r20.w;
    r11.y = r21.z * r11.y;
    r27.xyz = r30.xyz * r11.yyy + r18.yzw;
    r25.w = r11.x * r11.y + r24.y;
    r28.x = r18.x;
    r28.y = r15.w;
    r28.zw = r24.xy;
    r24.xyzw = r20.zzzz ? r25.yzxw : r28.yzxw;
    r15.xyz = r20.zzz ? r26.xyz : r15.xyz;
    r18.yzw = r20.zzz ? r27.xyz : r18.yzw;
    r11.x = cmp((int)r9.w == (int)r19.w);
    if (r11.x != 0) {
      r11.x = (uint)r8.w << 1;
      r11.y = (int)r3.z + (int)-r19.w;
      r11.x = min((uint)r11.x, (uint)r11.y);
      r11.y = cmp(r13.x != 0.000000);
      r11.x = (uint)r11.x;
      r11.x = rcp(r11.x);
      r20.z = saturate(-r22.y * r11.x + 1);
      r20.w = rcp(r16.y);
      r21.z = cmp(0 >= r16.y);
      r20.w = r21.z ? 0 : r20.w;
      r21.z = rcp(r13.x);
      r21.z = r22.x * r21.z;
      r21.z = r22.w * r20.w + -r21.z;
      r21.w = rcp(r19.x);
      r21.z = saturate(r21.z * r21.w);
      r21.w = cmp(r16.y == 0.000000);
      r20.z = -r20.z * r21.z + 1;
      r20.z = r21.w ? 0 : r20.z;
      r20.w = r20.w * r13.x;
      r20.z = r20.z * r20.w;
      r25.xyz = r16.yzw * r20.zzz + r13.xyz;
      r25.w = r22.w * r20.z + r22.x;
      r16.x = r22.w;
      r16.xyzw = r11.yyyy ? r25.wxyz : r16.xyzw;
      r11.y = cmp(r14.x != 0.000000);
      r20.z = saturate(-r23.y * r11.x + 1);
      r20.w = rcp(r17.y);
      r21.z = cmp(0 >= r17.y);
      r20.w = r21.z ? 0 : r20.w;
      r21.z = rcp(r14.x);
      r21.z = r23.x * r21.z;
      r21.z = r23.w * r20.w + -r21.z;
      r21.w = rcp(r20.x);
      r21.z = saturate(r21.z * r21.w);
      r21.w = cmp(r17.y == 0.000000);
      r20.z = -r20.z * r21.z + 1;
      r20.z = r21.w ? 0 : r20.z;
      r20.w = r20.w * r14.x;
      r20.z = r20.z * r20.w;
      r25.xyz = r17.yzw * r20.zzz + r14.xyz;
      r25.w = r23.w * r20.z + r23.x;
      r17.x = r23.w;
      r17.xyzw = r11.yyyy ? r25.wxyz : r17.xyzw;
      r11.y = cmp(r15.x != 0.000000);
      r11.x = saturate(-r24.y * r11.x + 1);
      r20.z = rcp(r18.y);
      r20.w = cmp(0 >= r18.y);
      r20.z = r20.w ? 0 : r20.z;
      r20.w = rcp(r15.x);
      r20.w = r24.x * r20.w;
      r20.w = r24.w * r20.z + -r20.w;
      r21.z = rcp(r21.x);
      r20.w = saturate(r21.z * r20.w);
      r21.z = cmp(r18.y == 0.000000);
      r11.x = -r11.x * r20.w + 1;
      r11.x = r21.z ? 0 : r11.x;
      r20.z = r20.z * r15.x;
      r11.x = r20.z * r11.x;
      r25.xyz = r18.yzw * r11.xxx + r15.xyz;
      r25.w = r24.w * r11.x + r24.x;
      r18.x = r24.w;
      r18.xyzw = r11.yyyy ? r25.wxyz : r18.xyzw;
      r11.x = cmp((int)r19.w == 1);
      if (r11.x == 0) {
        r11.y = (int)r8.w + -1;
        r19.w = (uint)r11.y << 1;
        r9.w = (int)r9.w + (int)-r19.w;
        r19.w = (uint)r8.w;
        r19.w = 1 + r19.w;
        r21.x = r19.w * r7.y;
        r20.y = r21.x + r21.x;
        r21.y = 2 * r21.x;
        r19.xy = r21.xy;
        r13.xyzw = float4(0,0,0,0);
        r22.x = 0;
        r14.xyzw = float4(0,0,0,0);
        r23.x = 0;
        r20.x = r21.x;
        r15.xyzw = float4(0,0,0,0);
        r24.x = 0;
        r8.w = r11.y;
      } else {
        r13.w = r22.x;
        r22.x = r22.y;
        r14.w = r23.x;
        r23.x = r23.y;
        r15.w = r24.x;
        r24.x = r24.y;
      }
      r22.y = r16.x;
      r23.y = r17.x;
      r24.y = r18.x;
    } else {
      r13.w = r22.x;
      r22.x = r22.y;
      r22.y = r22.w;
      r14.w = r23.x;
      r23.x = r23.y;
      r23.y = r23.w;
      r15.w = r24.x;
      r24.x = r24.y;
      r24.y = r24.w;
      r11.x = 0;
    }
    if (r11.x == 0) {
      if (r11.x == 0) {
        r11.x = (int)r19.z + -2;
        r11.y = (uint)r11.x << 2;
        r11.y = (int)r5.x + (int)r11.y;
        r19.zw = icb[r11.y+0].xy * cb0[3].zw + r4.xw;
        r20.zw = cmp(r19.zw < cb0[4].xy);
        r21.zw = cmp(cb0[4].zw < r19.zw);
        r20.zw = (int2)r20.zw | (int2)r21.zw;
        r11.y = (int)r20.w | (int)r20.z;
        r20.zw = cb0[5].xy * r19.zw;
        r12.xy = (uint2)r20.zw;
        r25.xyz = t1.SampleLevel(s0_s, r19.zw, 0).xyz;
        r20.z = t0.SampleLevel(s0_s, r19.zw, 0).x;
        r20.w = r20.z * cb1[65].x + cb1[65].y;
        r20.z = r20.z * cb1[65].z + -cb1[65].w;
        r20.z = 1 / r20.z;
        r26.z = r20.w + r20.z;
        r25.xyz = r25.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r20.z = dot(r25.xyz, r25.xyz);
        r20.z = rsqrt(r20.z);
        r25.xyz = r25.xyz * r20.zzz;
        r20.zw = t2.Load(r12.xyw).xy;
        r12.x = t3.Load(r12.xyz).x;
        r21.zw = (int2)r20.zw & int2(255,255);
        r21.zw = (uint2)r21.zw;
        r21.zw = float2(0.00392156886,0.00392156886) * r21.zw;
        if (8 == 0) r27.x = 0; else if (8+8 < 32) {         r27.x = (uint)r20.z << (32-(8 + 8)); r27.x = (uint)r27.x >> (32-8);        } else r27.x = (uint)r20.z >> 8;
        if (8 == 0) r27.y = 0; else if (8+8 < 32) {         r27.y = (uint)r20.w << (32-(8 + 8)); r27.y = (uint)r27.y >> (32-8);        } else r27.y = (uint)r20.w >> 8;
        r27.xy = (uint2)r27.xy;
        r20.zw = (uint2)r20.zw >> int2(16,16);
        r20.zw = f16tof32(r20.zw);
        r27.zw = cmp(r20.zw == float2(-2,-2));
        r28.xy = r27.zw ? float2(0,0) : float2(1,1);
        r27.xy = float2(0.00392156886,0.00392156886) * r27.xy;
        r29.xy = r28.xy * r21.zw;
        r12.y = (int)r12.x & 255;
        r12.y = (uint)r12.y;
        r12.y = 0.00392156886 * r12.y;
        if (8 == 0) r21.z = 0; else if (8+8 < 32) {         r21.z = (uint)r12.x << (32-(8 + 8)); r21.z = (uint)r21.z >> (32-8);        } else r21.z = (uint)r12.x >> 8;
        r21.z = (uint)r21.z;
        r30.z = 0.00392156886 * r21.z;
        r12.x = (uint)r12.x >> 16;
        r12.x = f16tof32(r12.x);
        r21.z = cmp(r12.x == -2.000000);
        r30.x = r21.z ? 0 : 1;
        r30.y = r30.x * r12.y;
        r21.zw = max(cb0[32].xy, r19.zw);
        r21.zw = min(cb0[32].zw, r21.zw);
        r21.zw = cmp(r19.zw != r21.zw);
        r12.y = (int)r21.w | (int)r21.z;
        r28.z = r29.x;
        r28.w = r27.x;
        r27.xzw = r12.yyy ? float3(0,0,0) : r28.xzw;
        r21.zw = max(cb0[33].xy, r19.zw);
        r21.zw = min(cb0[33].zw, r21.zw);
        r21.zw = cmp(r19.zw != r21.zw);
        r12.y = (int)r21.w | (int)r21.z;
        r29.z = r28.y;
        r29.w = r27.y;
        r28.xyz = r12.yyy ? float3(0,0,0) : r29.zyw;
        r21.zw = max(cb0[34].xy, r19.zw);
        r21.zw = min(cb0[34].zw, r21.zw);
        r21.zw = cmp(r19.zw != r21.zw);
        r12.y = (int)r21.w | (int)r21.z;
        r29.xyz = r12.yyy ? float3(0,0,0) : r30.xyz;
        r19.zw = r19.zw * cb0[6].xy + cb0[6].zw;
        r12.y = r7.w ? r26.z : 1;
        r26.xy = r19.zw * r12.yy;
        r30.xyz = cb1[53].xyz * r26.yyy;
        r30.xyz = r26.xxx * cb1[52].xyz + r30.xyz;
        r30.xyz = r26.zzz * cb1[54].xyz + r30.xyz;
        r30.xyz = cb1[55].xyz + r30.xyz;
        r26.xyz = -r26.xyz + r2.xyz;
        r31.xyz = cb1[53].xyz * r26.yyy;
        r26.xyw = r26.xxx * cb1[52].xyz + r31.xyz;
        r26.xyz = r26.zzz * cb1[54].xyz + r26.xyw;
        r19.zw = min(r20.zw, r3.xy);
        r19.zw = rcp(r19.zw);
        if (cb0[28].x == 0) {
          r31.xyz = -cb0[22].xyz;
        } else {
          r32.xyz = -r30.xyz + r8.xyz;
          r12.y = dot(r32.xyz, r32.xyz);
          r12.y = rsqrt(r12.y);
          r31.xyz = r32.xyz * r12.yyy;
        }
        r12.y = dot(r31.xyz, r26.xyz);
        r31.xyz = -r31.xyz * r12.yyy + r26.xyz;
        r12.y = dot(r31.xyz, r31.xyz);
        r21.zw = r19.zw * r19.zw;
        r12.y = -r12.y * r21.z + 1;
        r12.y = max(0, r12.y);
        r21.z = dot(r1.xyz, -r26.xyz);
        r31.xyz = -r21.zzz * r1.xyz + -r26.xyz;
        r22.w = dot(r31.xyz, r31.xyz);
        r22.w = sqrt(r22.w);
        r21.z = -r22.w * 0.25 + abs(r21.z);
        r21.z = 6 * r21.z;
        r19.zw = saturate(-r21.zz * r19.zw + float2(1,1));
        r12.y = r19.z * r12.y;
        r19.z = dot(r1.xyz, r25.xyz);
        r19.z = max(0, r19.z);
        r19.z = r19.z * r19.z;
        r19.z = r19.z * r19.z;
        r12.y = r19.z * r12.y;
        r12.y = r11.x ? r12.y : 1;
        r22.w = cmp(r27.x != 0.000000);
        r11.y = ~(int)r11.y;
        r22.w = r22.w ? r11.y : 0;
        r23.w = cmp(0 < r12.y);
        r25.xy = cmp(r20.zw != float2(-1,-1));
        r24.w = min(r22.z, r20.z);
        r24.w = r25.x ? r24.w : r22.z;
        r31.x = r23.w ? r24.w : r22.z;
        r20.z = min(r20.z, r19.y);
        r23.w = r20.z + -r19.x;
        r24.w = saturate(0.5 + r23.w);
        r25.x = 1 + -r24.w;
        r25.x = r25.x * r12.y;
        r32.xyz = r27.xzw * r25.xxx + r13.xyz;
        r20.z = r27.x * r20.z;
        r32.w = r20.z * r25.x + r13.w;
        r23.w = saturate(r23.w);
        r25.x = rcp(r27.x);
        r25.z = cmp(0 >= r27.x);
        r25.x = r25.z ? 0 : r25.x;
        r25.z = r27.z * r25.x;
        r25.x = -r27.z * r25.x + 1;
        r23.w = r23.w * r25.x + r25.z;
        r31.y = r23.w + r22.x;
        r12.y = r24.w * r12.y;
        r25.xzw = r27.xzw * r12.yyy + r16.yzw;
        r31.z = r20.z * r12.y + r22.y;
        r13.xyzw = r22.wwww ? r32.xyzw : r13.xyzw;
        r22.xyz = r22.www ? r31.xzy : r22.zyx;
        r16.yzw = r22.www ? r25.xzw : r16.yzw;
        if (cb0[29].x == 0) {
          r25.xzw = -cb0[23].xyz;
        } else {
          r27.xyz = -r30.xyz + r9.xyz;
          r12.y = dot(r27.xyz, r27.xyz);
          r12.y = rsqrt(r12.y);
          r25.xzw = r27.xyz * r12.yyy;
        }
        r12.y = dot(r25.xzw, r26.xyz);
        r25.xzw = -r25.xzw * r12.yyy + r26.xyz;
        r12.y = dot(r25.xzw, r25.xzw);
        r12.y = -r12.y * r21.w + 1;
        r12.y = max(0, r12.y);
        r12.y = r12.y * r19.w;
        r12.y = r12.y * r19.z;
        r12.y = r11.x ? r12.y : 1;
        r19.w = cmp(r28.x != 0.000000);
        r19.w = r19.w ? r11.y : 0;
        r20.z = cmp(0 < r12.y);
        r21.w = min(r23.z, r20.w);
        r21.w = r25.y ? r21.w : r23.z;
        r25.x = r20.z ? r21.w : r23.z;
        r20.z = min(r20.w, r20.y);
        r20.w = r20.z + -r20.x;
        r21.w = saturate(0.5 + r20.w);
        r22.w = 1 + -r21.w;
        r22.w = r22.w * r12.y;
        r27.xyz = r28.xyz * r22.www + r14.xyz;
        r20.z = r28.x * r20.z;
        r27.w = r20.z * r22.w + r14.w;
        r20.w = saturate(r20.w);
        r22.w = rcp(r28.x);
        r23.w = cmp(0 >= r28.x);
        r22.w = r23.w ? 0 : r22.w;
        r23.w = r28.y * r22.w;
        r22.w = -r28.y * r22.w + 1;
        r20.w = r20.w * r22.w + r23.w;
        r25.y = r23.x + r20.w;
        r12.y = r21.w * r12.y;
        r28.xyz = r28.xyz * r12.yyy + r17.yzw;
        r25.z = r20.z * r12.y + r23.y;
        r14.xyzw = r19.wwww ? r27.xyzw : r14.xyzw;
        r17.yzw = r19.www ? r28.xyz : r17.yzw;
        r23.xyz = r19.www ? r25.xzy : r23.zyx;
        r12.y = min(r12.x, r2.w);
        r12.y = rcp(r12.y);
        if (cb0[30].x == 0) {
          r25.xyz = -cb0[24].xyz;
        } else {
          r27.xyz = -r30.xyz + r10.xyz;
          r19.w = dot(r27.xyz, r27.xyz);
          r19.w = rsqrt(r19.w);
          r25.xyz = r27.xyz * r19.www;
        }
        r19.w = dot(r25.xyz, r26.xyz);
        r25.xyz = -r25.xyz * r19.www + r26.xyz;
        r19.w = dot(r25.xyz, r25.xyz);
        r20.z = r12.y * r12.y;
        r19.w = -r19.w * r20.z + 1;
        r19.w = max(0, r19.w);
        r12.y = saturate(-r21.z * r12.y + 1);
        r12.y = r19.w * r12.y;
        r12.y = r12.y * r19.z;
        r11.x = r11.x ? r12.y : 1;
        r12.y = cmp(r29.x != 0.000000);
        r11.y = r12.y ? r11.y : 0;
        r12.y = cmp(0 < r11.x);
        r19.z = cmp(r12.x != -1.000000);
        r19.w = min(r24.z, r12.x);
        r19.z = r19.z ? r19.w : r24.z;
        r25.x = r12.y ? r19.z : r24.z;
        r12.x = min(r12.x, r21.y);
        r12.y = r12.x + -r21.x;
        r19.z = saturate(0.5 + r12.y);
        r19.w = 1 + -r19.z;
        r19.w = r19.w * r11.x;
        r26.xyz = r29.xyz * r19.www + r15.xyz;
        r12.x = r29.x * r12.x;
        r26.w = r12.x * r19.w + r15.w;
        r12.y = saturate(r12.y);
        r19.w = rcp(r29.x);
        r20.z = cmp(0 >= r29.x);
        r19.w = r20.z ? 0 : r19.w;
        r20.z = r29.y * r19.w;
        r19.w = -r29.y * r19.w + 1;
        r12.y = r12.y * r19.w + r20.z;
        r25.y = r24.x + r12.y;
        r11.x = r19.z * r11.x;
        r27.xyz = r29.xyz * r11.xxx + r18.yzw;
        r25.z = r12.x * r11.x + r24.y;
        r15.xyzw = r11.yyyy ? r26.xyzw : r15.xyzw;
        r24.xyz = r11.yyy ? r25.xzy : r24.zyx;
        r18.yzw = r11.yyy ? r27.xyz : r18.yzw;
        r16.x = r22.x;
        r22.xy = r22.zy;
        r17.x = r23.x;
        r23.xy = r23.zy;
        r18.x = r24.x;
        r24.xy = r24.zy;
      } else {
        r16.x = r22.z;
        r17.x = r23.z;
        r18.x = r24.z;
      }
    } else {
      r16.x = r22.z;
      r17.x = r23.z;
      r18.x = r24.z;
    }
    r10.w = (int)r10.w + 1;
  }
  r4.xyzw = cb0[5].xyyy * r4.xyzw;
  r4.xyzw = (uint4)r4.xyzw;
  r5.yzw = (uint3)r3.www >> int3(1,1,1);
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r4.x = (((uint)r5.x << 0) & bitmask.x) | ((uint)r4.x & ~bitmask.x);
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r4.y = (((uint)r5.y << 0) & bitmask.y) | ((uint)r4.y & ~bitmask.y);
  bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r4.z = (((uint)r5.z << 0) & bitmask.z) | ((uint)r4.z & ~bitmask.z);
  bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r4.w = (((uint)r5.w << 0) & bitmask.w) | ((uint)r4.w & ~bitmask.w);
  r1.xy = cmp((uint2)r4.xw < asuint(cb0[1].xy));
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    r1.xy = float2(5.65685415,11.3137083) * r7.xx;
    r2.xy = cmp(r0.xy < cb0[4].xy);
    r3.zw = cmp(cb0[4].zw < r0.xy);
    r2.xy = (int2)r2.xy | (int2)r3.zw;
    r1.z = (int)r2.y | (int)r2.x;
    r2.xy = (int2)r0.zw & int2(255,255);
    r2.xy = (uint2)r2.xy;
    r2.xy = float2(0.00392156886,0.00392156886) * r2.xy;
    if (8 == 0) r0.z = 0; else if (8+8 < 32) {     r0.z = (uint)r0.z << (32-(8 + 8)); r0.z = (uint)r0.z >> (32-8);    } else r0.z = (uint)r0.z >> 8;
    if (8 == 0) r0.w = 0; else if (8+8 < 32) {     r0.w = (uint)r0.w << (32-(8 + 8)); r0.w = (uint)r0.w >> (32-8);    } else r0.w = (uint)r0.w >> 8;
    r0.zw = (uint2)r0.zw;
    r3.zw = cmp(r3.xy == float2(-2,-2));
    r5.xy = r3.zw ? float2(0,0) : float2(1,1);
    r0.zw = float2(0.00392156886,0.00392156886) * r0.zw;
    r6.xy = r5.xy * r2.xy;
    r2.x = (int)r1.w & 255;
    r2.x = (uint)r2.x;
    r2.x = 0.00392156886 * r2.x;
    if (8 == 0) r1.w = 0; else if (8+8 < 32) {     r1.w = (uint)r1.w << (32-(8 + 8)); r1.w = (uint)r1.w >> (32-8);    } else r1.w = (uint)r1.w >> 8;
    r1.w = (uint)r1.w;
    r7.w = 0.00392156886 * r1.w;
    r1.w = cmp(r2.w == -2.000000);
    r7.y = r1.w ? 0 : 1;
    r7.z = r7.y * r2.x;
    r2.xy = max(cb0[32].xy, r0.xy);
    r2.xy = min(cb0[32].zw, r2.xy);
    r2.xy = cmp(r0.xy != r2.xy);
    r1.w = (int)r2.y | (int)r2.x;
    r5.z = r6.x;
    r5.w = r0.z;
    r2.xyz = r1.www ? float3(0,0,0) : r5.xzw;
    r3.zw = max(cb0[33].xy, r0.xy);
    r3.zw = min(cb0[33].zw, r3.zw);
    r3.zw = cmp(r0.xy != r3.zw);
    r0.z = (int)r3.w | (int)r3.z;
    r6.z = r5.y;
    r6.w = r0.w;
    r5.xyz = r0.zzz ? float3(0,0,0) : r6.zyw;
    r0.zw = max(cb0[34].xy, r0.xy);
    r0.zw = min(cb0[34].zw, r0.zw);
    r0.xy = cmp(r0.zw != r0.xy);
    r0.x = (int)r0.y | (int)r0.x;
    r0.xyz = r0.xxx ? float3(0,0,0) : r7.yzw;
    r0.w = cmp(r2.x != 0.000000);
    r1.z = ~(int)r1.z;
    r0.w = r0.w ? r1.z : 0;
    r3.zw = cmp(r3.xy != float2(-1,-1));
    r1.w = min(r16.x, r3.x);
    r6.x = r3.z ? r1.w : r16.x;
    r3.xz = min(r3.xy, r1.yy);
    r7.yz = -r7.xx * float2(5.65685415,5.65685415) + r3.xz;
    r8.xy = saturate(float2(0.5,0.5) + r7.yz);
    r8.zw = float2(1,1) + -r8.xy;
    r9.xyz = r8.zzz * r2.xyz;
    r1.w = r3.x * r2.x;
    r10.x = r1.w * r8.z;
    r7.yz = saturate(r7.yz);
    r3.x = rcp(r2.x);
    r5.w = cmp(0 >= r2.x);
    r3.x = r3.x * r2.y;
    r3.x = r5.w ? 0 : r3.x;
    r5.w = 1 + -r3.x;
    r10.y = r7.y * r5.w + r3.x;
    r6.yzw = r2.xyz * r8.xxx + r16.yzw;
    r10.z = r1.w * r8.x + r22.y;
    r2.xyz = r0.www ? r9.xyz : 0;
    r22.xz = float2(0,0);
    r9.xyz = r0.www ? r10.xyz : r22.xzy;
    r6.xyzw = r0.wwww ? r6.yzxw : r16.yzxw;
    r0.w = cmp(r5.x != 0.000000);
    r0.w = r0.w ? r1.z : 0;
    r1.w = min(r17.x, r3.y);
    r10.x = r3.w ? r1.w : r17.x;
    r3.xyw = r8.www * r5.xyz;
    r1.w = r5.x * r3.z;
    r11.x = r1.w * r8.w;
    r3.z = rcp(r5.x);
    r5.w = cmp(0 >= r5.x);
    r3.z = r5.y * r3.z;
    r3.z = r5.w ? 0 : r3.z;
    r5.w = 1 + -r3.z;
    r11.y = r7.z * r5.w + r3.z;
    r10.yzw = r5.xyz * r8.yyy + r17.yzw;
    r11.z = r1.w * r8.y + r23.y;
    r3.xyz = r0.www ? r3.xyw : 0;
    r23.xz = float2(0,0);
    r5.xyz = r0.www ? r11.xyz : r23.xzy;
    r8.xyzw = r0.wwww ? r10.yzxw : r17.yzxw;
    r0.w = cmp(r0.x != 0.000000);
    r0.w = r0.w ? r1.z : 0;
    r1.z = cmp(r2.w != -1.000000);
    r1.w = min(r18.x, r2.w);
    r10.x = r1.z ? r1.w : r18.x;
    r1.y = min(r2.w, r1.y);
    r1.z = -r7.x * 5.65685415 + r1.y;
    r1.w = saturate(0.5 + r1.z);
    r2.w = 1 + -r1.w;
    r7.xyz = r2.www * r0.xyz;
    r1.y = r1.y * r0.x;
    r11.x = r1.y * r2.w;
    r1.z = saturate(r1.z);
    r2.w = rcp(r0.x);
    r3.w = cmp(0 >= r0.x);
    r2.w = r2.w * r0.y;
    r2.w = r3.w ? 0 : r2.w;
    r3.w = 1 + -r2.w;
    r11.y = r1.z * r3.w + r2.w;
    r10.yzw = r0.xyz * r1.www + r18.yzw;
    r11.z = r1.y * r1.w + r24.y;
    r0.xyz = r0.www ? r7.xyz : 0;
    r24.xz = float2(0,0);
    r1.yzw = r0.www ? r11.xyz : r24.xzy;
    r7.xyzw = r0.wwww ? r10.yzxw : r18.yzxw;
    r0.w = cmp(r2.x != 0.000000);
    r2.w = saturate(1 + -r9.y);
    r3.w = rcp(r6.x);
    r5.w = cmp(0 >= r6.x);
    r3.w = r5.w ? 0 : r3.w;
    r5.w = rcp(r2.x);
    r5.w = r9.x * r5.w;
    r5.w = r9.z * r3.w + -r5.w;
    r1.x = rcp(r1.x);
    r5.w = saturate(r5.w * r1.x);
    r9.x = cmp(r6.x == 0.000000);
    r2.w = -r2.w * r5.w + 1;
    r2.w = r9.x ? 0 : r2.w;
    r3.w = r3.w * r2.x;
    r2.w = r3.w * r2.w;
    r2.xyz = r6.xyw * r2.www + r2.xyz;
    r2.xyz = r0.www ? r2.xyz : r6.xyw;
    r0.w = cmp(r3.x != 0.000000);
    r2.w = saturate(1 + -r5.y);
    r3.w = rcp(r8.x);
    r5.y = cmp(0 >= r8.x);
    r3.w = r5.y ? 0 : r3.w;
    r5.y = rcp(r3.x);
    r5.x = r5.x * r5.y;
    r5.x = r5.z * r3.w + -r5.x;
    r5.x = saturate(r5.x * r1.x);
    r5.y = cmp(r8.x == 0.000000);
    r2.w = -r2.w * r5.x + 1;
    r2.w = r5.y ? 0 : r2.w;
    r3.w = r3.x * r3.w;
    r2.w = r3.w * r2.w;
    r3.xyz = r8.xyw * r2.www + r3.xyz;
    r3.xyz = r0.www ? r3.xyz : r8.xyw;
    r0.w = cmp(r0.x != 0.000000);
    r1.z = saturate(1 + -r1.z);
    r2.w = rcp(r7.x);
    r3.w = cmp(0 >= r7.x);
    r2.w = r3.w ? 0 : r2.w;
    r3.w = rcp(r0.x);
    r1.y = r3.w * r1.y;
    r1.y = r1.w * r2.w + -r1.y;
    r1.x = saturate(r1.y * r1.x);
    r1.y = cmp(r7.x == 0.000000);
    r1.x = -r1.z * r1.x + 1;
    r1.x = r1.y ? 0 : r1.x;
    r1.y = r2.w * r0.x;
    r1.x = r1.x * r1.y;
    r0.xyz = r7.xyw * r1.xxx + r0.xyz;
    r0.xyz = r0.www ? r0.xyz : r7.xyw;
    r0.w = rcp(r2.x);
    r1.x = cmp(0 >= r2.x);
    r0.w = r1.x ? 0 : r0.w;
    r6.xw = r2.yz * r0.ww;
    r0.w = rcp(r3.x);
    r1.x = cmp(0 >= r3.x);
    r0.w = r1.x ? 0 : r0.w;
    r8.xw = r3.yz * r0.ww;
    r0.w = rcp(r0.x);
    r1.x = cmp(0 >= r0.x);
    r0.w = r1.x ? 0 : r0.w;
    r7.xw = r0.yz * r0.ww;
    r6.y = r2.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.xwww, r6.xyzw
    r8.y = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r4.xwww, r8.xyzw
    r7.y = r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r4.xyzw, r7.xyzw
  }
  return;
}