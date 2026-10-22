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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
  r10.xyz = cb0[9].xxx * r0.yzw;
  r0.yzw = -r0.yzw * cb0[9].xxx + cb1[1].xyz;
  r1.w = dot(r0.yzw, r0.yzw);
  r9.w = sqrt(r1.w);
  r10.w = cmp(r9.w < cb1[0].x);
  if (r10.w != 0) {
    r11.xyz = cmp(r0.yzw < float3(0,0,0));
    r10.w = r11.x ? 0.000000 : 0;
    r11.x = r11.x ? 33 : 32;
    r10.w = r11.y ? r11.x : r10.w;
    r11.x = (int)r10.w + 1024;
    r10.w = r11.z ? r11.x : r10.w;
    r0.x = (int)r0.x + (int)r10.w;
    r11.x = (int)r0.x & 31;
    if (5 == 0) r11.y = 0; else if (5+5 < 32) {     r11.y = (uint)r0.x << (32-(5 + 5)); r11.y = (uint)r11.y >> (32-5);    } else r11.y = (uint)r0.x >> 5;
    r11.z = (uint)r0.x >> 10;
    r11.w = 0;
    r12.xyzw = t7.Load(r11.xyzw).xyzw;
    r0.x = cmp(0.100000001 < r12.x);
    if (r0.x != 0) {
      r13.xyz = r0.yzw / r9.www;
      r0.x = dot(-r12.yzw, -r12.yzw);
      r0.x = sqrt(r0.x);
      r12.x = cmp(0.00999999978 < r0.x);
      r0.x = r12.x ? r0.x : 1;
      r12.xyzw = -r12.zzwy / r0.xxxx;
      r0.x = saturate(dot(-r12.zwy, r13.xyz));
      r13.w = cmp(0 < r0.x);
      if (r13.w != 0) {
        r11.xyz = t8.Load(r11.xyzw).xyz;
        r9.w = cmp(100 < r9.w);
        if (r9.w != 0) {
          r10.xyz = r0.yzw * float3(0.125,0.125,0.125) + r10.xyz;
          r14.w = 0;
          r15.xyz = r10.xyz;
          r9.w = 1;
          r11.w = 0;
          while (true) {
            r13.w = cmp((int)r11.w >= 15);
            if (r13.w != 0) break;
            r16.xyz = r15.xyz * cb0[9].yyy + r9.xyz;
            r17.xyz = float3(-16,-16,-16) + r16.xyz;
            r13.w = max(abs(r17.y), abs(r17.z));
            r13.w = max(abs(r17.x), r13.w);
            r13.w = cmp(16 < r13.w);
            r16.xyz = (int3)r16.xyz;
            r16.yz = (uint2)r16.zy << int2(10,5);
            r15.w = (int)r16.z + (int)r16.y;
            r15.w = (int)r16.x + (int)r15.w;
            r13.w = r13.w ? -1 : r15.w;
            r13.w = (int)r10.w + (int)r13.w;
            r14.x = (int)r13.w & 31;
            if (5 == 0) r14.y = 0; else if (5+5 < 32) {             r14.y = (uint)r13.w << (32-(5 + 5)); r14.y = (uint)r14.y >> (32-5);            } else r14.y = (uint)r13.w >> 5;
            r14.z = (uint)r13.w >> 10;
            r16.xyzw = t7.Load(r14.xyzw).xyzw;
            r13.w = dot(r16.wyz, -r13.xyz);
            r13.w = 1.02332795 * r13.w;
            r13.w = r16.x * 0.886227012 + r13.w;
            r13.w = max(0, r13.w);
            r13.w = 1 + -r13.w;
            r9.w = min(r13.w, r9.w);
            r15.xyz = r0.yzw * float3(0.0625,0.0625,0.0625) + r15.xyz;
            r11.w = (int)r11.w + 1;
          }
          r9.x = max(0, r9.w);
        } else {
          r9.x = 1;
        }
        r9.yzw = cb1[2].xyz * r11.xyz;
        r9.yzw = float3(200,200,200) * r9.yzw;
        r10.x = cmp(0 < cb1[5].z);
        r10.y = cmp(0 < cb1[3].y);
        if (r10.y != 0) {
          r10.yzw = cb1[4].xyz * cb1[3].yyy;
          r11.xyz = -r10.yzw * float3(0.5,0.5,0.5) + r0.yzw;
          r10.yzw = r10.yzw * float3(0.5,0.5,0.5) + r0.yzw;
          r11.w = dot(r11.xyz, r11.xyz);
          r11.w = sqrt(r11.w);
          r13.x = dot(r10.yzw, r10.yzw);
          r13.x = sqrt(r13.x);
          r10.y = dot(r11.xyz, r10.yzw);
          r10.y = r11.w * r13.x + r10.y;
          r10.y = r10.y * 0.5 + 1;
          r10.y = rcp(r10.y);
        } else {
          r10.z = 1 + r1.w;
          r10.y = 1 / r10.z;
        }
        r10.z = 1 / cb1[0].x;
        r10.z = r10.z * r10.z;
        r1.w = r10.z * r1.w;
        r1.w = -r1.w * r1.w + 1;
        r1.w = max(0, r1.w);
        r1.w = r1.w * r1.w;
        r1.w = r10.y * r1.w;
        r0.yzw = r0.yzw / cb1[0].xxx;
        r0.y = dot(r0.yzw, r0.yzw);
        r0.y = min(1, r0.y);
        r0.y = 1 + -r0.y;
        r0.y = log2(r0.y);
        r0.y = cb1[3].x * r0.y;
        r0.y = exp2(r0.y);
        r0.y = r10.x ? r1.w : r0.y;
        r0.x = r9.x * r0.x;
        r0.x = r0.y * r0.x;
        r0.xyz = r9.yzw * r0.xxx;
        r2.xyz = r0.xyz * float3(0.885778308,0.885778308,0.885778308) + r2.xyz;
        r9.xyzw = float4(0.488602996,0.488602996,0.488602996,1.09254801) * r12.wyzz;
        r10.xyz = r9.xxx * r0.xyz;
        r3.xyz = r10.xyz * float3(3.1400001,3.1400001,3.1400001) + r3.xyz;
        r10.xyz = r9.yyy * r0.xyz;
        r11.x = r3.w;
        r11.yz = r4.zw;
        r10.xyz = r10.xyz * float3(3.1400001,3.1400001,3.1400001) + r11.xyz;
        r9.xyz = r9.zzz * r0.xyz;
        r4.z = r5.x;
        r9.xyz = r9.xyz * float3(3.1400001,3.1400001,3.1400001) + r4.xyz;
        r11.xy = r9.ww * r12.wy;
        r11.xzw = r11.xxx * r0.xyz;
        r5.yzw = r11.xzw * float3(3.1400001,3.1400001,3.1400001) + r5.yzw;
        r11.xzw = r12.xyw * r12.wyw;
        r0.w = 1.09254801 * r11.x;
        r12.xyw = r0.xyz * r0.www;
        r6.xyz = r12.xyw * float3(3.1400001,3.1400001,3.1400001) + r6.xyz;
        r12.xyw = r11.yyy * r0.xyz;
        r13.xy = r7.xw;
        r13.z = r8.x;
        r12.xyw = r12.xyw * float3(3.1400001,3.1400001,3.1400001) + r13.xyz;
        r0.w = r11.z * 3 + -1;
        r0.w = 0.315391988 * r0.w;
        r11.xyz = r0.xyz * r0.www;
        r7.x = r6.w;
        r7.xyz = r11.xyz * float3(3.1400001,3.1400001,3.1400001) + r7.xyz;
        r0.w = r12.z * r12.z + -r11.w;
        r0.w = 0.546274006 * r0.w;
        r0.xyz = r0.xyz * r0.www;
        r8.yzw = r0.xyz * float3(3.1400001,3.1400001,3.1400001) + r8.yzw;
        r3.w = r10.x;
        r4.zw = r10.yz;
        r4.xy = r9.xy;
        r5.x = r9.z;
        r6.w = r7.x;
        r7.xw = r12.xy;
        r8.x = r12.w;
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