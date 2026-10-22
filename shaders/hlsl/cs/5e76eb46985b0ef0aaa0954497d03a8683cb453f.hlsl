// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
  const float4 icb[] = { { 0.514720, -0.491630, 0.354330, 0},
                              { -0.351160, -0.011300, -0.399220, 0},
                              { -0.807030, 0.422690, 0.060610, 0},
                              { 0.649460, -0.412340, -0.644510, 0},
                              { 0.664780, -0.052620, 0.612390, 0},
                              { 0.517240, 0.507870, 0.134600, 0},
                              { -0.349630, 0.503490, -0.255800, 0},
                              { -0.064360, -0.004620, -0.994820, 0},
                              { -0.065830, 0.945590, -0.295870, 0},
                              { -0.064520, 0.509990, 0.476190, 0},
                              { 0.007070, -0.054360, 0.409550, 0},
                              { -0.038030, -0.856440, 0.214460, 0},
                              { 0.092320, -0.365100, -0.590580, 0},
                              { 0.612930, -0.006900, -0.082380, 0},
                              { -0.482650, -0.496180, -0.591320, 0},
                              { -0.372320, -0.487380, 0.412180, 0} };
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xy = (uint2)vThreadID.zy << int2(10,5);
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x + (int)vThreadID.x;
  r0.yzw = (uint3)vThreadID.xyz;
  r1.x = (int)r0.x & 31;
  if (5 == 0) r1.y = 0; else if (5+5 < 32) {   r1.y = (uint)r0.x << (32-(5 + 5)); r1.y = (uint)r1.y >> (32-5);  } else r1.y = (uint)r0.x >> 5;
  r1.z = (uint)r0.x >> 10;
  r1.w = 0;
  r2.xyzw = t0.Load(r1.xyzw).xyzw;
  r3.xyzw = t1.Load(r1.xyzw).xyzw;
  r4.xyzw = t2.Load(r1.xyzw).xyzw;
  r5.xyzw = t3.Load(r1.xyzw).xyzw;
  r6.xyzw = t4.Load(r1.xyzw).xyzw;
  r7.xyzw = t5.Load(r1.xyzw).xyzw;
  r8.xyzw = t6.Load(r1.xyzw).xyzw;
  r0.x = 0.0625 * cb0[9].w;
  r9.xyz = asint(cb0[8].xyz);
  r9.xyz = -r9.xyz + r0.yzw;
  r1.w = abs(r9.y) * 5 + abs(r9.x);
  r1.w = abs(r9.z) * 3 + r1.w;
  r1.w = 21 + r1.w;
  r1.w = (int)r1.w;
  r1.w = (int)r1.w & 15;
  r9.x = abs(r9.x) + abs(r9.y);
  r9.x = r9.x + abs(r9.z);
  r9.x = 456 + r9.x;
  r9.x = (int)r9.x;
  r9.x = (int)r9.x & 15;
  r9.y = dot(icb[r1.w+0].xyz, icb[r1.w+0].xyz);
  r9.y = rsqrt(r9.y);
  r9.yzw = icb[r1.w+0].xyz * r9.yyy;
  r1.w = dot(icb[r9.x+0].xyz, icb[r9.x+0].xyz);
  r1.w = rsqrt(r1.w);
  r10.xyz = icb[r9.x+0].yzx * r1.www;
  r11.xyz = r10.xyz * r9.wyz;
  r10.xyz = r9.zwy * r10.yzx + -r11.xyz;
  r1.w = dot(r10.xyz, r10.xyz);
  r1.w = rsqrt(r1.w);
  r10.xyz = r10.xyz * r1.www;
  r11.xyz = r10.yzx * r9.wyz;
  r11.xyz = r9.zwy * r10.zxy + -r11.xyz;
  r1.w = dot(r11.xyz, r11.xyz);
  r1.w = rsqrt(r1.w);
  r11.xyz = r11.xyz * r1.www;
  r0.yzw = float3(0.5,0.5,0.5) + r0.yzw;
  r12.w = 0;
  r1.w = 0;
  r9.x = 0;
  while (true) {
    r10.w = cmp((uint)r9.x >= 16);
    if (r10.w != 0) break;
    r13.x = dot(r9.yzw, icb[r9.x+0].xyz);
    r13.y = dot(r11.xyz, icb[r9.x+0].xyz);
    r13.z = dot(r10.xyz, icb[r9.x+0].xyz);
    r14.xyz = r13.xyz * r0.xxx;
    r15.xyz = r14.xyz * float3(0.5,0.5,0.5) + r0.yzw;
    r16.xyz = r15.xyz;
    r17.xyz = r14.xyz;
    r10.w = 1;
    r11.w = 0;
    while (true) {
      r13.w = cmp((uint)r11.w >= 8);
      if (r13.w != 0) break;
      r16.xyz = r17.xyz + r16.xyz;
      r18.xyz = (int3)r16.xyz;
      r18.xyz = min(int3(31,31,31), (int3)r18.xyz);
      r18.xyz = max(int3(0,0,0), (int3)r18.xyz);
      r13.w = (uint)r18.y << 5;
      r13.w = mad((int)r18.z, 1024, (int)r13.w);
      r13.w = (int)r13.w + (int)r18.x;
      r12.x = (int)r13.w & 31;
      if (5 == 0) r12.y = 0; else if (5+5 < 32) {       r12.y = (uint)r13.w << (32-(5 + 5)); r12.y = (uint)r12.y >> (32-5);      } else r12.y = (uint)r13.w >> 5;
      r12.z = (uint)r13.w >> 10;
      r18.xyzw = t7.Load(r12.xyzw).xyzw;
      r12.x = 0.886227012 * r18.x;
      r12.y = dot(r18.wyz, r13.xyz);
      r12.y = r12.y * 1.02332795 + r12.x;
      r12.z = dot(r18.wyz, -r13.xyz);
      r12.x = r12.z * 1.02332795 + r12.x;
      r12.xy = max(float2(0,0), r12.xy);
      r12.x = r12.y + r12.x;
      r10.w = -r12.x * 2 + r10.w;
      r17.xyz = float3(1.10000002,1.10000002,1.10000002) * r17.xyz;
      r11.w = (int)r11.w + 1;
    }
    r11.w = saturate(1.25 * r10.w);
    r11.w = -r11.w + r1.w;
    r1.w = 1 + r11.w;
    r9.x = (int)r9.x + 1;
  }
  r0.x = -r1.w * 0.0764999986 + 1;
  r0.x = r0.x * 1.80999994 + -r2.w;
  r2.w = r0.x * 0.150000006 + r2.w;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzz, r2.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r1.xyzz, r3.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u2.xyzw, r1.xyzz, r4.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u3.xyzw, r1.xyzz, r5.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u4.xyzw, r1.xyzz, r6.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u5.xyzw, r1.xyzz, r7.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u6.xyzw, r1.xyzz, r8.xyzw
  return;
}