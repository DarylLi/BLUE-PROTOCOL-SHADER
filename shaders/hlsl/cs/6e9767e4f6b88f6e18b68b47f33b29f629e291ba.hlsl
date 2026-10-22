// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g1[240];
groupshared struct { float val[1]; } g0[240];
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[69];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 8, 1
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[34].xyyy);
  r1.x = cmp((uint)vThreadIDInGroupFlattened.x < 120);
  if (r1.x != 0) {
    r1.xy = (uint2)vThreadGroupID.xy << int2(4,3);
    r1.xy = (int2)r1.xy + asint(cb0[34].xy);
    r1.xy = (int2)r1.xy + int2(-2,-2);
    r1.z = (uint)vThreadIDInGroupFlattened.x << 1;
    uiDest.x = (uint)r1.z / 20;
    r3.x = (uint)r1.z % 20;
    r2.x = uiDest.x;
    r1.z = mad((int)r2.x, 20, (int)r3.x);
    r2.y = r3.x;
    r2.z = r2.x;
    r2.yz = (int2)r1.xy + (int2)r2.yz;
    r1.xy = (int2)r2.yz;
    r1.xy = cb0[67].xx * r1.xy;
    r3.yz = (int2)r1.xy;
    r2.w = 0;
    r1.y = t0.Load(r2.yzw).x;
    r3.w = 0;
    r1.w = t1.Load(r3.yzw).x;
    g0[r1.z].val[0/4] = r1.y;
    g1[r1.z].val[0/4] = r1.w;
    r1.y = (int)r1.z + 1;
    r2.x = (int)r2.y + 1;
    r1.x = trunc(r1.x);
    r1.x = cb0[67].x + r1.x;
    r3.x = (int)r1.x;
    r1.x = t0.Load(r2.xzw).x;
    r1.w = t1.Load(r3.xzw).x;
    g0[r1.y].val[0/4] = r1.x;
    g1[r1.y].val[0/4] = r1.w;
  }
  GroupMemoryBarrierWithGroupSync();
  r1.x = (int)vThreadIDInGroup.x + 2;
  r1.x = mad((int)vThreadIDInGroup.y, 20, (int)r1.x);
  r2.xyzw = (int4)r1.xxxx + int4(40,38,39,41);
  r1.y = g1[r2.x].val[0/4];
  r1.zw = (int2)cb0[68].xy;
  r3.xy = (int2)r1.zz + (int2)vThreadIDInGroup.xy;
  r2.x = (int)r3.x + 2;
  r2.x = mad((int)r3.y, 20, (int)r2.x);
  r2.x = (int)r2.x + 40;
  r2.y = g1[r2.y].val[0/4];
  r2.z = g1[r2.z].val[0/4];
  r2.w = g1[r2.w].val[0/4];
  r3.xyzw = (int4)r1.xxxx + int4(42,20,60,80);
  r3.x = g1[r3.x].val[0/4];
  r2.y = r2.z + -r2.y;
  r2.z = r2.z + r2.y;
  r2.z = r2.z + -r1.y;
  r4.x = r2.w * 2 + -r3.x;
  r4.x = r4.x + -r1.y;
  r2.z = cmp(abs(r2.z) < abs(r4.x));
  r2.w = r3.x + -r2.w;
  r2.y = r2.z ? r2.y : r2.w;
  r1.x = g1[r1.x].val[0/4];
  r2.z = g1[r3.y].val[0/4];
  r2.w = g1[r3.z].val[0/4];
  r3.x = g1[r3.w].val[0/4];
  r1.x = r2.z + -r1.x;
  r2.z = r2.z + r1.x;
  r2.z = r2.z + -r1.y;
  r3.y = r2.w * 2 + -r3.x;
  r3.y = r3.y + -r1.y;
  r2.z = cmp(abs(r2.z) < abs(r3.y));
  r2.w = r3.x + -r2.w;
  r1.x = r2.z ? r1.x : r2.w;
  r2.z = trunc(cb0[68].x);
  r1.y = r2.y * r2.z + r1.y;
  r1.y = r1.x * r2.z + r1.y;
  r2.zw = float2(0,0);
  r3.x = r2.x;
  r3.yz = r1.zy;
  while (true) {
    r3.w = cmp((int)r1.w < (int)r3.y);
    if (r3.w != 0) break;
    r4.xy = r2.zw;
    r4.z = r1.z;
    r4.w = r3.z;
    r5.x = r3.x;
    while (true) {
      r5.y = cmp((int)r1.w < (int)r4.z);
      if (r5.y != 0) break;
      r5.y = g0[r5.x].val[0/4];
      r5.z = g1[r5.x].val[0/4];
      r5.x = (int)r5.x + 1;
      r5.z = -r5.z + r4.w;
      r5.z = 20000 * abs(r5.z);
      r5.z = min(1, r5.z);
      r5.z = 1 + -r5.z;
      r4.x = r5.y * r5.z + r4.x;
      r4.y = r5.z + r4.y;
      r4.w = r4.w + r2.y;
      r4.z = (int)r4.z + 1;
    }
    r2.zw = r4.xy;
    r3.z = r3.z + r1.x;
    r3.yw = (int2)r3.yx + int2(1,20);
    r3.xyz = r3.wyz;
  }
  r1.x = r2.z / r2.w;
  r1.x = 1.57079637 * r1.x;
  r1.y = 0.5 * cb0[27].x;
  r1.x = log2(abs(r1.x));
  r1.x = r1.y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = 1 + -r1.x;
  r1.x = -r1.x * cb0[27].w + 1;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xxxx
  return;
}