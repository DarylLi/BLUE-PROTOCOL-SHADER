// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 32, 1, 1
  r0.x = cmp(asint(cb0[2].x) == 1);
  r0.yz = asint(-cb0[1].yx) + asint(cb0[1].wz);
  r0.yz = r0.xx ? r0.yz : r0.zy;
  r0.w = (uint)vThreadGroupID.z << 1;
  r1.x = (int)r0.y + -2;
  r0.y = cmp((uint)r1.x < (uint)r0.w);
  if (r0.x == 0) {
    r2.xy = t1.Load(float4(0,0,0,0)).xz;
    r1.y = 0;
    r1.yw = t1.Load(r1.xyy).xz;
  } else {
    r2.xy = t1.Load(float4(0,0,0,0)).xz;
    r1.z = 0;
    r1.yw = t1.Load(r1.zxz).xz;
  }
  r0.w = max(r2.y, r1.y);
  r0.w = max(r2.x, r0.w);
  r2.xy = float2(1,1) / r0.ww;
  r0.w = 1 / r1.w;
  r2.zw = r0.yy ? r0.ww : r2.yy;
  if (r0.x != 0) {
    r0.y = vThreadGroupID.z;
    r1.zw = float2(0,0);
    r0.x = vThreadIDInGroup.x;
    while (true) {
      r0.w = cmp((uint)r0.x >= (uint)r0.z);
      if (r0.w != 0) break;
      r1.xy = (int2)r0.xy + asint(cb0[1].xy);
      r3.xyzw = t0.Load(r1.xyw).xyzw;
      r3.xyzw = r3.xyzw * r2.xyzw;
      r4.xyzw = t1.Load(r1.xyz).xyzw;
      r5.xy = r4.yw * r3.yw;
      r6.y = dot(r3.yx, r4.xy);
      r6.xz = r3.xz * r4.xz + -r5.xy;
      r6.w = dot(r3.wz, r4.zw);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyyy, r6.xyzw
      r0.x = (int)r0.x + 32;
    }
  } else {
    r0.x = vThreadGroupID.z;
    r1.zw = float2(0,0);
    r0.y = vThreadIDInGroup.x;
    while (true) {
      r0.w = cmp((uint)r0.y >= (uint)r0.z);
      if (r0.w != 0) break;
      r1.xy = (int2)r0.xy + asint(cb0[1].xy);
      r3.xyzw = t0.Load(r1.xyw).xyzw;
      r3.xyzw = r3.xyzw * r2.xyzw;
      r4.xyzw = t1.Load(r1.xyz).xyzw;
      r5.xy = r4.yw * r3.yw;
      r6.y = dot(r3.yx, r4.xy);
      r6.xz = r3.xz * r4.xz + -r5.xy;
      r6.w = dot(r3.wz, r4.zw);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyyy, r6.xyzw
      r0.y = (int)r0.y + 32;
    }
  }
  return;
}