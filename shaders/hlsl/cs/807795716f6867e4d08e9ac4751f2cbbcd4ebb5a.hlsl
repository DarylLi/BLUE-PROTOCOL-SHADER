// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[65];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u1
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xyz = cmp((int3)vThreadID.xyz < asint(cb3[0].xyz));
  r0.x = r0.y ? r0.x : 0;
  r0.x = r0.z ? r0.x : 0;
  if (r0.x != 0) {
    r0.xyz = (uint3)vThreadID.xyz;
    r0.xyz = float3(0.5,0.5,0.5) + r0.xyz;
    r0.xy = r0.xy / cb3[1].xy;
    r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
    r0.xy = float2(1,-1) * r0.xy;
    r0.z = r0.z / cb3[2].z;
    r0.z = exp2(r0.z);
    r0.z = -cb3[2].y + r0.z;
    r0.z = r0.z / cb3[2].x;
    r0.w = cmp(cb1[31].w < 1);
    r1.x = cb1[65].w + r0.z;
    r1.x = cb1[65].z * r1.x;
    r1.x = 1 / r1.x;
    r0.z = r0.z * cb1[30].z + cb1[31].z;
    r0.z = r0.w ? r1.x : r0.z;
    r0.yw = cb0[56].zw * r0.yy;
    r0.xy = r0.xx * cb0[55].zw + r0.yw;
    r0.xy = r0.zz * cb0[57].zw + r0.xy;
    r0.xy = cb0[58].zw + r0.xy;
    r0.x = r0.x / r0.y;
    r0.x = -cb1[70].z + r0.x;
    r0.y = -cb2[3].y + r0.x;
    r0.y = -cb2[0].y * r0.y;
    r0.y = exp2(r0.y);
    r0.x = -cb2[1].w + r0.x;
    r0.x = -cb2[1].y * r0.x;
    r0.x = exp2(r0.x);
    r0.x = cb2[1].z * r0.x;
    r0.x = cb2[3].x * r0.y + r0.x;
    r0.x = cb0[64].w * r0.x;
    r0.x = 0.5 * r0.x;
    r0.x = max(0, r0.x);
    r1.xyz = cb0[63].xyz * r0.xxx;
    r0.y = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
    r0.x = r0.x + -r0.y;
    r1.w = max(0, r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyzz, r1.xyzw
    r0.xyz = cb0[64].xyz;
    r0.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, vThreadID.xyzz, r0.xyzw
  }
  return;
}