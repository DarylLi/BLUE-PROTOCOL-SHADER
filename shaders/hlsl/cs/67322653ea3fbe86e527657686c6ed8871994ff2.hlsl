// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t3 : register(t3);

Buffer<sint4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[20];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (sint,sint,sint,sint) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u2
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  if (vThreadIDInGroup.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[0].w));
  if (r0.x != 0) {
    r0.x = cmp(asint(cb0[1].x) != -1);
    r0.y = t3.Load(cb0[1].x).x;
    r0.x = r0.x ? r0.y : cb0[0].w;
    r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
    if (r0.x != 0) {
      if (cb0[3].w == 0) {
        r0.x = 0;
      } else {
        r0.yz = cmp(asint(cb0[3].ww) == int2(1,2));
        r0.z = (int)r0.z | (int)r0.y;
        if (r0.z != 0) {
          r0.z = asint(cb0[4].x) & 0x80000000;
          if (r0.z != 0) {
            r0.z = asint(cb0[4].x) & 0x7fffffff;
            r0.z = mad((int)r0.z, asint(cb0[0].y), (int)vThreadID.x);
            r1.x = t1.Load(r0.z).x;
          } else {
            r0.z = mad(asint(cb0[4].x), asint(cb0[0].x), (int)vThreadID.x);
            r1.x = t0.Load(r0.z).x;
          }
          r0.zw = asint(cb0[4].xx) + int2(1,2);
          r2.xy = (int2)r0.zw & int2(0x80000000,0x80000000);
          if (r2.x != 0) {
            r1.w = (int)r0.z & 0x7fffffff;
            r1.w = mad((int)r1.w, asint(cb0[0].y), (int)vThreadID.x);
            r1.y = t1.Load(r1.w).x;
          } else {
            r0.z = mad((int)r0.z, asint(cb0[0].x), (int)vThreadID.x);
            r1.y = t0.Load(r0.z).x;
          }
          if (r2.y != 0) {
            r0.z = (int)r0.w & 0x7fffffff;
            r0.z = mad((int)r0.z, asint(cb0[0].y), (int)vThreadID.x);
            r1.z = t1.Load(r0.z).x;
          } else {
            r0.z = mad((int)r0.w, asint(cb0[0].x), (int)vThreadID.x);
            r1.z = t0.Load(r0.z).x;
          }
          r1.xyz = -cb0[2].xyz + r1.xyz;
          r0.z = dot(r1.xyz, cb0[3].xyz);
          r0.w = dot(r1.xyz, r1.xyz);
          r0.w = sqrt(r0.w);
          r0.y = r0.y ? r0.z : r0.w;
          r0.y = (uint)r0.y >> asuint(cb0[4].z);
          r0.y = ~(int)r0.y;
          r0.x = (int)r0.y & asint(cb0[4].y);
        } else {
          r0.y = asint(cb0[4].x) & 0x80000000;
          if (r0.y != 0) {
            r0.y = asint(cb0[4].x) & 0x7fffffff;
            r0.y = mad((int)r0.y, asint(cb0[0].y), (int)vThreadID.x);
            r0.y = t1.Load(r0.y).x;
          } else {
            r0.z = mad(asint(cb0[4].x), asint(cb0[0].x), (int)vThreadID.x);
            r0.y = t0.Load(r0.z).x;
          }
          r0.z = (uint)r0.y >> asuint(cb0[4].z);
          r0.y = cmp(r0.y >= 0);
          r0.w = (int)r0.z | asint(cb0[4].w);
          r0.z = ~(int)r0.z;
          r0.y = r0.y ? r0.w : r0.z;
          r0.z = cmp(asint(cb0[3].w) == 3);
          r0.w = ~(int)r0.y;
          r0.y = r0.z ? r0.y : r0.w;
          r0.x = (int)r0.y & asint(cb0[4].y);
        }
      }
      r0.y = asint(cb0[4].y) + -1;
      r0.y = min((uint)r0.x, (uint)r0.y);
      r1.xyz = cmp(asint(cb0[5].xyz) != int3(-1,-1,-1));
      if (r1.x != 0) {
        r0.z = asint(cb0[5].x) & 0x80000000;
        if (r0.z != 0) {
          r0.z = asint(cb0[5].x) & 0x7fffffff;
          r0.z = mad((int)r0.z, asint(cb0[0].y), (int)vThreadID.x);
          r2.x = t1.Load(r0.z).x;
        } else {
          r0.z = mad(asint(cb0[5].x), asint(cb0[0].x), (int)vThreadID.x);
          r2.x = t0.Load(r0.z).x;
        }
        r0.zw = asint(cb0[5].xx) + int2(1,2);
        r1.xw = (int2)r0.zw & int2(0x80000000,0x80000000);
        if (r1.x != 0) {
          r1.x = (int)r0.z & 0x7fffffff;
          r1.x = mad((int)r1.x, asint(cb0[0].y), (int)vThreadID.x);
          r2.y = t1.Load(r1.x).x;
        } else {
          r0.z = mad((int)r0.z, asint(cb0[0].x), (int)vThreadID.x);
          r2.y = t0.Load(r0.z).x;
        }
        if (r1.w != 0) {
          r0.z = (int)r0.w & 0x7fffffff;
          r0.z = mad((int)r0.z, asint(cb0[0].y), (int)vThreadID.x);
          r2.z = t1.Load(r0.z).x;
        } else {
          r0.z = mad((int)r0.w, asint(cb0[0].x), (int)vThreadID.x);
          r2.z = t0.Load(r0.z).x;
        }
      } else {
        r2.xyz = float3(0,0,0);
      }
      if (r1.y != 0) {
        r0.z = asint(cb0[5].y) & 0x80000000;
        if (r0.z != 0) {
          r0.z = asint(cb0[5].y) & 0x7fffffff;
          r0.z = mad((int)r0.z, asint(cb0[0].y), (int)vThreadID.x);
          r1.x = t1.Load(r0.z).x;
        } else {
          r0.z = mad(asint(cb0[5].y), asint(cb0[0].x), (int)vThreadID.x);
          r1.x = t0.Load(r0.z).x;
        }
        r3.xyz = asint(cb0[5].yyy) + int3(1,2,3);
        r4.xyz = (int3)r3.xyz & int3(0x80000000,0x80000000,0x80000000);
        if (r4.x != 0) {
          r0.z = (int)r3.x & 0x7fffffff;
          r0.z = mad((int)r0.z, asint(cb0[0].y), (int)vThreadID.x);
          r1.y = t1.Load(r0.z).x;
        } else {
          r0.z = mad((int)r3.x, asint(cb0[0].x), (int)vThreadID.x);
          r1.y = t0.Load(r0.z).x;
        }
        if (r4.y != 0) {
          r0.z = (int)r3.y & 0x7fffffff;
          r0.z = mad((int)r0.z, asint(cb0[0].y), (int)vThreadID.x);
          r1.w = t1.Load(r0.z).x;
        } else {
          r0.z = mad((int)r3.y, asint(cb0[0].x), (int)vThreadID.x);
          r1.w = t0.Load(r0.z).x;
        }
        if (r4.z != 0) {
          r0.z = (int)r3.z & 0x7fffffff;
          r0.z = mad((int)r0.z, asint(cb0[0].y), (int)vThreadID.x);
          r0.z = t1.Load(r0.z).x;
        } else {
          r0.w = mad((int)r3.z, asint(cb0[0].x), (int)vThreadID.x);
          r0.z = t0.Load(r0.w).x;
        }
      } else {
        r1.xyw = float3(0,0,0);
        r0.z = 1;
      }
      if (r1.z != 0) {
        r0.w = asint(cb0[5].z) & 0x80000000;
        if (r0.w != 0) {
          r0.w = asint(cb0[5].z) & 0x7fffffff;
          r0.w = mad((int)r0.w, asint(cb0[0].y), (int)vThreadID.x);
          r3.x = t1.Load(r0.w).x;
        } else {
          r0.w = mad(asint(cb0[5].z), asint(cb0[0].x), (int)vThreadID.x);
          r3.x = t0.Load(r0.w).x;
        }
        r4.xy = asint(cb0[5].zz) + int2(1,2);
        r4.zw = (int2)r4.xy & int2(0x80000000,0x80000000);
        if (r4.z != 0) {
          r0.w = (int)r4.x & 0x7fffffff;
          r0.w = mad((int)r0.w, asint(cb0[0].y), (int)vThreadID.x);
          r3.y = t1.Load(r0.w).x;
        } else {
          r0.w = mad((int)r4.x, asint(cb0[0].x), (int)vThreadID.x);
          r3.y = t0.Load(r0.w).x;
        }
        if (r4.w != 0) {
          r0.w = (int)r4.y & 0x7fffffff;
          r0.w = mad((int)r0.w, asint(cb0[0].y), (int)vThreadID.x);
          r3.z = t1.Load(r0.w).x;
        } else {
          r0.w = mad((int)r4.y, asint(cb0[0].x), (int)vThreadID.x);
          r3.z = t0.Load(r0.w).x;
        }
      } else {
        r3.xyz = float3(1,1,1);
      }
      r4.xyz = cb0[18].xyz * r3.xyz;
      r5.xyz = r4.zxy * r1.xyw;
      r5.xyz = r1.wxy * r4.xyz + -r5.xyz;
      r5.xyz = r5.xyz + r5.xyz;
      r4.xyz = r0.zzz * r5.zxy + r4.xyz;
      r6.xyz = r5.xyz * r1.wxy;
      r1.xyz = r1.ywx * r5.yzx + -r6.xyz;
      r1.xyz = r4.xyz + r1.xyz;
      r1.xyz = r1.xyz + r2.xyz;
      r1.xyz = cb0[19].xyz + r1.xyz;
      r2.xyz = -cb0[2].xyz + r1.xyz;
      r0.z = dot(r2.xyz, r2.xyz);
      r0.w = cmp(r0.z < cb0[17].x);
      r0.z = cmp(cb0[17].y < r0.z);
      r0.z = (int)r0.z | (int)r0.w;
      if (r0.z == 0) {
        r0.z = cmp(asint(cb0[16].y) != -1);
        if (r0.z != 0) {
          r0.z = mad(asint(cb0[16].y), asint(cb0[0].z), (int)vThreadID.x);
          r0.z = t2.Load(r0.z).x;
          r0.z = cmp((int)r0.z != asint(cb0[16].x));
        } else {
          r0.z = 0;
        }
        if (r0.z == 0) {
          r0.z = cmp(asint(cb0[16].w) != -1);
          if (r0.z != 0) {
            r0.z = mad(asint(cb0[16].w), asint(cb0[0].z), (int)vThreadID.x);
            r0.z = t2.Load(r0.z).x;
            r0.z = cmp((int)r0.z != asint(cb0[16].z));
          } else {
            r0.z = 0;
          }
          if (r0.z == 0) {
            r0.z = max(abs(r3.y), abs(r3.z));
            r0.z = max(abs(r3.x), r0.z);
            r0.z = cb0[18].w * r0.z;
            r0.w = min(10, asint(cb0[5].w));
            r0.x = 0;
            r1.w = 0;
            while (true) {
              r2.x = ~(int)r0.x;
              r2.y = cmp((int)r1.w < (int)r0.w);
              r2.x = r2.y ? r2.x : 0;
              if (r2.x == 0) break;
              r2.x = dot(cb0[r1.w+6].xyz, r1.xyz);
              r2.x = -cb0[r1.w+6].w + r2.x;
              r0.x = cmp(r0.z < r2.x);
              r1.w = (int)r1.w + 1;
            }
          } else {
            r0.x = -1;
          }
        } else {
          r0.x = -1;
        }
      } else {
        r0.x = -1;
      }
    } else {
      r0.x = -1;
      r0.y = cb0[4].y;
    }
    r0.y = r0.x ? cb0[4].y : r0.y;
    r0.y = (int)r0.y | asint(cb0[1].z);
    r0.z = (int)vThreadID.x + asint(cb0[1].w);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r0.yyyy
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.zzzz, vThreadID.xxxx
  } else {
    r0.x = -1;
  }
  r0.x = r0.x ? 0 : 1;
  // Needs manual fix for instruction:
atomic_iadd g0, l(0), r0.x
  InterlockedAdd(dest, value, orig_value);
  GroupMemoryBarrierWithGroupSync();
  if (vThreadIDInGroup.x == 0) {
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g0.xxxx
    // Needs manual fix for instruction:
    atomic_iadd u2, cb0[1].y, r0.x
    InterlockedAdd(dest, value, orig_value);
  }
  return;
}