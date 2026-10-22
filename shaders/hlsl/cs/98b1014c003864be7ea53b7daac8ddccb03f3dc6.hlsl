// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DArray<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[16];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (unorm,unorm,unorm,unorm) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.xy = cmp((uint2)vThreadID.xy < asuint(cb0[0].xx));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.x = t0[vThreadID.z].val[0/4];
    r0.y = t0[vThreadID.z].val[0/4+1];
    r0.z = t0[vThreadID.z].val[0/4+2];
    r0.w = t0[vThreadID.z].val[0/4+3];
    r1.x = t0[vThreadID.z].val[16/4];
    r1.y = t0[vThreadID.z].val[16/4+1];
    r1.z = t0[vThreadID.z].val[16/4+2];
    r1.w = t0[vThreadID.z].val[16/4+3];
    r2.x = t0[vThreadID.z].val[32/4];
    r2.y = t0[vThreadID.z].val[32/4+1];
    r2.z = t0[vThreadID.z].val[32/4+2];
    r2.w = t0[vThreadID.z].val[32/4+3];
    r3.x = t0[vThreadID.z].val[48/4];
    r3.y = t0[vThreadID.z].val[48/4+1];
    r3.z = t0[vThreadID.z].val[48/4+2];
    r3.w = t0[vThreadID.z].val[48/4+3];
    t3.GetDimensions(0, fDest.x, fDest.y, fDest.z, fDest.w);
    r4.x = fDest.z;
    r5.w = 0;
    r6.xyzw = float4(0,0,0,0);
    r4.y = 0;
    while (true) {
      r4.w = cmp((int)r4.y >= 4);
      if (r4.w != 0) break;
      r4.w = -(int)r4.y;
      r7.xyz = cmp((uint3)r4.yyy < int3(1,2,3));
      r8.y = r7.y ? r4.w : 0;
      r4.yz = (int2)r4.yy + int2(1,-3);
      r8.z = r7.y ? 0 : r4.z;
      r8.w = cmp((int)r7.z == 0);
      r8.x = r7.x;
      r7.xyzw = r8.xyzw ? r3.xyzw : 0;
      r4.zw = (int2)r7.yw | (int2)r7.xz;
      r4.z = (int)r4.w | (int)r4.z;
      r4.w = cmp((int)r4.z != -1);
      if (r4.w != 0) {
        r7.xyzw = r0.xyzw ? r8.xyzw : 0;
        r7.xy = (int2)r7.yw | (int2)r7.xz;
        r7.x = (int)r7.y | (int)r7.x;
        r9.xyzw = r8.xyzw ? r1.xyzw : 0;
        r7.zw = (int2)r9.yw | (int2)r9.xz;
        r7.y = (int)r7.w | (int)r7.z;
        r5.xy = (int2)r7.xy + (int2)vThreadID.xy;
        r7.xyzw = r8.xyzw ? r2.xyzw : 0;
        r7.xy = (int2)r7.yw | (int2)r7.xz;
        r5.z = (int)r7.y | (int)r7.x;
        r4.w = t3.Load(r5.xyzw).x;
        r7.xyw = r5.xyw;
        r5.xy = float2(0,0);
        while (true) {
          r5.z = (int)r5.y;
          r5.z = cmp(r5.z >= r4.x);
          if (r5.z != 0) break;
          r5.z = t1.Load(r5.y).x;
          r5.z = cmp(r5.z == 1.000000);
          if (r5.z != 0) {
            r7.z = r5.y;
            r5.z = t3.Load(r7.xyzw).x;
            r5.x = r5.x + r5.z;
          }
          r5.y = (int)r5.y + 1;
        }
        r5.y = cmp(r5.x == 0.000000);
        r5.z = saturate(r4.w / r5.x);
        r4.w = r5.y ? r4.w : r5.z;
      } else {
        r4.w = 0;
      }
      if (r4.z == 0) {
        r6.x = r4.w;
      } else {
        r5.y = cmp((int)r4.z == 1);
        if (r5.y != 0) {
          r6.y = r4.w;
        } else {
          r5.y = cmp((int)r4.z == 2);
          if (r5.y != 0) {
            r6.z = r4.w;
          } else {
            r4.z = cmp((int)r4.z == 3);
            r6.w = r4.z ? r4.w : r6.w;
          }
        }
      }
    }
    r0.xy = t2.Load(vThreadID.z).xy;
    r1.xyzw = (uint4)vThreadID.xyyy;
    r0.xyzw = r1.xyzw + r0.xyyy;
    r0.xyzw = (uint4)r0.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r6.xyzw
  }
  return;
}