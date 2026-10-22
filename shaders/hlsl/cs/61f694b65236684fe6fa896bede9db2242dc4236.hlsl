// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (sint,sint,sint,sint) u1
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[0].w));
  if (r0.x != 0) {
    r0.x = cmp(asint(cb0[1].x) != -1);
    r0.y = t2.Load(cb0[1].x).x;
    r0.x = r0.x ? r0.y : cb0[0].w;
    r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
    if (r0.x != 0) {
      if (cb0[3].w == 0) {
        r0.y = 0;
      } else {
        r0.zw = cmp(asint(cb0[3].ww) == int2(1,2));
        r0.w = (int)r0.w | (int)r0.z;
        if (r0.w != 0) {
          r0.w = asint(cb0[4].x) & 0x80000000;
          if (r0.w != 0) {
            r0.w = asint(cb0[4].x) & 0x7fffffff;
            r0.w = mad((int)r0.w, asint(cb0[0].y), (int)vThreadID.x);
            r1.x = t1.Load(r0.w).x;
          } else {
            r0.w = mad(asint(cb0[4].x), asint(cb0[0].x), (int)vThreadID.x);
            r1.x = t0.Load(r0.w).x;
          }
          r2.xy = asint(cb0[4].xx) + int2(1,2);
          r2.zw = (int2)r2.xy & int2(0x80000000,0x80000000);
          if (r2.z != 0) {
            r0.w = (int)r2.x & 0x7fffffff;
            r0.w = mad((int)r0.w, asint(cb0[0].y), (int)vThreadID.x);
            r1.y = t1.Load(r0.w).x;
          } else {
            r0.w = mad((int)r2.x, asint(cb0[0].x), (int)vThreadID.x);
            r1.y = t0.Load(r0.w).x;
          }
          if (r2.w != 0) {
            r0.w = (int)r2.y & 0x7fffffff;
            r0.w = mad((int)r0.w, asint(cb0[0].y), (int)vThreadID.x);
            r1.z = t1.Load(r0.w).x;
          } else {
            r0.w = mad((int)r2.y, asint(cb0[0].x), (int)vThreadID.x);
            r1.z = t0.Load(r0.w).x;
          }
          r1.xyz = -cb0[2].xyz + r1.xyz;
          r0.w = dot(r1.xyz, cb0[3].xyz);
          r1.x = dot(r1.xyz, r1.xyz);
          r1.x = sqrt(r1.x);
          r0.z = r0.z ? r0.w : r1.x;
          r0.z = f32tof16(r0.z);
          r0.z = ~(int)r0.z;
          r0.y = (int)r0.z & 0x0000ffff;
        } else {
          r0.z = asint(cb0[4].x) & 0x80000000;
          if (r0.z != 0) {
            r0.z = asint(cb0[4].x) & 0x7fffffff;
            r0.z = mad((int)r0.z, asint(cb0[0].y), (int)vThreadID.x);
            r0.z = t1.Load(r0.z).x;
          } else {
            r0.w = mad(asint(cb0[4].x), asint(cb0[0].x), (int)vThreadID.x);
            r0.z = t0.Load(r0.w).x;
          }
          r0.w = f32tof16(r0.z);
          r0.z = cmp(r0.z >= 0);
          r1.x = (int)r0.w | 0x00008000;
          r0.w = ~(int)r0.w;
          r0.z = r0.z ? r1.x : r0.w;
          r0.w = cmp(asint(cb0[3].w) == 3);
          r1.x = ~(int)r0.z;
          r0.z = r0.w ? r0.z : r1.x;
          r0.y = (int)r0.z & 0x0000ffff;
        }
      }
      r0.y = min((uint13)9.18326936e-041, (uint)r0.y);
    } else {
      r0.y = 9.18340949e-041;
    }
    r0.x = r0.x ? r0.y : 9.18340949e-041;
    r0.x = (int)r0.x | asint(cb0[1].z);
    r0.y = (int)vThreadID.x + asint(cb0[1].w);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.yyyy, vThreadID.xxxx
  }
  return;
}