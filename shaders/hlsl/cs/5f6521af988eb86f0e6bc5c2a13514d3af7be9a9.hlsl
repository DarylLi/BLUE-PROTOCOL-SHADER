// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[14]; } g0[216];
Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
  const float4 icb[] = { { -1, -1, -1, 0.015625},
                              { -1, -1, 0, 0.031250},
                              { -1, -1, 1, 0.015625},
                              { -1, 0, -1, 0.031250},
                              { -1, 0, 0, 0.062500},
                              { -1, 0, 1, 0.031250},
                              { -1, 1, -1, 0.015625},
                              { -1, 1, 0, 0.031250},
                              { -1, 1, 1, 0.015625},
                              { 0, -1, -1, 0.031250},
                              { 0, -1, 0, 0.062500},
                              { 0, -1, 1, 0.031250},
                              { 0, 0, -1, 0.062500},
                              { 0, 0, 1, 0.062500},
                              { 0, 1, -1, 0.031250},
                              { 0, 1, 0, 0.062500},
                              { 0, 1, 1, 0.031250},
                              { 1, -1, -1, 0.015625},
                              { 1, -1, 0, 0.031250},
                              { 1, -1, 1, 0.015625},
                              { 1, 0, -1, 0.031250},
                              { 1, 0, 0, 0.062500},
                              { 1, 0, 1, 0.031250},
                              { 1, 1, -1, 0.015625},
                              { 1, 1, 0, 0.031250},
                              { 1, 1, 1, 0.015625},
                              { -0.577350, -0.577350, -0.577350, 0},
                              { -0.707107, -0.707107, 0, 0},
                              { -0.577350, -0.577350, 0.577350, 0},
                              { -0.707107, 0, -0.707107, 0},
                              { -1.000000, 0, 0, 0},
                              { -0.707107, 0, 0.707107, 0},
                              { -0.577350, 0.577350, -0.577350, 0},
                              { -0.707107, 0.707107, 0, 0},
                              { -0.577350, 0.577350, 0.577350, 0},
                              { 0, -0.707107, -0.707107, 0},
                              { 0, -1.000000, 0, 0},
                              { 0, -0.707107, 0.707107, 0},
                              { 0, 0, -1.000000, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0.707107, -0.707107, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0.707107, 0.707107, 0},
                              { 0.577350, -0.577350, -0.577350, 0},
                              { 0.707107, -0.707107, 0, 0},
                              { 0.577350, -0.577350, 0.577350, 0},
                              { 0.707107, 0, -0.707107, 0},
                              { 1.000000, 0, 0, 0},
                              { 0.707107, 0, 0.707107, 0},
                              { 0.577350, 0.577350, -0.577350, 0},
                              { 0.707107, 0.707107, 0, 0},
                              { 0.577350, 0.577350, 0.577350, 0} };
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u2
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u3
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u4
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u5
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u6
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[26];
  float4 x1[26];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xy = (uint2)vThreadID.zy << int2(10,5);
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x + (int)vThreadID.x;
  r0.yzw = min(int3(0,0,0), (int3)vThreadID.xyz);
  r0.z = (uint)r0.z << 5;
  r0.z = mad((int)r0.w, 1024, (int)r0.z);
  r0.y = (int)r0.z + (int)r0.y;
  r1.x = (int)r0.y & 31;
  if (5 == 0) r1.y = 0; else if (5+5 < 32) {   r1.y = (uint)r0.y << (32-(5 + 5)); r1.y = (uint)r1.y >> (32-5);  } else r1.y = (uint)r0.y >> 5;
  r1.z = (uint)r0.y >> 10;
  r1.w = 0;
  r2.xyzw = t7.Load(r1.xyzw).xyzw;
  r0.yzw = t8.Load(r1.xyzw).xyz;
  r1.xyzw = float4(0.886227012,-0.707106709,-0.707106709,-0.707106709) * r2.xwyz;
  r2.x = dot(r2.wyz, float3(-0.577350199,-0.577350199,-0.577350199));
  r2.x = r2.x * 1.02332795 + r1.x;
  r2.x = max(0, r2.x);
  r2.x = saturate(cb0[10].z * r2.x);
  r3.xyz = (int3)vThreadID.xyz + int3(1,0,0);
  r3.xyz = min(int3(31,31,31), (int3)r3.xyz);
  r3.y = (uint)r3.y << 5;
  r3.y = mad((int)r3.z, 1024, (int)r3.y);
  r3.x = (int)r3.y + (int)r3.x;
  r4.x = (int)r3.x & 31;
  if (5 == 0) r4.y = 0; else if (5+5 < 32) {   r4.y = (uint)r3.x << (32-(5 + 5)); r4.y = (uint)r4.y >> (32-5);  } else r4.y = (uint)r3.x >> 5;
  r4.z = (uint)r3.x >> 10;
  r4.w = 0;
  r3.xyzw = t7.Load(r4.xyzw).xyzw;
  r4.xyz = t8.Load(r4.xyzw).xyz;
  r5.xyzw = float4(0.886227012,-0.707106709,-0.707106709,0.707106709) * r3.xyzw;
  r3.x = dot(r3.wyz, float3(0.577350199,-0.577350199,-0.577350199));
  r3.x = r3.x * 1.02332795 + r5.x;
  r3.x = max(0, r3.x);
  r3.x = saturate(cb0[10].z * r3.x);
  r6.xyz = (int3)vThreadID.xyz + int3(0,2,0);
  r6.xyz = min(int3(31,31,31), (int3)r6.xyz);
  r4.w = (uint)r6.y << 5;
  r4.w = mad((int)r6.z, 1024, (int)r4.w);
  r4.w = (int)r4.w + (int)r6.x;
  r6.x = (int)r4.w & 31;
  if (5 == 0) r6.y = 0; else if (5+5 < 32) {   r6.y = (uint)r4.w << (32-(5 + 5)); r6.y = (uint)r6.y >> (32-5);  } else r6.y = (uint)r4.w >> 5;
  r6.z = (uint)r4.w >> 10;
  r6.w = 0;
  r7.xyzw = t7.Load(r6.xyzw).xyzw;
  r6.xyz = t8.Load(r6.xyzw).xyz;
  r8.xyzw = float4(0.886227012,-0.707106709,-0.707106709,0.707106709) * r7.xwzy;
  r4.w = dot(r7.wzy, float3(-0.577350199,-0.577350199,0.577350199));
  r4.w = r4.w * 1.02332795 + r8.x;
  r4.w = max(0, r4.w);
  r4.w = saturate(cb0[10].z * r4.w);
  r4.w = 1 + -r4.w;
  r9.xyz = (int3)vThreadID.xyz + int3(1,2,0);
  r9.xyz = min(int3(31,31,31), (int3)r9.xyz);
  r6.w = (uint)r9.y << 5;
  r6.w = mad((int)r9.z, 1024, (int)r6.w);
  r6.w = (int)r6.w + (int)r9.x;
  r9.x = (int)r6.w & 31;
  if (5 == 0) r9.y = 0; else if (5+5 < 32) {   r9.y = (uint)r6.w << (32-(5 + 5)); r9.y = (uint)r9.y >> (32-5);  } else r9.y = (uint)r6.w >> 5;
  r9.z = (uint)r6.w >> 10;
  r9.w = 0;
  r10.xyzw = t7.Load(r9.xyzw).xyzw;
  r9.xyz = t8.Load(r9.xyzw).xyz;
  r11.xyzw = float4(0.886227012,0.707106709,-0.707106709,0.707106709) * r10.xyzw;
  r6.w = dot(r10.wyz, float3(0.577350199,0.577350199,-0.577350199));
  r6.w = r6.w * 1.02332795 + r11.x;
  r6.w = max(0, r6.w);
  r6.w = saturate(cb0[10].z * r6.w);
  r6.w = 1 + -r6.w;
  r12.xyz = (int3)vThreadID.xyz + int3(0,0,4);
  r12.xyz = min(int3(31,31,31), (int3)r12.xyz);
  r7.x = (uint)r12.y << 5;
  r7.x = mad((int)r12.z, 1024, (int)r7.x);
  r7.x = (int)r7.x + (int)r12.x;
  r12.x = (int)r7.x & 31;
  if (5 == 0) r12.y = 0; else if (5+5 < 32) {   r12.y = (uint)r7.x << (32-(5 + 5)); r12.y = (uint)r12.y >> (32-5);  } else r12.y = (uint)r7.x >> 5;
  r12.z = (uint)r7.x >> 10;
  r12.w = 0;
  r13.xyzw = t7.Load(r12.xyzw).xyzw;
  r12.xyz = t8.Load(r12.xyzw).xyz;
  r14.xyzw = float4(0.886227012,-0.707106709,-0.707106709,0.707106709) * r13.xwyz;
  r7.x = dot(r13.wyz, float3(-0.577350199,-0.577350199,0.577350199));
  r7.x = r7.x * 1.02332795 + r14.x;
  r7.x = max(0, r7.x);
  r7.x = saturate(cb0[10].z * r7.x);
  r7.x = 1 + -r7.x;
  r15.xyz = (int3)vThreadID.xyz + int3(1,0,4);
  r15.xyz = min(int3(31,31,31), (int3)r15.xyz);
  r9.w = (uint)r15.y << 5;
  r9.w = mad((int)r15.z, 1024, (int)r9.w);
  r9.w = (int)r9.w + (int)r15.x;
  r15.x = (int)r9.w & 31;
  if (5 == 0) r15.y = 0; else if (5+5 < 32) {   r15.y = (uint)r9.w << (32-(5 + 5)); r15.y = (uint)r15.y >> (32-5);  } else r15.y = (uint)r9.w >> 5;
  r15.z = (uint)r9.w >> 10;
  r15.w = 0;
  r16.xyzw = t7.Load(r15.xyzw).xyzw;
  r15.xyz = t8.Load(r15.xyzw).xyz;
  r17.xyzw = float4(0.886227012,-0.707106709,0.707106709,0.707106709) * r16.xyzw;
  r9.w = dot(r16.wzy, float3(0.577350199,0.577350199,-0.577350199));
  r9.w = r9.w * 1.02332795 + r17.x;
  r9.w = max(0, r9.w);
  r9.w = saturate(cb0[10].z * r9.w);
  r9.w = 1 + -r9.w;
  r18.xyz = (int3)vThreadID.xyz + int3(0,2,4);
  r18.xyz = min(int3(31,31,31), (int3)r18.xyz);
  r10.x = (uint)r18.y << 5;
  r10.x = mad((int)r18.z, 1024, (int)r10.x);
  r10.x = (int)r10.x + (int)r18.x;
  r18.x = (int)r10.x & 31;
  if (5 == 0) r18.y = 0; else if (5+5 < 32) {   r18.y = (uint)r10.x << (32-(5 + 5)); r18.y = (uint)r18.y >> (32-5);  } else r18.y = (uint)r10.x >> 5;
  r18.z = (uint)r10.x >> 10;
  r18.w = 0;
  r19.xyzw = t7.Load(r18.xyzw).xyzw;
  r18.xyz = t8.Load(r18.xyzw).xyz;
  r20.xyzw = float4(0.886227012,-0.707106709,0.707106709,0.707106709) * r19.xwzy;
  r10.x = dot(r19.wyz, float3(-0.577350199,0.577350199,0.577350199));
  r10.x = r10.x * 1.02332795 + r20.x;
  r10.x = max(0, r10.x);
  r10.x = saturate(cb0[10].z * r10.x);
  r10.x = 1 + -r10.x;
  r21.xyz = (int3)vThreadID.xyz + int3(1,2,4);
  r21.xyz = min(int3(31,31,31), (int3)r21.xyz);
  r12.w = (uint)r21.y << 5;
  r12.w = mad((int)r21.z, 1024, (int)r12.w);
  r12.w = (int)r12.w + (int)r21.x;
  r21.x = (int)r12.w & 31;
  if (5 == 0) r21.y = 0; else if (5+5 < 32) {   r21.y = (uint)r12.w << (32-(5 + 5)); r21.y = (uint)r21.y >> (32-5);  } else r21.y = (uint)r12.w >> 5;
  r21.z = (uint)r12.w >> 10;
  r21.w = 0;
  r22.xyzw = t7.Load(r21.xyzw).xyzw;
  r21.xyz = t8.Load(r21.xyzw).xyz;
  r23.xyzw = float4(0.886227012,0.707106709,0.707106709,0.707106709) * r22.xyzw;
  r12.w = dot(r22.wyz, float3(0.577350199,0.577350199,0.577350199));
  r12.w = r12.w * 1.02332795 + r23.x;
  r12.w = max(0, r12.w);
  r12.w = saturate(cb0[10].z * r12.w);
  r12.w = 1 + -r12.w;
  r1.yzw = r1.yyz + r1.zww;
  r1.yzw = r1.yzw * float3(1.02332795,1.02332795,1.02332795) + r1.xxx;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r14.yzw = r14.yyz + r14.zww;
  r14.yzw = r14.yzw * float3(1.02332795,1.02332795,1.02332795) + r14.xxx;
  r14.yzw = max(float3(0,0,0), r14.yzw);
  r1.y = r14.y + r1.y;
  r1.y = cb0[10].z * r1.y;
  r1.y = saturate(0.5 * r1.y);
  r24.xyz = r12.xyz + r0.yzw;
  r24.xyz = float3(0.5,0.5,0.5) * r24.xyz;
  r8.yzw = r8.yyw + r8.zwz;
  r8.yzw = r8.yzw * float3(1.02332795,1.02332795,1.02332795) + r8.xxx;
  r8.yzw = max(float3(0,0,0), r8.yzw);
  r1.z = r8.y + r1.z;
  r1.z = cb0[10].z * r1.z;
  r1.z = saturate(0.5 * r1.z);
  r25.xyz = r6.xyz + r0.yzw;
  r26.xyz = float3(0.5,0.5,0.5) * r25.xyz;
  r20.yzw = r20.yyw + r20.zwz;
  r20.yzw = r20.yzw * float3(1.02332795,1.02332795,1.02332795) + r20.xxx;
  r20.yzw = max(float3(0,0,0), r20.yzw);
  r8.y = r20.y + r14.z;
  r8.y = cb0[10].z * r8.y;
  r8.y = saturate(0.5 * r8.y);
  r27.xyz = r18.xyz + r12.xyz;
  r27.xyz = float3(0.5,0.5,0.5) * r27.xyz;
  r8.z = r20.z + r8.z;
  r8.z = cb0[10].z * r8.z;
  r8.z = saturate(0.5 * r8.z);
  r28.xyz = r18.xyz + r6.xyz;
  r28.xyz = float3(0.5,0.5,0.5) * r28.xyz;
  r5.yzw = r5.yww + r5.zyz;
  r5.yzw = r5.yzw * float3(1.02332795,1.02332795,1.02332795) + r5.xxx;
  r5.yzw = max(float3(0,0,0), r5.yzw);
  r1.w = r5.y + r1.w;
  r1.w = cb0[10].z * r1.w;
  r1.w = saturate(0.5 * r1.w);
  r29.xyz = r4.xyz + r0.yzw;
  r30.xyz = float3(0.5,0.5,0.5) * r29.xyz;
  r17.yzw = r17.yww + r17.zyz;
  r17.yzw = r17.yzw * float3(1.02332795,1.02332795,1.02332795) + r17.xxx;
  r17.yzw = max(float3(0,0,0), r17.yzw);
  r5.y = r17.y + r14.w;
  r5.y = cb0[10].z * r5.y;
  r5.y = saturate(0.5 * r5.y);
  r14.yzw = r15.xyz + r12.xyz;
  r31.xyz = float3(0.5,0.5,0.5) * r14.yzw;
  r11.yzw = r11.yww + r11.zzy;
  r11.yzw = r11.yzw * float3(1.02332795,1.02332795,1.02332795) + r11.xxx;
  r11.yzw = max(float3(0,0,0), r11.yzw);
  r8.w = r11.y + r8.w;
  r8.w = cb0[10].z * r8.w;
  r8.w = saturate(0.5 * r8.w);
  r8.yzw = float3(1,1,1) + -r8.yzw;
  r32.xyz = r9.xyz + r6.xyz;
  r33.xyz = float3(0.5,0.5,0.5) * r32.xyz;
  r23.yzw = r23.yww + r23.zzy;
  r23.yzw = r23.yzw * float3(1.02332795,1.02332795,1.02332795) + r23.xxx;
  r23.yzw = max(float3(0,0,0), r23.yzw);
  r11.y = r23.y + r20.w;
  r11.y = cb0[10].z * r11.y;
  r11.y = saturate(0.5 * r11.y);
  r20.yzw = r21.xyz + r18.xyz;
  r20.yzw = float3(0.5,0.5,0.5) * r20.yzw;
  r5.z = r17.z + r5.z;
  r5.z = cb0[10].z * r5.z;
  r5.z = saturate(0.5 * r5.z);
  r34.xyz = r15.xyz + r4.xyz;
  r34.xyz = float3(0.5,0.5,0.5) * r34.xyz;
  r5.w = r11.z + r5.w;
  r5.w = cb0[10].z * r5.w;
  r5.w = saturate(0.5 * r5.w);
  r5.yzw = float3(1,1,1) + -r5.yzw;
  r35.xyz = r9.xyz + r4.xyz;
  r36.xyz = float3(0.5,0.5,0.5) * r35.xyz;
  r11.z = r23.z + r17.w;
  r11.z = cb0[10].z * r11.z;
  r11.z = saturate(0.5 * r11.z);
  r17.yzw = r21.xyz + r15.xyz;
  r17.yzw = float3(0.5,0.5,0.5) * r17.yzw;
  r11.w = r23.w + r11.w;
  r11.w = cb0[10].z * r11.w;
  r11.w = saturate(0.5 * r11.w);
  r11.yzw = float3(1,1,1) + -r11.yzw;
  r23.yzw = r21.xyz + r9.xyz;
  r23.yzw = float3(0.5,0.5,0.5) * r23.yzw;
  r2.yzw = r2.wyz * float3(-1.02332795,-1.02332795,-1.02332795) + r1.xxx;
  r2.yzw = max(float3(0,0,0), r2.yzw);
  r7.yzw = r7.wzy * float3(-1.02332795,-1.02332795,1.02332795) + r8.xxx;
  r7.yzw = max(float3(0,0,0), r7.yzw);
  r1.x = cb0[10].z * r7.y;
  r1.x = r2.y * cb0[10].z + r1.x;
  r13.xyz = r13.wyz * float3(-1.02332795,-1.02332795,1.02332795) + r14.xxx;
  r13.xyz = max(float3(0,0,0), r13.xyz);
  r1.x = r13.x * cb0[10].z + r1.x;
  r19.xyz = r19.wzy * float3(-1.02332795,1.02332795,1.02332795) + r20.xxx;
  r19.xyz = max(float3(0,0,0), r19.xyz);
  r1.x = r19.x * cb0[10].z + r1.x;
  r1.x = saturate(0.25 * r1.x);
  r1.xyzw = float4(1,1,1,1) + -r1.xyzw;
  r25.xyz = r25.xyz + r12.xyz;
  r25.xyz = r25.xyz + r18.xyz;
  r25.xyz = float3(0.25,0.25,0.25) * r25.xyz;
  r3.yzw = r3.yzw * float3(-1.02332795,-1.02332795,1.02332795) + r5.xxx;
  r3.yzw = max(float3(0,0,0), r3.yzw);
  r3.yz = cb0[10].zz * r3.yz;
  r2.yz = r2.zw * cb0[10].zz + r3.yz;
  r2.y = r13.y * cb0[10].z + r2.y;
  r13.xyw = r16.yzw * float3(-1.02332795,1.02332795,1.02332795) + r17.xxx;
  r13.xyw = max(float3(0,0,0), r13.xyw);
  r2.w = cb0[10].z * r13.y;
  r2.y = r13.x * cb0[10].z + r2.y;
  r2.y = saturate(0.25 * r2.y);
  r16.xyz = r29.xyz + r12.xyz;
  r16.xyz = r16.xyz + r15.xyz;
  r16.xyz = float3(0.25,0.25,0.25) * r16.xyz;
  r2.z = r7.z * cb0[10].z + r2.z;
  r10.yzw = r10.zyw * float3(-1.02332795,1.02332795,1.02332795) + r11.xxx;
  r10.yzw = max(float3(0,0,0), r10.yzw);
  r3.yz = cb0[10].zz * r10.zw;
  r2.z = r10.y * cb0[10].z + r2.z;
  r2.z = saturate(0.25 * r2.z);
  r10.yzw = r29.xyz + r6.xyz;
  r10.yzw = r10.yzw + r9.xyz;
  r10.yzw = float3(0.25,0.25,0.25) * r10.yzw;
  r2.w = r13.z * cb0[10].z + r2.w;
  r2.w = r19.y * cb0[10].z + r2.w;
  r13.xyz = r22.zyw * float3(1.02332795,1.02332795,1.02332795) + r23.xxx;
  r13.xyz = max(float3(0,0,0), r13.xyz);
  r2.w = r13.x * cb0[10].z + r2.w;
  r2.w = saturate(0.25 * r2.w);
  r2.xyzw = float4(1,1,1,1) + -r2.xyzw;
  r14.xyz = r14.yzw + r18.xyz;
  r14.xyz = r14.xyz + r21.xyz;
  r14.xyz = float3(0.25,0.25,0.25) * r14.xyz;
  r3.y = r7.w * cb0[10].z + r3.y;
  r3.y = r19.z * cb0[10].z + r3.y;
  r3.y = r13.y * cb0[10].z + r3.y;
  r3.y = saturate(0.25 * r3.y);
  r7.yzw = r32.xyz + r18.xyz;
  r7.yzw = r7.yzw + r21.xyz;
  r7.yzw = float3(0.25,0.25,0.25) * r7.yzw;
  r3.z = r3.w * cb0[10].z + r3.z;
  r3.z = r13.w * cb0[10].z + r3.z;
  r3.z = r13.z * cb0[10].z + r3.z;
  r3.z = saturate(0.25 * r3.z);
  r3.xyz = float3(1,1,1) + -r3.xyz;
  r13.xyz = r35.xyz + r15.xyz;
  r13.xyz = r13.xyz + r21.xyz;
  r13.xyz = float3(0.25,0.25,0.25) * r13.xyz;
  x0[0].x = r2.x;
  x0[1].x = r1.y;
  x0[2].x = r7.x;
  x0[3].x = r1.z;
  x0[4].x = r1.x;
  x0[5].x = r8.y;
  x0[6].x = r4.w;
  x0[7].x = r8.z;
  x0[8].x = r10.x;
  x0[9].x = r1.w;
  x0[10].x = r2.y;
  x0[11].x = r5.y;
  x0[12].x = r2.z;
  x0[13].x = r2.w;
  x0[14].x = r8.w;
  x0[15].x = r3.y;
  x0[16].x = r11.y;
  x0[17].x = r3.x;
  x0[18].x = r5.z;
  x0[19].x = r9.w;
  x0[20].x = r5.w;
  x0[21].x = r3.z;
  x0[22].x = r11.z;
  x0[23].x = r6.w;
  x0[24].x = r11.w;
  x0[25].x = r12.w;
  x1[0].xyz = r0.yzw;
  x1[1].xyz = r24.xyz;
  x1[2].xyz = r12.xyz;
  x1[3].xyz = r26.xyz;
  x1[4].xyz = r25.xyz;
  x1[5].xyz = r27.xyz;
  x1[6].xyz = r6.xyz;
  x1[7].xyz = r28.xyz;
  x1[8].xyz = r18.xyz;
  x1[9].xyz = r30.xyz;
  x1[10].xyz = r16.xyz;
  x1[11].xyz = r31.xyz;
  x1[12].xyz = r10.yzw;
  x1[13].xyz = r14.xyz;
  x1[14].xyz = r33.xyz;
  x1[15].xyz = r7.yzw;
  x1[16].xyz = r20.yzw;
  x1[17].xyz = r4.xyz;
  x1[18].xyz = r34.xyz;
  x1[19].xyz = r15.xyz;
  x1[20].xyz = r36.xyz;
  x1[21].xyz = r13.xyz;
  x1[22].xyz = r17.yzw;
  x1[23].xyz = r9.xyz;
  x1[24].xyz = r23.yzw;
  x1[25].xyz = r21.xyz;
  r1.x = (int)r0.x & 31;
  if (5 == 0) r1.y = 0; else if (5+5 < 32) {   r1.y = (uint)r0.x << (32-(5 + 5)); r1.y = (uint)r1.y >> (32-5);  } else r1.y = (uint)r0.x >> 5;
  r1.z = (uint)r0.x >> 10;
  r1.w = 0;
  r0.xyzw = t0.Load(r1.xyzw).xyzw;
  r2.xyzw = t1.Load(r1.xyzw).xyzw;
  r3.xyzw = t2.Load(r1.xyzw).xyzw;
  r4.xyzw = t3.Load(r1.xyzw).xyzw;
  r5.xyzw = t4.Load(r1.xyzw).xyzw;
  r6.xyzw = t5.Load(r1.xyzw).xyzw;
  r7.xyzw = t6.Load(r1.xyzw).xyzw;
  r8.xyz = (int3)vThreadID.xyz & int3(0x7fffc,0x7fffc,0x7fffc);
  r8.xyz = (int3)r8.xyz + int3(-1,-1,-1);
  r1.w = (uint)vThreadIDInGroupFlattened.x << 2;
  r9.w = 0;
  r8.w = 0;
  while (true) {
    r10.x = cmp((int)r8.w >= 4);
    if (r10.x != 0) break;
    r10.x = (int)r1.w + (int)r8.w;
    r10.y = cmp((uint)r10.x < 216);
    if (r10.y != 0) {
      uiDest.x = (uint)r10.x / 6;
      r12.x = (uint)r10.x % 6;
      r11.x = uiDest.x;
      r12.y = (uint)r11.x % 6;
      uiDest.z = (uint)r10.x / 36;
      r12.z = uiDest.z;
      r10.yzw = (int3)r8.xyz + (int3)r12.xyz;
      r10.zw = (uint2)r10.wz << int2(10,5);
      r10.z = (int)r10.w + (int)r10.z;
      r10.y = (int)r10.y + (int)r10.z;
      r9.x = (int)r10.y & 31;
      if (5 == 0) r9.y = 0; else if (5+5 < 32) {       r9.y = (uint)r10.y << (32-(5 + 5)); r9.y = (uint)r9.y >> (32-5);      } else r9.y = (uint)r10.y >> 5;
      r9.z = (uint)r10.y >> 10;
      r11.xyzw = t0.Load(r9.xyzw).xyzw;
      r12.xyzw = t1.Load(r9.xyzw).xyzw;
      r13.xyzw = t2.Load(r9.xyzw).xyzw;
      r14.xyzw = t3.Load(r9.xyzw).xyzw;
      r15.xyzw = t4.Load(r9.xyzw).xyzw;
      r16.xyzw = t5.Load(r9.xyzw).xyzw;
      r17.xyzw = t6.Load(r9.xyzw).xyzw;
      r12.xyzw = f32tof16(r12.xyzw);
      r13.xyzw = f32tof16(r13.xyzw);
      r14.xyzw = f32tof16(r14.xyzw);
      r15.xyzw = f32tof16(r15.xyzw);
      r16.xyzw = f32tof16(r16.xyzw);
      r17.xyzw = f32tof16(r17.xyzw);
      r11.xyzw = f32tof16(r11.xyzw);
      r18.x = mad((int)r11.y, 0x00010000, (int)r11.x);
      r18.y = mad((int)r12.x, 0x00010000, (int)r11.z);
      r18.z = mad((int)r12.z, 0x00010000, (int)r12.y);
      r18.w = mad((int)r13.x, 0x00010000, (int)r12.w);
      r12.x = mad((int)r13.z, 0x00010000, (int)r13.y);
      r12.y = mad((int)r14.x, 0x00010000, (int)r13.w);
      r12.z = mad((int)r14.z, 0x00010000, (int)r14.y);
      r12.w = mad((int)r15.x, 0x00010000, (int)r14.w);
      r13.x = mad((int)r15.z, 0x00010000, (int)r15.y);
      r13.y = mad((int)r16.x, 0x00010000, (int)r15.w);
      r13.z = mad((int)r16.z, 0x00010000, (int)r16.y);
      r13.w = mad((int)r17.x, 0x00010000, (int)r16.w);
      r9.x = mad((int)r17.z, 0x00010000, (int)r17.y);
      r9.y = mad((int)r11.w, 0x00010000, (int)r17.w);
      g0[r10.x].val[0/4] = r18.x;
      g0[r10.x].val[0/4+1] = r18.y;
      g0[r10.x].val[0/4+2] = r18.z;
      g0[r10.x].val[0/4+3] = r18.w;
      g0[r10.x].val[16/4] = r12.x;
      g0[r10.x].val[16/4+1] = r12.y;
      g0[r10.x].val[16/4+2] = r12.z;
      g0[r10.x].val[16/4+3] = r12.w;
      g0[r10.x].val[32/4] = r13.x;
      g0[r10.x].val[32/4+1] = r13.y;
      g0[r10.x].val[32/4+2] = r13.z;
      g0[r10.x].val[32/4+3] = r13.w;
      g0[r10.x].val[48/4] = r9.x;
      g0[r10.x].val[48/4+1] = r9.y;
    }
    r8.w = (int)r8.w + 1;
  }
  GroupMemoryBarrierWithGroupSync();
  r9.xyz = float3(0.429042995,0.429042995,0.429042995) * r7.yzw;
  r10.x = r5.w;
  r10.yz = r6.xy;
  r11.xyz = float3(0.743125021,0.743125021,0.743125021) * r10.xyz;
  r0.w = 0.125 * r0.w;
  r12.xy = r6.zw;
  r12.z = r7.x;
  r13.xy = r3.zw;
  r13.z = r4.x;
  r14.x = r2.w;
  r14.yz = r3.xy;
  r20.xyzw = r3.zwxy;
  r21.xyzw = r6.zxyw;
  r16.xyzw = r2.xyzw;
  r17.xyzw = r4.xyzw;
  r18.xyzw = r5.xyzw;
  r19.xyzw = r7.xyzw;
  r15.xyzw = r0.xyzw;
  r1.w = 0;
  while (true) {
    r8.w = cmp((int)r1.w >= 26);
    if (r8.w != 0) break;
    r22.xyz = (int3)vThreadID.xyz + (int3)icb[r1.w+0].xyz;
    r22.xyz = (int3)r22.xyz;
    r22.xyz = max(float3(0,0,0), r22.xyz);
    r22.xyz = min(float3(31,31,31), r22.xyz);
    r22.xyz = (int3)r22.xyz;
    r22.xyz = (int3)-r8.xyz + (int3)r22.xyz;
    r8.w = mad((int)r22.y, 6, (int)r22.x);
    r8.w = mad((int)r22.z, 36, (int)r8.w);
    r22.x = g0[r8.w].val[0/4];
    r22.y = g0[r8.w].val[0/4+1];
    r22.z = g0[r8.w].val[0/4+2];
    r22.w = g0[r8.w].val[0/4+3];
    r23.x = g0[r8.w].val[16/4];
    r23.y = g0[r8.w].val[16/4+1];
    r23.z = g0[r8.w].val[16/4+2];
    r23.w = g0[r8.w].val[16/4+3];
    r24.x = g0[r8.w].val[32/4];
    r24.y = g0[r8.w].val[32/4+1];
    r24.z = g0[r8.w].val[32/4+2];
    r24.w = g0[r8.w].val[32/4+3];
    r25.x = g0[r8.w].val[48/4];
    r25.y = g0[r8.w].val[48/4+1];
    r26.xyzw = (uint4)r22.xyzw >> int4(16,16,16,16);
    r27.xz = f16tof32(r22.xy);
    r27.y = f16tof32(r26.x);
    r26.xz = f16tof32(r26.yz);
    r26.y = f16tof32(r22.z);
    r22.x = f16tof32(r22.w);
    r22.y = f16tof32(r26.w);
    r22.z = f16tof32(r23.x);
    r28.xyzw = (uint4)r23.xyzw >> int4(16,16,16,16);
    r29.xz = f16tof32(r28.xy);
    r29.y = f16tof32(r23.y);
    r23.xz = f16tof32(r23.zw);
    r23.y = f16tof32(r28.z);
    r30.xyzw = (uint4)r24.xyzw >> int4(16,16,16,16);
    r28.x = f16tof32(r28.w);
    r28.y = f16tof32(r24.x);
    r28.z = f16tof32(r30.x);
    r24.xz = f16tof32(r24.yz);
    r24.y = f16tof32(r30.y);
    r30.xz = f16tof32(r30.zw);
    r30.y = f16tof32(r24.w);
    r25.zw = (uint2)r25.xy >> int2(16,16);
    r31.xyzw = f16tof32(r25.xzyw);
    r25.xyz = (int3)icb[r1.w+0].xyz;
    r8.w = dot(r25.xyz, r25.xyz);
    r8.w = 1 / r8.w;
    r9.w = 0.00800000038 * r8.w;
    r10.w = x0[r1.w+0].x;
    r9.w = r10.w * r9.w;
    r25.xyz = icb[r1.w+26].yzx * icb[r1.w+26].yzy;
    r32.xy = icb[r1.w+26].yx * icb[r1.w+26].zz;
    r31.xyz = float3(0.429042995,0.429042995,0.429042995) * r31.xyz;
    r11.w = icb[r1.w+26].x * icb[r1.w+26].x + -r25.x;
    r33.xyz = r25.yyy * r24.xyz;
    r33.xyz = float3(0.743125021,0.743125021,0.743125021) * r33.xyz;
    r31.xyz = r31.xyz * r11.www + r33.xyz;
    r27.xyz = r27.xyz * float3(0.886227012,0.886227012,0.886227012) + r31.xyz;
    r24.xyz = -r24.xyz * float3(0.247707993,0.247707993,0.247707993) + r27.xyz;
    r27.xyz = r32.yyy * r30.xyz;
    r23.xyz = r23.xyz * r25.zzz + r27.xyz;
    r23.xyz = r28.xyz * r32.xxx + r23.xyz;
    r23.xyz = r23.xyz * float3(0.85808599,0.85808599,0.85808599) + r24.xyz;
    r24.xyz = icb[r1.w+26].yyy * r26.xyz;
    r24.xyz = r29.xyz * icb[r1.w+26].xxx + r24.xyz;
    r22.xyz = r22.xyz * icb[r1.w+26].zzz + r24.xyz;
    r22.xyz = r22.xyz * float3(1.02332795,1.02332795,1.02332795) + r23.xyz;
    r22.xyz = max(float3(0,0,0), r22.xyz);
    r23.xyz = r25.yyy * r11.xyz;
    r23.xyz = r9.xyz * r11.www + r23.xyz;
    r23.xyz = r0.xyz * float3(0.886227012,0.886227012,0.886227012) + r23.xyz;
    r23.xyz = -r10.xyz * float3(0.247707993,0.247707993,0.247707993) + r23.xyz;
    r24.xyz = r32.yyy * r12.xyz;
    r24.xyz = r4.yzw * r25.zzz + r24.xyz;
    r24.xyz = r5.xyz * r32.xxx + r24.xyz;
    r23.xyz = r24.xyz * float3(0.85808599,0.85808599,0.85808599) + r23.xyz;
    r24.xyz = -icb[r1.w+26].yyy * r2.xyz;
    r24.xyz = r13.xyz * -icb[r1.w+26].xxx + r24.xyz;
    r24.xyz = r14.xyz * -icb[r1.w+26].zzz + r24.xyz;
    r23.xyz = r24.xyz * float3(1.02332795,1.02332795,1.02332795) + r23.xyz;
    r23.xyz = max(float3(0,0,0), r23.xyz);
    r23.xyz = r23.xyz * r8.www;
    r23.xyz = float3(0.00800000038,0.00800000038,0.00800000038) * r23.xyz;
    r8.w = 1 + -r10.w;
    r24.xyz = x1[r1.w+0].xyz;
    r23.xyz = r24.xyz * r23.xyz;
    r10.w = r8.w * r8.w;
    r8.w = r10.w * r8.w;
    r23.xyz = r23.xyz * r8.www;
    r23.xyz = cb0[10].www * r23.xyz;
    r22.xyz = r22.xyz * r9.www + r23.xyz;
    r15.xyz = r22.xyz * float3(0.282094985,0.282094985,0.282094985) + r15.xyz;
    r23.xyzw = icb[r1.w+26].yzxx * float4(0.488602996,0.488602996,0.488602996,1.09254801);
    r16.xyz = r22.xyz * r23.xxx + r16.xyz;
    r24.x = r16.w;
    r24.yz = r20.zw;
    r24.xyz = r22.xyz * r23.yyy + r24.xyz;
    r20.z = r17.x;
    r23.xyz = r22.xyz * r23.zzz + r20.xyz;
    r25.xy = icb[r1.w+26].yz * r23.ww;
    r17.yzw = r22.xyz * r25.xxx + r17.yzw;
    r25.xz = icb[r1.w+26].yz * float2(1.09254801,3);
    r8.w = icb[r1.w+26].z * r25.x;
    r18.xyz = r22.xyz * r8.www + r18.xyz;
    r26.xy = r21.xw;
    r26.z = r19.x;
    r25.xyw = r22.xyz * r25.yyy + r26.xyz;
    r8.w = r25.z * icb[r1.w+26].z + -1;
    r8.w = 0.315391988 * r8.w;
    r21.x = r18.w;
    r26.xyz = r22.xyz * r8.www + r21.xyz;
    r8.w = 0.546274006 * r11.w;
    r19.yzw = r22.xyz * r8.www + r19.yzw;
    r15.w = r31.w * icb[r1.w+0].w + r15.w;
    r1.w = (int)r1.w + 1;
    r20.zw = r24.yz;
    r20.xy = r23.xy;
    r21.xw = r25.xy;
    r16.w = r24.x;
    r17.x = r23.z;
    r18.w = r26.x;
    r21.yz = r26.yz;
    r19.x = r25.w;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzz, r15.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r1.xyzz, r16.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u2.xyzw, r1.xyzz, r20.zwxy
// No code for instruction (needs manual fix):
store_uav_typed u3.xyzw, r1.xyzz, r17.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u4.xyzw, r1.xyzz, r18.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u5.xyzw, r1.xyzz, r21.yzxw
// No code for instruction (needs manual fix):
store_uav_typed u6.xyzw, r1.xyzz, r19.xyzw
  return;
}