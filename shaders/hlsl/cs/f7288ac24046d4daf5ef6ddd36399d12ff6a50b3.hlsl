// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct u0_t {
  float val[4];
};
RWStructuredBuffer<u0_t> u0 : register(u0);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = t0[0].val[8/4];
  r0.x = min(asint(cb0[1].x), (int)r0.x);
  r0.x = cmp((uint)vThreadID.x >= (uint)r0.x);
  if (r0.x != 0) {
    return;
  }
  r0.x = (int)vThreadID.x + 1;
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.w = t0[r0.x].val[0/4+3];
  if (r0.w == 0) {
    // Needs manual fix for instruction:
    imm_atomic_iadd r1.x, u0, l(0, 8, 0, 0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r1.y = cmp((int)r1.x < asint(cb0[1].y));
    if (r1.y != 0) {
      r1.x = (int)r1.x + 1;
      r0.w = 0;
      u0[r1.x].val[0/4] = r0.x;
      u0[r1.x].val[0/4+1] = r0.y;
      u0[r1.x].val[0/4+2] = r0.z;
      u0[r1.x].val[0/4+3] = r0.w;
    }
  } else {
    r1.x = cmp((int)r0.w == 1);
    if (r1.x != 0) {
      r1.x = (int)r0.z & 0x7fffffff;
      r1.x = cmp((int)r1.x == 0x7f800000);
      if (r1.x != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r2.x, u0, l(0, 8, 0, 0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r1.y = cmp((int)r2.x < asint(cb0[1].y));
        if (r1.y != 0) {
          r1.y = (int)r2.x + 1;
          r2.xy = r0.xy;
          r2.zw = float2(2.52233724e-044,0);
          u0[r1.y].val[0/4] = r2.x;
          u0[r1.y].val[0/4+1] = r2.y;
          u0[r1.y].val[0/4+2] = r2.z;
          u0[r1.y].val[0/4+3] = r2.w;
        }
        r2.x = cb0[0].z + r0.x;
        // Needs manual fix for instruction:
            imm_atomic_iadd r3.x, u0, l(0, 8, 0, 0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r1.y = cmp((int)r3.x < asint(cb0[1].y));
        if (r1.y != 0) {
          r1.y = (int)r3.x + 1;
          r2.y = r0.y;
          r2.zw = float2(3.22298647e-044,0);
          u0[r1.y].val[0/4] = r2.x;
          u0[r1.y].val[0/4+1] = r2.y;
          u0[r1.y].val[0/4+2] = r2.z;
          u0[r1.y].val[0/4+3] = r2.w;
        }
        r2.x = cb0[0].z + r2.x;
        // Needs manual fix for instruction:
            imm_atomic_iadd r3.x, u0, l(0, 8, 0, 0), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r1.y = cmp((int)r3.x < asint(cb0[1].y));
        if (r1.y != 0) {
          r1.y = (int)r3.x + 1;
          r2.y = r0.y;
          r2.zw = float2(2.1019477e-044,0);
          u0[r1.y].val[0/4] = r2.x;
          u0[r1.y].val[0/4+1] = r2.y;
          u0[r1.y].val[0/4+2] = r2.z;
          u0[r1.y].val[0/4+3] = r2.w;
        }
        r2.x = cb0[0].z + r2.x;
      } else {
        r2.x = r0.x;
      }
      if (r1.x == 0) {
        r1.x = cmp(r0.z != r0.z);
        if (r1.x != 0) {
          // Needs manual fix for instruction:
                imm_atomic_iadd r3.x, u0, l(0, 8, 0, 0), l(1)
          InterlockedAdd(dest, imm_value, orig_value);
          r1.y = cmp((int)r3.x < asint(cb0[1].y));
          if (r1.y != 0) {
            r1.y = (int)r3.x + 1;
            r2.y = r0.y;
            r2.zw = float2(3.22298647e-044,0);
            u0[r1.y].val[0/4] = r2.x;
            u0[r1.y].val[0/4+1] = r2.y;
            u0[r1.y].val[0/4+2] = r2.z;
            u0[r1.y].val[0/4+3] = r2.w;
          }
          r3.x = cb0[0].z + r2.x;
          // Needs manual fix for instruction:
                imm_atomic_iadd r4.x, u0, l(0, 8, 0, 0), l(1)
          InterlockedAdd(dest, imm_value, orig_value);
          r1.y = cmp((int)r4.x < asint(cb0[1].y));
          if (r1.y != 0) {
            r1.y = (int)r4.x + 1;
            r3.y = r0.y;
            r3.zw = float2(1.40129846e-044,0);
            u0[r1.y].val[0/4] = r3.x;
            u0[r1.y].val[0/4+1] = r3.y;
            u0[r1.y].val[0/4+2] = r3.z;
            u0[r1.y].val[0/4+3] = r3.w;
          }
          r3.x = cb0[0].z + r3.x;
          // Needs manual fix for instruction:
                imm_atomic_iadd r4.x, u0, l(0, 8, 0, 0), l(1)
          InterlockedAdd(dest, imm_value, orig_value);
          r1.y = cmp((int)r4.x < asint(cb0[1].y));
          if (r1.y != 0) {
            r1.y = (int)r4.x + 1;
            r3.y = r0.y;
            r3.zw = float2(3.22298647e-044,0);
            u0[r1.y].val[0/4] = r3.x;
            u0[r1.y].val[0/4+1] = r3.y;
            u0[r1.y].val[0/4+2] = r3.z;
            u0[r1.y].val[0/4+3] = r3.w;
          }
          r2.x = cb0[0].z + r3.x;
        }
        if (r1.x == 0) {
          r1.x = cmp(r0.z < 0);
          if (r1.x != 0) {
            // Needs manual fix for instruction:
                    imm_atomic_iadd r1.x, u0, l(0, 8, 0, 0), l(1)
            InterlockedAdd(dest, imm_value, orig_value);
            r1.y = cmp((int)r1.x < asint(cb0[1].y));
            if (r1.y != 0) {
              r1.x = (int)r1.x + 1;
              r2.y = r0.y;
              r2.zw = float2(8.26766094e-044,0);
              u0[r1.x].val[0/4] = r2.x;
              u0[r1.x].val[0/4+1] = r2.y;
              u0[r1.x].val[0/4+2] = r2.z;
              u0[r1.x].val[0/4+3] = r2.w;
            }
            r0.x = cb0[0].z + r2.x;
            r1.x = -r0.z;
          } else {
            r0.x = r2.x;
            r1.x = r0.z;
          }
          r1.y = (int)r1.x;
          r1.z = cmp((int)r1.y < 0);
          if (r1.z != 0) {
            // Needs manual fix for instruction:
                    imm_atomic_iadd r2.x, u0, l(0, 8, 0, 0), l(1)
            InterlockedAdd(dest, imm_value, orig_value);
            r1.z = cmp((int)r2.x < asint(cb0[1].y));
            if (r1.z != 0) {
              r1.z = (int)r2.x + 1;
              r0.zw = float2(8.26766094e-044,0);
              u0[r1.z].val[0/4] = r0.x;
              u0[r1.z].val[0/4+1] = r0.y;
              u0[r1.z].val[0/4+2] = r0.z;
              u0[r1.z].val[0/4+3] = r0.w;
            }
            r0.x = cb0[0].z + r0.x;
            r1.y = -(int)r1.y;
          }
          r1.zw = float2(1.40129846e-045,1.40129846e-045);
          r2.x = r1.y;
          r2.y = 0;
          while (true) {
            r2.z = cmp((uint)r2.y >= 9);
            if (r2.z != 0) break;
            uiDest.x = (uint)r2.x / 10;
            r2.x = uiDest.x;
            r2.z = cmp(0 < (uint)r2.x);
            r3.x = (int)r1.z + 1;
            r3.y = (int)r1.w * 10;
            r1.zw = r2.zz ? r3.xy : r1.zw;
            r2.y = (int)r2.y + 1;
          }
          r2.w = 0;
          r2.x = r0.x;
          r2.y = r0.y;
          r3.x = cb0[1].y;
          r3.yz = r1.yw;
          r3.w = 0;
          while (true) {
            r4.x = cmp((uint)r3.w >= (uint)r1.z);
            if (r4.x != 0) break;
            uiDest.x = (uint)r3.y / (uint)r3.z;
            r4.x = uiDest.x;
            // Needs manual fix for instruction:
                    imm_atomic_iadd r5.x, u0, l(0, 8, 0, 0), l(1)
            InterlockedAdd(dest, imm_value, orig_value);
            r4.y = cmp((int)r5.x < (int)r3.x);
            if (r4.y != 0) {
              r4.y = max(0, (int)r4.x);
              r2.z = min(9, (int)r4.y);
              r4.y = (int)r5.x + 1;
              u0[r4.y].val[0/4] = r2.x;
              u0[r4.y].val[0/4+1] = r2.y;
              u0[r4.y].val[0/4+2] = r2.z;
              u0[r4.y].val[0/4+3] = r2.w;
            }
            r2.x = cb0[0].z + r2.x;
            r3.y = mad((int)-r4.x, (int)r3.z, (int)r3.y);
            uiDest.z = (uint)r3.z / 10;
            r3.z = uiDest.z;
            r3.w = (int)r3.w + 1;
          }
          r0.x = r2.x;
          // Needs manual fix for instruction:
                imm_atomic_iadd r2.x, u0, l(0, 8, 0, 0), l(1)
          InterlockedAdd(dest, imm_value, orig_value);
          r1.y = cmp((int)r2.x < asint(cb0[1].y));
          if (r1.y != 0) {
            r1.y = (int)r2.x + 1;
            r0.zw = float2(8.54792063e-044,0);
            u0[r1.y].val[0/4] = r0.x;
            u0[r1.y].val[0/4+1] = r0.y;
            u0[r1.y].val[0/4+2] = r0.z;
            u0[r1.y].val[0/4+3] = r0.w;
          }
          r1.y = cb0[0].z + r0.x;
          r0.w = 0;
          r2.x = r1.y;
          r2.y = 5;
          r1.z = r1.x;
          while (true) {
            r1.w = cmp(0 >= (int)r2.y);
            if (r1.w != 0) break;
            r1.z = frac(r1.z);
            r1.w = cmp(0 < r1.z);
            if (r1.w != 0) {
              r1.z = 10 * r1.z;
              // Needs manual fix for instruction:
                        imm_atomic_iadd r3.x, u0, l(0, 8, 0, 0), l(1)
              InterlockedAdd(dest, imm_value, orig_value);
              r1.w = cmp((int)r3.x < asint(cb0[1].y));
              if (r1.w != 0) {
                r0.z = (int)r1.z;
                r1.w = (int)r3.x + 1;
                r0.x = r2.x;
                u0[r1.w].val[0/4] = r0.x;
                u0[r1.w].val[0/4+1] = r0.y;
                u0[r1.w].val[0/4+2] = r0.z;
                u0[r1.w].val[0/4+3] = r0.w;
              }
              r2.x = cb0[0].z + r2.x;
            }
            r2.y = (int)r2.y + -1;
          }
        }
      }
    } else {
      r1.x = cmp((int)r0.w == 2);
      if (r1.x != 0) {
        r1.x = cmp((int)r0.z < 0);
        if (r1.x != 0) {
          // Needs manual fix for instruction:
                imm_atomic_iadd r1.x, u0, l(0, 8, 0, 0), l(1)
          InterlockedAdd(dest, imm_value, orig_value);
          r1.y = cmp((int)r1.x < asint(cb0[1].y));
          if (r1.y != 0) {
            r1.x = (int)r1.x + 1;
            r2.xy = r0.xy;
            r2.zw = float2(8.26766094e-044,0);
            u0[r1.x].val[0/4] = r2.x;
            u0[r1.x].val[0/4+1] = r2.y;
            u0[r1.x].val[0/4+2] = r2.z;
            u0[r1.x].val[0/4+3] = r2.w;
          }
          r0.x = cb0[0].z + r0.x;
          r0.z = -(int)r0.z;
        }
        r1.z = r0.z;
        r1.xyw = float3(1,1,0);
        while (true) {
          r2.x = cmp((uint)r1.w >= 9);
          if (r2.x != 0) break;
          uiDest.z = (uint)r1.z / 10;
          r1.z = uiDest.z;
          r2.x = cmp(0 < (uint)r1.z);
          r3.x = (int)r1.x + 1;
          r3.y = (int)r1.y * 10;
          r1.xy = r2.xx ? r3.xy : r1.xy;
          r1.w = (int)r1.w + 1;
        }
        r2.w = 0;
        r2.x = r0.x;
        r2.y = r0.y;
        r1.z = cb0[1].y;
        r1.w = r0.z;
        r3.x = r1.y;
        r3.y = 0;
        while (true) {
          r3.z = cmp((uint)r3.y >= (uint)r1.x);
          if (r3.z != 0) break;
          uiDest.z = (uint)r1.w / (uint)r3.x;
          r3.z = uiDest.z;
          // Needs manual fix for instruction:
                imm_atomic_iadd r4.x, u0, l(0, 8, 0, 0), l(1)
          InterlockedAdd(dest, imm_value, orig_value);
          r3.w = cmp((int)r4.x < (int)r1.z);
          if (r3.w != 0) {
            r3.w = max(0, (int)r3.z);
            r2.z = min(9, (int)r3.w);
            r3.w = (int)r4.x + 1;
            u0[r3.w].val[0/4] = r2.x;
            u0[r3.w].val[0/4+1] = r2.y;
            u0[r3.w].val[0/4+2] = r2.z;
            u0[r3.w].val[0/4+3] = r2.w;
          }
          r2.x = cb0[0].z + r2.x;
          r1.w = mad((int)-r3.z, (int)r3.x, (int)r1.w);
          uiDest.x = (uint)r3.x / 10;
          r3.x = uiDest.x;
          r3.y = (int)r3.y + 1;
        }
      } else {
        r1.x = cmp((int)r0.w == 3);
        if (r1.x != 0) {
          r1.z = r0.z;
          r1.xyw = float3(1,1,0);
          while (true) {
            r2.x = cmp((uint)r1.w >= 9);
            if (r2.x != 0) break;
            uiDest.z = (uint)r1.z / 10;
            r1.z = uiDest.z;
            r2.x = cmp(0 < (uint)r1.z);
            r3.x = (int)r1.x + 1;
            r3.y = (int)r1.y * 10;
            r1.xy = r2.xx ? r3.xy : r1.xy;
            r1.w = (int)r1.w + 1;
          }
          r2.w = 0;
          r2.xy = r0.xy;
          r1.z = cb0[1].y;
          r1.w = r0.z;
          r3.x = r1.y;
          r3.y = 0;
          while (true) {
            r3.z = cmp((uint)r3.y >= (uint)r1.x);
            if (r3.z != 0) break;
            uiDest.z = (uint)r1.w / (uint)r3.x;
            r3.z = uiDest.z;
            // Needs manual fix for instruction:
                    imm_atomic_iadd r4.x, u0, l(0, 8, 0, 0), l(1)
            InterlockedAdd(dest, imm_value, orig_value);
            r3.w = cmp((int)r4.x < (int)r1.z);
            if (r3.w != 0) {
              r3.w = max(0, (int)r3.z);
              r2.z = min(9, (int)r3.w);
              r3.w = (int)r4.x + 1;
              u0[r3.w].val[0/4] = r2.x;
              u0[r3.w].val[0/4+1] = r2.y;
              u0[r3.w].val[0/4+2] = r2.z;
              u0[r3.w].val[0/4+3] = r2.w;
            }
            r2.x = cb0[0].z + r2.x;
            r1.w = mad((int)-r3.z, (int)r3.x, (int)r1.w);
            uiDest.x = (uint)r3.x / 10;
            r3.x = uiDest.x;
            r3.y = (int)r3.y + 1;
          }
        } else {
          r0.w = cmp((int)r0.w == 4);
          if (r0.w != 0) {
            // Needs manual fix for instruction:
                    imm_atomic_iadd r1.x, u0, l(0, 8, 0, 0), l(1)
            InterlockedAdd(dest, imm_value, orig_value);
            r0.w = cmp((int)r1.x < asint(cb0[1].y));
            if (r0.w != 0) {
              r0.w = (int)r1.x + 1;
              r1.xy = r0.xy;
              r1.zw = float2(0,0);
              u0[r0.w].val[0/4] = r1.x;
              u0[r0.w].val[0/4+1] = r1.y;
              u0[r0.w].val[0/4+2] = r1.z;
              u0[r0.w].val[0/4+3] = r1.w;
            }
            r1.x = cb0[0].z + r0.x;
            // Needs manual fix for instruction:
                    imm_atomic_iadd r2.x, u0, l(0, 8, 0, 0), l(1)
            InterlockedAdd(dest, imm_value, orig_value);
            r0.x = cmp((int)r2.x < asint(cb0[1].y));
            if (r0.x != 0) {
              r0.x = (int)r2.x + 1;
              r1.y = r0.y;
              r1.zw = float2(4.62428493e-044,0);
              u0[r0.x].val[0/4] = r1.x;
              u0[r0.x].val[0/4+1] = r1.y;
              u0[r0.x].val[0/4+2] = r1.z;
              u0[r0.x].val[0/4+3] = r1.w;
            }
            r0.x = cb0[0].z + r1.x;
            r1.w = 0;
            r1.x = r0.x;
            r1.y = r0.y;
            r0.w = 7;
            while (true) {
              r2.x = cmp((int)r0.w < 0);
              if (r2.x != 0) break;
              // Needs manual fix for instruction:
                        imm_atomic_iadd r2.x, u0, l(0, 8, 0, 0), l(1)
              InterlockedAdd(dest, imm_value, orig_value);
              r2.y = cmp((int)r2.x < asint(cb0[1].y));
              if (r2.y != 0) {
                r2.y = (uint)r0.w << 2;
                r2.y = (uint)r0.z >> (uint)r2.y;
                r1.z = (int)r2.y & 15;
                r2.x = (int)r2.x + 1;
                u0[r2.x].val[0/4] = r1.x;
                u0[r2.x].val[0/4+1] = r1.y;
                u0[r2.x].val[0/4+2] = r1.z;
                u0[r2.x].val[0/4+3] = r1.w;
              }
              r1.x = cb0[0].z + r1.x;
              r0.w = (int)r0.w + -1;
            }
          }
        }
      }
    }
  }
  return;
}