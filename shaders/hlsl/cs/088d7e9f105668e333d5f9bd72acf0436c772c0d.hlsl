// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb0[30];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28;
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
  r0.zw = t2.Load(r3.xyz).xy;
  r3.xy = (uint2)r0.zw >> int2(16,16);
  r3.xy = f16tof32(r3.xy);
  r1.w = min(256, asuint(cb0[26].y));
  r4.xyzw = (int4)vThreadID.xyyy | int4(1,1,1,1);
  r4.xyzw = (uint4)r4.xyzw;
  r4.xyzw = r4.xyzw * cb0[2].xyyy + cb0[2].zwww;
  bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r2.w = (((uint)vThreadID.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r5.x = (((uint)vThreadID.x << 0) & bitmask.x) | ((uint)r2.w & ~bitmask.x);
  r1.w = (int)r1.w + 1;
  r3.z = (uint)r1.w >> 1;
  r1.w = (int)r1.w & 510;
  r3.w = (uint)r1.w << 2;
  r3.w = (int)r3.w + -7;
  r3.w = (uint)r3.w;
  r3.w = sqrt(r3.w);
  r3.w = floor(r3.w);
  r3.w = (uint)r3.w;
  r3.w = (int)r3.w + 1;
  r3.w = (uint)r3.w >> 1;
  r6.xy = (int2)r3.ww + int2(-1,1);
  r6.x = mad((int)r3.w, (int)r6.x, 1);
  r6.y = (uint)r6.y;
  r6.z = cb0[13].x * r2.z;
  r6.w = 2.82842708 * r6.z;
  r6.y = 1 + r6.y;
  r6.y = r6.w * r6.y;
  r7.x = r6.y + r6.y;
  r7.yz = (int2)r5.xx & int2(1,2);
  r7.yz = r7.yz ? float2(0.5,0.5) : float2(-0.5,-0.5);
  r7.yz = r7.yz * cb0[3].zw + r4.xw;
  r7.yz = r7.yz * cb0[6].xy + cb0[6].zw;
  r7.w = cmp(cb1[31].w < 1);
  r8.x = r7.w ? r2.z : 1;
  r2.xy = r8.xx * r7.yz;
  r8.xyz = cb1[70].xyz + cb0[19].xyz;
  r9.xyz = cb1[70].xyz + cb0[20].xyz;
  r10.zw = float2(0,0);
  r11.zw = float2(0,0);
  r12.xyzw = float4(0,0,0,0);
  r13.xyzw = float4(0,0,0,0);
  r16.x = r6.y;
  r16.y = r7.x;
  r17.x = r6.y;
  r17.y = r7.x;
  r14.xyzw = float4(100000,0,0,0);
  r18.xy = float2(0,0);
  r15.xyzw = float4(100000,0,0,0);
  r19.xy = float2(0,0);
  r7.y = r3.w;
  r7.z = r6.x;
  r8.w = 0;
  while (true) {
    r9.w = cmp((uint)r8.w >= (uint)r3.z);
    if (r9.w != 0) break;
    r9.w = (int)r3.z + (int)-r8.w;
    r9.w = (uint)r9.w << 1;
    r16.z = (int)r9.w + -1;
    bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r16.w = (((uint)r16.z << 2) & bitmask.w) | ((uint)r5.x & ~bitmask.w);
    r17.zw = icb[r16.w+0].xy * cb0[3].zw + r4.xw;
    r20.xy = cmp(r17.zw < cb0[4].xy);
    r20.zw = cmp(cb0[4].zw < r17.zw);
    r20.xy = (int2)r20.zw | (int2)r20.xy;
    r16.w = (int)r20.y | (int)r20.x;
    r20.xy = cb0[5].xy * r17.zw;
    r10.xy = (uint2)r20.xy;
    r20.xyz = t1.SampleLevel(s0_s, r17.zw, 0).xyz;
    r20.w = t0.SampleLevel(s0_s, r17.zw, 0).x;
    r21.x = r20.w * cb1[65].x + cb1[65].y;
    r20.w = r20.w * cb1[65].z + -cb1[65].w;
    r20.w = 1 / r20.w;
    r21.z = r21.x + r20.w;
    r20.xyz = r20.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r20.w = dot(r20.xyz, r20.xyz);
    r20.w = rsqrt(r20.w);
    r20.xyz = r20.xyz * r20.www;
    r10.xy = t2.Load(r10.xyz).xy;
    r22.xy = (int2)r10.xy & int2(255,255);
    r22.xy = (uint2)r22.xy;
    if (8 == 0) r22.z = 0; else if (8+8 < 32) {     r22.z = (uint)r10.x << (32-(8 + 8)); r22.z = (uint)r22.z >> (32-8);    } else r22.z = (uint)r10.x >> 8;
    if (8 == 0) r22.w = 0; else if (8+8 < 32) {     r22.w = (uint)r10.y << (32-(8 + 8)); r22.w = (uint)r22.w >> (32-8);    } else r22.w = (uint)r10.y >> 8;
    r22.zw = (uint2)r22.zw;
    r10.xy = (uint2)r10.xy >> int2(16,16);
    r10.xy = f16tof32(r10.xy);
    r23.xy = cmp(r10.xy == float2(-2,-2));
    r23.xy = r23.xy ? float2(0,0) : float2(1,1);
    r22.xyzw = float4(0.00392156886,0.00392156886,0.00392156886,0.00392156886) * r22.xyzw;
    r24.xy = r23.xy * r22.xy;
    r22.xy = max(cb0[28].xy, r17.zw);
    r22.xy = min(cb0[28].zw, r22.xy);
    r22.xy = cmp(r17.zw != r22.xy);
    r20.w = (int)r22.y | (int)r22.x;
    r23.z = r24.x;
    r23.w = r22.z;
    r22.xyz = r20.www ? float3(0,0,0) : r23.xzw;
    r23.xz = max(cb0[29].xy, r17.zw);
    r23.xz = min(cb0[29].zw, r23.xz);
    r23.xz = cmp(r17.zw != r23.xz);
    r20.w = (int)r23.z | (int)r23.x;
    r24.z = r23.y;
    r24.w = r22.w;
    r23.xyz = r20.www ? float3(0,0,0) : r24.zyw;
    r17.zw = r17.zw * cb0[6].xy + cb0[6].zw;
    r20.w = r7.w ? r21.z : 1;
    r21.xy = r20.ww * r17.zw;
    r24.xyz = cb1[53].xyz * r21.yyy;
    r24.xyz = r21.xxx * cb1[52].xyz + r24.xyz;
    r24.xyz = r21.zzz * cb1[54].xyz + r24.xyz;
    r24.xyz = cb1[55].xyz + r24.xyz;
    r21.xyz = -r21.xyz + r2.xyz;
    r25.xyz = cb1[53].xyz * r21.yyy;
    r21.xyw = r21.xxx * cb1[52].xyz + r25.xyz;
    r21.xyz = r21.zzz * cb1[54].xyz + r21.xyw;
    r17.zw = min(r10.xy, r3.xy);
    r17.zw = rcp(r17.zw);
    if (cb0[25].x == 0) {
      r25.xyz = -cb0[21].xyz;
    } else {
      r26.xyz = -r24.xyz + r8.xyz;
      r20.w = dot(r26.xyz, r26.xyz);
      r20.w = rsqrt(r20.w);
      r25.xyz = r26.xyz * r20.www;
    }
    r20.w = dot(r25.xyz, r21.xyz);
    r25.xyz = -r25.xyz * r20.www + r21.xyz;
    r20.w = dot(r25.xyz, r25.xyz);
    r25.xy = r17.zw * r17.zw;
    r20.w = -r20.w * r25.x + 1;
    r20.w = max(0, r20.w);
    r21.w = dot(r1.xyz, -r21.xyz);
    r25.xzw = -r21.www * r1.xyz + -r21.xyz;
    r22.w = dot(r25.xzw, r25.xzw);
    r22.w = sqrt(r22.w);
    r21.w = -r22.w * 0.25 + abs(r21.w);
    r21.w = 6 * r21.w;
    r17.zw = saturate(-r21.ww * r17.zw + float2(1,1));
    r17.z = r20.w * r17.z;
    r20.x = dot(r1.xyz, r20.xyz);
    r20.x = max(0, r20.x);
    r20.x = r20.x * r20.x;
    r20.x = r20.x * r20.x;
    r17.z = r20.x * r17.z;
    r20.y = cmp(r22.x != 0.000000);
    r16.w = ~(int)r16.w;
    r20.y = r20.y ? r16.w : 0;
    r20.z = cmp(0 < r17.z);
    r25.xz = cmp(r10.xy != float2(-1,-1));
    r20.w = min(r14.x, r10.x);
    r20.w = r25.x ? r20.w : r14.x;
    r26.x = r20.z ? r20.w : r14.x;
    r10.x = min(r10.x, r16.y);
    r20.z = r10.x + -r16.x;
    r20.w = saturate(0.5 + r20.z);
    r21.w = 1 + -r20.w;
    r21.w = r21.w * r17.z;
    r27.xyz = r22.xyz * r21.www + r12.xyz;
    r10.x = r22.x * r10.x;
    r26.y = r10.x * r21.w + r12.w;
    r20.z = saturate(r20.z);
    r21.w = rcp(r22.x);
    r22.w = cmp(0 >= r22.x);
    r21.w = r22.w ? 0 : r21.w;
    r22.w = r22.y * r21.w;
    r21.w = -r22.y * r21.w + 1;
    r20.z = r20.z * r21.w + r22.w;
    r26.z = r20.z + r18.x;
    r17.z = r20.w * r17.z;
    r22.xyz = r22.xyz * r17.zzz + r14.yzw;
    r26.w = r10.x * r17.z + r18.y;
    r28.x = r14.x;
    r28.y = r12.w;
    r28.zw = r18.xy;
    r18.xyzw = r20.yyyy ? r26.yzxw : r28.yzxw;
    r12.xyz = r20.yyy ? r27.xyz : r12.xyz;
    r14.yzw = r20.yyy ? r22.xyz : r14.yzw;
    if (cb0[26].x == 0) {
      r20.yzw = -cb0[22].xyz;
    } else {
      r22.xyz = -r24.xyz + r9.xyz;
      r10.x = dot(r22.xyz, r22.xyz);
      r10.x = rsqrt(r10.x);
      r20.yzw = r22.xyz * r10.xxx;
    }
    r10.x = dot(r20.yzw, r21.xyz);
    r20.yzw = -r20.yzw * r10.xxx + r21.xyz;
    r10.x = dot(r20.yzw, r20.yzw);
    r10.x = -r10.x * r25.y + 1;
    r10.x = max(0, r10.x);
    r10.x = r10.x * r17.w;
    r10.x = r10.x * r20.x;
    r17.z = cmp(r23.x != 0.000000);
    r16.w = r17.z ? r16.w : 0;
    r17.z = cmp(0 < r10.x);
    r17.w = min(r15.x, r10.y);
    r17.w = r25.z ? r17.w : r15.x;
    r20.x = r17.z ? r17.w : r15.x;
    r10.y = min(r10.y, r17.y);
    r17.z = r10.y + -r17.x;
    r17.w = saturate(0.5 + r17.z);
    r21.x = 1 + -r17.w;
    r21.x = r21.x * r10.x;
    r21.yzw = r23.xyz * r21.xxx + r13.xyz;
    r10.y = r23.x * r10.y;
    r20.y = r10.y * r21.x + r13.w;
    r17.z = saturate(r17.z);
    r21.x = rcp(r23.x);
    r22.x = cmp(0 >= r23.x);
    r21.x = r22.x ? 0 : r21.x;
    r22.x = r23.y * r21.x;
    r21.x = -r23.y * r21.x + 1;
    r17.z = r17.z * r21.x + r22.x;
    r20.z = r19.x + r17.z;
    r10.x = r17.w * r10.x;
    r22.xyz = r23.xyz * r10.xxx + r15.yzw;
    r20.w = r10.y * r10.x + r19.y;
    r23.x = r15.x;
    r23.y = r13.w;
    r23.zw = r19.xy;
    r19.xyzw = r16.wwww ? r20.yzxw : r23.yzxw;
    r13.xyz = r16.www ? r21.yzw : r13.xyz;
    r15.yzw = r16.www ? r22.xyz : r15.yzw;
    r10.x = cmp((int)r7.z == (int)r16.z);
    if (r10.x != 0) {
      r10.x = (uint)r7.y << 1;
      r10.y = (int)r1.w + (int)-r16.z;
      r10.x = min((uint)r10.x, (uint)r10.y);
      r10.y = cmp(r12.x != 0.000000);
      r10.x = (uint)r10.x;
      r10.x = rcp(r10.x);
      r16.w = saturate(-r18.y * r10.x + 1);
      r17.z = rcp(r14.y);
      r17.w = cmp(0 >= r14.y);
      r17.z = r17.w ? 0 : r17.z;
      r17.w = rcp(r12.x);
      r17.w = r18.x * r17.w;
      r17.w = r18.w * r17.z + -r17.w;
      r20.x = rcp(r16.x);
      r17.w = saturate(r20.x * r17.w);
      r20.x = cmp(r14.y == 0.000000);
      r16.w = -r16.w * r17.w + 1;
      r16.w = r20.x ? 0 : r16.w;
      r17.z = r17.z * r12.x;
      r16.w = r17.z * r16.w;
      r20.xyz = r14.yzw * r16.www + r12.xyz;
      r20.w = r18.w * r16.w + r18.x;
      r14.x = r18.w;
      r14.xyzw = r10.yyyy ? r20.wxyz : r14.xyzw;
      r10.y = cmp(r13.x != 0.000000);
      r10.x = saturate(-r19.y * r10.x + 1);
      r16.w = rcp(r15.y);
      r17.z = cmp(0 >= r15.y);
      r16.w = r17.z ? 0 : r16.w;
      r17.z = rcp(r13.x);
      r17.z = r19.x * r17.z;
      r17.z = r19.w * r16.w + -r17.z;
      r17.w = rcp(r17.x);
      r17.z = saturate(r17.z * r17.w);
      r17.w = cmp(r15.y == 0.000000);
      r10.x = -r10.x * r17.z + 1;
      r10.x = r17.w ? 0 : r10.x;
      r16.w = r16.w * r13.x;
      r10.x = r16.w * r10.x;
      r20.xyz = r15.yzw * r10.xxx + r13.xyz;
      r20.w = r19.w * r10.x + r19.x;
      r15.x = r19.w;
      r15.xyzw = r10.yyyy ? r20.wxyz : r15.xyzw;
      r10.x = cmp((int)r16.z == 1);
      if (r10.x == 0) {
        r10.y = (int)r7.y + -1;
        r16.z = (uint)r10.y << 1;
        r7.z = (int)r7.z + (int)-r16.z;
        r16.z = (uint)r7.y;
        r16.z = 1 + r16.z;
        r17.x = r16.z * r6.w;
        r17.y = 2 * r17.x;
        r16.xy = r17.xy;
        r12.xyzw = float4(0,0,0,0);
        r18.x = 0;
        r13.xyzw = float4(0,0,0,0);
        r19.x = 0;
        r7.y = r10.y;
      } else {
        r12.w = r18.x;
        r18.x = r18.y;
        r13.w = r19.x;
        r19.x = r19.y;
      }
      r18.y = r14.x;
      r19.y = r15.x;
    } else {
      r12.w = r18.x;
      r18.x = r18.y;
      r18.y = r18.w;
      r13.w = r19.x;
      r19.x = r19.y;
      r19.y = r19.w;
      r10.x = 0;
    }
    if (r10.x == 0) {
      if (r10.x == 0) {
        r9.w = (int)r9.w + -2;
        r10.x = (uint)r9.w << 2;
        r10.x = (int)r5.x + (int)r10.x;
        r10.xy = icb[r10.x+0].xy * cb0[3].zw + r4.xw;
        r16.zw = cmp(r10.xy < cb0[4].xy);
        r17.zw = cmp(cb0[4].zw < r10.xy);
        r16.zw = (int2)r16.zw | (int2)r17.zw;
        r16.z = (int)r16.w | (int)r16.z;
        r17.zw = cb0[5].xy * r10.xy;
        r11.xy = (uint2)r17.zw;
        r20.xyz = t1.SampleLevel(s0_s, r10.xy, 0).xyz;
        r16.w = t0.SampleLevel(s0_s, r10.xy, 0).x;
        r17.z = r16.w * cb1[65].x + cb1[65].y;
        r16.w = r16.w * cb1[65].z + -cb1[65].w;
        r16.w = 1 / r16.w;
        r21.z = r17.z + r16.w;
        r20.xyz = r20.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r16.w = dot(r20.xyz, r20.xyz);
        r16.w = rsqrt(r16.w);
        r20.xyz = r20.xyz * r16.www;
        r11.xy = t2.Load(r11.xyz).xy;
        r17.zw = (int2)r11.xy & int2(255,255);
        r17.zw = (uint2)r17.zw;
        r17.zw = float2(0.00392156886,0.00392156886) * r17.zw;
        if (8 == 0) r22.x = 0; else if (8+8 < 32) {         r22.x = (uint)r11.x << (32-(8 + 8)); r22.x = (uint)r22.x >> (32-8);        } else r22.x = (uint)r11.x >> 8;
        if (8 == 0) r22.y = 0; else if (8+8 < 32) {         r22.y = (uint)r11.y << (32-(8 + 8)); r22.y = (uint)r22.y >> (32-8);        } else r22.y = (uint)r11.y >> 8;
        r22.xy = (uint2)r22.xy;
        r11.xy = (uint2)r11.xy >> int2(16,16);
        r11.xy = f16tof32(r11.xy);
        r22.zw = cmp(r11.xy == float2(-2,-2));
        r23.xy = r22.zw ? float2(0,0) : float2(1,1);
        r22.xy = float2(0.00392156886,0.00392156886) * r22.xy;
        r24.xy = r23.xy * r17.zw;
        r17.zw = max(cb0[28].xy, r10.xy);
        r17.zw = min(cb0[28].zw, r17.zw);
        r17.zw = cmp(r10.xy != r17.zw);
        r16.w = (int)r17.w | (int)r17.z;
        r23.z = r24.x;
        r23.w = r22.x;
        r22.xzw = r16.www ? float3(0,0,0) : r23.xzw;
        r17.zw = max(cb0[29].xy, r10.xy);
        r17.zw = min(cb0[29].zw, r17.zw);
        r17.zw = cmp(r10.xy != r17.zw);
        r16.w = (int)r17.w | (int)r17.z;
        r24.z = r23.y;
        r24.w = r22.y;
        r23.xyz = r16.www ? float3(0,0,0) : r24.zyw;
        r10.xy = r10.xy * cb0[6].xy + cb0[6].zw;
        r16.w = r7.w ? r21.z : 1;
        r21.xy = r16.ww * r10.xy;
        r24.xyz = cb1[53].xyz * r21.yyy;
        r24.xyz = r21.xxx * cb1[52].xyz + r24.xyz;
        r24.xyz = r21.zzz * cb1[54].xyz + r24.xyz;
        r24.xyz = cb1[55].xyz + r24.xyz;
        r21.xyz = -r21.xyz + r2.xyz;
        r25.xyz = cb1[53].xyz * r21.yyy;
        r21.xyw = r21.xxx * cb1[52].xyz + r25.xyz;
        r21.xyz = r21.zzz * cb1[54].xyz + r21.xyw;
        r10.xy = min(r11.xy, r3.xy);
        r10.xy = rcp(r10.xy);
        if (cb0[25].x == 0) {
          r25.xyz = -cb0[21].xyz;
        } else {
          r26.xyz = -r24.xyz + r8.xyz;
          r16.w = dot(r26.xyz, r26.xyz);
          r16.w = rsqrt(r16.w);
          r25.xyz = r26.xyz * r16.www;
        }
        r16.w = dot(r25.xyz, r21.xyz);
        r25.xyz = -r25.xyz * r16.www + r21.xyz;
        r16.w = dot(r25.xyz, r25.xyz);
        r17.zw = r10.xy * r10.xy;
        r16.w = -r16.w * r17.z + 1;
        r16.w = max(0, r16.w);
        r17.z = dot(r1.xyz, -r21.xyz);
        r25.xyz = -r17.zzz * r1.xyz + -r21.xyz;
        r18.w = dot(r25.xyz, r25.xyz);
        r18.w = sqrt(r18.w);
        r17.z = -r18.w * 0.25 + abs(r17.z);
        r17.z = 6 * r17.z;
        r10.xy = saturate(-r17.zz * r10.xy + float2(1,1));
        r10.x = r16.w * r10.x;
        r16.w = dot(r1.xyz, r20.xyz);
        r16.w = max(0, r16.w);
        r16.w = r16.w * r16.w;
        r16.w = r16.w * r16.w;
        r10.x = r16.w * r10.x;
        r10.x = r9.w ? r10.x : 1;
        r17.z = cmp(r22.x != 0.000000);
        r16.z = ~(int)r16.z;
        r17.z = r16.z ? r17.z : 0;
        r18.w = cmp(0 < r10.x);
        r20.xy = cmp(r11.xy != float2(-1,-1));
        r19.w = min(r18.z, r11.x);
        r19.w = r20.x ? r19.w : r18.z;
        r25.x = r18.w ? r19.w : r18.z;
        r11.x = min(r11.x, r16.y);
        r18.w = r11.x + -r16.x;
        r19.w = saturate(0.5 + r18.w);
        r20.x = 1 + -r19.w;
        r20.x = r20.x * r10.x;
        r26.xyz = r22.xzw * r20.xxx + r12.xyz;
        r11.x = r22.x * r11.x;
        r26.w = r11.x * r20.x + r12.w;
        r18.w = saturate(r18.w);
        r20.x = rcp(r22.x);
        r20.z = cmp(0 >= r22.x);
        r20.x = r20.z ? 0 : r20.x;
        r20.z = r22.z * r20.x;
        r20.x = -r22.z * r20.x + 1;
        r18.w = r18.w * r20.x + r20.z;
        r25.y = r18.x + r18.w;
        r10.x = r19.w * r10.x;
        r20.xzw = r22.xzw * r10.xxx + r14.yzw;
        r25.z = r11.x * r10.x + r18.y;
        r12.xyzw = r17.zzzz ? r26.xyzw : r12.xyzw;
        r14.yzw = r17.zzz ? r20.xzw : r14.yzw;
        r18.xyz = r17.zzz ? r25.xzy : r18.zyx;
        if (cb0[26].x == 0) {
          r20.xzw = -cb0[22].xyz;
        } else {
          r22.xyz = -r24.xyz + r9.xyz;
          r10.x = dot(r22.xyz, r22.xyz);
          r10.x = rsqrt(r10.x);
          r20.xzw = r22.xyz * r10.xxx;
        }
        r10.x = dot(r20.xzw, r21.xyz);
        r20.xzw = -r20.xzw * r10.xxx + r21.xyz;
        r10.x = dot(r20.xzw, r20.xzw);
        r10.x = -r10.x * r17.w + 1;
        r10.x = max(0, r10.x);
        r10.x = r10.x * r10.y;
        r10.x = r10.x * r16.w;
        r9.w = r9.w ? r10.x : 1;
        r10.x = cmp(r23.x != 0.000000);
        r10.x = r16.z ? r10.x : 0;
        r10.y = cmp(0 < r9.w);
        r11.x = min(r19.z, r11.y);
        r11.x = r20.y ? r11.x : r19.z;
        r20.x = r10.y ? r11.x : r19.z;
        r10.y = min(r11.y, r17.y);
        r11.x = r10.y + -r17.x;
        r11.y = saturate(0.5 + r11.x);
        r16.z = 1 + -r11.y;
        r16.z = r16.z * r9.w;
        r21.xyz = r23.xyz * r16.zzz + r13.xyz;
        r10.y = r23.x * r10.y;
        r21.w = r10.y * r16.z + r13.w;
        r11.x = saturate(r11.x);
        r16.z = rcp(r23.x);
        r16.w = cmp(0 >= r23.x);
        r16.z = r16.w ? 0 : r16.z;
        r16.w = r23.y * r16.z;
        r16.z = -r23.y * r16.z + 1;
        r11.x = r11.x * r16.z + r16.w;
        r20.y = r19.x + r11.x;
        r9.w = r11.y * r9.w;
        r22.xyz = r23.xyz * r9.www + r15.yzw;
        r20.z = r10.y * r9.w + r19.y;
        r13.xyzw = r10.xxxx ? r21.xyzw : r13.xyzw;
        r19.xyz = r10.xxx ? r20.xzy : r19.zyx;
        r15.yzw = r10.xxx ? r22.xyz : r15.yzw;
        r14.x = r18.x;
        r18.xy = r18.zy;
        r15.x = r19.x;
        r19.xy = r19.zy;
      } else {
        r14.x = r18.z;
        r15.x = r19.z;
      }
    } else {
      r14.x = r18.z;
      r15.x = r19.z;
    }
    r8.w = (int)r8.w + 1;
  }
  r1.xyzw = cb0[5].xyyy * r4.xyzw;
  r1.xyzw = (uint4)r1.xyzw;
  r5.yzw = (uint3)r2.www >> int3(1,1,1);
  bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.x = (((uint)r5.x << 0) & bitmask.x) | ((uint)r1.x & ~bitmask.x);
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.y = (((uint)r5.y << 0) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
  bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.z = (((uint)r5.z << 0) & bitmask.z) | ((uint)r1.z & ~bitmask.z);
  bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.w = (((uint)r5.w << 0) & bitmask.w) | ((uint)r1.w & ~bitmask.w);
  r2.xy = cmp((uint2)r1.xw < asuint(cb0[1].xy));
  r2.x = r2.y ? r2.x : 0;
  if (r2.x != 0) {
    r2.xy = float2(5.65685415,11.3137083) * r6.zz;
    r2.zw = cmp(r0.xy < cb0[4].xy);
    r3.zw = cmp(cb0[4].zw < r0.xy);
    r2.zw = (int2)r2.zw | (int2)r3.zw;
    r2.z = (int)r2.w | (int)r2.z;
    r3.zw = (int2)r0.zw & int2(255,255);
    r3.zw = (uint2)r3.zw;
    r3.zw = float2(0.00392156886,0.00392156886) * r3.zw;
    if (8 == 0) r0.z = 0; else if (8+8 < 32) {     r0.z = (uint)r0.z << (32-(8 + 8)); r0.z = (uint)r0.z >> (32-8);    } else r0.z = (uint)r0.z >> 8;
    if (8 == 0) r0.w = 0; else if (8+8 < 32) {     r0.w = (uint)r0.w << (32-(8 + 8)); r0.w = (uint)r0.w >> (32-8);    } else r0.w = (uint)r0.w >> 8;
    r0.zw = (uint2)r0.zw;
    r4.xy = cmp(r3.xy == float2(-2,-2));
    r4.xy = r4.xy ? float2(0,0) : float2(1,1);
    r0.zw = float2(0.00392156886,0.00392156886) * r0.zw;
    r5.xy = r4.xy * r3.zw;
    r3.zw = max(cb0[28].xy, r0.xy);
    r3.zw = min(cb0[28].zw, r3.zw);
    r3.zw = cmp(r0.xy != r3.zw);
    r2.w = (int)r3.w | (int)r3.z;
    r4.z = r5.x;
    r4.w = r0.z;
    r4.xzw = r2.www ? float3(0,0,0) : r4.xzw;
    r3.zw = max(cb0[29].xy, r0.xy);
    r3.zw = min(cb0[29].zw, r3.zw);
    r0.xy = cmp(r0.xy != r3.zw);
    r0.x = (int)r0.y | (int)r0.x;
    r5.z = r4.y;
    r5.w = r0.w;
    r0.xyz = r0.xxx ? float3(0,0,0) : r5.zyw;
    r0.w = cmp(r4.x != 0.000000);
    r2.z = ~(int)r2.z;
    r0.w = r0.w ? r2.z : 0;
    r3.zw = cmp(r3.xy != float2(-1,-1));
    r2.w = min(r14.x, r3.x);
    r5.x = r3.z ? r2.w : r14.x;
    r2.yw = min(r3.xy, r2.yy);
    r3.xz = -r6.zz * float2(5.65685415,5.65685415) + r2.yw;
    r6.xy = saturate(float2(0.5,0.5) + r3.xz);
    r6.zw = float2(1,1) + -r6.xy;
    r7.xyz = r6.zzz * r4.xzw;
    r2.y = r4.x * r2.y;
    r8.x = r2.y * r6.z;
    r3.xz = saturate(r3.xz);
    r4.y = rcp(r4.x);
    r6.z = cmp(0 >= r4.x);
    r4.y = r4.z * r4.y;
    r4.y = r6.z ? 0 : r4.y;
    r6.z = 1 + -r4.y;
    r8.y = r3.x * r6.z + r4.y;
    r5.yzw = r4.xzw * r6.xxx + r14.yzw;
    r8.z = r2.y * r6.x + r18.y;
    r4.xyz = r0.www ? r7.xyz : 0;
    r18.xz = float2(0,0);
    r7.xyz = r0.www ? r8.xyz : r18.xzy;
    r5.xyzw = r0.wwww ? r5.yzxw : r14.yzxw;
    r0.w = cmp(r0.x != 0.000000);
    r0.w = r2.z ? r0.w : 0;
    r2.y = min(r15.x, r3.y);
    r8.x = r3.w ? r2.y : r15.x;
    r3.xyw = r6.www * r0.xyz;
    r2.y = r2.w * r0.x;
    r9.x = r2.y * r6.w;
    r2.z = rcp(r0.x);
    r2.w = cmp(0 >= r0.x);
    r2.z = r2.z * r0.y;
    r2.z = r2.w ? 0 : r2.z;
    r2.w = 1 + -r2.z;
    r9.y = r3.z * r2.w + r2.z;
    r8.yzw = r0.xyz * r6.yyy + r15.yzw;
    r9.z = r2.y * r6.y + r19.y;
    r0.xyz = r0.www ? r3.xyw : 0;
    r19.xz = float2(0,0);
    r2.yzw = r0.www ? r9.xyz : r19.xzy;
    r3.xyzw = r0.wwww ? r8.yzxw : r15.yzxw;
    r0.w = cmp(r4.x != 0.000000);
    r4.w = saturate(1 + -r7.y);
    r6.x = rcp(r5.x);
    r6.y = cmp(0 >= r5.x);
    r6.x = r6.y ? 0 : r6.x;
    r6.y = rcp(r4.x);
    r6.y = r7.x * r6.y;
    r6.y = r7.z * r6.x + -r6.y;
    r2.x = rcp(r2.x);
    r6.y = saturate(r6.y * r2.x);
    r6.z = cmp(r5.x == 0.000000);
    r4.w = -r4.w * r6.y + 1;
    r4.w = r6.z ? 0 : r4.w;
    r6.x = r6.x * r4.x;
    r4.w = r6.x * r4.w;
    r4.xyz = r5.xyw * r4.www + r4.xyz;
    r4.xyz = r0.www ? r4.xyz : r5.xyw;
    r0.w = cmp(r0.x != 0.000000);
    r2.z = saturate(1 + -r2.z);
    r4.w = rcp(r3.x);
    r6.x = cmp(0 >= r3.x);
    r4.w = r6.x ? 0 : r4.w;
    r6.x = rcp(r0.x);
    r2.y = r6.x * r2.y;
    r2.y = r2.w * r4.w + -r2.y;
    r2.x = saturate(r2.y * r2.x);
    r2.y = cmp(r3.x == 0.000000);
    r2.x = -r2.z * r2.x + 1;
    r2.x = r2.y ? 0 : r2.x;
    r2.y = r4.w * r0.x;
    r2.x = r2.x * r2.y;
    r0.xyz = r3.xyw * r2.xxx + r0.xyz;
    r0.xyz = r0.www ? r0.xyz : r3.xyw;
    r0.w = rcp(r4.x);
    r2.x = cmp(0 >= r4.x);
    r0.w = r2.x ? 0 : r0.w;
    r5.xw = r4.yz * r0.ww;
    r0.w = rcp(r0.x);
    r2.x = cmp(0 >= r0.x);
    r0.w = r2.x ? 0 : r0.w;
    r3.xw = r0.yz * r0.ww;
    r5.y = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xwww, r5.xyzw
    r3.y = r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xyzw, r3.xyzw
  }
  return;
}