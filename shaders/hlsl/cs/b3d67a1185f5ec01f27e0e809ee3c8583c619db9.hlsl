// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.xy = vThreadID.xy;
  r0.zw = float2(0,0);
  r0.xyzw = t0.Load(r0.xyz).xyzw;
  r1.zw = float2(0,0);
  r2.y = 0;
  r3.xyzw = r0.xyzw;
  r2.w = -3;
  while (true) {
    r4.x = cmp(3 < (int)r2.w);
    if (r4.x != 0) break;
    r4.x = cmp((int)r2.w == 0);
    r5.xyzw = r3.xyzw;
    r4.y = -3;
    while (true) {
      r4.z = cmp(3 < (int)r4.y);
      if (r4.z != 0) break;
      r4.z = cmp((int)r4.y == 0);
      r4.z = r4.z ? r4.x : 0;
      if (r4.z != 0) {
        r4.y = 1;
        continue;
      } else {
        r2.z = r4.y;
      }
      r1.xy = (int2)r2.wz + (int2)vThreadID.xy;
      r4.zw = cmp((int2)r1.xy >= int2(0,0));
      r6.xy = cmp((int2)r1.xy < asint(cb0[10].zw));
      r4.zw = r4.zw ? r6.xy : 0;
      r4.z = r4.w ? r4.z : 0;
      if (r4.z == 0) {
        r4.y = (int)r2.z + 1;
        continue;
      }
      r6.xyzw = t0.Load(r1.xyz).xyzw;
      r1.xy = cb0[0].zz * r6.zw;
      r4.z = dot(r1.xy, r1.xy);
      r4.w = 9.99999994e-009 + r4.z;
      r4.w = (uint)r4.w >> 1;
      r4.w = (int)-r4.w + 0x5f3759df;
      r2.x = r4.z * r4.w;
      r7.xy = r4.ww * r1.xy;
      r1.x = abs(r7.x) + abs(r7.y);
      r1.xy = r1.xx * float2(0.99000001,0.99000001) + r2.xy;
      r4.zw = (int2)r2.wz;
      r8.x = dot(r7.xy, r4.zw);
      r7.z = -r7.y;
      r8.y = dot(r7.zx, r4.zw);
      r1.xy = cmp(abs(r8.xy) < r1.xy);
      r1.x = r1.y ? r1.x : 0;
      r1.y = dot(r5.xy, r5.xy);
      r2.x = dot(r6.xy, r6.xy);
      r1.y = cmp(r1.y < r2.x);
      r7.xy = r1.yy ? r5.xy : r6.xy;
      r1.y = dot(r5.zw, r5.zw);
      r2.x = dot(r6.zw, r6.zw);
      r1.y = cmp(r2.x < r1.y);
      r7.zw = r1.yy ? r5.zw : r6.zw;
      r5.xyzw = r1.xxxx ? r7.xyzw : r5.xyzw;
      r4.y = (int)r2.z + 1;
    }
    r3.xyzw = r5.xyzw;
    r2.w = (int)r2.w + 1;
  }
  r0.xy = cmp((uint2)vThreadID.xy < asuint(cb0[10].zw));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyyy, r3.xyzw
  }
  return;
}