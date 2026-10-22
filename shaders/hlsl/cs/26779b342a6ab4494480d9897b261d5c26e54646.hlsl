// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g1[64];
groupshared struct { float val[4]; } g0[64];
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
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
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xy = cb0[1].xy * r0.xy;
  r0.xy = min(cb0[1].zw, r0.xy);
  r0.xyzw = t0.Gather(s0_s, r0.xy).xyzw;
  r1.xyzw = cmp(float4(0,0,0,0) < r0.xyzw);
  r2.xyzw = min(float4(0,0,0,0), r0.xyzw);
  r3.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.xyzw = r1.xyzw ? r0.xyzw : float4(16384,16384,16384,16384);
  r1.x = min(r2.x, r2.y);
  r1.y = max(r2.x, r2.y);
  r1.z = min(r3.x, r3.y);
  r1.w = max(r3.x, r3.y);
  r0.x = min(r0.x, r0.y);
  r0.y = min(r1.x, r2.z);
  r1.x = max(r1.y, r2.z);
  r1.y = min(r1.z, r3.z);
  r1.z = max(r1.w, r3.z);
  r0.x = min(r0.x, r0.z);
  r4.y = min(r0.y, r2.w);
  r4.x = max(r1.x, r2.w);
  r4.w = min(r1.y, r3.w);
  r4.z = max(r1.z, r3.w);
  r0.x = min(r0.x, r0.w);
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r4.y;
  g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r4.x;
  g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r4.z;
  g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r4.w;
  g1[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  GroupMemoryBarrierWithGroupSync();
  r1.xyzw = cmp((uint4)vThreadIDInGroupFlattened.xxxx < int4(32,16,8,4));
  if (r1.x != 0) {
    r0.y = (int)vThreadIDInGroupFlattened.x + 32;
    r2.x = g0[r0.y].val[0/4];
    r2.y = g0[r0.y].val[0/4+1];
    r2.z = g0[r0.y].val[0/4+2];
    r2.w = g0[r0.y].val[0/4+3];
    r0.y = g1[r0.y].val[0/4];
    r4.yw = min(r4.yw, r2.xw);
    r4.xz = max(r4.xz, r2.yz);
    r0.x = min(r0.x, r0.y);
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r4.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r4.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r4.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r4.w;
    g1[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.y != 0) {
    r0.y = (int)vThreadIDInGroupFlattened.x + 16;
    r2.x = g0[r0.y].val[0/4];
    r2.y = g0[r0.y].val[0/4+1];
    r2.z = g0[r0.y].val[0/4+2];
    r2.w = g0[r0.y].val[0/4+3];
    r0.y = g1[r0.y].val[0/4];
    r4.yw = min(r4.yw, r2.xw);
    r4.xz = max(r4.xz, r2.yz);
    r0.x = min(r0.x, r0.y);
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r4.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r4.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r4.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r4.w;
    g1[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.z != 0) {
    r0.y = (int)vThreadIDInGroupFlattened.x + 8;
    r2.x = g0[r0.y].val[0/4];
    r2.y = g0[r0.y].val[0/4+1];
    r2.z = g0[r0.y].val[0/4+2];
    r2.w = g0[r0.y].val[0/4+3];
    r0.y = g1[r0.y].val[0/4];
    r4.yw = min(r4.yw, r2.xw);
    r4.xz = max(r4.xz, r2.yz);
    r0.x = min(r0.x, r0.y);
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r4.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r4.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r4.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r4.w;
    g1[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.w != 0) {
    r0.y = (int)vThreadIDInGroupFlattened.x + 4;
    r1.x = g0[r0.y].val[0/4];
    r1.y = g0[r0.y].val[0/4+1];
    r1.z = g0[r0.y].val[0/4+2];
    r1.w = g0[r0.y].val[0/4+3];
    r0.y = g1[r0.y].val[0/4];
    r4.yw = min(r4.yw, r1.xw);
    r4.xz = max(r4.xz, r1.yz);
    r0.x = min(r0.x, r0.y);
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r4.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r4.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r4.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r4.w;
    g1[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  r0.y = cmp((uint)vThreadIDInGroupFlattened.x < 2);
  if (r0.y != 0) {
    r0.y = (int)vThreadIDInGroupFlattened.x + 2;
    r1.x = g0[r0.y].val[0/4];
    r1.y = g0[r0.y].val[0/4+1];
    r1.z = g0[r0.y].val[0/4+2];
    r1.w = g0[r0.y].val[0/4+3];
    r0.y = g1[r0.y].val[0/4];
    r4.yw = min(r4.yw, r1.xw);
    r4.xz = max(r4.xz, r1.yz);
    r0.x = min(r0.x, r0.y);
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r4.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r4.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r4.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r4.w;
    g1[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (vThreadIDInGroupFlattened.x == 0) {
    r1.x = g0[1].val[0/4];
    r1.y = g0[1].val[0/4+1];
    r1.z = g0[1].val[0/4+2];
    r1.w = g0[1].val[0/4+3];
    r0.y = g1[1].val[0/4];
    r2.x = min(r4.y, r1.x);
    r2.y = max(r4.x, r1.y);
    r3.yw = min(r4.ww, r1.ww);
    r3.x = max(r4.z, r1.z);
    r3.z = min(r0.x, r0.y);
    r2.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadGroupID.xyyy, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, vThreadGroupID.xyyy, r3.xyzw
  }
  return;
}