// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[64];
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

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
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  bitmask.x = ((~(-1 << 1)) << 2) & 0xffffffff;  r0.x = (((uint)vThreadIDInGroupFlattened.x << 2) & bitmask.x) | ((uint)0 & ~bitmask.x);
  r0.y = (uint)vThreadIDInGroupFlattened.x << 1;
  r0.y = (int)r0.y & 4;
  r1.xyz = (uint3)vThreadIDInGroupFlattened.xxx >> int3(1,2,5);
  r0.zw = (int2)r1.xy & int2(2,2);
  r0.xy = (int2)r0.xy + (int2)r0.zw;
  if (1 == 0) r0.z = 0; else if (1+4 < 32) {   r0.z = (uint)vThreadIDInGroupFlattened.x << (32-(1 + 4)); r0.z = (uint)r0.z >> (32-1);  } else r0.z = (uint)vThreadIDInGroupFlattened.x >> 4;
  r2.x = (int)r0.x + (int)r0.z;
  r2.yzw = (int3)r0.yyy + (int3)r1.zzz;
  r0.xyzw = mad((int4)vThreadGroupID.xyyy, int4(8,8,8,8), (int4)r2.xyzw);
  r1.xy = (uint2)r0.xw;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xy = r1.xy * cb0[1].xy + cb0[1].zw;
  r1.xy = cb0[2].xy * float2(-0.25,-0.25) + r1.xy;
  r1.zw = cb0[2].zw + -cb0[2].xy;
  r1.xy = min(r1.xy, r1.zw);
  r1.xyzw = t0.Gather(s0_s, r1.xy).xyzw;
  r1.xy = max(r1.xz, r1.yw);
  r1.x = max(r1.x, r1.y);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xwww, r1.xxxx
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r1.x;
  GroupMemoryBarrierWithGroupSync();
  r1.y = cmp((uint)vThreadIDInGroupFlattened.x < 16);
  if (r1.y != 0) {
    r1.yzw = (int3)vThreadIDInGroupFlattened.xxx + int3(16,32,48);
    r1.y = g0[r1.y].val[0/4];
    r1.z = g0[r1.z].val[0/4];
    r1.w = g0[r1.w].val[0/4];
    r1.x = max(r1.x, r1.y);
    r1.y = max(r1.z, r1.w);
    r1.x = max(r1.x, r1.y);
    r0.xyzw = (uint4)r0.xyzw >> int4(1,1,1,1);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xyzw, r1.xxxx
  }
  return;
}