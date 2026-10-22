// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 512, 1, 1
  r0.xy = asint(cb0[2].xx) & int2(1,2);
  r0.zw = asint(-cb0[1].yx) + asint(cb0[1].wz);
  r0.zw = r0.xx ? r0.zw : r0.wz;
  r1.x = (int)r0.w + -2;
  r1.w = r0.y ? r1.x : r0.w;
  if (r0.y != 0) {
    r0.y = (uint)r1.w >> 1;
    r0.w = cmp((int)vThreadGroupID.z != 0);
    r0.y = cmp((int)r0.y != (int)vThreadGroupID.z);
    r0.y = r0.y ? r0.w : 0;
    if (r0.y != 0) {
      r2.x = (int)r1.w + (int)-vThreadGroupID.z;
      r2.y = vThreadGroupID.z;
      r3.zw = float2(0,0);
      r4.zw = float2(0,0);
      r2.z = vThreadIDInGroup.x;
      while (true) {
        r0.y = cmp((uint)r2.z >= (uint)r0.z);
        if (r0.y != 0) break;
        r5.xyzw = r0.xxxx ? r2.yzxz : r2.zyzx;
        r3.xy = (int2)r5.xy + asint(cb0[1].xy);
        r6.xyzw = t0.Load(r3.xyz).xyzw;
        r4.xy = (int2)r5.zw + asint(cb0[1].xy);
        r5.xyzw = t0.Load(r4.xyz).xyzw;
        r7.xyzw = r5.xyzw * float4(1,-1,1,-1) + r6.xyzw;
        r7.xyzw = float4(0.5,0.5,0.5,0.5) * r7.xyzw;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r3.xyyy, r7.xyzw
        r5.xyzw = -r6.yxwz * float4(-1,1,-1,1) + r5.yxwz;
        r5.xyzw = float4(-0.5,-0.5,-0.5,-0.5) * r5.xyzw;
        r5.xyzw = float4(-1,1,-1,1) * r5.xyzw;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyyy, r5.xyzw
        r2.z = (int)r2.z + 512;
      }
    } else {
      r1.x = (int)r1.w + 1;
      r1.y = vThreadGroupID.z;
      r2.zw = float2(0,0);
      r3.yw = float2(0,0);
      r4.yw = float2(0,0);
      r1.z = vThreadIDInGroup.x;
      while (true) {
        r0.y = cmp((uint)r1.z >= (uint)r0.z);
        if (r0.y != 0) break;
        r0.yw = r0.xx ? r1.yz : r1.zy;
        r2.xy = (int2)r0.yw + asint(cb0[1].xy);
        r5.xyzw = t0.Load(r2.xyz).xyzw;
        r3.xz = r5.xz;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r2.xyyy, r3.xyzw
        r6.xyzw = r0.xxxx ? r1.wzzz : r1.zwww;
        r7.xyzw = r0.xxxx ? r1.xzzz : r1.zxxx;
        r6.xyzw = vThreadGroupID.zzzz ? r7.xyzw : r6.xyzw;
        r6.xyzw = (int4)r6.xyzw + asint(cb0[1].xyyy);
        r4.xz = r5.yw;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r6.xyzw, r4.xyzw
        r1.z = (int)r1.z + 512;
      }
    }
  } else {
    r0.y = (uint)r1.w >> 1;
    r0.w = cmp((int)vThreadGroupID.z != 0);
    r2.x = cmp((int)r0.y != (int)vThreadGroupID.z);
    r0.w = r0.w ? r2.x : 0;
    if (r0.w != 0) {
      r0.y = cmp((uint)r0.y < (uint)vThreadGroupID.z);
      if (r0.y != 0) {
        return;
      }
      r2.x = (int)r1.w + (int)-vThreadGroupID.z;
      r2.y = vThreadGroupID.z;
      r3.zw = float2(0,0);
      r4.zw = float2(0,0);
      r2.z = vThreadIDInGroup.x;
      while (true) {
        r0.y = cmp((uint)r2.z >= (uint)r0.z);
        if (r0.y != 0) break;
        r5.xyzw = r0.xxxx ? r2.yzxz : r2.zyzx;
        r3.xy = (int2)r5.zw + asint(cb0[1].xy);
        r6.xyzw = t0.Load(r3.xyz).xyzw;
        r4.xy = (int2)r5.xy + asint(cb0[1].xy);
        r5.xyzw = t0.Load(r4.xyz).xyzw;
        r7.xyzw = r5.xyzw + r6.yxwz;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r4.xyyy, r7.xyzw
        r5.xyzw = r6.yxwz + -r5.xyzw;
        r5.xyzw = float4(-1,1,-1,1) * r5.xyzw;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r3.xyyy, r5.xyzw
        r2.z = (int)r2.z + 512;
      }
    } else {
      r1.x = (int)r1.w + 1;
      r1.y = vThreadGroupID.z;
      r2.zw = float2(0,0);
      r3.zw = float2(0,0);
      r1.z = vThreadIDInGroup.x;
      while (true) {
        r0.y = cmp((uint)r1.z >= (uint)r0.z);
        if (r0.y != 0) break;
        r4.xyzw = r0.xxxx ? r1.yzwz : r1.zyzw;
        r2.xy = (int2)r4.xy + asint(cb0[1].xy);
        r5.xz = t0.Load(r2.xyz).xz;
        r0.yw = r0.xx ? r1.xz : r1.zx;
        r0.yw = vThreadGroupID.zz ? r0.yw : r4.zw;
        r3.xy = (int2)r0.yw + asint(cb0[1].xy);
        r5.yw = t0.Load(r3.xyz).xz;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r2.xyyy, r5.xyzw
        r1.z = (int)r1.z + 512;
      }
    }
  }
  return;
}