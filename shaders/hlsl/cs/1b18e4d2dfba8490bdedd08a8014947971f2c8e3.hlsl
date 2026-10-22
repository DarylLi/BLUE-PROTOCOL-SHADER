// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1, 32, 1
  r0.yzw = mad((int3)vThreadGroupID.yyy, int3(32,32,32), (int3)vThreadIDInGroup.yyy);
  r0.x = vThreadGroupID.x;
  r1.xy = (int2)r0.xw + asint(cb0[2].xy);
  r2.xy = cmp((uint2)r1.xy >= asuint(cb0[2].zw));
  r2.zw = cmp((uint2)r1.xy < asuint(cb0[2].xy));
  r2.x = (int)r2.z | (int)r2.x;
  r2.x = (int)r2.y | (int)r2.x;
  r2.x = (int)r2.w | (int)r2.x;
  if (r2.x != 0) {
    r2.xyzw = float4(0,0,0,0);
  } else {
    r1.zw = float2(0,0);
    r2.xyzw = t0.Load(r1.xyz).xyzw;
  }
  r0.xyzw = (int4)r0.xyzw + asint(cb0[1].xyyy);
  r1.xy = cmp((uint2)r0.xw >= asuint(cb0[1].zw));
  r1.zw = cmp((uint2)r0.xw < asuint(cb0[1].xy));
  r1.x = (int)r1.z | (int)r1.x;
  r1.x = (int)r1.y | (int)r1.x;
  r1.x = (int)r1.w | (int)r1.x;
  if (r1.x == 0) {
    r1.x = cmp(cb0[0].x < cb0[0].y);
    r1.y = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r1.z = cmp(cb0[0].x < r1.y);
    r1.w = -cb0[0].x + r1.y;
    r1.w = cb0[0].z * r1.w + cb0[0].x;
    r1.w = min(cb0[0].y, r1.w);
    r1.y = r1.w / r1.y;
    r3.xyz = r2.xyz * r1.yyy;
    r1.yzw = r1.zzz ? r3.xyz : r2.xyz;
    r2.xyz = r1.xxx ? r1.yzw : r2.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r2.xyzw
  }
  return;
}