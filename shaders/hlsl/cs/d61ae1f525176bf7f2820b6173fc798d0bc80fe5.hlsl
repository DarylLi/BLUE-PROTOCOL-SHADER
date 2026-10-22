// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[4]; } g0[192];
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[155];
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
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.xyz = (int3)vThreadIDInGroupFlattened.xxx & int3(64,128,7);
  r1.xyzw = cmp((int4)r0.xyyy != int4(0,0,0,0));
  r1.xyzw = r1.xyzw ? float4(0,0,0,0) : 0;
  if (3 == 0) r0.w = 0; else if (3+3 < 32) {   r0.w = (uint)vThreadIDInGroupFlattened.x << (32-(3 + 3)); r0.w = (uint)r0.w >> (32-3);  } else r0.w = (uint)vThreadIDInGroupFlattened.x >> 3;
  r0.x = cmp((uint)vThreadIDInGroupFlattened.x < 64);
  r2.xyzw = (uint4)cb1[129].xyyy;
  r3.xyzw = (uint4)vThreadGroupID.xyyy << int4(4,4,4,4);
  r2.xyzw = (int4)r2.xyzw + (int4)r3.xyzw;
  r3.xyzw = (uint4)r0.zwww << int4(1,1,1,1);
  r2.xyzw = (int4)r2.xyzw + (int4)r3.xyzw;
  r1.xyzw = (int4)r1.xyzw + (int4)r2.xyzw;
  r2.xy = (uint2)r1.xw;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xy = cb1[132].zw * r2.xy;
  r2.xy = max(cb1[133].xy, r2.xy);
  r2.xy = min(cb1[133].zw, r2.xy);
  r3.xyz = t0.SampleLevel(s0_s, r2.xy, 0).xyz;
  r0.y = t1.SampleLevel(s0_s, r2.xy, 0).x;
  r2.x = r0.y * cb1[65].x + cb1[65].y;
  r0.y = r0.y * cb1[65].z + -cb1[65].w;
  r0.y = 1 / r0.y;
  r0.y = r2.x + r0.y;
  r2.x = -cb1[154].z + r0.y;
  r2.x = r2.x / r0.y;
  r2.x = cb0[1].x * r2.x;
  r0.y = cb0[2].x * -r0.y;
  r0.y = exp2(r0.y);
  r0.y = 1 + -r0.y;
  r0.y = cb0[2].y * r0.y;
  r0.y = max(abs(r2.x), r0.y);
  r2.x = cmp(r2.x < 0);
  r0.y = r2.x ? -r0.y : r0.y;
  r0.y = max(cb0[1].y, r0.y);
  r0.y = min(cb0[1].z, r0.y);
  r3.w = cb0[2].z * r0.y;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzw, r3.xyzw
  if (r0.x == 0) {
    r1.x = (int)vThreadIDInGroupFlattened.x + -64;
    r3.w = cb0[2].w * r0.y;
    g0[r1.x].val[0/4] = r3.x;
    g0[r1.x].val[0/4+1] = r3.y;
    g0[r1.x].val[0/4+2] = r3.z;
    g0[r1.x].val[0/4+3] = r3.w;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.x != 0) {
    r0.x = cb0[2].w * r0.y;
    r1.x = g0[vThreadIDInGroupFlattened.x].val[0/4];
    r1.y = g0[vThreadIDInGroupFlattened.x].val[0/4+1];
    r1.z = g0[vThreadIDInGroupFlattened.x].val[0/4+2];
    r1.w = g0[vThreadIDInGroupFlattened.x].val[0/4+3];
    r2.xy = (int2)vThreadIDInGroupFlattened.xx + int2(64,128);
    r4.x = g0[r2.x].val[0/4];
    r4.y = g0[r2.x].val[0/4+1];
    r4.z = g0[r2.x].val[0/4+2];
    r4.w = g0[r2.x].val[0/4+3];
    r2.x = g0[r2.y].val[0/4];
    r2.y = g0[r2.y].val[0/4+1];
    r2.z = g0[r2.y].val[0/4+2];
    r2.w = g0[r2.y].val[0/4+3];
    r0.x = min(r1.w, r0.x);
    r3.w = min(r4.w, r2.w);
    r5.w = min(r3.w, r0.x);
    r0.x = -cb0[2].w * r0.y + r5.w;
    r6.x = saturate(-r0.x * 64 + 1);
    r0.x = r5.w + -r1.w;
    r6.y = saturate(-r0.x * 64 + 1);
    r0.x = r5.w + -r4.w;
    r6.z = saturate(-r0.x * 64 + 1);
    r0.x = r5.w + -r2.w;
    r6.w = saturate(-r0.x * 64 + 1);
    r0.x = dot(float4(1,1,1,1), r6.xyzw);
    r0.x = rcp(r0.x);
    r1.xyz = r6.yyy * r1.xyz;
    r1.xyz = r3.xyz * r6.xxx + r1.xyz;
    r1.xyz = r4.xyz * r6.zzz + r1.xyz;
    r1.xyz = r2.xyz * r6.www + r1.xyz;
    r5.xyz = r1.xyz * r0.xxx;
    r0.xyzw = mad((int4)vThreadGroupID.xyyy, int4(8,8,8,8), (int4)r0.zwww);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xyzw, r5.xyzw
  }
  return;
}