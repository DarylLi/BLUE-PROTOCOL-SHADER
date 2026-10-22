// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[14]; } g0[216];
Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);




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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xy = (uint2)vThreadID.zy << int2(10,5);
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x + (int)vThreadID.x;
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
  r0.w = 0.125 * r0.w;
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
  r14.xyzw = r3.zwxy;
  r15.xyzw = r6.zxyw;
  r10.xyzw = r2.xyzw;
  r11.xyzw = r4.xyzw;
  r12.xyzw = r5.xyzw;
  r13.xyzw = r7.xyzw;
  r9.xyzw = r0.xyzw;
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
    r19.zw = (uint2)r19.xy >> int2(16,16);
    r25.xyzw = f16tof32(r19.xzyw);
    r19.xyz = (int3)icb[r1.w+0].xyz;
    r8.w = dot(r19.xyz, r19.xyz);
    r8.w = 1 / r8.w;
    r8.w = 0.00800000038 * r8.w;
    r19.xyz = icb[r1.w+26].yzx * icb[r1.w+26].yzy;
    r26.xy = icb[r1.w+26].yx * icb[r1.w+26].zz;
    r25.xyz = float3(0.429042995,0.429042995,0.429042995) * r25.xyz;
    r16.w = icb[r1.w+26].x * icb[r1.w+26].x + -r19.x;
    r19.xyw = r19.yyy * r18.xyz;
    r19.xyw = float3(0.743125021,0.743125021,0.743125021) * r19.xyw;
    r19.xyw = r25.xyz * r16.www + r19.xyw;
    r19.xyw = r21.xyz * float3(0.886227012,0.886227012,0.886227012) + r19.xyw;
    r18.xyz = -r18.xyz * float3(0.247707993,0.247707993,0.247707993) + r19.xyw;
    r19.xyw = r26.yyy * r24.xyz;
    r17.xyz = r17.xyz * r19.zzz + r19.xyw;
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
    r8.w = 0.546274006 * r16.w;
    r13.yzw = r16.xyz * r8.www + r13.yzw;
    r9.w = r25.w * icb[r1.w+0].w + r9.w;
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
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzz, r9.xyzw
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