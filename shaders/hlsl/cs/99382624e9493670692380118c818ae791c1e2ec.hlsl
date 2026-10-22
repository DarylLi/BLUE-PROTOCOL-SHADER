// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g1[64];
groupshared struct { float val[4]; } g0[64];
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = asint(cb0[0].zw) + int2(-1,-1);
  r0.xy = min((uint2)vThreadID.xy, (uint2)r0.xy);
  r0.zw = float2(0,0);
  r0.x = t0.Load(r0.xyz).w;
  r1.xy = min(float2(0,0), r0.xx);
  r1.zw = max(float2(0,0), r0.xx);
  r0.y = cmp(0 < r0.x);
  r0.x = r0.y ? r0.x : 16384;
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r1.x;
  g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r1.y;
  g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r1.z;
  g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r1.w;
  g1[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  GroupMemoryBarrierWithGroupSync();
  r2.xyzw = cmp((uint4)vThreadIDInGroupFlattened.xxxx < int4(32,16,8,4));
  if (r2.x != 0) {
    r0.y = (int)vThreadIDInGroupFlattened.x + 32;
    r3.x = g0[r0.y].val[0/4];
    r3.y = g0[r0.y].val[0/4+1];
    r3.z = g0[r0.y].val[0/4+2];
    r3.w = g0[r0.y].val[0/4+3];
    r0.y = g1[r0.y].val[0/4];
    r4.xw = min(r3.xw, r1.yw);
    r4.yz = max(r3.yz, r1.yw);
    r0.x = min(r0.x, r0.y);
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r4.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r4.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r4.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r4.w;
    g1[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
    r1.xyzw = r4.yxzw;
  } else {
    r1.xw = r1.yw;
    r1.yz = r1.yw;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r2.y != 0) {
    r0.y = (int)vThreadIDInGroupFlattened.x + 16;
    r3.x = g0[r0.y].val[0/4];
    r3.y = g0[r0.y].val[0/4+1];
    r3.z = g0[r0.y].val[0/4+2];
    r3.w = g0[r0.y].val[0/4+3];
    r0.y = g1[r0.y].val[0/4];
    r1.yw = min(r3.xw, r1.yw);
    r1.xz = max(r3.yz, r1.xz);
    r0.x = min(r0.x, r0.y);
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r1.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r1.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r1.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r1.w;
    g1[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r2.z != 0) {
    r0.y = (int)vThreadIDInGroupFlattened.x + 8;
    r3.x = g0[r0.y].val[0/4];
    r3.y = g0[r0.y].val[0/4+1];
    r3.z = g0[r0.y].val[0/4+2];
    r3.w = g0[r0.y].val[0/4+3];
    r0.y = g1[r0.y].val[0/4];
    r1.yw = min(r3.xw, r1.yw);
    r1.xz = max(r3.yz, r1.xz);
    r0.x = min(r0.x, r0.y);
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r1.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r1.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r1.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r1.w;
    g1[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r2.w != 0) {
    r0.y = (int)vThreadIDInGroupFlattened.x + 4;
    r2.x = g0[r0.y].val[0/4];
    r2.y = g0[r0.y].val[0/4+1];
    r2.z = g0[r0.y].val[0/4+2];
    r2.w = g0[r0.y].val[0/4+3];
    r0.y = g1[r0.y].val[0/4];
    r1.yw = min(r2.xw, r1.yw);
    r1.xz = max(r2.yz, r1.xz);
    r0.x = min(r0.x, r0.y);
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r1.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r1.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r1.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r1.w;
    g1[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  r0.y = cmp((uint)vThreadIDInGroupFlattened.x < 2);
  if (r0.y != 0) {
    r0.y = (int)vThreadIDInGroupFlattened.x + 2;
    r2.x = g0[r0.y].val[0/4];
    r2.y = g0[r0.y].val[0/4+1];
    r2.z = g0[r0.y].val[0/4+2];
    r2.w = g0[r0.y].val[0/4+3];
    r0.y = g1[r0.y].val[0/4];
    r1.yw = min(r2.xw, r1.yw);
    r1.xz = max(r2.yz, r1.xz);
    r0.x = min(r0.x, r0.y);
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r1.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r1.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r1.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r1.w;
    g1[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (vThreadIDInGroupFlattened.x == 0) {
    r2.x = g0[1].val[0/4];
    r2.y = g0[1].val[0/4+1];
    r2.z = g0[1].val[0/4+2];
    r2.w = g0[1].val[0/4+3];
    r0.y = g1[1].val[0/4];
    r3.x = min(r2.x, r1.y);
    r3.y = max(r2.y, r1.x);
    r4.yw = min(r2.ww, r1.ww);
    r4.x = max(r2.z, r1.z);
    r4.z = min(r0.x, r0.y);
    r3.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadGroupID.xyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, vThreadGroupID.xyyy, r4.xyzw
  }
  return;
}