// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = (uint)vThreadID.x % asuint(cb0[5].x);
  r0.y = vThreadID.y;
  r1.xy = cmp((uint2)r0.xy >= asuint(cb0[5].yz));
  r1.x = (int)r1.y | (int)r1.x;
  if (r1.x != 0) {
    return;
  }
  r1.x = (int)vThreadID.x ^ asint(cb0[5].x);
  r1.y = max(asint(-cb0[5].x), asint(cb0[5].x));
  uiDest.y = (uint)vThreadID.x / (uint)r1.y;
  r1.y = uiDest.y;
  r1.z = -(int)r1.y;
  r1.x = r1.x ? -0.000000 : 0;
  r0.zw = r1.xx ? r1.zz : r1.yy;
  r1.xy = (uint2)r0.xy;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = asint(cb0[5].yz);
  r1.xy = r1.xy / r1.zw;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r2.xyzw = cmp((int4)r0.wwww == int4(1,2,3,4));
  r1.z = -r1.y;
  r1.w = 1;
  r3.xy = float2(-1,1) * r1.xz;
  r3.z = -1;
  r3.xyz = r2.www ? r1.xzw : r3.xyz;
  r4.yz = r1.zx;
  r4.x = -1;
  r3.xyz = r2.zzz ? r4.zxy : r3.xyz;
  r2.yzw = r2.yyy ? r1.xwy : r3.xyz;
  r2.xyz = r2.xxx ? r4.xyz : r2.yzw;
  r1.xyz = float3(1,1,-1) * r1.wzx;
  r1.xyz = r0.www ? r2.xyz : r1.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = rsqrt(r1.x);
  r1.x = r1.z * r1.x;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) {
    r1.xyz = cb0[6].xyz * cb0[6].www;
    r1.w = 1;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  }
  return;
}