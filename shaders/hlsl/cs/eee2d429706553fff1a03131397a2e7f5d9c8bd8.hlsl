// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

Buffer<sint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[65];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[0].x));
  if (r0.x != 0) {
    r0.xyz = float3(0,0,-1);
    while (true) {
      r0.w = cmp((int)r0.y >= asint(cb0[32].y));
      if (r0.w != 0) break;
      r0.w = t0.Load(r0.x).x;
      r0.w = cmp((uint)vThreadID.x >= (uint)r0.w);
      r1.x = (int)r0.x + asint(cb0[0].y);
      r1.z = t0.Load(r1.x).x;
      r1.z = cmp((uint)vThreadID.x < (uint)r1.z);
      r0.w = r0.w ? r1.z : 0;
      if (r0.w != 0) {
        r0.z = cb0[r0.y+33].x;
        break;
      }
      r1.y = (int)r0.y + 1;
      r0.xy = r1.xy;
      r0.z = -1;
    }
    r0.y = cmp((int)r0.z != -1);
    if (r0.y != 0) {
      r0.y = r0.x;
      r0.w = 0;
      r1.x = -1;
      while (true) {
        r1.y = cmp((int)r0.w >= asint(cb0[0].y));
        if (r1.y != 0) break;
        r1.y = t0.Load(r0.y).x;
        r1.y = cmp((uint)vThreadID.x >= (uint)r1.y);
        r2.x = (int)r0.y + 1;
        r1.z = t0.Load(r2.x).x;
        r1.z = cmp((uint)vThreadID.x < (uint)r1.z);
        r1.y = r1.z ? r1.y : 0;
        if (r1.y != 0) {
          r1.x = r0.w;
          break;
        }
        r2.y = (int)r0.w + 1;
        r0.yw = r2.xy;
        r1.x = -1;
      }
      r0.x = cmp((int)r1.x != -1);
      if (r0.x != 0) {
        r0.x = t0.Load(r0.y).x;
        r0.x = (int)-r0.x + (int)vThreadID.x;
        r1.yz = t2.Load(r0.y).xy;
        r2.xyz = t1.Load(r0.y).xyz;
        r0.yw = (int2)r1.yz + (int2)-r2.xy;
        r0.w = (int)r0.y * (int)r0.w;
        uiDest.x = (uint)r0.x / (uint)r0.w;
        r3.x = (uint)r0.x % (uint)r0.w;
        r0.x = uiDest.x;
        uiDest.x = (uint)r3.x / (uint)r0.y;
        r4.x = (uint)r3.x % (uint)r0.y;
        r3.x = uiDest.x;
        r4.y = r3.x;
        r4.z = r0.x;
        r0.xyw = (int3)r2.xyz + (int3)r4.xyz;
        r1.yzw = cmp((uint3)r0.xyw < asuint(cb0[0].zzz));
        r1.y = r1.z ? r1.y : 0;
        r1.y = r1.w ? r1.y : 0;
        if (r1.y != 0) {
          r1.x = mad(asint(cb0[r0.z+1].x), asint(cb0[0].y), (int)r1.x);
          r0.x = mad((int)r0.y, asint(cb0[0].z), (int)r0.x);
          r0.y = mad(asint(cb0[0].z), (int)r1.x, (int)r0.w);
          r0.w = asint(cb0[0].z) * asint(cb0[0].z);
          r0.x = mad((int)r0.w, (int)r0.y, (int)r0.x);
          r1.xyzw = cmp((int4)r0.zzzz == int4(2,5,6,7));
          r0.y = (int)r1.y | (int)r1.x;
          r0.y = (int)r1.z | (int)r0.y;
          r0.y = (int)r1.w | (int)r0.y;
          r0.z = cmp((int)r0.z == 13);
          r0.y = (int)r0.z | (int)r0.y;
          if (r0.y != 0) {
            r0.y = (int)r0.w * asint(cb0[0].z);
            r0.z = (int)r0.y * asint(cb0[0].y);
          // No code for instruction (needs manual fix):
                    store_uav_typed u0.xyzw, r0.xxxx, l(0,0,0,0)
            r0.y = mad((int)r0.y, asint(cb0[0].y), (int)r0.x);
          // No code for instruction (needs manual fix):
                    store_uav_typed u0.xyzw, r0.yyyy, l(0,0,0,0)
            r0.y = (uint)r0.z << 1;
            r0.y = (int)r0.y + (int)r0.x;
          // No code for instruction (needs manual fix):
                    store_uav_typed u0.xyzw, r0.yyyy, l(0,0,0,0)
          } else {
          // No code for instruction (needs manual fix):
                    store_uav_typed u0.xyzw, r0.xxxx, l(0,0,0,0)
          }
        }
      }
    }
  }
  return;
}