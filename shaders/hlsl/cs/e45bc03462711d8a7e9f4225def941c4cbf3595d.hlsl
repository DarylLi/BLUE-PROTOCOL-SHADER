// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[4]; } g0[256];
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[126];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.xy = (int2)vThreadID.xy + asint(cb0[3].xy);
  r0.zw = asint(cb0[3].zw) + int2(-1,-1);
  r0.xy = min((uint2)r0.xy, (uint2)r0.zw);
  r0.zw = float2(0,0);
  r1.xy = t0.Load(r0.xyw).xy;
  r0.z = t1.Load(r0.xyz).x;
  r0.w = cmp(0 < r1.x);
  r1.xy = r1.xy * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
  r1.zw = (uint2)vThreadID.xy;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r2.xy = r1.zw / cb0[4].xy;
  r2.z = 1 + -r2.y;
  r1.zw = r2.xz * float2(2,2) + float2(-1,-1);
  r2.xyz = cb1[123].xyw * r1.www;
  r2.xyz = r1.zzz * cb1[122].xyw + r2.xyz;
  r2.xyz = r0.zzz * cb1[124].xyw + r2.xyz;
  r2.xyz = cb1[125].xyw + r2.xyz;
  r2.xy = r2.xy / r2.zz;
  r1.zw = -r2.xy + r1.zw;
  r1.xy = r0.ww ? r1.xy : r1.zw;
  r1.z = -cb0[0].x * r1.y;
  r0.w = dot(r1.xz, r1.xz);
  r2.x = sqrt(r0.w);
  r0.w = max(abs(r1.x), abs(r1.z));
  r1.y = min(abs(r1.x), abs(r1.z));
  r0.w = r1.y / r0.w;
  r1.y = r0.w * r0.w;
  r1.w = r1.y * 0.0872929022 + -0.301894993;
  r1.y = r1.w * r1.y + 1;
  r1.w = r1.y * r0.w;
  r2.z = cmp(abs(r1.x) < abs(r1.z));
  r0.w = -r1.y * r0.w + 1.57079637;
  r0.w = r2.z ? r0.w : r1.w;
  r1.xy = cmp(r1.xz < float2(0,0));
  r1.z = 3.14159274 + -r0.w;
  r0.w = r1.x ? r1.z : r0.w;
  r2.y = r1.y ? -r0.w : r0.w;
  r1.xy = cmp(r2.xy != r2.xy);
  r0.w = (int)r1.y | (int)r1.x;
  r1.xy = r0.ww ? float2(0,0) : r2.xy;
  r2.xy = cmp((uint2)r0.xy < asuint(cb0[3].zw));
  r0.w = r2.y ? r2.x : 0;
  if (r0.w != 0) {
    r2.x = r0.z * cb1[65].x + cb1[65].y;
    r0.z = r0.z * cb1[65].z + -cb1[65].w;
    r0.z = 1 / r0.z;
    r1.z = r2.x + r0.z;
    r1.w = r1.y * 0.159154937 + 0.5;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyyy, r1.xwzz
  }
  r0.x = cb0[0].w / cb0[0].y;
  r0.x = min(r1.x, r0.x);
  r2.x = r0.w ? r0.x : 2;
  r2.z = (int)r0.x & (int)r0.w;
  r2.yw = r1.yy;
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r2.x;
  g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r2.y;
  g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r2.z;
  g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r2.w;
  GroupMemoryBarrierWithGroupSync();
  r0.xyzw = cmp((uint4)vThreadIDInGroupFlattened.xxxx < int4(128,64,32,16));
  if (r0.x != 0) {
    r0.x = (int)vThreadIDInGroupFlattened.x + 128;
    r1.x = g0[r0.x].val[0/4];
    r1.y = g0[r0.x].val[0/4+1];
    r1.z = g0[r0.x].val[0/4+2];
    r1.w = g0[r0.x].val[0/4+3];
    r0.x = cmp(r2.x < r1.x);
    r3.xy = r0.xx ? r2.xw : r1.xy;
    r0.x = cmp(r1.z < r2.z);
    r3.zw = r0.xx ? r2.zw : r1.zw;
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r3.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r3.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r3.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r3.w;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.y != 0) {
    r1.x = g0[vThreadIDInGroupFlattened.x].val[0/4];
    r1.y = g0[vThreadIDInGroupFlattened.x].val[0/4+1];
    r1.z = g0[vThreadIDInGroupFlattened.x].val[0/4+2];
    r1.w = g0[vThreadIDInGroupFlattened.x].val[0/4+3];
    r0.x = (int)vThreadIDInGroupFlattened.x + 64;
    r2.x = g0[r0.x].val[0/4];
    r2.y = g0[r0.x].val[0/4+1];
    r2.z = g0[r0.x].val[0/4+2];
    r2.w = g0[r0.x].val[0/4+3];
    r0.x = cmp(r1.x < r2.x);
    r3.xy = r0.xx ? r1.xy : r2.xy;
    r0.x = cmp(r2.z < r1.z);
    r3.zw = r0.xx ? r1.zw : r2.zw;
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r3.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r3.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r3.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r3.w;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.z != 0) {
    r1.x = g0[vThreadIDInGroupFlattened.x].val[0/4];
    r1.y = g0[vThreadIDInGroupFlattened.x].val[0/4+1];
    r1.z = g0[vThreadIDInGroupFlattened.x].val[0/4+2];
    r1.w = g0[vThreadIDInGroupFlattened.x].val[0/4+3];
    r0.x = (int)vThreadIDInGroupFlattened.x + 32;
    r2.x = g0[r0.x].val[0/4];
    r2.y = g0[r0.x].val[0/4+1];
    r2.z = g0[r0.x].val[0/4+2];
    r2.w = g0[r0.x].val[0/4+3];
    r0.x = cmp(r1.x < r2.x);
    r3.xy = r0.xx ? r1.xy : r2.xy;
    r0.x = cmp(r2.z < r1.z);
    r3.zw = r0.xx ? r1.zw : r2.zw;
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r3.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r3.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r3.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r3.w;
  }
  if (r0.w != 0) {
    r0.x = g0[vThreadIDInGroupFlattened.x].val[0/4];
    r0.y = g0[vThreadIDInGroupFlattened.x].val[0/4+1];
    r0.z = g0[vThreadIDInGroupFlattened.x].val[0/4+2];
    r0.w = g0[vThreadIDInGroupFlattened.x].val[0/4+3];
    r1.x = (int)vThreadIDInGroupFlattened.x + 16;
    r1.x = g0[r1.x].val[0/4];
    r1.y = g0[r1.x].val[0/4+1];
    r1.z = g0[r1.x].val[0/4+2];
    r1.w = g0[r1.x].val[0/4+3];
    r2.x = cmp(r0.x < r1.x);
    r2.xy = r2.xx ? r0.xy : r1.xy;
    r0.x = cmp(r1.z < r0.z);
    r2.zw = r0.xx ? r0.zw : r1.zw;
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r2.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r2.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r2.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r2.w;
  }
  r0.xyzw = cmp((uint4)vThreadIDInGroupFlattened.xxxx < int4(8,4,2,1));
  if (r0.x != 0) {
    r1.x = g0[vThreadIDInGroupFlattened.x].val[0/4];
    r1.y = g0[vThreadIDInGroupFlattened.x].val[0/4+1];
    r1.z = g0[vThreadIDInGroupFlattened.x].val[0/4+2];
    r1.w = g0[vThreadIDInGroupFlattened.x].val[0/4+3];
    r0.x = (int)vThreadIDInGroupFlattened.x + 8;
    r2.x = g0[r0.x].val[0/4];
    r2.y = g0[r0.x].val[0/4+1];
    r2.z = g0[r0.x].val[0/4+2];
    r2.w = g0[r0.x].val[0/4+3];
    r0.x = cmp(r1.x < r2.x);
    r3.xy = r0.xx ? r1.xy : r2.xy;
    r0.x = cmp(r2.z < r1.z);
    r3.zw = r0.xx ? r1.zw : r2.zw;
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r3.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r3.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r3.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r3.w;
  }
  if (r0.y != 0) {
    r1.x = g0[vThreadIDInGroupFlattened.x].val[0/4];
    r1.y = g0[vThreadIDInGroupFlattened.x].val[0/4+1];
    r1.z = g0[vThreadIDInGroupFlattened.x].val[0/4+2];
    r1.w = g0[vThreadIDInGroupFlattened.x].val[0/4+3];
    r0.x = (int)vThreadIDInGroupFlattened.x + 4;
    r2.x = g0[r0.x].val[0/4];
    r2.y = g0[r0.x].val[0/4+1];
    r2.z = g0[r0.x].val[0/4+2];
    r2.w = g0[r0.x].val[0/4+3];
    r0.x = cmp(r1.x < r2.x);
    r3.xy = r0.xx ? r1.xy : r2.xy;
    r0.x = cmp(r2.z < r1.z);
    r3.zw = r0.xx ? r1.zw : r2.zw;
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r3.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r3.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r3.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r3.w;
  }
  if (r0.z != 0) {
    r1.x = g0[vThreadIDInGroupFlattened.x].val[0/4];
    r1.y = g0[vThreadIDInGroupFlattened.x].val[0/4+1];
    r1.z = g0[vThreadIDInGroupFlattened.x].val[0/4+2];
    r1.w = g0[vThreadIDInGroupFlattened.x].val[0/4+3];
    r0.x = (int)vThreadIDInGroupFlattened.x + 2;
    r2.x = g0[r0.x].val[0/4];
    r2.y = g0[r0.x].val[0/4+1];
    r2.z = g0[r0.x].val[0/4+2];
    r2.w = g0[r0.x].val[0/4+3];
    r0.x = cmp(r1.x < r2.x);
    r3.xy = r0.xx ? r1.xy : r2.xy;
    r0.x = cmp(r2.z < r1.z);
    r3.zw = r0.xx ? r1.zw : r2.zw;
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r3.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r3.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r3.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r3.w;
  }
  if (r0.w != 0) {
    r0.x = g0[0].val[0/4];
    r0.y = g0[0].val[0/4+1];
    r0.z = g0[0].val[0/4+2];
    r0.w = g0[0].val[0/4+3];
    r1.x = g0[1].val[0/4];
    r1.y = g0[1].val[0/4+1];
    r1.z = g0[1].val[0/4+2];
    r1.w = g0[1].val[0/4+3];
    r2.x = cmp(r0.x < r1.x);
    r2.xy = r2.xx ? r0.xy : r1.xy;
    r0.x = cmp(r1.z < r0.z);
    r2.zw = r0.xx ? r0.zw : r1.zw;
    g0[0].val[0/4] = r2.x;
    g0[0].val[0/4+1] = r2.y;
    g0[0].val[0/4+2] = r2.z;
    g0[0].val[0/4+3] = r2.w;
  }
  if (vThreadIDInGroupFlattened.x == 0) {
    r0.x = g0[0].val[0/4];
    r0.y = g0[0].val[0/4+1];
    r0.z = g0[0].val[0/4+2];
    r0.w = g0[0].val[0/4+3];
    sincos(r0.y, r1.x, r2.x);
    r2.y = r1.x;
    r1.xy = r2.xy * r0.xx;
    sincos(r0.w, r0.x, r2.x);
    r2.z = r2.x;
    r2.w = r0.x;
    r1.zw = r2.zw * r0.zz;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, vThreadGroupID.xyyy, r1.xyzw
  }
  return;
}