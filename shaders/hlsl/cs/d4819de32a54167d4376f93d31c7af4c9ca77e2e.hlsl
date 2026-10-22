// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[4]; } g0[64];
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

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
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r1.x = (int)r0.x + (int)r0.z;
  r1.y = (int)r0.y + (int)r1.z;
  r0.xy = mad((int2)vThreadGroupID.xy, int2(8,8), (int2)r1.xy);
  r0.zw = (uint2)r0.xy;
  r0.zw = float2(0.5,0.5) + r0.zw;
  r0.zw = cb0[4].zw * r0.zw;
  r0.zw = min(cb0[2].yz, r0.zw);
  r1.xyzw = t0.SampleLevel(s0_s, r0.zw, 0).xyzw;
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r1.x;
  g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r1.y;
  g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r1.z;
  g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r1.w;
  GroupMemoryBarrierWithGroupSync();
  r0.zw = cmp((uint2)vThreadIDInGroupFlattened.xx < int2(16,4));
  if (r0.z != 0) {
    r2.xyz = (int3)vThreadIDInGroupFlattened.xxx + int3(16,32,48);
    r3.x = g0[r2.x].val[0/4];
    r3.y = g0[r2.x].val[0/4+1];
    r3.z = g0[r2.x].val[0/4+2];
    r3.w = g0[r2.x].val[0/4+3];
    r4.x = g0[r2.y].val[0/4];
    r4.y = g0[r2.y].val[0/4+1];
    r4.z = g0[r2.y].val[0/4+2];
    r4.w = g0[r2.y].val[0/4+3];
    r2.x = g0[r2.z].val[0/4];
    r2.y = g0[r2.z].val[0/4+1];
    r2.z = g0[r2.z].val[0/4+2];
    r2.w = g0[r2.z].val[0/4+3];
    r0.z = cmp(r3.w < abs(r1.w));
    r0.z = r0.z ? r3.w : r1.w;
    r5.x = cmp(r4.w < abs(r0.z));
    r0.z = r5.x ? r4.w : r0.z;
    r5.x = cmp(r2.w < abs(r0.z));
    r5.w = r5.x ? r2.w : r0.z;
    r0.z = r5.w + -r1.w;
    r6.x = saturate(-r0.z * 32 + 1);
    r0.z = r5.w + -r3.w;
    r6.y = saturate(-r0.z * 32 + 1);
    r0.z = r5.w + -r4.w;
    r6.z = saturate(-r0.z * 32 + 1);
    r0.z = r5.w + -r2.w;
    r6.w = saturate(-r0.z * 32 + 1);
    r0.z = dot(float4(1,1,1,1), r6.xyzw);
    r0.z = rcp(r0.z);
    r3.xyz = r6.yyy * r3.xyz;
    r1.xyz = r1.xyz * r6.xxx + r3.xyz;
    r1.xyz = r4.xyz * r6.zzz + r1.xyz;
    r1.xyz = r2.xyz * r6.www + r1.xyz;
    r5.xyz = r1.xyz * r0.zzz;
    g0[vThreadIDInGroupFlattened.x].val[0/4] = r5.x;
    g0[vThreadIDInGroupFlattened.x].val[0/4+1] = r5.y;
    g0[vThreadIDInGroupFlattened.x].val[0/4+2] = r5.z;
    g0[vThreadIDInGroupFlattened.x].val[0/4+3] = r5.w;
    r0.xy = (uint2)r0.xy >> int2(1,1);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyyy, r5.xyzw
  }
  GroupMemoryBarrierWithGroupSync();
  if (r0.w != 0) {
    r1.x = g0[vThreadIDInGroupFlattened.x].val[0/4];
    r1.y = g0[vThreadIDInGroupFlattened.x].val[0/4+1];
    r1.z = g0[vThreadIDInGroupFlattened.x].val[0/4+2];
    r1.w = g0[vThreadIDInGroupFlattened.x].val[0/4+3];
    r2.xyz = (int3)vThreadIDInGroupFlattened.xxx + int3(4,8,12);
    r3.x = g0[r2.x].val[0/4];
    r3.y = g0[r2.x].val[0/4+1];
    r3.z = g0[r2.x].val[0/4+2];
    r3.w = g0[r2.x].val[0/4+3];
    r4.x = g0[r2.y].val[0/4];
    r4.y = g0[r2.y].val[0/4+1];
    r4.z = g0[r2.y].val[0/4+2];
    r4.w = g0[r2.y].val[0/4+3];
    r2.x = g0[r2.z].val[0/4];
    r2.y = g0[r2.z].val[0/4+1];
    r2.z = g0[r2.z].val[0/4+2];
    r2.w = g0[r2.z].val[0/4+3];
    r0.z = cmp(r3.w < abs(r1.w));
    r0.z = r0.z ? r3.w : r1.w;
    r0.w = cmp(r4.w < abs(r0.z));
    r0.z = r0.w ? r4.w : r0.z;
    r0.w = cmp(r2.w < abs(r0.z));
    r5.w = r0.w ? r2.w : r0.z;
    r0.z = r5.w + -r1.w;
    r6.x = saturate(-r0.z * 16 + 1);
    r0.z = r5.w + -r3.w;
    r6.y = saturate(-r0.z * 16 + 1);
    r0.z = r5.w + -r4.w;
    r6.z = saturate(-r0.z * 16 + 1);
    r0.z = r5.w + -r2.w;
    r6.w = saturate(-r0.z * 16 + 1);
    r0.z = dot(float4(1,1,1,1), r6.xyzw);
    r0.z = rcp(r0.z);
    r3.xyz = r6.yyy * r3.xyz;
    r1.xyz = r1.xyz * r6.xxx + r3.xyz;
    r1.xyz = r4.xyz * r6.zzz + r1.xyz;
    r1.xyz = r2.xyz * r6.www + r1.xyz;
    r5.xyz = r1.xyz * r0.zzz;
    r0.xyzw = (uint4)r0.xyyy >> int4(1,1,1,1);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xyzw, r5.xyzw
  }
  return;
}