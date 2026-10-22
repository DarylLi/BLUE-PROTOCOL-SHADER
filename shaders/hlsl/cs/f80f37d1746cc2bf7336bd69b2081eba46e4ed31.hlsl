// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb0[31];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31;
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
  r0.z = min(256, asuint(cb0[30].y));
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
  r10.xyzw = float4(0,0,0,0);
  r11.xyzw = float4(0,0,0,0);
  r12.xyzw = float4(0,0,0,0);
  r16.x = r5.y;
  r16.y = r6.x;
  r17.x = r5.y;
  r17.y = r6.x;
  r18.x = r5.y;
  r18.y = r6.x;
  r13.xyzw = float4(100000,0,0,0);
  r19.xy = float2(0,0);
  r14.xyzw = float4(100000,0,0,0);
  r20.xy = float2(0,0);
  r15.xyzw = float4(100000,0,0,0);
  r21.xy = float2(0,0);
  r6.y = r2.w;
  r6.z = r5.x;
  r7.w = 0;
  while (true) {
    r8.w = cmp((uint)r7.w >= (uint)r1.w);
    if (r8.w != 0) break;
    r8.w = (int)r1.w + (int)-r7.w;
    r8.w = (uint)r8.w << 1;
    r9.w = (int)r8.w + -1;
    bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r16.z = (((uint)r9.w << 2) & bitmask.z) | ((uint)r4.x & ~bitmask.z);
    r16.zw = icb[r16.z+0].xy * cb0[3].zw + r3.xw;
    r17.zw = cmp(r16.zw < cb0[4].xy);
    r18.zw = cmp(cb0[4].zw < r16.zw);
    r17.zw = (int2)r17.zw | (int2)r18.zw;
    r17.z = (int)r17.w | (int)r17.z;
    r22.xyz = t1.SampleLevel(s0_s, r16.zw, 0).xyz;
    r17.w = t0.SampleLevel(s0_s, r16.zw, 0).x;
    r18.z = r17.w * cb1[65].x + cb1[65].y;
    r17.w = r17.w * cb1[65].z + -cb1[65].w;
    r17.w = 1 / r17.w;
    r23.z = r18.z + r17.w;
    r22.xyz = r22.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r17.w = dot(r22.xyz, r22.xyz);
    r17.w = rsqrt(r17.w);
    r22.xyz = r22.xyz * r17.www;
    r24.xyzw = t2.SampleLevel(s0_s, r16.zw, 0).xyzw;
    r25.xyzw = t3.SampleLevel(s0_s, r16.zw, 0).xyzw;
    r26.xyzw = t4.SampleLevel(s0_s, r16.zw, 0).xyzw;
    r18.zw = r24.xw * r24.yy;
    r24.xw = r25.xw * r25.yy;
    r25.xw = r26.xw * r26.yy;
    r16.zw = r16.zw * cb0[6].xy + cb0[6].zw;
    r17.w = r6.w ? r23.z : 1;
    r23.xy = r17.ww * r16.zw;
    r27.xyz = cb1[53].xyz * r23.yyy;
    r27.xyz = r23.xxx * cb1[52].xyz + r27.xyz;
    r27.xyz = r23.zzz * cb1[54].xyz + r27.xyz;
    r27.xyz = cb1[55].xyz + r27.xyz;
    r23.xyz = -r23.xyz + r2.xyz;
    r28.xyz = cb1[53].xyz * r23.yyy;
    r23.xyw = r23.xxx * cb1[52].xyz + r28.xyz;
    r23.xyz = r23.zzz * cb1[54].xyz + r23.xyw;
    r16.zw = rcp(r24.zy);
    if (cb0[28].x == 0) {
      r28.xyz = -cb0[22].xyz;
    } else {
      r29.xyz = -r27.xyz + r7.xyz;
      r17.w = dot(r29.xyz, r29.xyz);
      r17.w = rsqrt(r17.w);
      r28.xyz = r29.xyz * r17.www;
    }
    r17.w = dot(r28.xyz, r23.xyz);
    r28.xyz = -r28.xyz * r17.www + r23.xyz;
    r17.w = dot(r28.xyz, r28.xyz);
    r22.w = r16.z * r16.z;
    r17.w = -r17.w * r22.w + 1;
    r17.w = max(0, r17.w);
    r22.w = dot(r1.xyz, -r23.xyz);
    r28.xyz = -r22.www * r1.xyz + -r23.xyz;
    r23.w = dot(r28.xyz, r28.xyz);
    r23.w = sqrt(r23.w);
    r22.w = -r23.w * 0.25 + abs(r22.w);
    r22.w = 6 * r22.w;
    r16.z = saturate(-r22.w * r16.z + 1);
    r16.z = r17.w * r16.z;
    r17.w = dot(r1.xyz, r22.xyz);
    r17.w = max(0, r17.w);
    r17.w = r17.w * r17.w;
    r17.w = r17.w * r17.w;
    r16.z = r17.w * r16.z;
    r22.xy = cmp(r24.yz != float2(0,-1));
    r17.z = ~(int)r17.z;
    r22.x = r17.z ? r22.x : 0;
    r22.z = cmp(0 < r16.z);
    r23.w = min(r24.z, r13.x);
    r22.y = r22.y ? r23.w : r13.x;
    r28.x = r22.z ? r22.y : r13.x;
    r22.y = min(r24.z, r16.y);
    r22.z = r22.y + -r16.x;
    r23.w = saturate(0.5 + r22.z);
    r24.z = 1 + -r23.w;
    r24.z = r24.z * r16.z;
    r29.x = r24.y * r24.z + r10.x;
    r29.yz = r18.zw * r24.zz + r10.yz;
    r22.y = r24.y * r22.y;
    r28.y = r22.y * r24.z + r10.w;
    r22.z = saturate(r22.z);
    r24.z = cmp(0 >= r24.y);
    r16.w = r24.z ? 0 : r16.w;
    r24.z = r18.z * r16.w;
    r16.w = -r18.z * r16.w + 1;
    r16.w = r22.z * r16.w + r24.z;
    r28.z = r19.x + r16.w;
    r16.z = r23.w * r16.z;
    r30.x = r24.y * r16.z + r13.y;
    r30.yz = r18.zw * r16.zz + r13.zw;
    r28.w = r22.y * r16.z + r19.y;
    r31.x = r13.x;
    r31.y = r10.w;
    r31.zw = r19.xy;
    r19.xyzw = r22.xxxx ? r28.yzxw : r31.yzxw;
    r10.xyz = r22.xxx ? r29.xyz : r10.xyz;
    r13.yzw = r22.xxx ? r30.xyz : r13.yzw;
    r16.zw = rcp(r25.zy);
    if (cb0[29].x == 0) {
      r22.xyz = -cb0[23].xyz;
    } else {
      r28.xyz = -r27.xyz + r8.xyz;
      r18.z = dot(r28.xyz, r28.xyz);
      r18.z = rsqrt(r18.z);
      r22.xyz = r28.xyz * r18.zzz;
    }
    r18.z = dot(r22.xyz, r23.xyz);
    r22.xyz = -r22.xyz * r18.zzz + r23.xyz;
    r18.z = dot(r22.xyz, r22.xyz);
    r18.w = r16.z * r16.z;
    r18.z = -r18.z * r18.w + 1;
    r18.z = max(0, r18.z);
    r16.z = saturate(-r22.w * r16.z + 1);
    r16.z = r18.z * r16.z;
    r16.z = r16.z * r17.w;
    r18.zw = cmp(r25.yz != float2(0,-1));
    r18.z = r17.z ? r18.z : 0;
    r22.x = cmp(0 < r16.z);
    r22.y = min(r25.z, r14.x);
    r18.w = r18.w ? r22.y : r14.x;
    r28.x = r22.x ? r18.w : r14.x;
    r18.w = min(r25.z, r17.y);
    r22.x = r18.w + -r17.x;
    r22.y = saturate(0.5 + r22.x);
    r22.z = 1 + -r22.y;
    r22.z = r22.z * r16.z;
    r29.x = r25.y * r22.z + r11.x;
    r29.yz = r24.xw * r22.zz + r11.yz;
    r18.w = r25.y * r18.w;
    r28.y = r18.w * r22.z + r11.w;
    r22.x = saturate(r22.x);
    r22.z = cmp(0 >= r25.y);
    r16.w = r22.z ? 0 : r16.w;
    r22.z = r24.x * r16.w;
    r16.w = -r24.x * r16.w + 1;
    r16.w = r22.x * r16.w + r22.z;
    r28.z = r20.x + r16.w;
    r16.z = r22.y * r16.z;
    r22.x = r25.y * r16.z + r14.y;
    r22.yz = r24.xw * r16.zz + r14.zw;
    r28.w = r18.w * r16.z + r20.y;
    r24.x = r14.x;
    r24.y = r11.w;
    r24.zw = r20.xy;
    r20.xyzw = r18.zzzz ? r28.yzxw : r24.yzxw;
    r11.xyz = r18.zzz ? r29.xyz : r11.xyz;
    r14.yzw = r18.zzz ? r22.xyz : r14.yzw;
    r16.zw = rcp(r26.zy);
    if (cb0[30].x == 0) {
      r22.xyz = -cb0[24].xyz;
    } else {
      r24.xyz = -r27.xyz + r9.xyz;
      r18.z = dot(r24.xyz, r24.xyz);
      r18.z = rsqrt(r18.z);
      r22.xyz = r24.xyz * r18.zzz;
    }
    r18.z = dot(r22.xyz, r23.xyz);
    r22.xyz = -r22.xyz * r18.zzz + r23.xyz;
    r18.z = dot(r22.xyz, r22.xyz);
    r18.w = r16.z * r16.z;
    r18.z = -r18.z * r18.w + 1;
    r18.z = max(0, r18.z);
    r16.z = saturate(-r22.w * r16.z + 1);
    r16.z = r18.z * r16.z;
    r16.z = r16.z * r17.w;
    r18.zw = cmp(r26.yz != float2(0,-1));
    r17.z = r17.z ? r18.z : 0;
    r17.w = cmp(0 < r16.z);
    r18.z = min(r26.z, r15.x);
    r18.z = r18.w ? r18.z : r15.x;
    r22.x = r17.w ? r18.z : r15.x;
    r17.w = min(r26.z, r18.y);
    r18.z = r17.w + -r18.x;
    r18.w = saturate(0.5 + r18.z);
    r23.x = 1 + -r18.w;
    r23.x = r23.x * r16.z;
    r24.x = r26.y * r23.x + r12.x;
    r24.yz = r25.xw * r23.xx + r12.yz;
    r17.w = r26.y * r17.w;
    r22.y = r17.w * r23.x + r12.w;
    r18.z = saturate(r18.z);
    r23.x = cmp(0 >= r26.y);
    r16.w = r23.x ? 0 : r16.w;
    r23.x = r25.x * r16.w;
    r16.w = -r25.x * r16.w + 1;
    r16.w = r18.z * r16.w + r23.x;
    r22.z = r21.x + r16.w;
    r16.z = r18.w * r16.z;
    r23.x = r26.y * r16.z + r15.y;
    r23.yz = r25.xw * r16.zz + r15.zw;
    r22.w = r17.w * r16.z + r21.y;
    r25.x = r15.x;
    r25.y = r12.w;
    r25.zw = r21.xy;
    r21.xyzw = r17.zzzz ? r22.yzxw : r25.yzxw;
    r12.xyz = r17.zzz ? r24.xyz : r12.xyz;
    r15.yzw = r17.zzz ? r23.xyz : r15.yzw;
    r16.z = cmp((int)r6.z == (int)r9.w);
    if (r16.z != 0) {
      r16.z = (uint)r6.y << 1;
      r16.w = (int)r0.z + (int)-r9.w;
      r16.z = min((uint)r16.z, (uint)r16.w);
      r16.w = cmp(r10.x != 0.000000);
      r16.z = (uint)r16.z;
      r16.z = rcp(r16.z);
      r17.z = saturate(-r19.y * r16.z + 1);
      r17.w = rcp(r13.y);
      r18.z = cmp(0 >= r13.y);
      r17.w = r18.z ? 0 : r17.w;
      r18.z = rcp(r10.x);
      r18.z = r19.x * r18.z;
      r18.z = r19.w * r17.w + -r18.z;
      r18.w = rcp(r16.x);
      r18.z = saturate(r18.z * r18.w);
      r18.w = cmp(r13.y == 0.000000);
      r17.z = -r17.z * r18.z + 1;
      r17.z = r18.w ? 0 : r17.z;
      r17.w = r17.w * r10.x;
      r17.z = r17.z * r17.w;
      r22.xyz = r13.yzw * r17.zzz + r10.xyz;
      r22.w = r19.w * r17.z + r19.x;
      r13.x = r19.w;
      r13.xyzw = r16.wwww ? r22.wxyz : r13.xyzw;
      r16.w = cmp(r11.x != 0.000000);
      r17.z = saturate(-r20.y * r16.z + 1);
      r17.w = rcp(r14.y);
      r18.z = cmp(0 >= r14.y);
      r17.w = r18.z ? 0 : r17.w;
      r18.z = rcp(r11.x);
      r18.z = r20.x * r18.z;
      r18.z = r20.w * r17.w + -r18.z;
      r18.w = rcp(r17.x);
      r18.z = saturate(r18.z * r18.w);
      r18.w = cmp(r14.y == 0.000000);
      r17.z = -r17.z * r18.z + 1;
      r17.z = r18.w ? 0 : r17.z;
      r17.w = r17.w * r11.x;
      r17.z = r17.z * r17.w;
      r22.xyz = r14.yzw * r17.zzz + r11.xyz;
      r22.w = r20.w * r17.z + r20.x;
      r14.x = r20.w;
      r14.xyzw = r16.wwww ? r22.wxyz : r14.xyzw;
      r16.w = cmp(r12.x != 0.000000);
      r16.z = saturate(-r21.y * r16.z + 1);
      r17.z = rcp(r15.y);
      r17.w = cmp(0 >= r15.y);
      r17.z = r17.w ? 0 : r17.z;
      r17.w = rcp(r12.x);
      r17.w = r21.x * r17.w;
      r17.w = r21.w * r17.z + -r17.w;
      r18.z = rcp(r18.x);
      r17.w = saturate(r18.z * r17.w);
      r18.z = cmp(r15.y == 0.000000);
      r16.z = -r16.z * r17.w + 1;
      r16.z = r18.z ? 0 : r16.z;
      r17.z = r17.z * r12.x;
      r16.z = r17.z * r16.z;
      r22.xyz = r15.yzw * r16.zzz + r12.xyz;
      r22.w = r21.w * r16.z + r21.x;
      r15.x = r21.w;
      r15.xyzw = r16.wwww ? r22.wxyz : r15.xyzw;
      r9.w = cmp((int)r9.w == 1);
      if (r9.w == 0) {
        r16.z = (int)r6.y + -1;
        r16.w = (uint)r16.z << 1;
        r6.z = (int)r6.z + (int)-r16.w;
        r16.w = (uint)r6.y;
        r16.w = 1 + r16.w;
        r18.x = r16.w * r5.w;
        r17.y = r18.x + r18.x;
        r18.y = 2 * r18.x;
        r16.xy = r18.xy;
        r10.xyzw = float4(0,0,0,0);
        r19.x = 0;
        r11.xyzw = float4(0,0,0,0);
        r20.x = 0;
        r17.x = r18.x;
        r12.xyzw = float4(0,0,0,0);
        r21.x = 0;
        r6.y = r16.z;
      } else {
        r10.w = r19.x;
        r19.x = r19.y;
        r11.w = r20.x;
        r20.x = r20.y;
        r12.w = r21.x;
        r21.x = r21.y;
      }
      r19.y = r13.x;
      r20.y = r14.x;
      r21.y = r15.x;
    } else {
      r10.w = r19.x;
      r19.x = r19.y;
      r19.y = r19.w;
      r11.w = r20.x;
      r20.x = r20.y;
      r20.y = r20.w;
      r12.w = r21.x;
      r21.x = r21.y;
      r21.y = r21.w;
      r9.w = 0;
    }
    if (r9.w == 0) {
      if (r9.w == 0) {
        r8.w = (int)r8.w + -2;
        r9.w = (uint)r8.w << 2;
        r9.w = (int)r4.x + (int)r9.w;
        r16.zw = icb[r9.w+0].xy * cb0[3].zw + r3.xw;
        r17.zw = cmp(r16.zw < cb0[4].xy);
        r18.zw = cmp(cb0[4].zw < r16.zw);
        r17.zw = (int2)r17.zw | (int2)r18.zw;
        r9.w = (int)r17.w | (int)r17.z;
        r22.xyz = t1.SampleLevel(s0_s, r16.zw, 0).xyz;
        r17.z = t0.SampleLevel(s0_s, r16.zw, 0).x;
        r17.w = r17.z * cb1[65].x + cb1[65].y;
        r17.z = r17.z * cb1[65].z + -cb1[65].w;
        r17.z = 1 / r17.z;
        r23.z = r17.w + r17.z;
        r22.xyz = r22.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r17.z = dot(r22.xyz, r22.xyz);
        r17.z = rsqrt(r17.z);
        r22.xyz = r22.xyz * r17.zzz;
        r24.xyzw = t2.SampleLevel(s0_s, r16.zw, 0).xyzw;
        r25.xyzw = t3.SampleLevel(s0_s, r16.zw, 0).xyzw;
        r26.xyzw = t4.SampleLevel(s0_s, r16.zw, 0).xyzw;
        r17.zw = r24.xw * r24.yy;
        r18.zw = r25.xw * r25.yy;
        r24.xw = r26.xw * r26.yy;
        r16.zw = r16.zw * cb0[6].xy + cb0[6].zw;
        r19.w = r6.w ? r23.z : 1;
        r23.xy = r19.ww * r16.zw;
        r27.xyz = cb1[53].xyz * r23.yyy;
        r27.xyz = r23.xxx * cb1[52].xyz + r27.xyz;
        r27.xyz = r23.zzz * cb1[54].xyz + r27.xyz;
        r27.xyz = cb1[55].xyz + r27.xyz;
        r23.xyz = -r23.xyz + r2.xyz;
        r28.xyz = cb1[53].xyz * r23.yyy;
        r23.xyw = r23.xxx * cb1[52].xyz + r28.xyz;
        r23.xyz = r23.zzz * cb1[54].xyz + r23.xyw;
        r16.zw = rcp(r24.zy);
        if (cb0[28].x == 0) {
          r28.xyz = -cb0[22].xyz;
        } else {
          r29.xyz = -r27.xyz + r7.xyz;
          r19.w = dot(r29.xyz, r29.xyz);
          r19.w = rsqrt(r19.w);
          r28.xyz = r29.xyz * r19.www;
        }
        r19.w = dot(r28.xyz, r23.xyz);
        r28.xyz = -r28.xyz * r19.www + r23.xyz;
        r19.w = dot(r28.xyz, r28.xyz);
        r20.w = r16.z * r16.z;
        r19.w = -r19.w * r20.w + 1;
        r19.w = max(0, r19.w);
        r20.w = dot(r1.xyz, -r23.xyz);
        r28.xyz = -r20.www * r1.xyz + -r23.xyz;
        r21.w = dot(r28.xyz, r28.xyz);
        r21.w = sqrt(r21.w);
        r20.w = -r21.w * 0.25 + abs(r20.w);
        r20.w = 6 * r20.w;
        r16.z = saturate(-r20.w * r16.z + 1);
        r16.z = r19.w * r16.z;
        r19.w = dot(r1.xyz, r22.xyz);
        r19.w = max(0, r19.w);
        r19.w = r19.w * r19.w;
        r19.w = r19.w * r19.w;
        r16.z = r19.w * r16.z;
        r16.z = r8.w ? r16.z : 1;
        r22.xy = cmp(r24.yz != float2(0,-1));
        r9.w = ~(int)r9.w;
        r21.w = r22.x ? r9.w : 0;
        r22.x = cmp(0 < r16.z);
        r22.z = min(r24.z, r19.z);
        r22.y = r22.y ? r22.z : r19.z;
        r22.x = r22.x ? r22.y : r19.z;
        r22.w = min(r24.z, r16.y);
        r23.w = r22.w + -r16.x;
        r24.z = saturate(0.5 + r23.w);
        r25.x = 1 + -r24.z;
        r25.x = r25.x * r16.z;
        r28.x = r24.y * r25.x + r10.x;
        r28.yz = r17.zw * r25.xx + r10.yz;
        r22.w = r24.y * r22.w;
        r28.w = r22.w * r25.x + r10.w;
        r23.w = saturate(r23.w);
        r25.x = cmp(0 >= r24.y);
        r16.w = r25.x ? 0 : r16.w;
        r25.x = r17.z * r16.w;
        r16.w = -r17.z * r16.w + 1;
        r16.w = r23.w * r16.w + r25.x;
        r22.y = r19.x + r16.w;
        r16.z = r24.z * r16.z;
        r29.x = r24.y * r16.z + r13.y;
        r29.yz = r17.zw * r16.zz + r13.zw;
        r22.z = r22.w * r16.z + r19.y;
        r10.xyzw = r21.wwww ? r28.xyzw : r10.xyzw;
        r19.xyz = r21.www ? r22.xzy : r19.zyx;
        r13.yzw = r21.www ? r29.xyz : r13.yzw;
        r16.zw = rcp(r25.zy);
        if (cb0[29].x == 0) {
          r22.xyz = -cb0[23].xyz;
        } else {
          r28.xyz = -r27.xyz + r8.xyz;
          r17.z = dot(r28.xyz, r28.xyz);
          r17.z = rsqrt(r17.z);
          r22.xyz = r28.xyz * r17.zzz;
        }
        r17.z = dot(r22.xyz, r23.xyz);
        r22.xyz = -r22.xyz * r17.zzz + r23.xyz;
        r17.z = dot(r22.xyz, r22.xyz);
        r17.w = r16.z * r16.z;
        r17.z = -r17.z * r17.w + 1;
        r17.z = max(0, r17.z);
        r16.z = saturate(-r20.w * r16.z + 1);
        r16.z = r17.z * r16.z;
        r16.z = r16.z * r19.w;
        r16.z = r8.w ? r16.z : 1;
        r17.zw = cmp(r25.yz != float2(0,-1));
        r17.z = r17.z ? r9.w : 0;
        r21.w = cmp(0 < r16.z);
        r22.x = min(r25.z, r20.z);
        r17.w = r17.w ? r22.x : r20.z;
        r22.x = r21.w ? r17.w : r20.z;
        r17.w = min(r25.z, r17.y);
        r21.w = r17.w + -r17.x;
        r22.w = saturate(0.5 + r21.w);
        r23.w = 1 + -r22.w;
        r23.w = r23.w * r16.z;
        r28.x = r25.y * r23.w + r11.x;
        r28.yz = r18.zw * r23.ww + r11.yz;
        r17.w = r25.y * r17.w;
        r28.w = r17.w * r23.w + r11.w;
        r21.w = saturate(r21.w);
        r23.w = cmp(0 >= r25.y);
        r16.w = r23.w ? 0 : r16.w;
        r23.w = r18.z * r16.w;
        r16.w = -r18.z * r16.w + 1;
        r16.w = r21.w * r16.w + r23.w;
        r22.y = r20.x + r16.w;
        r16.z = r22.w * r16.z;
        r25.x = r25.y * r16.z + r14.y;
        r25.yz = r18.zw * r16.zz + r14.zw;
        r22.z = r17.w * r16.z + r20.y;
        r11.xyzw = r17.zzzz ? r28.xyzw : r11.xyzw;
        r14.yzw = r17.zzz ? r25.xyz : r14.yzw;
        r20.xyz = r17.zzz ? r22.xzy : r20.zyx;
        r16.zw = rcp(r26.zy);
        if (cb0[30].x == 0) {
          r22.xyz = -cb0[24].xyz;
        } else {
          r25.xyz = -r27.xyz + r9.xyz;
          r17.z = dot(r25.xyz, r25.xyz);
          r17.z = rsqrt(r17.z);
          r22.xyz = r25.xyz * r17.zzz;
        }
        r17.z = dot(r22.xyz, r23.xyz);
        r22.xyz = -r22.xyz * r17.zzz + r23.xyz;
        r17.z = dot(r22.xyz, r22.xyz);
        r17.w = r16.z * r16.z;
        r17.z = -r17.z * r17.w + 1;
        r17.z = max(0, r17.z);
        r16.z = saturate(-r20.w * r16.z + 1);
        r16.z = r17.z * r16.z;
        r16.z = r16.z * r19.w;
        r8.w = r8.w ? r16.z : 1;
        r17.zw = cmp(r26.yz != float2(0,-1));
        r9.w = r17.z ? r9.w : 0;
        r16.z = cmp(0 < r8.w);
        r17.z = min(r26.z, r21.z);
        r17.z = r17.w ? r17.z : r21.z;
        r22.x = r16.z ? r17.z : r21.z;
        r16.z = min(r26.z, r18.y);
        r17.z = r16.z + -r18.x;
        r17.w = saturate(0.5 + r17.z);
        r18.z = 1 + -r17.w;
        r18.z = r18.z * r8.w;
        r23.x = r26.y * r18.z + r12.x;
        r23.yz = r24.xw * r18.zz + r12.yz;
        r16.z = r26.y * r16.z;
        r23.w = r16.z * r18.z + r12.w;
        r17.z = saturate(r17.z);
        r18.z = cmp(0 >= r26.y);
        r16.w = r18.z ? 0 : r16.w;
        r18.z = r24.x * r16.w;
        r16.w = -r24.x * r16.w + 1;
        r16.w = r17.z * r16.w + r18.z;
        r22.y = r21.x + r16.w;
        r8.w = r17.w * r8.w;
        r25.x = r26.y * r8.w + r15.y;
        r25.yz = r24.xw * r8.ww + r15.zw;
        r22.z = r16.z * r8.w + r21.y;
        r12.xyzw = r9.wwww ? r23.xyzw : r12.xyzw;
        r21.xyz = r9.www ? r22.xzy : r21.zyx;
        r15.yzw = r9.www ? r25.xyz : r15.yzw;
        r13.x = r19.x;
        r19.xy = r19.zy;
        r14.x = r20.x;
        r20.xy = r20.zy;
        r15.x = r21.x;
        r21.xy = r21.zy;
      } else {
        r13.x = r19.z;
        r14.x = r20.z;
        r15.x = r21.z;
      }
    } else {
      r13.x = r19.z;
      r14.x = r20.z;
      r15.x = r21.z;
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
    r4.xyzw = t4.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r0.zw = float2(5.65685415,11.3137083) * r5.zz;
    r5.xy = cmp(r0.xy < cb0[4].xy);
    r0.xy = cmp(cb0[4].zw < r0.xy);
    r0.xy = (int2)r0.xy | (int2)r5.xy;
    r0.x = (int)r0.y | (int)r0.x;
    r2.xw = r2.xw * r2.yy;
    r3.xw = r3.xw * r3.yy;
    r4.xw = r4.xw * r4.yy;
    r5.xy = cmp(r2.yz != float2(0,-1));
    r0.x = ~(int)r0.x;
    r0.y = r0.x ? r5.x : 0;
    r5.x = min(r13.x, r2.z);
    r6.x = r5.y ? r5.x : r13.x;
    r2.z = min(r2.z, r0.w);
    r5.x = -r5.z * 5.65685415 + r2.z;
    r5.y = saturate(0.5 + r5.x);
    r5.w = 1 + -r5.y;
    r7.xyz = r5.www * r2.yxw;
    r2.z = r2.y * r2.z;
    r8.x = r2.z * r5.w;
    r5.x = saturate(r5.x);
    r5.w = rcp(r2.y);
    r7.w = cmp(0 >= r2.y);
    r5.w = r7.w ? 0 : r5.w;
    r7.w = r5.w * r2.x;
    r5.w = -r2.x * r5.w + 1;
    r8.y = r5.x * r5.w + r7.w;
    r6.y = r2.y * r5.y + r13.y;
    r6.zw = r2.xw * r5.yy + r13.zw;
    r8.z = r2.z * r5.y + r19.y;
    r2.xzw = r0.yyy ? r7.xyz : 0;
    r19.xz = float2(0,0);
    r5.xyw = r0.yyy ? r8.xyz : r19.xzy;
    r6.xyzw = r0.yyyy ? r6.yzxw : r13.yzxw;
    r7.xy = cmp(r3.yz != float2(0,-1));
    r0.y = r0.x ? r7.x : 0;
    r7.x = min(r14.x, r3.z);
    r7.x = r7.y ? r7.x : r14.x;
    r3.z = min(r3.z, r0.w);
    r8.x = -r5.z * 5.65685415 + r3.z;
    r8.y = saturate(0.5 + r8.x);
    r8.z = 1 + -r8.y;
    r9.xyz = r8.zzz * r3.yxw;
    r3.z = r3.y * r3.z;
    r10.x = r3.z * r8.z;
    r8.x = saturate(r8.x);
    r8.z = rcp(r3.y);
    r8.w = cmp(0 >= r3.y);
    r8.z = r8.w ? 0 : r8.z;
    r8.w = r8.z * r3.x;
    r8.z = -r3.x * r8.z + 1;
    r10.y = r8.x * r8.z + r8.w;
    r7.y = r3.y * r8.y + r14.y;
    r7.zw = r3.xw * r8.yy + r14.zw;
    r10.z = r3.z * r8.y + r20.y;
    r3.xzw = r0.yyy ? r9.xyz : 0;
    r20.xz = float2(0,0);
    r8.xyz = r0.yyy ? r10.xyz : r20.xzy;
    r7.xyzw = r0.yyyy ? r7.yzxw : r14.yzxw;
    r9.xy = cmp(r4.yz != float2(0,-1));
    r0.x = r0.x ? r9.x : 0;
    r0.y = min(r15.x, r4.z);
    r9.x = r9.y ? r0.y : r15.x;
    r0.y = min(r4.z, r0.w);
    r0.w = -r5.z * 5.65685415 + r0.y;
    r4.z = saturate(0.5 + r0.w);
    r5.z = 1 + -r4.z;
    r10.xyz = r5.zzz * r4.yxw;
    r0.y = r4.y * r0.y;
    r11.x = r0.y * r5.z;
    r0.w = saturate(r0.w);
    r5.z = rcp(r4.y);
    r8.w = cmp(0 >= r4.y);
    r5.z = r8.w ? 0 : r5.z;
    r8.w = r5.z * r4.x;
    r5.z = -r4.x * r5.z + 1;
    r11.y = r0.w * r5.z + r8.w;
    r9.y = r4.y * r4.z + r15.y;
    r9.zw = r4.xw * r4.zz + r15.zw;
    r11.z = r0.y * r4.z + r21.y;
    r4.xzw = r0.xxx ? r10.xyz : 0;
    r21.xz = float2(0,0);
    r10.xyz = r0.xxx ? r11.xyz : r21.xzy;
    r9.xyzw = r0.xxxx ? r9.yzxw : r15.yzxw;
    r0.x = cmp(r2.x != 0.000000);
    r0.y = saturate(1 + -r5.y);
    r0.w = rcp(r6.x);
    r5.y = cmp(0 >= r6.x);
    r0.w = r5.y ? 0 : r0.w;
    r5.y = rcp(r2.x);
    r5.x = r5.x * r5.y;
    r5.x = r5.w * r0.w + -r5.x;
    r0.z = rcp(r0.z);
    r5.x = saturate(r5.x * r0.z);
    r5.y = cmp(r6.x == 0.000000);
    r0.y = -r0.y * r5.x + 1;
    r0.y = r5.y ? 0 : r0.y;
    r0.w = r2.x * r0.w;
    r0.y = r0.y * r0.w;
    r2.xzw = r6.xyw * r0.yyy + r2.xzw;
    r0.xyw = r0.xxx ? r2.xzw : r6.xyw;
    r2.x = cmp(r3.x != 0.000000);
    r2.z = saturate(1 + -r8.y);
    r2.w = rcp(r7.x);
    r5.x = cmp(0 >= r7.x);
    r2.w = r5.x ? 0 : r2.w;
    r5.x = rcp(r3.x);
    r5.x = r8.x * r5.x;
    r5.x = r8.z * r2.w + -r5.x;
    r5.x = saturate(r5.x * r0.z);
    r5.y = cmp(r7.x == 0.000000);
    r2.z = -r2.z * r5.x + 1;
    r2.z = r5.y ? 0 : r2.z;
    r2.w = r3.x * r2.w;
    r2.z = r2.z * r2.w;
    r3.xzw = r7.xyw * r2.zzz + r3.xzw;
    r2.xzw = r2.xxx ? r3.xzw : r7.xyw;
    r3.x = cmp(r4.x != 0.000000);
    r3.z = saturate(1 + -r10.y);
    r3.w = rcp(r9.x);
    r5.x = cmp(0 >= r9.x);
    r3.w = r5.x ? 0 : r3.w;
    r5.x = rcp(r4.x);
    r5.x = r10.x * r5.x;
    r5.x = r10.z * r3.w + -r5.x;
    r0.z = saturate(r5.x * r0.z);
    r5.x = cmp(r9.x == 0.000000);
    r0.z = -r3.z * r0.z + 1;
    r0.z = r5.x ? 0 : r0.z;
    r3.z = r4.x * r3.w;
    r0.z = r3.z * r0.z;
    r4.xzw = r9.xyw * r0.zzz + r4.xzw;
    r3.xzw = r3.xxx ? r4.xzw : r9.xyw;
    r0.z = min(1024, r2.y);
    r4.x = cmp(0 < r2.y);
    r0.z = r0.z / r2.y;
    r0.z = r4.x ? r0.z : 0;
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
    r0.w = rcp(r0.x);
    r2.w = cmp(0 >= r0.x);
    r0.w = r2.w ? 0 : r0.w;
    r6.xw = r0.yz * r0.ww;
    r0.y = rcp(r2.x);
    r0.z = cmp(0 >= r2.x);
    r0.y = r0.z ? 0 : r0.y;
    r7.xw = r2.yz * r0.yy;
    r0.y = rcp(r3.x);
    r0.z = cmp(0 >= r3.x);
    r0.y = r0.z ? 0 : r0.y;
    r9.xw = r3.yz * r0.yy;
    r6.y = r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xwww, r6.xyzw
    r7.y = r2.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xwww, r7.xyzw
    r9.y = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r1.xyzw, r9.xyzw
  }
  return;
}