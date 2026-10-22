// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t7_t {
  float val[3];
};
StructuredBuffer<t7_t> t7 : register(t7);

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
// Needs manual fix for instruction:
// unknown dcl_: dcl_resource_raw t8
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xy = (uint2)vThreadID.zy << int2(10,5);
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x + (int)vThreadID.x;
  r0.y = (uint)r0.x << 2;
  r0.y = (int)r0.y + 256;
// No code for instruction (needs manual fix):
ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r0.y, r0.y, t8.xxxx
  r0.y = (int)r0.y + -1;
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
  r0.xzw = r2.xyz;
  r13.xyzw = r4.zwxy;
  r14.xyzw = r7.zxyw;
  r1.w = r0.y;
  r9.xyzw = r3.xyzw;
  r10.xyzw = r5.xyzw;
  r11.xyzw = r6.xyzw;
  r12.xyzw = r8.xyzw;
  while (true) {
    r15.x = cmp((int)r1.w == -1);
    if (r15.x != 0) break;
    r15.x = t7[r1.w].val[0/4];
    r15.y = t7[r1.w].val[0/4+1];
    r15.z = t7[r1.w].val[0/4+2];
    r15.w = (uint)r15.y >> 24;
    r16.x = (uint)r15.w;
    if (8 == 0) r17.x = 0; else if (8+16 < 32) {     r17.x = (uint)r15.y << (32-(8 + 16)); r17.x = (uint)r17.x >> (32-8);    } else r17.x = (uint)r15.y >> 16;
    if (8 == 0) r17.y = 0; else if (8+8 < 32) {     r17.y = (uint)r15.x << (32-(8 + 8)); r17.y = (uint)r17.y >> (32-8);    } else r17.y = (uint)r15.x >> 8;
    if (8 == 0) r17.z = 0; else if (8+16 < 32) {     r17.z = (uint)r15.x << (32-(8 + 16)); r17.z = (uint)r17.z >> (32-8);    } else r17.z = (uint)r15.x >> 16;
    r17.yzw = (uint3)r17.xyz;
    r15.w = r17.y + r16.x;
    r16.z = 255 + -r15.w;
    r15.y = f16tof32(r15.y);
    r16.y = r17.y;
    r16.xyz = r16.xyz * r15.yyy;
    r18.xyz = float3(0.00392156886,0.00392156886,0.00392156886) * r16.xyz;
    r15.x = r15.x ? 0.000000 : 0;
    r17.x = (uint)r15.x;
    r17.xyzw = r17.wwxz * float4(0.00787401572,0.00787401572,0.00787401572,0.00787401572) + float4(-1,-1,-1,-1);
    r0.xzw = r16.xyz * float3(0.00347364042,0.00347364042,0.00347364042) + r0.xzw;
    r16.xyzw = float4(-0.488602996,-0.488602996,-0.488602996,-1.09254801) * r17.wyzz;
    r15.xyw = r18.xyz * r16.xxx;
    r9.xyz = r15.xyw * float3(3.1400001,3.1400001,3.1400001) + r9.xyz;
    r15.xyw = r18.xyz * r16.yyy;
    r19.x = r9.w;
    r19.yz = r13.zw;
    r15.xyw = r15.xyw * float3(3.1400001,3.1400001,3.1400001) + r19.xyz;
    r16.xyz = r18.xyz * r16.zzz;
    r13.z = r10.x;
    r16.xyz = r16.xyz * float3(3.1400001,3.1400001,3.1400001) + r13.xyz;
    r19.xy = r16.ww * -r17.wy;
    r19.xzw = r19.xxx * r18.xyz;
    r10.yzw = r19.xzw * float3(3.1400001,3.1400001,3.1400001) + r10.yzw;
    r17.xyw = r17.xyw * r17.wyw;
    r16.w = 1.09254801 * r17.x;
    r19.xzw = r18.xyz * r16.www;
    r11.xyz = r19.xzw * float3(3.1400001,3.1400001,3.1400001) + r11.xyz;
    r19.xyz = r19.yyy * r18.xyz;
    r20.xy = r14.xw;
    r20.z = r12.x;
    r19.xyz = r19.xyz * float3(3.1400001,3.1400001,3.1400001) + r20.xyz;
    r16.w = r17.y * 3 + -1;
    r16.w = 0.315391988 * r16.w;
    r20.xyz = r18.xyz * r16.www;
    r14.x = r11.w;
    r20.xyz = r20.xyz * float3(3.1400001,3.1400001,3.1400001) + r14.xyz;
    r16.w = r17.z * r17.z + -r17.w;
    r16.w = 0.546274006 * r16.w;
    r17.xyz = r18.xyz * r16.www;
    r12.yzw = r17.xyz * float3(3.1400001,3.1400001,3.1400001) + r12.yzw;
    r1.w = (int)r15.z + -1;
    r13.zw = r15.yw;
    r13.xy = r16.xy;
    r14.xw = r19.xy;
    r9.w = r15.x;
    r10.x = r16.z;
    r11.w = r20.x;
    r14.yz = r20.yz;
    r12.x = r19.z;
  }
  r2.xyz = r0.xzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzz, r2.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r1.xyzz, r9.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u2.xyzw, r1.xyzz, r13.zwxy
// No code for instruction (needs manual fix):
store_uav_typed u3.xyzw, r1.xyzz, r10.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u4.xyzw, r1.xyzz, r11.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u5.xyzw, r1.xyzz, r14.yzxw
// No code for instruction (needs manual fix):
store_uav_typed u6.xyzw, r1.xyzz, r12.xyzw
  return;
}