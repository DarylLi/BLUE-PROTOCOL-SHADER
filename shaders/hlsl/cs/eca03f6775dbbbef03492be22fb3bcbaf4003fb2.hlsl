// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[2]; } g0[256];
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[33];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.xy = asint(-cb0[32].xy) + asint(cb0[32].zw);
  r0.zw = (int2)r0.xy * (int2)vThreadIDInGroup.xy;
  r0.zw = (uint2)r0.zw >> int2(4,4);
  r1.xy = (int2)vThreadIDInGroup.xy + int2(1,1);
  r1.xy = (int2)r0.xy * (int2)r1.xy;
  r1.xy = (uint2)r1.xy >> int2(4,4);
  r1.zw = (int2)-r0.zw + (int2)r1.xy;
  r1.zw = cmp((int2)r1.zw == int2(0,0));
  r1.z = (int)r1.w | (int)r1.z;
  if (r1.z == 0) {
    r0.xy = (uint2)r0.xy;
    r0.xy = float2(1,1) / r0.xy;
    r2.zw = float2(0,0);
    r3.xz = float2(0,0);
    r2.x = r0.z;
    while (true) {
      r1.z = cmp((uint)r2.x >= (uint)r1.x);
      if (r1.z != 0) break;
      r1.z = (uint)r2.x;
      r4.x = r1.z * r0.x;
      r1.zw = float2(0,0);
      r2.y = r0.w;
      while (true) {
        r3.w = cmp((uint)r2.y >= (uint)r1.y);
        if (r3.w != 0) break;
        r3.w = (uint)r2.y;
        r4.y = r3.w * r0.y;
        r3.w = t0.SampleLevel(s0_s, r4.xy, 0).x;
        r3.w = max(0.0500000007, r3.w);
        r1.w = r3.w + r1.w;
        r4.y = t2.Load(r2.xyz).w;
        r1.z = r3.w * r4.y + r1.z;
        r2.y = (int)r2.y + 1;
      }
      r3.xz = r3.xz + r1.zw;
      r2.x = (int)r2.x + 1;
    }
    r3.y = max(1.00000001e-010, r3.z);
  } else {
    r3.xy = float2(0,1.00000001e-010);
  }
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r3.x;
  g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r3.y;
  GroupMemoryBarrierWithGroupSync();
  r0.xyzw = (int4)vThreadIDInGroupFlattened.xxxx ^ int4(1,2,4,8);
  r1.x = g0[r0.x].val[0/4];
  r1.y = g0[r0.x].val[0/4+1];
  r1.xy = r3.xy + r1.xy;
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r1.x;
  g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r1.y;
  GroupMemoryBarrierWithGroupSync();
  r0.x = g0[r0.y].val[0/4];
  r0.y = g0[r0.y].val[0/4+1];
  r0.xy = r1.xy + r0.xy;
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  r1.x = g0[r0.z].val[0/4];
  r1.y = g0[r0.z].val[0/4+1];
  r0.xy = r1.xy + r0.xy;
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  r0.z = g0[r0.w].val[0/4];
  r0.w = g0[r0.w].val[0/4+1];
  r0.xy = r0.xy + r0.zw;
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  r1.xyzw = (int4)vThreadIDInGroupFlattened.xxxx ^ int4(16,32,64,128);
  r0.z = g0[r1.x].val[0/4];
  r0.w = g0[r1.x].val[0/4+1];
  r0.xy = r0.xy + r0.zw;
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  r0.z = g0[r1.y].val[0/4];
  r0.w = g0[r1.y].val[0/4+1];
  r0.xy = r0.xy + r0.zw;
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  r0.z = g0[r1.z].val[0/4];
  r0.w = g0[r1.z].val[0/4+1];
  r0.xy = r0.xy + r0.zw;
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  r0.z = g0[r1.w].val[0/4];
  r0.w = g0[r1.w].val[0/4+1];
  r0.xy = r0.xy + r0.zw;
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r0.x;
  g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r0.y;
  GroupMemoryBarrierWithGroupSync();
  if (vThreadIDInGroupFlattened.x == 0) {
    r0.x = g0[0].val[0/4];
    r0.y = g0[0].val[0/4+1];
    r0.x = r0.x / r0.y;
    r0.x = -cb0[29].y + r0.x;
    r0.x = r0.x / cb0[29].x;
    r0.x = exp2(r0.x);
    r0.z = cb1[135].z * r0.x;
    r1.x = cb0[28].x * cb0[27].w;
    r1.x = cb0[30].x * r1.x;
    r1.y = max(cb0[27].y, r0.z);
    r1.y = min(cb0[27].z, r1.y);
    r1.z = t1.Load(float4(0,0,0,0)).x;
    r1.w = cmp(r1.z != 0.000000);
    r1.z = r1.w ? r1.z : 1;
    r1.z = r1.x / r1.z;
    r1.w = log2(r1.y);
    r1.z = log2(r1.z);
    r2.x = r1.w + -r1.z;
    r2.y = cmp(0 < r2.x);
    r2.z = r2.y ? cb0[28].z : cb0[28].w;
    r2.y = r2.y ? cb0[30].y : cb0[30].z;
    r2.w = -cb0[28].y * r2.z;
    r2.w = exp2(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = r2.x * r2.w;
    r2.y = r2.w * r2.y + r1.z;
    r2.w = cmp(r1.z < r1.w);
    r3.x = cb0[28].y * r2.z + r1.z;
    r3.x = min(r3.x, r1.w);
    r1.z = -cb0[28].y * r2.z + r1.z;
    r1.z = max(r1.w, r1.z);
    r1.z = r2.w ? r3.x : r1.z;
    r1.w = cmp(cb0[30].w < abs(r2.x));
    r1.z = r1.w ? r1.z : r2.y;
    r1.z = exp2(r1.z);
    r1.w = r1.y + -r1.z;
    r1.z = cb0[31].y * r1.w + r1.z;
    r1.z = max(cb0[27].y, r1.z);
    r1.z = min(cb0[27].z, r1.z);
    r1.yz = max(float2(9.99999975e-005,9.99999975e-005), r1.yz);
    r1.z = 1 / r1.z;
    r1.y = 1 / r1.y;
    r0.xy = r1.xx * r1.zy;
    r0.w = r1.x / cb0[30].x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, l(0,0,0,0), r0.xyzw
  }
  return;
}