// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[64];
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u1
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = cmp((int2)vThreadID.xy == int2(0,0));
  r0.x = r0.y ? r0.x : 0;
  r0.yz = cmp((int2)vThreadIDInGroup.xy == int2(0,0));
  r0.x = r0.y ? r0.x : 0;
  r0.x = r0.z ? r0.x : 0;
  if (r0.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, l(0,0,0,0), cb0[2].xxxx
  }
  r0.xy = (uint2)cb1[132].xy;
  r0.xy = cmp((uint2)vThreadID.xy < (uint2)r0.xy);
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xy = (uint2)vThreadID.xy;
    r0.xy = cb1[129].xy + r0.xy;
    r0.xy = (uint2)r0.xy;
    r0.xy = (uint2)r0.xy;
    r0.xy = float2(0.5,0.5) + r0.xy;
    r0.xy = cb1[132].zw * r0.xy;
    r0.x = t0.SampleLevel(s0_s, r0.xy, 0).w;
    r0.x = 255 * r0.x;
    r0.x = round(r0.x);
    r0.x = (uint)r0.x;
    r0.x = (int)r0.x & 15;
    r0.x = cmp((int)r0.x == 10);
  } else {
    r0.x = 0;
  }
  r0.y = mad((int)vThreadIDInGroup.y, 8, (int)vThreadIDInGroup.x);
  g0[r0.y].val[0/4] = r0.x;
  GroupMemoryBarrierWithGroupSync();
  r1.xyzw = cmp((int4)r0.yyyy < int4(32,16,8,4));
  if (r1.x != 0) {
    r0.z = (int)r0.y + 32;
    r0.z = g0[r0.z].val[0/4];
    r0.x = (int)r0.z | (int)r0.x;
    g0[r0.y].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.y != 0) {
    r0.x = g0[r0.y].val[0/4];
    r0.z = (int)r0.y + 16;
    r0.z = g0[r0.z].val[0/4];
    r0.x = (int)r0.z | (int)r0.x;
    g0[r0.y].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.z != 0) {
    r0.x = g0[r0.y].val[0/4];
    r0.z = (int)r0.y + 8;
    r0.z = g0[r0.z].val[0/4];
    r0.x = (int)r0.z | (int)r0.x;
    g0[r0.y].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.w != 0) {
    r0.x = g0[r0.y].val[0/4];
    r0.z = (int)r0.y + 4;
    r0.z = g0[r0.z].val[0/4];
    r0.x = (int)r0.z | (int)r0.x;
    g0[r0.y].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  r0.xz = cmp((int2)r0.yy < int2(2,1));
  if (r0.x != 0) {
    r0.x = g0[r0.y].val[0/4];
    r0.w = (int)r0.y + 2;
    r0.w = g0[r0.w].val[0/4];
    r0.x = (int)r0.w | (int)r0.x;
    g0[r0.y].val[0/4] = r0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = g0[r0.y].val[0/4];
  r0.y = (int)r0.y + 1;
  r0.y = g0[r0.y].val[0/4];
  r0.x = (int)r0.y | (int)r0.x;
  r0.x = r0.x ? r0.z : 0;
  if (r0.x != 0) {
    // Needs manual fix for instruction:
    imm_atomic_iadd r0.x, u0, l(1), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.y = mad((int)vThreadGroupID.y, 0x00010000, (int)vThreadGroupID.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xxxx, r0.yyyy
  }
  return;
}