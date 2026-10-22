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
  float4 cb0[40];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40;
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
  r3.xy = t3.Load(r3.xyz).xy;
  r3.zw = (uint2)r0.zw >> int2(16,16);
  r3.zw = f16tof32(r3.zw);
  r4.xy = (uint2)r3.xy >> int2(16,16);
  r4.xy = f16tof32(r4.xy);
  r1.w = min(256, asuint(cb0[34].y));
  r5.xyzw = (int4)vThreadID.xyyy | int4(1,1,1,1);
  r5.xyzw = (uint4)r5.xyzw;
  r5.xyzw = r5.xyzw * cb0[2].xyyy + cb0[2].zwww;
  bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r2.w = (((uint)vThreadID.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r6.x = (((uint)vThreadID.x << 0) & bitmask.x) | ((uint)r2.w & ~bitmask.x);
  r1.w = (int)r1.w + 1;
  r4.z = (uint)r1.w >> 1;
  r1.w = (int)r1.w & 510;
  r4.w = (uint)r1.w << 2;
  r4.w = (int)r4.w + -7;
  r4.w = (uint)r4.w;
  r4.w = sqrt(r4.w);
  r4.w = floor(r4.w);
  r4.w = (uint)r4.w;
  r4.w = (int)r4.w + 1;
  r4.w = (uint)r4.w >> 1;
  r7.xy = (int2)r4.ww + int2(-1,1);
  r7.x = mad((int)r4.w, (int)r7.x, 1);
  r7.y = (uint)r7.y;
  r7.z = cb0[13].x * r2.z;
  r7.w = 2.82842708 * r7.z;
  r7.y = 1 + r7.y;
  r7.y = r7.w * r7.y;
  r8.x = r7.y + r7.y;
  r8.yz = (int2)r6.xx & int2(1,2);
  r8.yz = r8.yz ? float2(0.5,0.5) : float2(-0.5,-0.5);
  r8.yz = r8.yz * cb0[3].zw + r5.xw;
  r8.yz = r8.yz * cb0[6].xy + cb0[6].zw;
  r8.w = cmp(cb1[31].w < 1);
  r9.x = r8.w ? r2.z : 1;
  r2.xy = r9.xx * r8.yz;
  r9.xyz = cb1[70].xyz + cb0[19].xyz;
  r10.xyz = cb1[70].xyz + cb0[20].xyz;
  r11.xyz = cb1[70].xyz + cb0[21].xyz;
  r12.xyz = cb1[70].xyz + cb0[22].xyz;
  r13.zw = float2(0,0);
  r14.zw = float2(0,0);
  r15.xyzw = float4(0,0,0,0);
  r16.xyzw = float4(0,0,0,0);
  r17.xyzw = float4(0,0,0,0);
  r18.xyzw = float4(0,0,0,0);
  r23.x = r7.y;
  r23.y = r8.x;
  r24.x = r7.y;
  r24.y = r8.x;
  r25.x = r7.y;
  r25.y = r8.x;
  r26.x = r7.y;
  r26.y = r8.x;
  r19.xyzw = float4(100000,0,0,0);
  r27.xz = float2(0,0);
  r20.xyzw = float4(100000,0,0,0);
  r28.xz = float2(0,0);
  r21.xyzw = float4(100000,0,0,0);
  r29.xz = float2(0,0);
  r22.xyzw = float4(100000,0,0,0);
  r8.y = 0;
  r30.z = 0;
  r9.w = r4.w;
  r10.w = r7.x;
  r11.w = 0;
  while (true) {
    r12.w = cmp((uint)r11.w >= (uint)r4.z);
    if (r12.w != 0) break;
    r12.w = (int)r4.z + (int)-r11.w;
    r12.w = (uint)r12.w << 1;
    r23.z = (int)r12.w + -1;
    bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r23.w = (((uint)r23.z << 2) & bitmask.w) | ((uint)r6.x & ~bitmask.w);
    r24.zw = icb[r23.w+0].xy * cb0[3].zw + r5.xw;
    r25.zw = cmp(r24.zw < cb0[4].xy);
    r26.zw = cmp(cb0[4].zw < r24.zw);
    r25.zw = (int2)r25.zw | (int2)r26.zw;
    r23.w = (int)r25.w | (int)r25.z;
    r25.zw = cb0[5].xy * r24.zw;
    r13.xy = (uint2)r25.zw;
    r31.xyz = t1.SampleLevel(s0_s, r24.zw, 0).xyz;
    r25.z = t0.SampleLevel(s0_s, r24.zw, 0).x;
    r25.w = r25.z * cb1[65].x + cb1[65].y;
    r25.z = r25.z * cb1[65].z + -cb1[65].w;
    r25.z = 1 / r25.z;
    r32.z = r25.w + r25.z;
    r31.xyz = r31.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r25.z = dot(r31.xyz, r31.xyz);
    r25.z = rsqrt(r25.z);
    r31.xyz = r31.xyz * r25.zzz;
    r25.zw = t2.Load(r13.xyw).xy;
    r13.xy = t3.Load(r13.xyz).xy;
    r26.zw = (int2)r25.zw & int2(255,255);
    r26.zw = (uint2)r26.zw;
    r26.zw = float2(0.00392156886,0.00392156886) * r26.zw;
    if (8 == 0) r33.x = 0; else if (8+8 < 32) {     r33.x = (uint)r25.z << (32-(8 + 8)); r33.x = (uint)r33.x >> (32-8);    } else r33.x = (uint)r25.z >> 8;
    if (8 == 0) r33.y = 0; else if (8+8 < 32) {     r33.y = (uint)r25.w << (32-(8 + 8)); r33.y = (uint)r33.y >> (32-8);    } else r33.y = (uint)r25.w >> 8;
    r33.xy = (uint2)r33.xy;
    r25.zw = (uint2)r25.zw >> int2(16,16);
    r25.zw = f16tof32(r25.zw);
    r33.zw = cmp(r25.zw == float2(-2,-2));
    r34.xy = r33.zw ? float2(0,0) : float2(1,1);
    r35.xy = r34.xy * r26.zw;
    r26.zw = (int2)r13.xy & int2(255,255);
    r26.zw = (uint2)r26.zw;
    r26.zw = float2(0.00392156886,0.00392156886) * r26.zw;
    if (8 == 0) r33.z = 0; else if (8+8 < 32) {     r33.z = (uint)r13.x << (32-(8 + 8)); r33.z = (uint)r33.z >> (32-8);    } else r33.z = (uint)r13.x >> 8;
    if (8 == 0) r33.w = 0; else if (8+8 < 32) {     r33.w = (uint)r13.y << (32-(8 + 8)); r33.w = (uint)r33.w >> (32-8);    } else r33.w = (uint)r13.y >> 8;
    r33.zw = (uint2)r33.zw;
    r13.xy = (uint2)r13.xy >> int2(16,16);
    r13.xy = f16tof32(r13.xy);
    r36.xy = cmp(r13.xy == float2(-2,-2));
    r36.xy = r36.xy ? float2(0,0) : float2(1,1);
    r33.xyzw = float4(0.00392156886,0.00392156886,0.00392156886,0.00392156886) * r33.xyzw;
    r37.xy = r36.xy * r26.zw;
    r26.zw = max(cb0[36].xy, r24.zw);
    r26.zw = min(cb0[36].zw, r26.zw);
    r26.zw = cmp(r24.zw != r26.zw);
    r26.z = (int)r26.w | (int)r26.z;
    r34.z = r35.x;
    r34.w = r33.x;
    r34.xzw = r26.zzz ? float3(0,0,0) : r34.xzw;
    r26.zw = max(cb0[37].xy, r24.zw);
    r26.zw = min(cb0[37].zw, r26.zw);
    r26.zw = cmp(r24.zw != r26.zw);
    r26.z = (int)r26.w | (int)r26.z;
    r35.z = r34.y;
    r35.w = r33.y;
    r35.xyz = r26.zzz ? float3(0,0,0) : r35.zyw;
    r26.zw = max(cb0[38].xy, r24.zw);
    r26.zw = min(cb0[38].zw, r26.zw);
    r26.zw = cmp(r24.zw != r26.zw);
    r26.z = (int)r26.w | (int)r26.z;
    r36.z = r37.x;
    r36.w = r33.z;
    r33.xyz = r26.zzz ? float3(0,0,0) : r36.xzw;
    r26.zw = max(cb0[39].xy, r24.zw);
    r26.zw = min(cb0[39].zw, r26.zw);
    r26.zw = cmp(r24.zw != r26.zw);
    r26.z = (int)r26.w | (int)r26.z;
    r37.z = r36.y;
    r37.w = r33.w;
    r36.xyz = r26.zzz ? float3(0,0,0) : r37.zyw;
    r24.zw = r24.zw * cb0[6].xy + cb0[6].zw;
    r26.z = r8.w ? r32.z : 1;
    r32.xy = r26.zz * r24.zw;
    r37.xyz = cb1[53].xyz * r32.yyy;
    r37.xyz = r32.xxx * cb1[52].xyz + r37.xyz;
    r37.xyz = r32.zzz * cb1[54].xyz + r37.xyz;
    r37.xyz = cb1[55].xyz + r37.xyz;
    r32.xyz = -r32.xyz + r2.xyz;
    r38.xyz = cb1[53].xyz * r32.yyy;
    r32.xyw = r32.xxx * cb1[52].xyz + r38.xyz;
    r32.xyz = r32.zzz * cb1[54].xyz + r32.xyw;
    r24.zw = min(r25.zw, r3.zw);
    r24.zw = rcp(r24.zw);
    if (cb0[31].x == 0) {
      r38.xyz = -cb0[23].xyz;
    } else {
      r39.xyz = -r37.xyz + r9.xyz;
      r26.z = dot(r39.xyz, r39.xyz);
      r26.z = rsqrt(r26.z);
      r38.xyz = r39.xyz * r26.zzz;
    }
    r26.z = dot(r38.xyz, r32.xyz);
    r38.xyz = -r38.xyz * r26.zzz + r32.xyz;
    r26.z = dot(r38.xyz, r38.xyz);
    r38.xy = r24.zw * r24.zw;
    r26.z = -r26.z * r38.x + 1;
    r26.z = max(0, r26.z);
    r26.w = dot(r1.xyz, -r32.xyz);
    r38.xzw = -r26.www * r1.xyz + -r32.xyz;
    r31.w = dot(r38.xzw, r38.xzw);
    r31.w = sqrt(r31.w);
    r26.w = -r31.w * 0.25 + abs(r26.w);
    r26.w = 6 * r26.w;
    r24.zw = saturate(-r26.ww * r24.zw + float2(1,1));
    r24.z = r26.z * r24.z;
    r26.z = dot(r1.xyz, r31.xyz);
    r26.z = max(0, r26.z);
    r26.z = r26.z * r26.z;
    r26.z = r26.z * r26.z;
    r24.z = r26.z * r24.z;
    r31.x = cmp(r34.x != 0.000000);
    r23.w = ~(int)r23.w;
    r31.x = r31.x ? r23.w : 0;
    r31.y = cmp(0 < r24.z);
    r31.zw = cmp(r25.zw != float2(-1,-1));
    r32.w = min(r25.z, r19.x);
    r31.z = r31.z ? r32.w : r19.x;
    r39.x = r31.y ? r31.z : r19.x;
    r25.z = min(r25.z, r23.y);
    r31.y = r25.z + -r23.x;
    r31.z = saturate(0.5 + r31.y);
    r32.w = 1 + -r31.z;
    r32.w = r32.w * r24.z;
    r38.xzw = r34.xzw * r32.www + r15.xyz;
    r25.z = r34.x * r25.z;
    r39.y = r25.z * r32.w + r15.w;
    r31.y = saturate(r31.y);
    r32.w = rcp(r34.x);
    r33.w = cmp(0 >= r34.x);
    r32.w = r33.w ? 0 : r32.w;
    r33.w = r34.z * r32.w;
    r32.w = -r34.z * r32.w + 1;
    r31.y = r31.y * r32.w + r33.w;
    r39.z = r31.y + r27.z;
    r24.z = r31.z * r24.z;
    r34.xyz = r34.xzw * r24.zzz + r19.yzw;
    r34.w = r25.z * r24.z + r27.x;
    r40.xyz = r19.yzw;
    r40.w = r27.x;
    r34.xyzw = r31.xxxx ? r34.xyzw : r40.xyzw;
    r15.xyz = r31.xxx ? r38.xzw : r15.xyz;
    r27.x = r19.x;
    r27.y = r15.w;
    r19.xyz = r31.xxx ? r39.xyz : r27.xyz;
    if (cb0[32].x == 0) {
      r31.xyz = -cb0[24].xyz;
    } else {
      r38.xzw = -r37.xyz + r10.xyz;
      r24.z = dot(r38.xzw, r38.xzw);
      r24.z = rsqrt(r24.z);
      r31.xyz = r38.xzw * r24.zzz;
    }
    r24.z = dot(r31.xyz, r32.xyz);
    r31.xyz = -r31.xyz * r24.zzz + r32.xyz;
    r24.z = dot(r31.xyz, r31.xyz);
    r24.z = -r24.z * r38.y + 1;
    r24.z = max(0, r24.z);
    r24.z = r24.z * r24.w;
    r24.z = r24.z * r26.z;
    r24.w = cmp(r35.x != 0.000000);
    r24.w = r24.w ? r23.w : 0;
    r25.z = cmp(0 < r24.z);
    r31.x = min(r25.w, r20.x);
    r31.x = r31.w ? r31.x : r20.x;
    r31.x = r25.z ? r31.x : r20.x;
    r25.z = min(r25.w, r24.y);
    r25.w = r25.z + -r24.x;
    r31.w = saturate(0.5 + r25.w);
    r32.w = 1 + -r31.w;
    r32.w = r32.w * r24.z;
    r38.xyz = r35.xyz * r32.www + r16.xyz;
    r25.z = r35.x * r25.z;
    r31.y = r25.z * r32.w + r16.w;
    r25.w = saturate(r25.w);
    r32.w = rcp(r35.x);
    r33.w = cmp(0 >= r35.x);
    r32.w = r33.w ? 0 : r32.w;
    r33.w = r35.y * r32.w;
    r32.w = -r35.y * r32.w + 1;
    r25.w = r25.w * r32.w + r33.w;
    r31.z = r28.z + r25.w;
    r24.z = r31.w * r24.z;
    r35.xyz = r35.xyz * r24.zzz + r20.yzw;
    r35.w = r25.z * r24.z + r28.x;
    r39.xyz = r20.yzw;
    r39.w = r28.x;
    r35.xyzw = r24.wwww ? r35.xyzw : r39.xyzw;
    r16.xyz = r24.www ? r38.xyz : r16.xyz;
    r28.x = r20.x;
    r28.y = r16.w;
    r20.xyz = r24.www ? r31.xyz : r28.xyz;
    r24.zw = min(r13.xy, r4.xy);
    r24.zw = rcp(r24.zw);
    if (cb0[33].x == 0) {
      r31.xyz = -cb0[25].xyz;
    } else {
      r38.xyz = -r37.xyz + r11.xyz;
      r25.z = dot(r38.xyz, r38.xyz);
      r25.z = rsqrt(r25.z);
      r31.xyz = r38.xyz * r25.zzz;
    }
    r25.z = dot(r31.xyz, r32.xyz);
    r31.xyz = -r31.xyz * r25.zzz + r32.xyz;
    r25.z = dot(r31.xyz, r31.xyz);
    r31.xy = r24.zw * r24.zw;
    r25.z = -r25.z * r31.x + 1;
    r25.z = max(0, r25.z);
    r24.zw = saturate(-r26.ww * r24.zw + float2(1,1));
    r24.z = r25.z * r24.z;
    r24.z = r24.z * r26.z;
    r25.z = cmp(r33.x != 0.000000);
    r25.z = r25.z ? r23.w : 0;
    r25.w = cmp(0 < r24.z);
    r31.xz = cmp(r13.xy != float2(-1,-1));
    r26.w = min(r21.x, r13.x);
    r26.w = r31.x ? r26.w : r21.x;
    r38.x = r25.w ? r26.w : r21.x;
    r13.x = min(r13.x, r25.y);
    r25.w = r13.x + -r25.x;
    r26.w = saturate(0.5 + r25.w);
    r31.x = 1 + -r26.w;
    r31.x = r31.x * r24.z;
    r39.xyz = r33.xyz * r31.xxx + r17.xyz;
    r13.x = r33.x * r13.x;
    r38.y = r13.x * r31.x + r17.w;
    r25.w = saturate(r25.w);
    r31.x = rcp(r33.x);
    r31.w = cmp(0 >= r33.x);
    r31.x = r31.w ? 0 : r31.x;
    r31.w = r33.y * r31.x;
    r31.x = -r33.y * r31.x + 1;
    r25.w = r25.w * r31.x + r31.w;
    r38.z = r29.z + r25.w;
    r24.z = r26.w * r24.z;
    r33.xyz = r33.xyz * r24.zzz + r21.yzw;
    r33.w = r13.x * r24.z + r29.x;
    r40.xyz = r21.yzw;
    r40.w = r29.x;
    r33.xyzw = r25.zzzz ? r33.xyzw : r40.xyzw;
    r17.xyz = r25.zzz ? r39.xyz : r17.xyz;
    r29.x = r21.x;
    r29.y = r17.w;
    r21.xyz = r25.zzz ? r38.xyz : r29.xyz;
    if (cb0[34].x == 0) {
      r38.xyz = -cb0[26].xyz;
    } else {
      r37.xyz = -r37.xyz + r12.xyz;
      r13.x = dot(r37.xyz, r37.xyz);
      r13.x = rsqrt(r13.x);
      r38.xyz = r37.xyz * r13.xxx;
    }
    r13.x = dot(r38.xyz, r32.xyz);
    r32.xyz = -r38.xyz * r13.xxx + r32.xyz;
    r13.x = dot(r32.xyz, r32.xyz);
    r13.x = -r13.x * r31.y + 1;
    r13.x = max(0, r13.x);
    r13.x = r13.x * r24.w;
    r13.x = r13.x * r26.z;
    r24.z = cmp(r36.x != 0.000000);
    r23.w = r24.z ? r23.w : 0;
    r24.z = cmp(0 < r13.x);
    r24.w = min(r22.x, r13.y);
    r24.w = r31.z ? r24.w : r22.x;
    r31.x = r24.z ? r24.w : r22.x;
    r13.y = min(r13.y, r26.y);
    r24.z = r13.y + -r26.x;
    r24.w = saturate(0.5 + r24.z);
    r25.z = 1 + -r24.w;
    r25.z = r25.z * r13.x;
    r32.xyz = r36.xyz * r25.zzz + r18.xyz;
    r13.y = r36.x * r13.y;
    r37.x = r13.y * r25.z + r18.w;
    r24.z = saturate(r24.z);
    r25.z = rcp(r36.x);
    r25.w = cmp(0 >= r36.x);
    r25.z = r25.w ? 0 : r25.z;
    r25.w = r36.y * r25.z;
    r25.z = -r36.y * r25.z + 1;
    r24.z = r24.z * r25.z + r25.w;
    r37.y = r24.z + r8.y;
    r13.x = r24.w * r13.x;
    r31.yzw = r36.xyz * r13.xxx + r22.yzw;
    r37.z = r13.y * r13.x + r30.z;
    r22.xyzw = r23.wwww ? r31.xyzw : r22.xyzw;
    r18.xyz = r23.www ? r32.xyz : r18.xyz;
    r30.x = r18.w;
    r30.y = r8.y;
    r30.xyz = r23.www ? r37.xyz : r30.xyz;
    r13.x = cmp((int)r10.w == (int)r23.z);
    if (r13.x != 0) {
      r13.x = (uint)r9.w << 1;
      r13.y = (int)r1.w + (int)-r23.z;
      r13.x = min((uint)r13.x, (uint)r13.y);
      r13.y = cmp(r15.x != 0.000000);
      r13.x = (uint)r13.x;
      r13.x = rcp(r13.x);
      r23.w = saturate(-r19.z * r13.x + 1);
      r24.z = rcp(r34.x);
      r24.w = cmp(0 >= r34.x);
      r24.z = r24.w ? 0 : r24.z;
      r24.w = rcp(r15.x);
      r24.w = r24.w * r19.y;
      r24.w = r34.w * r24.z + -r24.w;
      r25.z = rcp(r23.x);
      r24.w = saturate(r25.z * r24.w);
      r25.z = cmp(r34.x == 0.000000);
      r23.w = -r23.w * r24.w + 1;
      r23.w = r25.z ? 0 : r23.w;
      r24.z = r24.z * r15.x;
      r23.w = r24.z * r23.w;
      r31.xyz = r34.xyz * r23.www + r15.xyz;
      r31.w = r34.w * r23.w + r19.y;
      r27.xyzw = r13.yyyy ? r31.wyxz : r34.wyxz;
      r13.y = cmp(r16.x != 0.000000);
      r23.w = saturate(-r20.z * r13.x + 1);
      r24.z = rcp(r35.x);
      r24.w = cmp(0 >= r35.x);
      r24.z = r24.w ? 0 : r24.z;
      r24.w = rcp(r16.x);
      r24.w = r24.w * r20.y;
      r24.w = r35.w * r24.z + -r24.w;
      r25.z = rcp(r24.x);
      r24.w = saturate(r25.z * r24.w);
      r25.z = cmp(r35.x == 0.000000);
      r23.w = -r23.w * r24.w + 1;
      r23.w = r25.z ? 0 : r23.w;
      r24.z = r24.z * r16.x;
      r23.w = r24.z * r23.w;
      r31.xyz = r35.xyz * r23.www + r16.xyz;
      r31.w = r35.w * r23.w + r20.y;
      r28.xyzw = r13.yyyy ? r31.wyxz : r35.wyxz;
      r13.y = cmp(r17.x != 0.000000);
      r23.w = saturate(-r21.z * r13.x + 1);
      r24.z = rcp(r33.x);
      r24.w = cmp(0 >= r33.x);
      r24.z = r24.w ? 0 : r24.z;
      r24.w = rcp(r17.x);
      r24.w = r24.w * r21.y;
      r24.w = r33.w * r24.z + -r24.w;
      r25.z = rcp(r25.x);
      r24.w = saturate(r25.z * r24.w);
      r25.z = cmp(r33.x == 0.000000);
      r23.w = -r23.w * r24.w + 1;
      r23.w = r25.z ? 0 : r23.w;
      r24.z = r24.z * r17.x;
      r23.w = r24.z * r23.w;
      r31.xyz = r33.xyz * r23.www + r17.xyz;
      r31.w = r33.w * r23.w + r21.y;
      r29.xyzw = r13.yyyy ? r31.wyxz : r33.wyxz;
      r13.y = cmp(r18.x != 0.000000);
      r13.x = saturate(-r30.y * r13.x + 1);
      r23.w = rcp(r22.y);
      r24.z = cmp(0 >= r22.y);
      r23.w = r24.z ? 0 : r23.w;
      r24.z = rcp(r18.x);
      r24.z = r30.x * r24.z;
      r24.z = r30.z * r23.w + -r24.z;
      r24.w = rcp(r26.x);
      r24.z = saturate(r24.z * r24.w);
      r24.w = cmp(r22.y == 0.000000);
      r13.x = -r13.x * r24.z + 1;
      r13.x = r24.w ? 0 : r13.x;
      r23.w = r23.w * r18.x;
      r13.x = r23.w * r13.x;
      r31.xyz = r22.yzw * r13.xxx + r18.xyz;
      r31.w = r30.z * r13.x + r30.x;
      r32.xyz = r22.yzw;
      r32.w = r30.z;
      r31.xyzw = r13.yyyy ? r31.xyzw : r32.xyzw;
      r13.x = cmp((int)r23.z == 1);
      if (r13.x == 0) {
        r13.y = (int)r9.w + -1;
        r23.z = (uint)r13.y << 1;
        r10.w = (int)r10.w + (int)-r23.z;
        r23.z = (uint)r9.w;
        r23.z = 1 + r23.z;
        r26.x = r23.z * r7.w;
        r25.y = r26.x + r26.x;
        r26.y = 2 * r26.x;
        r23.xy = r26.xy;
        r24.xy = r26.xy;
        r15.xyzw = float4(0,0,0,0);
        r16.xyzw = float4(0,0,0,0);
        r23.zw = float2(0,0);
        r17.xyzw = float4(0,0,0,0);
        r24.z = 0;
        r25.x = r26.x;
        r18.xyzw = float4(0,0,0,0);
        r8.y = 0;
        r9.w = r13.y;
      } else {
        r15.w = r19.y;
        r23.z = r19.z;
        r16.w = r20.y;
        r23.w = r20.z;
        r17.w = r21.y;
        r24.z = r21.z;
        r18.w = r30.x;
        r8.y = r30.y;
      }
      r19.yzw = r27.zyw;
      r20.yzw = r28.zyw;
      r21.yzw = r29.zyw;
      r27.z = r23.z;
      r28.z = r23.w;
      r29.z = r24.z;
      r30.xyzw = r31.xywz;
    } else {
      r15.w = r19.y;
      r27.z = r19.z;
      r27.x = r34.w;
      r16.w = r20.y;
      r28.z = r20.z;
      r28.x = r35.w;
      r17.w = r21.y;
      r29.z = r21.z;
      r29.x = r33.w;
      r18.w = r30.x;
      r8.y = r30.y;
      r30.xyw = r22.yzw;
      r13.x = 0;
      r19.yzw = r34.xyz;
      r20.yzw = r35.xyz;
      r21.yzw = r33.xyz;
    }
    if (r13.x == 0) {
      if (r13.x == 0) {
        r12.w = (int)r12.w + -2;
        r13.x = (uint)r12.w << 2;
        r13.x = (int)r6.x + (int)r13.x;
        r13.xy = icb[r13.x+0].xy * cb0[3].zw + r5.xw;
        r23.zw = cmp(r13.xy < cb0[4].xy);
        r24.zw = cmp(cb0[4].zw < r13.xy);
        r23.zw = (int2)r23.zw | (int2)r24.zw;
        r23.z = (int)r23.w | (int)r23.z;
        r24.zw = cb0[5].xy * r13.xy;
        r14.xy = (uint2)r24.zw;
        r31.xyz = t1.SampleLevel(s0_s, r13.xy, 0).xyz;
        r23.w = t0.SampleLevel(s0_s, r13.xy, 0).x;
        r24.z = r23.w * cb1[65].x + cb1[65].y;
        r23.w = r23.w * cb1[65].z + -cb1[65].w;
        r23.w = 1 / r23.w;
        r32.z = r24.z + r23.w;
        r31.xyz = r31.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r23.w = dot(r31.xyz, r31.xyz);
        r23.w = rsqrt(r23.w);
        r31.xyz = r31.xyz * r23.www;
        r24.zw = t2.Load(r14.xyw).xy;
        r14.xy = t3.Load(r14.xyz).xy;
        r25.zw = (int2)r24.zw & int2(255,255);
        r25.zw = (uint2)r25.zw;
        r25.zw = float2(0.00392156886,0.00392156886) * r25.zw;
        if (8 == 0) r26.z = 0; else if (8+8 < 32) {         r26.z = (uint)r24.z << (32-(8 + 8)); r26.z = (uint)r26.z >> (32-8);        } else r26.z = (uint)r24.z >> 8;
        if (8 == 0) r26.w = 0; else if (8+8 < 32) {         r26.w = (uint)r24.w << (32-(8 + 8)); r26.w = (uint)r26.w >> (32-8);        } else r26.w = (uint)r24.w >> 8;
        r26.zw = (uint2)r26.zw;
        r24.zw = (uint2)r24.zw >> int2(16,16);
        r24.zw = f16tof32(r24.zw);
        r33.xy = cmp(r24.zw == float2(-2,-2));
        r33.xy = r33.xy ? float2(0,0) : float2(1,1);
        r26.zw = float2(0.00392156886,0.00392156886) * r26.zw;
        r34.xy = r33.xy * r25.zw;
        r25.zw = (int2)r14.xy & int2(255,255);
        r25.zw = (uint2)r25.zw;
        r25.zw = float2(0.00392156886,0.00392156886) * r25.zw;
        if (8 == 0) r35.x = 0; else if (8+8 < 32) {         r35.x = (uint)r14.x << (32-(8 + 8)); r35.x = (uint)r35.x >> (32-8);        } else r35.x = (uint)r14.x >> 8;
        if (8 == 0) r35.y = 0; else if (8+8 < 32) {         r35.y = (uint)r14.y << (32-(8 + 8)); r35.y = (uint)r35.y >> (32-8);        } else r35.y = (uint)r14.y >> 8;
        r35.xy = (uint2)r35.xy;
        r14.xy = (uint2)r14.xy >> int2(16,16);
        r14.xy = f16tof32(r14.xy);
        r35.zw = cmp(r14.xy == float2(-2,-2));
        r36.xy = r35.zw ? float2(0,0) : float2(1,1);
        r35.xy = float2(0.00392156886,0.00392156886) * r35.xy;
        r37.xy = r36.xy * r25.zw;
        r25.zw = max(cb0[36].xy, r13.xy);
        r25.zw = min(cb0[36].zw, r25.zw);
        r25.zw = cmp(r13.xy != r25.zw);
        r23.w = (int)r25.w | (int)r25.z;
        r33.z = r34.x;
        r33.w = r26.z;
        r33.xzw = r23.www ? float3(0,0,0) : r33.xzw;
        r25.zw = max(cb0[37].xy, r13.xy);
        r25.zw = min(cb0[37].zw, r25.zw);
        r25.zw = cmp(r13.xy != r25.zw);
        r23.w = (int)r25.w | (int)r25.z;
        r34.z = r33.y;
        r34.w = r26.w;
        r34.xyz = r23.www ? float3(0,0,0) : r34.zyw;
        r25.zw = max(cb0[38].xy, r13.xy);
        r25.zw = min(cb0[38].zw, r25.zw);
        r25.zw = cmp(r13.xy != r25.zw);
        r23.w = (int)r25.w | (int)r25.z;
        r36.z = r37.x;
        r36.w = r35.x;
        r35.xzw = r23.www ? float3(0,0,0) : r36.xzw;
        r25.zw = max(cb0[39].xy, r13.xy);
        r25.zw = min(cb0[39].zw, r25.zw);
        r25.zw = cmp(r13.xy != r25.zw);
        r23.w = (int)r25.w | (int)r25.z;
        r37.z = r36.y;
        r37.w = r35.y;
        r36.xyz = r23.www ? float3(0,0,0) : r37.zyw;
        r13.xy = r13.xy * cb0[6].xy + cb0[6].zw;
        r23.w = r8.w ? r32.z : 1;
        r32.xy = r23.ww * r13.xy;
        r37.xyz = cb1[53].xyz * r32.yyy;
        r37.xyz = r32.xxx * cb1[52].xyz + r37.xyz;
        r37.xyz = r32.zzz * cb1[54].xyz + r37.xyz;
        r37.xyz = cb1[55].xyz + r37.xyz;
        r32.xyz = -r32.xyz + r2.xyz;
        r38.xyz = cb1[53].xyz * r32.yyy;
        r32.xyw = r32.xxx * cb1[52].xyz + r38.xyz;
        r32.xyz = r32.zzz * cb1[54].xyz + r32.xyw;
        r13.xy = min(r24.zw, r3.zw);
        r13.xy = rcp(r13.xy);
        if (cb0[31].x == 0) {
          r38.xyz = -cb0[23].xyz;
        } else {
          r39.xyz = -r37.xyz + r9.xyz;
          r23.w = dot(r39.xyz, r39.xyz);
          r23.w = rsqrt(r23.w);
          r38.xyz = r39.xyz * r23.www;
        }
        r23.w = dot(r38.xyz, r32.xyz);
        r38.xyz = -r38.xyz * r23.www + r32.xyz;
        r23.w = dot(r38.xyz, r38.xyz);
        r25.zw = r13.xy * r13.xy;
        r23.w = -r23.w * r25.z + 1;
        r23.w = max(0, r23.w);
        r25.z = dot(r1.xyz, -r32.xyz);
        r38.xyz = -r25.zzz * r1.xyz + -r32.xyz;
        r26.z = dot(r38.xyz, r38.xyz);
        r26.z = sqrt(r26.z);
        r25.z = -r26.z * 0.25 + abs(r25.z);
        r25.z = 6 * r25.z;
        r13.xy = saturate(-r25.zz * r13.xy + float2(1,1));
        r13.x = r23.w * r13.x;
        r23.w = dot(r1.xyz, r31.xyz);
        r23.w = max(0, r23.w);
        r23.w = r23.w * r23.w;
        r23.w = r23.w * r23.w;
        r13.x = r23.w * r13.x;
        r13.x = r12.w ? r13.x : 1;
        r26.z = cmp(r33.x != 0.000000);
        r23.z = ~(int)r23.z;
        r26.z = r23.z ? r26.z : 0;
        r26.w = cmp(0 < r13.x);
        r31.xy = cmp(r24.zw != float2(-1,-1));
        r27.w = min(r24.z, r19.x);
        r27.w = r31.x ? r27.w : r19.x;
        r38.x = r26.w ? r27.w : r19.x;
        r24.z = min(r24.z, r23.y);
        r26.w = r24.z + -r23.x;
        r27.w = saturate(0.5 + r26.w);
        r28.w = 1 + -r27.w;
        r28.w = r28.w * r13.x;
        r39.xyz = r33.xzw * r28.www + r15.xyz;
        r24.z = r33.x * r24.z;
        r39.w = r24.z * r28.w + r15.w;
        r26.w = saturate(r26.w);
        r28.w = rcp(r33.x);
        r29.w = cmp(0 >= r33.x);
        r28.w = r29.w ? 0 : r28.w;
        r29.w = r33.z * r28.w;
        r28.w = -r33.z * r28.w + 1;
        r26.w = r26.w * r28.w + r29.w;
        r38.y = r27.z + r26.w;
        r13.x = r27.w * r13.x;
        r31.xzw = r33.xzw * r13.xxx + r19.yzw;
        r38.z = r24.z * r13.x + r27.x;
        r15.xyzw = r26.zzzz ? r39.xyzw : r15.xyzw;
        r27.y = r19.x;
        r27.xyz = r26.zzz ? r38.zyx : r27.xzy;
        r19.yzw = r26.zzz ? r31.xzw : r19.yzw;
        if (cb0[32].x == 0) {
          r31.xzw = -cb0[24].xyz;
        } else {
          r33.xyz = -r37.xyz + r10.xyz;
          r13.x = dot(r33.xyz, r33.xyz);
          r13.x = rsqrt(r13.x);
          r31.xzw = r33.xyz * r13.xxx;
        }
        r13.x = dot(r31.xzw, r32.xyz);
        r31.xzw = -r31.xzw * r13.xxx + r32.xyz;
        r13.x = dot(r31.xzw, r31.xzw);
        r13.x = -r13.x * r25.w + 1;
        r13.x = max(0, r13.x);
        r13.x = r13.x * r13.y;
        r13.x = r13.x * r23.w;
        r13.x = r12.w ? r13.x : 1;
        r13.y = cmp(r34.x != 0.000000);
        r13.y = r23.z ? r13.y : 0;
        r24.z = cmp(0 < r13.x);
        r25.w = min(r24.w, r20.x);
        r25.w = r31.y ? r25.w : r20.x;
        r31.x = r24.z ? r25.w : r20.x;
        r24.z = min(r24.w, r24.y);
        r24.w = r24.z + -r24.x;
        r25.w = saturate(0.5 + r24.w);
        r26.z = 1 + -r25.w;
        r26.z = r26.z * r13.x;
        r33.xyz = r34.xyz * r26.zzz + r16.xyz;
        r24.z = r34.x * r24.z;
        r33.w = r24.z * r26.z + r16.w;
        r24.w = saturate(r24.w);
        r26.z = rcp(r34.x);
        r26.w = cmp(0 >= r34.x);
        r26.z = r26.w ? 0 : r26.z;
        r26.w = r34.y * r26.z;
        r26.z = -r34.y * r26.z + 1;
        r24.w = r24.w * r26.z + r26.w;
        r31.y = r28.z + r24.w;
        r13.x = r25.w * r13.x;
        r34.xyz = r34.xyz * r13.xxx + r20.yzw;
        r31.z = r24.z * r13.x + r28.x;
        r16.xyzw = r13.yyyy ? r33.xyzw : r16.xyzw;
        r20.yzw = r13.yyy ? r34.xyz : r20.yzw;
        r28.y = r20.x;
        r28.xyz = r13.yyy ? r31.zyx : r28.xzy;
        r13.xy = min(r14.xy, r4.xy);
        r13.xy = rcp(r13.xy);
        if (cb0[33].x == 0) {
          r31.xyz = -cb0[25].xyz;
        } else {
          r33.xyz = -r37.xyz + r11.xyz;
          r24.z = dot(r33.xyz, r33.xyz);
          r24.z = rsqrt(r24.z);
          r31.xyz = r33.xyz * r24.zzz;
        }
        r24.z = dot(r31.xyz, r32.xyz);
        r31.xyz = -r31.xyz * r24.zzz + r32.xyz;
        r24.z = dot(r31.xyz, r31.xyz);
        r26.zw = r13.xy * r13.xy;
        r24.z = -r24.z * r26.z + 1;
        r24.z = max(0, r24.z);
        r13.xy = saturate(-r25.zz * r13.xy + float2(1,1));
        r13.x = r24.z * r13.x;
        r13.x = r13.x * r23.w;
        r13.x = r12.w ? r13.x : 1;
        r24.z = cmp(r35.x != 0.000000);
        r24.z = r23.z ? r24.z : 0;
        r24.w = cmp(0 < r13.x);
        r25.zw = cmp(r14.xy != float2(-1,-1));
        r26.z = min(r21.x, r14.x);
        r25.z = r25.z ? r26.z : r21.x;
        r31.x = r24.w ? r25.z : r21.x;
        r14.x = min(r14.x, r25.y);
        r24.w = r14.x + -r25.x;
        r25.z = saturate(0.5 + r24.w);
        r26.z = 1 + -r25.z;
        r26.z = r26.z * r13.x;
        r33.xyz = r35.xzw * r26.zzz + r17.xyz;
        r14.x = r35.x * r14.x;
        r33.w = r14.x * r26.z + r17.w;
        r24.w = saturate(r24.w);
        r26.z = rcp(r35.x);
        r27.w = cmp(0 >= r35.x);
        r26.z = r27.w ? 0 : r26.z;
        r27.w = r35.z * r26.z;
        r26.z = -r35.z * r26.z + 1;
        r24.w = r24.w * r26.z + r27.w;
        r31.y = r29.z + r24.w;
        r13.x = r25.z * r13.x;
        r34.xyz = r35.xzw * r13.xxx + r21.yzw;
        r31.z = r14.x * r13.x + r29.x;
        r17.xyzw = r24.zzzz ? r33.xyzw : r17.xyzw;
        r21.yzw = r24.zzz ? r34.xyz : r21.yzw;
        r29.y = r21.x;
        r29.xyz = r24.zzz ? r31.zyx : r29.xzy;
        if (cb0[34].x == 0) {
          r31.xyz = -cb0[26].xyz;
        } else {
          r33.xyz = -r37.xyz + r12.xyz;
          r13.x = dot(r33.xyz, r33.xyz);
          r13.x = rsqrt(r13.x);
          r31.xyz = r33.xyz * r13.xxx;
        }
        r13.x = dot(r31.xyz, r32.xyz);
        r31.xyz = -r31.xyz * r13.xxx + r32.xyz;
        r13.x = dot(r31.xyz, r31.xyz);
        r13.x = -r13.x * r26.w + 1;
        r13.x = max(0, r13.x);
        r13.x = r13.x * r13.y;
        r13.x = r13.x * r23.w;
        r12.w = r12.w ? r13.x : 1;
        r13.x = cmp(r36.x != 0.000000);
        r13.x = r23.z ? r13.x : 0;
        r13.y = cmp(0 < r12.w);
        r14.x = min(r22.x, r14.y);
        r14.x = r25.w ? r14.x : r22.x;
        r31.x = r13.y ? r14.x : r22.x;
        r13.y = min(r14.y, r26.y);
        r14.x = r13.y + -r26.x;
        r14.y = saturate(0.5 + r14.x);
        r23.z = 1 + -r14.y;
        r23.z = r23.z * r12.w;
        r32.xyz = r36.xyz * r23.zzz + r18.xyz;
        r13.y = r36.x * r13.y;
        r32.w = r13.y * r23.z + r18.w;
        r14.x = saturate(r14.x);
        r23.z = rcp(r36.x);
        r23.w = cmp(0 >= r36.x);
        r23.z = r23.w ? 0 : r23.z;
        r23.w = r36.y * r23.z;
        r23.z = -r36.y * r23.z + 1;
        r14.x = r14.x * r23.z + r23.w;
        r31.y = r14.x + r8.y;
        r12.w = r14.y * r12.w;
        r33.xyz = r36.xyz * r12.www + r30.xyw;
        r33.w = r13.y * r12.w + r30.z;
        r18.xyzw = r13.xxxx ? r32.xyzw : r18.xyzw;
        r30.xyzw = r13.xxxx ? r33.xywz : r30.xyzw;
        r8.z = r22.x;
        r8.yz = r13.xx ? r31.yx : r8.yz;
        r19.x = r27.z;
        r27.xz = r27.xy;
        r20.x = r28.z;
        r28.xz = r28.xy;
        r21.x = r29.z;
        r29.xz = r29.xy;
        r22.x = r8.z;
        r22.yzw = r30.xyw;
      } else {
        r22.yzw = r30.xyw;
      }
    } else {
      r22.yzw = r30.xyw;
    }
    r11.w = (int)r11.w + 1;
  }
  r1.xyzw = cb0[5].xyyy * r5.xyzw;
  r1.xyzw = (uint4)r1.xyzw;
  r6.yzw = (uint3)r2.www >> int3(1,1,1);
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.x = (((uint)r6.x << 0) & bitmask.x) | ((uint)r1.x & ~bitmask.x);
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.y = (((uint)r6.y << 0) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
  bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.z = (((uint)r6.z << 0) & bitmask.z) | ((uint)r1.z & ~bitmask.z);
  bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.w = (((uint)r6.w << 0) & bitmask.w) | ((uint)r1.w & ~bitmask.w);
  r2.xy = cmp((uint2)r1.xw < asuint(cb0[1].xy));
  r2.x = r2.y ? r2.x : 0;
  if (r2.x != 0) {
    r2.xy = float2(5.65685415,11.3137083) * r7.zz;
    r2.zw = cmp(r0.xy < cb0[4].xy);
    r4.zw = cmp(cb0[4].zw < r0.xy);
    r2.zw = (int2)r2.zw | (int2)r4.zw;
    r2.z = (int)r2.w | (int)r2.z;
    r4.zw = (int2)r0.zw & int2(255,255);
    r4.zw = (uint2)r4.zw;
    r4.zw = float2(0.00392156886,0.00392156886) * r4.zw;
    if (8 == 0) r0.z = 0; else if (8+8 < 32) {     r0.z = (uint)r0.z << (32-(8 + 8)); r0.z = (uint)r0.z >> (32-8);    } else r0.z = (uint)r0.z >> 8;
    if (8 == 0) r0.w = 0; else if (8+8 < 32) {     r0.w = (uint)r0.w << (32-(8 + 8)); r0.w = (uint)r0.w >> (32-8);    } else r0.w = (uint)r0.w >> 8;
    r0.zw = (uint2)r0.zw;
    r5.xy = cmp(r3.zw == float2(-2,-2));
    r5.xy = r5.xy ? float2(0,0) : float2(1,1);
    r0.zw = float2(0.00392156886,0.00392156886) * r0.zw;
    r6.xy = r5.xy * r4.zw;
    r4.zw = (int2)r3.xy & int2(255,255);
    r4.zw = (uint2)r4.zw;
    r4.zw = float2(0.00392156886,0.00392156886) * r4.zw;
    if (8 == 0) r3.x = 0; else if (8+8 < 32) {     r3.x = (uint)r3.x << (32-(8 + 8)); r3.x = (uint)r3.x >> (32-8);    } else r3.x = (uint)r3.x >> 8;
    if (8 == 0) r3.y = 0; else if (8+8 < 32) {     r3.y = (uint)r3.y << (32-(8 + 8)); r3.y = (uint)r3.y >> (32-8);    } else r3.y = (uint)r3.y >> 8;
    r3.xy = (uint2)r3.xy;
    r7.xy = cmp(r4.xy == float2(-2,-2));
    r8.xy = r7.xy ? float2(0,0) : float2(1,1);
    r3.xy = float2(0.00392156886,0.00392156886) * r3.xy;
    r9.xy = r8.xy * r4.zw;
    r4.zw = max(cb0[36].xy, r0.xy);
    r4.zw = min(cb0[36].zw, r4.zw);
    r4.zw = cmp(r0.xy != r4.zw);
    r2.w = (int)r4.w | (int)r4.z;
    r5.z = r6.x;
    r5.w = r0.z;
    r5.xzw = r2.www ? float3(0,0,0) : r5.xzw;
    r4.zw = max(cb0[37].xy, r0.xy);
    r4.zw = min(cb0[37].zw, r4.zw);
    r4.zw = cmp(r0.xy != r4.zw);
    r0.z = (int)r4.w | (int)r4.z;
    r6.z = r5.y;
    r6.w = r0.w;
    r6.xyz = r0.zzz ? float3(0,0,0) : r6.zyw;
    r0.zw = max(cb0[38].xy, r0.xy);
    r0.zw = min(cb0[38].zw, r0.zw);
    r0.zw = cmp(r0.zw != r0.xy);
    r0.z = (int)r0.w | (int)r0.z;
    r8.z = r9.x;
    r8.w = r3.x;
    r7.xyw = r0.zzz ? float3(0,0,0) : r8.xzw;
    r0.zw = max(cb0[39].xy, r0.xy);
    r0.zw = min(cb0[39].zw, r0.zw);
    r0.xy = cmp(r0.zw != r0.xy);
    r0.x = (int)r0.y | (int)r0.x;
    r9.z = r8.y;
    r9.w = r3.y;
    r0.xyz = r0.xxx ? float3(0,0,0) : r9.zyw;
    r0.w = cmp(r5.x != 0.000000);
    r2.z = ~(int)r2.z;
    r0.w = r0.w ? r2.z : 0;
    r3.xy = cmp(r3.zw != float2(-1,-1));
    r2.w = min(r19.x, r3.z);
    r8.x = r3.x ? r2.w : r19.x;
    r3.xz = min(r3.zw, r2.yy);
    r4.zw = -r7.zz * float2(5.65685415,5.65685415) + r3.xz;
    r9.xy = saturate(float2(0.5,0.5) + r4.zw);
    r9.zw = float2(1,1) + -r9.xy;
    r10.xyz = r9.zzz * r5.xzw;
    r2.w = r5.x * r3.x;
    r11.x = r2.w * r9.z;
    r4.zw = saturate(r4.zw);
    r3.x = rcp(r5.x);
    r5.y = cmp(0 >= r5.x);
    r3.x = r5.z * r3.x;
    r3.x = r5.y ? 0 : r3.x;
    r5.y = 1 + -r3.x;
    r11.y = r4.z * r5.y + r3.x;
    r8.yzw = r5.xzw * r9.xxx + r19.yzw;
    r11.z = r2.w * r9.x + r27.x;
    r5.xyz = r0.www ? r10.xyz : 0;
    r27.yz = float2(0,0);
    r10.xyz = r0.www ? r11.xyz : r27.zyx;
    r8.xyzw = r0.wwww ? r8.yzxw : r19.yzxw;
    r0.w = cmp(r6.x != 0.000000);
    r0.w = r2.z ? r0.w : 0;
    r2.w = min(r20.x, r3.w);
    r11.x = r3.y ? r2.w : r20.x;
    r3.xyw = r9.www * r6.xyz;
    r2.w = r6.x * r3.z;
    r12.x = r2.w * r9.w;
    r3.z = rcp(r6.x);
    r4.z = cmp(0 >= r6.x);
    r3.z = r6.y * r3.z;
    r3.z = r4.z ? 0 : r3.z;
    r4.z = 1 + -r3.z;
    r12.y = r4.w * r4.z + r3.z;
    r11.yzw = r6.xyz * r9.yyy + r20.yzw;
    r12.z = r2.w * r9.y + r28.x;
    r3.xyz = r0.www ? r3.xyw : 0;
    r28.yz = float2(0,0);
    r6.xyz = r0.www ? r12.xyz : r28.zyx;
    r9.xyzw = r0.wwww ? r11.yzxw : r20.yzxw;
    r0.w = cmp(r7.x != 0.000000);
    r0.w = r2.z ? r0.w : 0;
    r4.zw = cmp(r4.xy != float2(-1,-1));
    r2.w = min(r21.x, r4.x);
    r11.x = r4.z ? r2.w : r21.x;
    r2.yw = min(r4.xy, r2.yy);
    r4.xz = -r7.zz * float2(5.65685415,5.65685415) + r2.yw;
    r12.xy = saturate(float2(0.5,0.5) + r4.xz);
    r12.zw = float2(1,1) + -r12.xy;
    r13.xyz = r12.zzz * r7.xyw;
    r2.y = r7.x * r2.y;
    r14.x = r2.y * r12.z;
    r4.xz = saturate(r4.xz);
    r3.w = rcp(r7.x);
    r5.w = cmp(0 >= r7.x);
    r3.w = r7.y * r3.w;
    r3.w = r5.w ? 0 : r3.w;
    r5.w = 1 + -r3.w;
    r14.y = r4.x * r5.w + r3.w;
    r11.yzw = r7.xyw * r12.xxx + r21.yzw;
    r14.z = r2.y * r12.x + r29.x;
    r7.xyz = r0.www ? r13.xyz : 0;
    r29.yz = float2(0,0);
    r13.xyz = r0.www ? r14.xyz : r29.zyx;
    r11.xyzw = r0.wwww ? r11.yzxw : r21.yzxw;
    r0.w = cmp(r0.x != 0.000000);
    r0.w = r2.z ? r0.w : 0;
    r2.y = min(r22.x, r4.y);
    r14.x = r4.w ? r2.y : r22.x;
    r4.xyw = r12.www * r0.xyz;
    r2.y = r2.w * r0.x;
    r15.x = r2.y * r12.w;
    r2.z = rcp(r0.x);
    r2.w = cmp(0 >= r0.x);
    r2.z = r2.z * r0.y;
    r2.z = r2.w ? 0 : r2.z;
    r2.w = 1 + -r2.z;
    r15.y = r4.z * r2.w + r2.z;
    r14.yzw = r0.xyz * r12.yyy + r22.yzw;
    r15.z = r2.y * r12.y + r30.z;
    r0.xyz = r0.www ? r4.xyw : 0;
    r30.xy = float2(0,0);
    r2.yzw = r0.www ? r15.xyz : r30.xyz;
    r4.xyzw = r0.wwww ? r14.yzxw : r22.yzxw;
    r0.w = cmp(r5.x != 0.000000);
    r3.w = saturate(1 + -r10.y);
    r5.w = rcp(r8.x);
    r6.w = cmp(0 >= r8.x);
    r5.w = r6.w ? 0 : r5.w;
    r6.w = rcp(r5.x);
    r6.w = r10.x * r6.w;
    r6.w = r10.z * r5.w + -r6.w;
    r2.x = rcp(r2.x);
    r6.w = saturate(r6.w * r2.x);
    r7.w = cmp(r8.x == 0.000000);
    r3.w = -r3.w * r6.w + 1;
    r3.w = r7.w ? 0 : r3.w;
    r5.w = r5.x * r5.w;
    r3.w = r5.w * r3.w;
    r5.xyz = r8.xyw * r3.www + r5.xyz;
    r5.xyz = r0.www ? r5.xyz : r8.xyw;
    r0.w = cmp(r3.x != 0.000000);
    r3.w = saturate(1 + -r6.y);
    r5.w = rcp(r9.x);
    r6.y = cmp(0 >= r9.x);
    r5.w = r6.y ? 0 : r5.w;
    r6.y = rcp(r3.x);
    r6.x = r6.x * r6.y;
    r6.x = r6.z * r5.w + -r6.x;
    r6.x = saturate(r6.x * r2.x);
    r6.y = cmp(r9.x == 0.000000);
    r3.w = -r3.w * r6.x + 1;
    r3.w = r6.y ? 0 : r3.w;
    r5.w = r5.w * r3.x;
    r3.w = r5.w * r3.w;
    r3.xyz = r9.xyw * r3.www + r3.xyz;
    r3.xyz = r0.www ? r3.xyz : r9.xyw;
    r0.w = cmp(r7.x != 0.000000);
    r3.w = saturate(1 + -r13.y);
    r5.w = rcp(r11.x);
    r6.x = cmp(0 >= r11.x);
    r5.w = r6.x ? 0 : r5.w;
    r6.x = rcp(r7.x);
    r6.x = r13.x * r6.x;
    r6.x = r13.z * r5.w + -r6.x;
    r6.x = saturate(r6.x * r2.x);
    r6.y = cmp(r11.x == 0.000000);
    r3.w = -r3.w * r6.x + 1;
    r3.w = r6.y ? 0 : r3.w;
    r5.w = r7.x * r5.w;
    r3.w = r5.w * r3.w;
    r6.xyz = r11.xyw * r3.www + r7.xyz;
    r6.xyz = r0.www ? r6.xyz : r11.xyw;
    r0.w = cmp(r0.x != 0.000000);
    r2.z = saturate(1 + -r2.z);
    r3.w = rcp(r4.x);
    r5.w = cmp(0 >= r4.x);
    r3.w = r5.w ? 0 : r3.w;
    r5.w = rcp(r0.x);
    r2.y = r5.w * r2.y;
    r2.y = r2.w * r3.w + -r2.y;
    r2.x = saturate(r2.y * r2.x);
    r2.y = cmp(r4.x == 0.000000);
    r2.x = -r2.z * r2.x + 1;
    r2.x = r2.y ? 0 : r2.x;
    r2.y = r3.w * r0.x;
    r2.x = r2.x * r2.y;
    r0.xyz = r4.xyw * r2.xxx + r0.xyz;
    r0.xyz = r0.www ? r0.xyz : r4.xyw;
    r0.w = rcp(r5.x);
    r2.x = cmp(0 >= r5.x);
    r0.w = r2.x ? 0 : r0.w;
    r8.xw = r5.yz * r0.ww;
    r0.w = rcp(r3.x);
    r2.x = cmp(0 >= r3.x);
    r0.w = r2.x ? 0 : r0.w;
    r9.xw = r3.yz * r0.ww;
    r0.w = rcp(r6.x);
    r2.x = cmp(0 >= r6.x);
    r0.w = r2.x ? 0 : r0.w;
    r11.xw = r6.yz * r0.ww;
    r0.w = rcp(r0.x);
    r2.x = cmp(0 >= r0.x);
    r0.w = r2.x ? 0 : r0.w;
    r4.xw = r0.yz * r0.ww;
    r8.y = r5.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xwww, r8.xyzw
    r9.y = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xwww, r9.xyzw
    r11.y = r6.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r1.xwww, r11.xyzw
    r4.y = r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r1.xyzw, r4.xyzw
  }
  return;
}