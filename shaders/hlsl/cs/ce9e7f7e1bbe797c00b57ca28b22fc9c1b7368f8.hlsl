// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xy = (uint2)vThreadID.zy << int2(10,5);
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x + (int)vThreadID.x;
  r0.yzw = asint(cb0[7].xyz) + asint(-cb0[8].xyz);
  r0.yzw = (int3)r0.yzw + (int3)vThreadID.xyz;
  r0.yzw = max(int3(0,0,0), (int3)r0.yzw);
  r0.yzw = min(int3(0,0,0), (int3)r0.yzw);
  r0.z = (uint)r0.z << 5;
  r0.z = mad((int)r0.w, 1024, (int)r0.z);
  r0.y = (int)r0.z + (int)r0.y;
  r1.x = (int)r0.y & 31;
  if (5 == 0) r1.y = 0; else if (5+5 < 32) {   r1.y = (uint)r0.y << (32-(5 + 5)); r1.y = (uint)r1.y >> (32-5);  } else r1.y = (uint)r0.y >> 5;
  r1.z = (uint)r0.y >> 10;
  r1.w = 0;
  r2.xyzw = t0.Load(r1.xyzw).xyzw;
  r3.xyzw = t1.Load(r1.xyzw).wxyz;
  r4.xyzw = t2.Load(r1.xyzw).zwxy;
  r5.xyzw = t3.Load(r1.xyzw).xyzw;
  r6.xyzw = t4.Load(r1.xyzw).wxyz;
  r7.xyzw = t5.Load(r1.xyzw).zwxy;
  r1.xyzw = t6.Load(r1.xyzw).xyzw;
  r0.y = 0.899999976 * cb0[8].w;
  r0.z = (int)r2.w & 0x7f800000;
  r0.w = r2.x + r2.y;
  r0.w = r0.w + r2.z;
  r0.w = (int)r0.w & 0x7f800000;
  r0.zw = cmp((int2)r0.zw == int2(0x7f800000,0x7f800000));
  r0.z = (int)r0.w | (int)r0.z;
  r0.w = r3.y + r3.z;
  r0.w = r0.w + r3.w;
  r0.w = (int)r0.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r0.z = (int)r0.w | (int)r0.z;
  r0.w = r4.z + r3.x;
  r0.w = r0.w + r4.w;
  r0.w = (int)r0.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r0.z = (int)r0.w | (int)r0.z;
  r0.w = r4.x + r4.y;
  r0.w = r0.w + r5.x;
  r0.w = (int)r0.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r0.z = (int)r0.w | (int)r0.z;
  r0.w = r5.y + r5.z;
  r0.w = r0.w + r5.w;
  r0.w = (int)r0.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r0.z = (int)r0.w | (int)r0.z;
  r0.w = r6.y + r6.z;
  r0.w = r0.w + r6.w;
  r0.w = (int)r0.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r0.z = (int)r0.w | (int)r0.z;
  r0.w = r7.z + r6.x;
  r0.w = r0.w + r7.w;
  r0.w = (int)r0.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r0.z = (int)r0.w | (int)r0.z;
  r0.w = r7.x + r7.y;
  r0.w = r0.w + r1.x;
  r0.w = (int)r0.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r0.z = (int)r0.w | (int)r0.z;
  r0.w = r1.y + r1.z;
  r0.w = r0.w + r1.w;
  r0.w = (int)r0.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r0.z = (int)r0.w | (int)r0.z;
  r0.y = r0.z ? 0 : r0.y;
  r0.z = cmp(r0.y == 0.000000);
  if (r0.z != 0) {
    r8.xyzw = float4(0,0,0,0);
    r9.xyzw = float4(0,0,0,0);
    r10.xyzw = float4(0,0,0,0);
    r11.xyzw = float4(0,0,0,0);
    r12.xyzw = float4(0,0,0,0);
    r13.xyzw = float4(0,0,0,0);
    r2.xyzw = float4(0,0,0,0);
  } else {
    r2.xyz = r2.xyz * r0.yyy;
    r8.xyz = r3.yzw * r0.yyy;
    r3.yz = r4.zw;
    r9.xyz = r3.yzx * r0.yyy;
    r4.z = r5.x;
    r3.xyz = r4.xyz * r0.yyy;
    r10.yzw = r5.yzw * r0.yyy;
    r11.xyz = r6.yzw * r0.yyy;
    r6.yz = r7.zw;
    r12.xyz = r6.yzx * r0.yyy;
    r7.z = r1.x;
    r4.xyz = r7.xyz * r0.yyy;
    r13.yzw = r1.yzw * r0.yyy;
    r8.w = r9.z;
    r9.zw = r3.xy;
    r10.x = r3.z;
    r11.w = r12.z;
    r12.zw = r4.xy;
    r13.x = r4.z;
  }
  r1.x = (int)r0.x & 31;
  if (5 == 0) r1.y = 0; else if (5+5 < 32) {   r1.y = (uint)r0.x << (32-(5 + 5)); r1.y = (uint)r1.y >> (32-5);  } else r1.y = (uint)r0.x >> 5;
  r1.zw = (uint2)r0.xx >> int2(10,10);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyww, r2.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r1.xyww, r8.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u2.xyzw, r1.xyww, r9.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u3.xyzw, r1.xyww, r10.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u4.xyzw, r1.xyww, r11.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u5.xyzw, r1.xyww, r12.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u6.xyzw, r1.xyzw, r13.xyzw
  return;
}