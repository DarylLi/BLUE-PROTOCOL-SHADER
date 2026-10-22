// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u2
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.zw = cb0[0].xy * r0.xy;
  r1.xyzw = t0.SampleLevel(s0_s, r0.zw, 0).xyzw;
  r0.z = 1 + -r1.y;
  r2.z = -cb0[0].y * r0.y + r0.z;
  r2.xy = -cb0[0].xx * r0.xx + r1.xz;
  r0.x = -cb0[0].y * r0.y + -r1.w;
  r2.w = 1 + r0.x;
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, vThreadID.xyyy, r2.xzxx
// No code for instruction (needs manual fix):
store_uav_typed u2.xyzw, vThreadID.xyyy, r2.ywyy
  r0.xy = cmp((int2)vThreadID.xy == int2(0,0));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, l(0,0,0,0), r1.zwzz
  } else {
    r0.x = asuint(cb0[0].z);
    r0.x = 0.5 * r0.x;
    r0.x = (uint)r0.x;
    r0.y = 0;
    r1.xy = cmp((int2)r0.xy == (int2)vThreadID.xy);
    r0.w = r1.y ? r1.x : 0;
    if (r0.w != 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, l(1,1,1,1), r1.zwzz
    } else {
      r2.x = asint(cb0[0].z) + -1;
      r2.y = 0;
      r1.xy = cmp((int2)r2.xy == (int2)vThreadID.xy);
      r0.w = r1.y ? r1.x : 0;
      if (r0.w != 0) {
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, l(2,2,2,2), r1.zwzz
      } else {
        r0.w = asuint(cb0[0].w);
        r0.w = 0.5 * r0.w;
        r2.z = (uint)r0.w;
        r1.xy = cmp((int2)r2.xz == (int2)vThreadID.xy);
        r0.w = r1.y ? r1.x : 0;
        if (r0.w != 0) {
        // No code for instruction (needs manual fix):
                store_uav_typed u0.xyzw, l(3,3,3,3), r1.zwzz
        } else {
          r2.w = asint(cb0[0].w) + -1;
          r1.xy = cmp((int2)r2.xw == (int2)vThreadID.xy);
          r0.w = r1.y ? r1.x : 0;
          if (r0.w != 0) {
          // No code for instruction (needs manual fix):
                    store_uav_typed u0.xyzw, l(4,4,4,4), r1.zwzz
          } else {
            r0.z = r2.w;
            r0.xw = cmp((int2)r0.xz == (int2)vThreadID.xy);
            r0.x = r0.w ? r0.x : 0;
            if (r0.x != 0) {
            // No code for instruction (needs manual fix):
                        store_uav_typed u0.xyzw, l(5,5,5,5), r1.zwzz
            } else {
              r0.xy = cmp((int2)r0.yz == (int2)vThreadID.xy);
              r0.x = r0.y ? r0.x : 0;
              if (r0.x != 0) {
              // No code for instruction (needs manual fix):
                            store_uav_typed u0.xyzw, l(6,6,6,6), r1.zwzz
              } else {
                r0.xy = cmp((int2)r2.yz == (int2)vThreadID.xy);
                r0.x = r0.y ? r0.x : 0;
                if (r0.x != 0) {
                // No code for instruction (needs manual fix):
                                store_uav_typed u0.xyzw, l(7,7,7,7), r1.zwzz
                }
              }
            }
          }
        }
      }
    }
  }
  return;
}