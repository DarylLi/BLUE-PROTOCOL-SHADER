// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[2];
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
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.w = 1;
  r1.z = 0;
  r2.xy = (uint2)vThreadID.xy;
  r0.xy = float2(-16,-16) + r2.xy;
  r2.xy = cmp(r0.xy < float2(0,0));
  r1.w = (int)r2.y | (int)r2.x;
  r0.z = -r0.x;
  r1.xy = r0.xy;
  r0.xyz = r1.www ? r0.yzw : r1.xyz;
  r1.z = r1.w ? 2 : 1;
  r2.xy = cmp(r0.xy < float2(0,0));
  r0.w = (int)r2.y | (int)r2.x;
  r1.xy = float2(1,-1) * r0.yx;
  r0.xyz = r0.www ? r1.xyz : r0.xyz;
  r1.xy = cmp(r0.xy < float2(0,0));
  r0.w = (int)r1.y | (int)r1.x;
  r1.xyz = r0.yxz * float3(1,-1,1) + float3(0,0,1);
  r0.xyz = r0.www ? r1.xyz : r0.xyz;
  r0.w = cmp(r0.y < r0.x);
  r1.x = max(abs(r0.x), abs(r0.y));
  r0.x = r1.x * 2 + -r0.x;
  r0.z = dot(r0.zz, r1.xx);
  r0.xy = r0.zz + r0.xy;
  r0.x = r0.w ? r0.y : r0.x;
  r0.yz = float2(8,0.5) * r1.xx;
  r0.z = frac(r0.z);
  r0.y = max(1, r0.y);
  r0.x = r0.x + r0.z;
  r0.x = r0.x / r0.y;
  r0.x = r0.x * 6.28318548 + 3.14159274;
  r0.y = asuint(cb0[0].x);
  r0.x = r0.x * r0.y;
  r0.x = 0.159154937 * r0.x;
  r0.z = frac(r0.x);
  r0.x = floor(r0.x);
  r0.x = 0.5 + r0.x;
  r0.z = r0.z * 2 + -1;
  r0.w = 3.14159274 / r0.y;
  r0.y = rcp(r0.y);
  r0.x = r0.x * r0.y;
  r0.x = r0.x * 6.28318548 + -cb0[0].w;
  sincos(r0.x, r0.x, r2.x);
  r0.y = sin(r0.w);
  r0.w = cb0[0].y / cb0[1].x;
  r0.y = r0.w * r0.y;
  r0.w = abs(r0.y) * -0.0187292993 + 0.0742610022;
  r0.w = r0.w * abs(r0.y) + -0.212114394;
  r0.w = r0.w * abs(r0.y) + 1.57072878;
  r1.y = 1 + -abs(r0.y);
  r0.y = cmp(r0.y < -r0.y);
  r1.y = sqrt(r1.y);
  r1.z = r1.y * r0.w;
  r1.z = r1.z * -2 + 3.14159274;
  r0.y = r0.y ? r1.z : 0;
  r0.y = r0.w * r1.y + r0.y;
  r0.y = 1.57079637 + -r0.y;
  r0.y = r0.y * r0.z;
  sincos(r0.y, r3.x, r4.x);
  r0.y = cb0[1].x * r4.x + -cb0[1].y;
  r0.z = cb0[1].x * r3.x;
  r0.w = r0.z * r0.x;
  r0.z = r0.z * r2.x;
  r3.y = r0.y * r0.x + r0.z;
  r3.x = r0.y * r2.x + -r0.w;
  r0.xy = r3.xy * r1.xx;
  r0.zw = float2(0,0);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xyzw
  return;
}