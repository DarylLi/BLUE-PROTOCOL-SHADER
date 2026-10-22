// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[14]; } g0[216];
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
  const float4 icb[] = { { -1, -1, -1, 0},
                              { -1, -1, 0, 0},
                              { -1, -1, 1, 0},
                              { -1, 0, -1, 0},
                              { -1, 0, 0, 0},
                              { -1, 0, 1, 0},
                              { -1, 1, -1, 0},
                              { -1, 1, 0, 0},
                              { -1, 1, 1, 0},
                              { 0, -1, -1, 0},
                              { 0, -1, 0, 0},
                              { 0, -1, 1, 0},
                              { 0, 0, -1, 0},
                              { 0, 0, 1, 0},
                              { 0, 1, -1, 0},
                              { 0, 1, 0, 0},
                              { 0, 1, 1, 0},
                              { 1, -1, -1, 0},
                              { 1, -1, 0, 0},
                              { 1, -1, 1, 0},
                              { 1, 0, -1, 0},
                              { 1, 0, 0, 0},
                              { 1, 0, 1, 0},
                              { 1, 1, -1, 0},
                              { 1, 1, 0, 0},
                              { 1, 1, 1, 0},
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[26];
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
  r1.xyzw = t7.Load(r1.xyzw).xyzw;
  r2.xyzw = float4(0.886227012,-0.707106709,-0.707106709,-0.707106709) * r1.xwyz;
  r0.y = dot(r1.wyz, float3(-0.577350199,-0.577350199,-0.577350199));
  r0.y = r0.y * 1.02332795 + r2.x;
  r0.y = max(0, r0.y);
  r0.y = saturate(cb0[10].z * r0.y);
  r3.xyz = (int3)vThreadID.xyz + int3(1,0,0);
  r3.xyz = min(int3(31,31,31), (int3)r3.xyz);
  r0.z = (uint)r3.y << 5;
  r0.z = mad((int)r3.z, 1024, (int)r0.z);
  r0.z = (int)r0.z + (int)r3.x;
  r3.x = (int)r0.z & 31;
  if (5 == 0) r3.y = 0; else if (5+5 < 32) {   r3.y = (uint)r0.z << (32-(5 + 5)); r3.y = (uint)r3.y >> (32-5);  } else r3.y = (uint)r0.z >> 5;
  r3.z = (uint)r0.z >> 10;
  r3.w = 0;
  r3.xyzw = t7.Load(r3.xyzw).xyzw;
  r4.xyzw = float4(0.886227012,-0.707106709,-0.707106709,0.707106709) * r3.xyzw;
  r0.z = dot(r3.wyz, float3(0.577350199,-0.577350199,-0.577350199));
  r0.z = r0.z * 1.02332795 + r4.x;
  r0.z = max(0, r0.z);
  r0.z = saturate(cb0[10].z * r0.z);
  r5.xyz = (int3)vThreadID.xyz + int3(0,2,0);
  r5.xyz = min(int3(31,31,31), (int3)r5.xyz);
  r0.w = (uint)r5.y << 5;
  r0.w = mad((int)r5.z, 1024, (int)r0.w);
  r0.w = (int)r0.w + (int)r5.x;
  r5.x = (int)r0.w & 31;
  if (5 == 0) r5.y = 0; else if (5+5 < 32) {   r5.y = (uint)r0.w << (32-(5 + 5)); r5.y = (uint)r5.y >> (32-5);  } else r5.y = (uint)r0.w >> 5;
  r5.z = (uint)r0.w >> 10;
  r5.w = 0;
  r5.xyzw = t7.Load(r5.xyzw).xyzw;
  r6.xyzw = float4(0.886227012,-0.707106709,-0.707106709,0.707106709) * r5.xwzy;
  r0.w = dot(r5.wzy, float3(-0.577350199,-0.577350199,0.577350199));
  r0.w = r0.w * 1.02332795 + r6.x;
  r0.w = max(0, r0.w);
  r0.w = saturate(cb0[10].z * r0.w);
  r0.yzw = float3(1,1,1) + -r0.yzw;
  r7.xyz = (int3)vThreadID.xyz + int3(1,2,0);
  r7.xyz = min(int3(31,31,31), (int3)r7.xyz);
  r1.x = (uint)r7.y << 5;
  r1.x = mad((int)r7.z, 1024, (int)r1.x);
  r1.x = (int)r1.x + (int)r7.x;
  r7.x = (int)r1.x & 31;
  if (5 == 0) r7.y = 0; else if (5+5 < 32) {   r7.y = (uint)r1.x << (32-(5 + 5)); r7.y = (uint)r7.y >> (32-5);  } else r7.y = (uint)r1.x >> 5;
  r7.z = (uint)r1.x >> 10;
  r7.w = 0;
  r7.xyzw = t7.Load(r7.xyzw).xyzw;
  r8.xyzw = float4(0.886227012,0.707106709,-0.707106709,0.707106709) * r7.xyzw;
  r1.x = dot(r7.wyz, float3(0.577350199,0.577350199,-0.577350199));
  r1.x = r1.x * 1.02332795 + r8.x;
  r1.x = max(0, r1.x);
  r1.x = saturate(cb0[10].z * r1.x);
  r9.xyz = (int3)vThreadID.xyz + int3(0,0,4);
  r9.xyz = min(int3(31,31,31), (int3)r9.xyz);
  r3.x = (uint)r9.y << 5;
  r3.x = mad((int)r9.z, 1024, (int)r3.x);
  r3.x = (int)r3.x + (int)r9.x;
  r9.x = (int)r3.x & 31;
  if (5 == 0) r9.y = 0; else if (5+5 < 32) {   r9.y = (uint)r3.x << (32-(5 + 5)); r9.y = (uint)r9.y >> (32-5);  } else r9.y = (uint)r3.x >> 5;
  r9.z = (uint)r3.x >> 10;
  r9.w = 0;
  r9.xyzw = t7.Load(r9.xyzw).xyzw;
  r10.xyzw = float4(0.886227012,-0.707106709,-0.707106709,0.707106709) * r9.xwyz;
  r3.x = dot(r9.wyz, float3(-0.577350199,-0.577350199,0.577350199));
  r3.x = r3.x * 1.02332795 + r10.x;
  r3.x = max(0, r3.x);
  r3.x = saturate(cb0[10].z * r3.x);
  r11.xyz = (int3)vThreadID.xyz + int3(1,0,4);
  r11.xyz = min(int3(31,31,31), (int3)r11.xyz);
  r5.x = (uint)r11.y << 5;
  r5.x = mad((int)r11.z, 1024, (int)r5.x);
  r5.x = (int)r5.x + (int)r11.x;
  r11.x = (int)r5.x & 31;
  if (5 == 0) r11.y = 0; else if (5+5 < 32) {   r11.y = (uint)r5.x << (32-(5 + 5)); r11.y = (uint)r11.y >> (32-5);  } else r11.y = (uint)r5.x >> 5;
  r11.z = (uint)r5.x >> 10;
  r11.w = 0;
  r11.xyzw = t7.Load(r11.xyzw).xyzw;
  r12.xyzw = float4(0.886227012,-0.707106709,0.707106709,0.707106709) * r11.xyzw;
  r5.x = dot(r11.wzy, float3(0.577350199,0.577350199,-0.577350199));
  r5.x = r5.x * 1.02332795 + r12.x;
  r5.x = max(0, r5.x);
  r5.x = saturate(cb0[10].z * r5.x);
  r5.x = 1 + -r5.x;
  r13.xyz = (int3)vThreadID.xyz + int3(0,2,4);
  r13.xyz = min(int3(31,31,31), (int3)r13.xyz);
  r7.x = (uint)r13.y << 5;
  r7.x = mad((int)r13.z, 1024, (int)r7.x);
  r7.x = (int)r7.x + (int)r13.x;
  r13.x = (int)r7.x & 31;
  if (5 == 0) r13.y = 0; else if (5+5 < 32) {   r13.y = (uint)r7.x << (32-(5 + 5)); r13.y = (uint)r13.y >> (32-5);  } else r13.y = (uint)r7.x >> 5;
  r13.z = (uint)r7.x >> 10;
  r13.w = 0;
  r13.xyzw = t7.Load(r13.xyzw).xyzw;
  r14.xyzw = float4(0.886227012,-0.707106709,0.707106709,0.707106709) * r13.xwzy;
  r7.x = dot(r13.wyz, float3(-0.577350199,0.577350199,0.577350199));
  r7.x = r7.x * 1.02332795 + r14.x;
  r7.x = max(0, r7.x);
  r7.x = saturate(cb0[10].z * r7.x);
  r7.x = 1 + -r7.x;
  r15.xyz = (int3)vThreadID.xyz + int3(1,2,4);
  r15.xyz = min(int3(31,31,31), (int3)r15.xyz);
  r9.x = (uint)r15.y << 5;
  r9.x = mad((int)r15.z, 1024, (int)r9.x);
  r9.x = (int)r9.x + (int)r15.x;
  r15.x = (int)r9.x & 31;
  if (5 == 0) r15.y = 0; else if (5+5 < 32) {   r15.y = (uint)r9.x << (32-(5 + 5)); r15.y = (uint)r15.y >> (32-5);  } else r15.y = (uint)r9.x >> 5;
  r15.z = (uint)r9.x >> 10;
  r15.w = 0;
  r15.xyzw = t7.Load(r15.xyzw).xyzw;
  r16.xyzw = float4(0.886227012,0.707106709,0.707106709,0.707106709) * r15.xyzw;
  r9.x = dot(r15.wyz, float3(0.577350199,0.577350199,0.577350199));
  r9.x = r9.x * 1.02332795 + r16.x;
  r9.x = max(0, r9.x);
  r9.x = saturate(cb0[10].z * r9.x);
  r9.x = 1 + -r9.x;
  r2.yzw = r2.yyz + r2.zww;
  r2.yzw = r2.yzw * float3(1.02332795,1.02332795,1.02332795) + r2.xxx;
  r2.yzw = max(float3(0,0,0), r2.yzw);
  r10.yzw = r10.yyz + r10.zww;
  r10.yzw = r10.yzw * float3(1.02332795,1.02332795,1.02332795) + r10.xxx;
  r10.yzw = max(float3(0,0,0), r10.yzw);
  r2.y = r10.y + r2.y;
  r2.y = cb0[10].z * r2.y;
  r2.y = saturate(0.5 * r2.y);
  r6.yzw = r6.yyw + r6.zwz;
  r6.yzw = r6.yzw * float3(1.02332795,1.02332795,1.02332795) + r6.xxx;
  r6.yzw = max(float3(0,0,0), r6.yzw);
  r2.z = r6.y + r2.z;
  r2.z = cb0[10].z * r2.z;
  r2.z = saturate(0.5 * r2.z);
  r14.yzw = r14.yyw + r14.zwz;
  r14.yzw = r14.yzw * float3(1.02332795,1.02332795,1.02332795) + r14.xxx;
  r14.yzw = max(float3(0,0,0), r14.yzw);
  r6.y = r14.y + r10.z;
  r6.y = cb0[10].z * r6.y;
  r6.y = saturate(0.5 * r6.y);
  r6.z = r14.z + r6.z;
  r6.z = cb0[10].z * r6.z;
  r6.z = saturate(0.5 * r6.z);
  r4.yzw = r4.yww + r4.zyz;
  r4.yzw = r4.yzw * float3(1.02332795,1.02332795,1.02332795) + r4.xxx;
  r4.yzw = max(float3(0,0,0), r4.yzw);
  r2.w = r4.y + r2.w;
  r2.w = cb0[10].z * r2.w;
  r2.w = saturate(0.5 * r2.w);
  r12.yzw = r12.yww + r12.zyz;
  r12.yzw = r12.yzw * float3(1.02332795,1.02332795,1.02332795) + r12.xxx;
  r12.yzw = max(float3(0,0,0), r12.yzw);
  r4.y = r12.y + r10.w;
  r4.y = cb0[10].z * r4.y;
  r4.y = saturate(0.5 * r4.y);
  r8.yzw = r8.yww + r8.zzy;
  r8.yzw = r8.yzw * float3(1.02332795,1.02332795,1.02332795) + r8.xxx;
  r8.yzw = max(float3(0,0,0), r8.yzw);
  r6.w = r8.y + r6.w;
  r6.w = cb0[10].z * r6.w;
  r6.w = saturate(0.5 * r6.w);
  r6.yzw = float3(1,1,1) + -r6.yzw;
  r10.yzw = r16.yww + r16.zzy;
  r10.yzw = r10.yzw * float3(1.02332795,1.02332795,1.02332795) + r16.xxx;
  r10.yzw = max(float3(0,0,0), r10.yzw);
  r8.y = r14.w + r10.y;
  r8.y = cb0[10].z * r8.y;
  r8.y = saturate(0.5 * r8.y);
  r4.z = r12.z + r4.z;
  r4.z = cb0[10].z * r4.z;
  r4.z = saturate(0.5 * r4.z);
  r4.w = r8.z + r4.w;
  r4.w = cb0[10].z * r4.w;
  r4.w = saturate(0.5 * r4.w);
  r4.yzw = float3(1,1,1) + -r4.yzw;
  r8.z = r12.w + r10.z;
  r8.z = cb0[10].z * r8.z;
  r8.z = saturate(0.5 * r8.z);
  r8.w = r10.w + r8.w;
  r8.w = cb0[10].z * r8.w;
  r8.w = saturate(0.5 * r8.w);
  r8.yzw = float3(1,1,1) + -r8.yzw;
  r1.yzw = r1.wyz * float3(-1.02332795,-1.02332795,-1.02332795) + r2.xxx;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r5.yzw = r5.wzy * float3(-1.02332795,-1.02332795,1.02332795) + r6.xxx;
  r5.yzw = max(float3(0,0,0), r5.yzw);
  r2.x = cb0[10].z * r5.y;
  r1.y = r1.y * cb0[10].z + r2.x;
  r9.yzw = r9.wyz * float3(-1.02332795,-1.02332795,1.02332795) + r10.xxx;
  r9.yzw = max(float3(0,0,0), r9.yzw);
  r1.y = r9.y * cb0[10].z + r1.y;
  r10.xyz = r13.wzy * float3(-1.02332795,1.02332795,1.02332795) + r14.xxx;
  r10.xyz = max(float3(0,0,0), r10.xyz);
  r1.y = r10.x * cb0[10].z + r1.y;
  r1.y = saturate(0.25 * r1.y);
  r3.yzw = r3.yzw * float3(-1.02332795,-1.02332795,1.02332795) + r4.xxx;
  r3.yzw = max(float3(0,0,0), r3.yzw);
  r3.yz = cb0[10].zz * r3.yz;
  r1.zw = r1.zw * cb0[10].zz + r3.yz;
  r1.z = r9.z * cb0[10].z + r1.z;
  r11.xyz = r11.yzw * float3(-1.02332795,1.02332795,1.02332795) + r12.xxx;
  r11.xyz = max(float3(0,0,0), r11.xyz);
  r2.x = cb0[10].z * r11.y;
  r1.z = r11.x * cb0[10].z + r1.z;
  r1.z = saturate(0.25 * r1.z);
  r1.w = r5.z * cb0[10].z + r1.w;
  r7.yzw = r7.zyw * float3(-1.02332795,1.02332795,1.02332795) + r8.xxx;
  r7.yzw = max(float3(0,0,0), r7.yzw);
  r3.yz = cb0[10].zz * r7.zw;
  r1.w = r7.y * cb0[10].z + r1.w;
  r1.w = saturate(0.25 * r1.w);
  r1.xyzw = float4(1,1,1,1) + -r1.xyzw;
  r2.x = r9.w * cb0[10].z + r2.x;
  r2.x = r10.y * cb0[10].z + r2.x;
  r7.yzw = r15.zyw * float3(1.02332795,1.02332795,1.02332795) + r16.xxx;
  r7.yzw = max(float3(0,0,0), r7.yzw);
  r2.x = r7.y * cb0[10].z + r2.x;
  r2.x = saturate(0.25 * r2.x);
  r2.xyzw = float4(1,1,1,1) + -r2.xyzw;
  r3.y = r5.w * cb0[10].z + r3.y;
  r3.y = r10.z * cb0[10].z + r3.y;
  r3.y = r7.z * cb0[10].z + r3.y;
  r3.y = saturate(0.25 * r3.y);
  r3.z = r3.w * cb0[10].z + r3.z;
  r3.z = r11.z * cb0[10].z + r3.z;
  r3.z = r7.w * cb0[10].z + r3.z;
  r3.z = saturate(0.25 * r3.z);
  r3.xyz = float3(1,1,1) + -r3.xyz;
  x0[0].x = r0.y;
  x0[1].x = r2.y;
  x0[2].x = r3.x;
  x0[3].x = r2.z;
  x0[4].x = r1.y;
  x0[5].x = r6.y;
  x0[6].x = r0.w;
  x0[7].x = r6.z;
  x0[8].x = r7.x;
  x0[9].x = r2.w;
  x0[10].x = r1.z;
  x0[11].x = r4.y;
  x0[12].x = r1.w;
  x0[13].x = r2.x;
  x0[14].x = r6.w;
  x0[15].x = r3.y;
  x0[16].x = r8.y;
  x0[17].x = r0.z;
  x0[18].x = r4.z;
  x0[19].x = r5.x;
  x0[20].x = r4.w;
  x0[21].x = r3.z;
  x0[22].x = r8.z;
  x0[23].x = r1.x;
  x0[24].x = r8.w;
  x0[25].x = r9.x;
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
  r9.xyz = r0.xyz;
  r14.xyzw = r3.zwxy;
  r15.xyzw = r6.zxyw;
  r10.xyzw = r2.xyzw;
  r11.xyzw = r4.xyzw;
  r12.xyzw = r5.xyzw;
  r13.xyzw = r7.xyzw;
  r1.w = 0;
  while (true) {
    r8.w = cmp((int)r1.w >= 26);
    if (r8.w != 0) break;
    r16.xyz = (int3)vThreadID.xyz + (int3)icb[r1.w+0].xyz;
    r16.xyz = (int3)r16.xyz;
    r16.xyz = max(float3(0,0,0), r16.xyz);
    r16.xyz = min(float3(31,31,31), r16.xyz);
    r16.xyz = (int3)r16.xyz;
    r16.xyz = (int3)-r8.xyz + (int3)r16.xyz;
    r8.w = mad((int)r16.y, 6, (int)r16.x);
    r8.w = mad((int)r16.z, 36, (int)r8.w);
    r16.x = g0[r8.w].val[0/4];
    r16.y = g0[r8.w].val[0/4+1];
    r16.z = g0[r8.w].val[0/4+2];
    r16.w = g0[r8.w].val[0/4+3];
    r17.x = g0[r8.w].val[16/4];
    r17.y = g0[r8.w].val[16/4+1];
    r17.z = g0[r8.w].val[16/4+2];
    r17.w = g0[r8.w].val[16/4+3];
    r18.x = g0[r8.w].val[32/4];
    r18.y = g0[r8.w].val[32/4+1];
    r18.z = g0[r8.w].val[32/4+2];
    r18.w = g0[r8.w].val[32/4+3];
    r19.x = g0[r8.w].val[48/4];
    r19.y = g0[r8.w].val[48/4+1];
    r20.xyzw = (uint4)r16.xyzw >> int4(16,16,16,16);
    r21.xz = f16tof32(r16.xy);
    r21.y = f16tof32(r20.x);
    r20.xz = f16tof32(r20.yz);
    r20.y = f16tof32(r16.z);
    r16.x = f16tof32(r16.w);
    r16.y = f16tof32(r20.w);
    r16.z = f16tof32(r17.x);
    r22.xyzw = (uint4)r17.xyzw >> int4(16,16,16,16);
    r23.xz = f16tof32(r22.xy);
    r23.y = f16tof32(r17.y);
    r17.xz = f16tof32(r17.zw);
    r17.y = f16tof32(r22.z);
    r24.xyzw = (uint4)r18.xyzw >> int4(16,16,16,16);
    r22.x = f16tof32(r22.w);
    r22.y = f16tof32(r18.x);
    r22.z = f16tof32(r24.x);
    r18.xz = f16tof32(r18.yz);
    r18.y = f16tof32(r24.y);
    r24.xz = f16tof32(r24.zw);
    r24.y = f16tof32(r18.w);
    r8.w = (uint)r19.x >> 16;
    r19.xz = f16tof32(r19.xy);
    r19.y = f16tof32(r8.w);
    r25.xyz = (int3)icb[r1.w+0].xyz;
    r8.w = dot(r25.xyz, r25.xyz);
    r8.w = 1 / r8.w;
    r8.w = 0.00800000038 * r8.w;
    r9.w = x0[r1.w+0].x;
    r8.w = r9.w * r8.w;
    r25.xyz = icb[r1.w+26].yzx * icb[r1.w+26].yzy;
    r26.xy = icb[r1.w+26].yx * icb[r1.w+26].zz;
    r19.xyz = float3(0.429042995,0.429042995,0.429042995) * r19.xyz;
    r9.w = icb[r1.w+26].x * icb[r1.w+26].x + -r25.x;
    r25.xyw = r25.yyy * r18.xyz;
    r25.xyw = float3(0.743125021,0.743125021,0.743125021) * r25.xyw;
    r19.xyz = r19.xyz * r9.www + r25.xyw;
    r19.xyz = r21.xyz * float3(0.886227012,0.886227012,0.886227012) + r19.xyz;
    r18.xyz = -r18.xyz * float3(0.247707993,0.247707993,0.247707993) + r19.xyz;
    r19.xyz = r26.yyy * r24.xyz;
    r17.xyz = r17.xyz * r25.zzz + r19.xyz;
    r17.xyz = r22.xyz * r26.xxx + r17.xyz;
    r17.xyz = r17.xyz * float3(0.85808599,0.85808599,0.85808599) + r18.xyz;
    r18.xyz = icb[r1.w+26].yyy * r20.xyz;
    r18.xyz = r23.xyz * icb[r1.w+26].xxx + r18.xyz;
    r16.xyz = r16.xyz * icb[r1.w+26].zzz + r18.xyz;
    r16.xyz = r16.xyz * float3(1.02332795,1.02332795,1.02332795) + r17.xyz;
    r16.xyz = max(float3(0,0,0), r16.xyz);
    r16.xyz = r16.xyz * r8.www;
    r9.xyz = r16.xyz * float3(0.282094985,0.282094985,0.282094985) + r9.xyz;
    r17.xyzw = icb[r1.w+26].yzxx * float4(0.488602996,0.488602996,0.488602996,1.09254801);
    r10.xyz = r16.xyz * r17.xxx + r10.xyz;
    r18.x = r10.w;
    r18.yz = r14.zw;
    r18.xyz = r16.xyz * r17.yyy + r18.xyz;
    r14.z = r11.x;
    r17.xyz = r16.xyz * r17.zzz + r14.xyz;
    r19.xy = icb[r1.w+26].yz * r17.ww;
    r11.yzw = r16.xyz * r19.xxx + r11.yzw;
    r19.xz = icb[r1.w+26].yz * float2(1.09254801,3);
    r8.w = icb[r1.w+26].z * r19.x;
    r12.xyz = r16.xyz * r8.www + r12.xyz;
    r20.xy = r15.xw;
    r20.z = r13.x;
    r19.xyw = r16.xyz * r19.yyy + r20.xyz;
    r8.w = r19.z * icb[r1.w+26].z + -1;
    r8.w = 0.315391988 * r8.w;
    r15.x = r12.w;
    r20.xyz = r16.xyz * r8.www + r15.xyz;
    r8.w = 0.546274006 * r9.w;
    r13.yzw = r16.xyz * r8.www + r13.yzw;
    r1.w = (int)r1.w + 1;
    r14.zw = r18.yz;
    r14.xy = r17.xy;
    r15.xw = r19.xy;
    r10.w = r18.x;
    r11.x = r17.z;
    r12.w = r20.x;
    r15.yz = r20.yz;
    r13.x = r19.w;
  }
  r0.xyz = r9.xyz;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzz, r0.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r1.xyzz, r10.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u2.xyzw, r1.xyzz, r14.zwxy
// No code for instruction (needs manual fix):
store_uav_typed u3.xyzw, r1.xyzz, r11.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u4.xyzw, r1.xyzz, r12.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u5.xyzw, r1.xyzz, r15.yzxw
// No code for instruction (needs manual fix):
store_uav_typed u6.xyzw, r1.xyzz, r13.xyzw
  return;
}