// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
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
  r1.x = (int)r0.x & 31;
  if (5 == 0) r1.y = 0; else if (5+5 < 32) {   r1.y = (uint)r0.x << (32-(5 + 5)); r1.y = (uint)r1.y >> (32-5);  } else r1.y = (uint)r0.x >> 5;
  r1.z = (uint)r0.x >> 10;
  r1.w = 0;
  r2.xyzw = t0.Load(r1.xyzw).xyzw;
  r3.xyzw = t1.Load(r1.xyzw).xyzw;
  r4.xyzw = t2.Load(r1.xyzw).zwxy;
  r5.xyzw = t3.Load(r1.xyzw).xyzw;
  r6.xyzw = t4.Load(r1.xyzw).xyzw;
  r7.xyzw = t5.Load(r1.xyzw).zxyw;
  r8.xyzw = t6.Load(r1.xyzw).xyzw;
  r0.yzw = (uint3)vThreadID.xyz;
  r0.yzw = float3(0.5,0.5,0.5) + r0.yzw;
  r9.xyz = asint(cb0[8].xyz);
  r0.yzw = -r9.xyz + r0.yzw;
  r0.yzw = -r0.yzw * cb0[9].xxx + cb1[1].xyz;
  r1.w = dot(r0.yzw, r0.yzw);
  r9.x = sqrt(r1.w);
  r9.y = cmp(r9.x < cb1[0].x);
  if (r9.y != 0) {
    r9.yzw = cmp(r0.yzw < float3(0,0,0));
    r10.x = r9.y ? 0.000000 : 0;
    r9.y = r9.y ? 33 : 32;
    r9.y = r9.z ? r9.y : r10.x;
    r9.z = (int)r9.y + 1024;
    r9.y = r9.w ? r9.z : r9.y;
    r0.x = (int)r0.x + (int)r9.y;
    r10.x = (int)r0.x & 31;
    if (5 == 0) r10.y = 0; else if (5+5 < 32) {     r10.y = (uint)r0.x << (32-(5 + 5)); r10.y = (uint)r10.y >> (32-5);    } else r10.y = (uint)r0.x >> 5;
    r10.z = (uint)r0.x >> 10;
    r10.w = 0;
    r11.xyzw = t7.Load(r10.xyzw).xyzw;
    r0.x = cmp(0.100000001 < r11.x);
    if (r0.x != 0) {
      r9.xyz = r0.yzw / r9.xxx;
      r0.x = dot(-r11.yzw, -r11.yzw);
      r0.x = sqrt(r0.x);
      r9.w = cmp(0.00999999978 < r0.x);
      r0.x = r9.w ? r0.x : 1;
      r11.xyzw = -r11.zzwy / r0.xxxx;
      r0.x = saturate(dot(-r11.zwy, r9.xyz));
      r9.x = cmp(0 < r0.x);
      if (r9.x != 0) {
        r9.xyz = t8.Load(r10.xyzw).xyz;
        r9.xyz = cb1[2].xyz * r9.xyz;
        r9.xyz = float3(200,200,200) * r9.xyz;
        r9.w = cmp(0 < cb1[5].z);
        r10.x = cmp(0 < cb1[3].y);
        if (r10.x != 0) {
          r10.xyz = cb1[4].xyz * cb1[3].yyy;
          r12.xyz = -r10.xyz * float3(0.5,0.5,0.5) + r0.yzw;
          r10.xyz = r10.xyz * float3(0.5,0.5,0.5) + r0.yzw;
          r10.w = dot(r12.xyz, r12.xyz);
          r10.w = sqrt(r10.w);
          r12.w = dot(r10.xyz, r10.xyz);
          r12.w = sqrt(r12.w);
          r10.x = dot(r12.xyz, r10.xyz);
          r10.x = r10.w * r12.w + r10.x;
          r10.x = r10.x * 0.5 + 1;
          r10.x = rcp(r10.x);
        } else {
          r10.y = 1 + r1.w;
          r10.x = 1 / r10.y;
        }
        r10.y = 1 / cb1[0].x;
        r10.y = r10.y * r10.y;
        r1.w = r10.y * r1.w;
        r1.w = -r1.w * r1.w + 1;
        r1.w = max(0, r1.w);
        r1.w = r1.w * r1.w;
        r1.w = r10.x * r1.w;
        r0.yzw = r0.yzw / cb1[0].xxx;
        r0.y = dot(r0.yzw, r0.yzw);
        r0.y = min(1, r0.y);
        r0.y = 1 + -r0.y;
        r0.y = log2(r0.y);
        r0.y = cb1[3].x * r0.y;
        r0.y = exp2(r0.y);
        r0.y = r9.w ? r1.w : r0.y;
        r0.x = r0.y * r0.x;
        r0.xyz = r9.xyz * r0.xxx;
        r2.xyz = r0.xyz * float3(0.885778308,0.885778308,0.885778308) + r2.xyz;
        r9.xyzw = float4(0.488602996,0.488602996,0.488602996,1.09254801) * r11.wyzz;
        r10.xyz = r9.xxx * r0.xyz;
        r3.xyz = r10.xyz * float3(3.1400001,3.1400001,3.1400001) + r3.xyz;
        r10.xyz = r9.yyy * r0.xyz;
        r12.x = r3.w;
        r12.yz = r4.zw;
        r10.xyz = r10.xyz * float3(3.1400001,3.1400001,3.1400001) + r12.xyz;
        r9.xyz = r9.zzz * r0.xyz;
        r4.z = r5.x;
        r9.xyz = r9.xyz * float3(3.1400001,3.1400001,3.1400001) + r4.xyz;
        r12.xy = r9.ww * r11.wy;
        r12.xzw = r12.xxx * r0.xyz;
        r5.yzw = r12.xzw * float3(3.1400001,3.1400001,3.1400001) + r5.yzw;
        r11.xyw = r11.xyw * r11.wyw;
        r0.w = 1.09254801 * r11.x;
        r12.xzw = r0.xyz * r0.www;
        r6.xyz = r12.xzw * float3(3.1400001,3.1400001,3.1400001) + r6.xyz;
        r12.xyz = r12.yyy * r0.xyz;
        r13.xy = r7.xw;
        r13.z = r8.x;
        r12.xyz = r12.xyz * float3(3.1400001,3.1400001,3.1400001) + r13.xyz;
        r0.w = r11.y * 3 + -1;
        r0.w = 0.315391988 * r0.w;
        r13.xyz = r0.xyz * r0.www;
        r7.x = r6.w;
        r7.xyz = r13.xyz * float3(3.1400001,3.1400001,3.1400001) + r7.xyz;
        r0.w = r11.z * r11.z + -r11.w;
        r0.w = 0.546274006 * r0.w;
        r0.xyz = r0.xyz * r0.www;
        r8.yzw = r0.xyz * float3(3.1400001,3.1400001,3.1400001) + r8.yzw;
        r3.w = r10.x;
        r4.zw = r10.yz;
        r4.xy = r9.xy;
        r5.x = r9.z;
        r6.w = r7.x;
        r7.xw = r12.xy;
        r8.x = r12.z;
      }
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzz, r2.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r1.xyzz, r3.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u2.xyzw, r1.xyzz, r4.zwxy
// No code for instruction (needs manual fix):
store_uav_typed u3.xyzw, r1.xyzz, r5.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u4.xyzw, r1.xyzz, r6.xyzw
// No code for instruction (needs manual fix):
store_uav_typed u5.xyzw, r1.xyzz, r7.yzxw
// No code for instruction (needs manual fix):
store_uav_typed u6.xyzw, r1.xyzz, r8.xyzw
  return;
}