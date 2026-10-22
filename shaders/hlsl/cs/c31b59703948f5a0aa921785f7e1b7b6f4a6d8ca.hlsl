// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = float2(-16,-16) + r0.xy;
  r0.z = max(abs(r0.y), abs(r0.x));
  r0.z = 1 / r0.z;
  r0.w = min(abs(r0.y), abs(r0.x));
  r0.z = r0.w * r0.z;
  r0.w = r0.z * r0.z;
  r1.x = r0.w * 0.0208350997 + -0.0851330012;
  r1.x = r0.w * r1.x + 0.180141002;
  r1.x = r0.w * r1.x + -0.330299497;
  r0.w = r0.w * r1.x + 0.999866009;
  r1.x = r0.z * r0.w;
  r1.x = r1.x * -2 + 1.57079637;
  r1.y = cmp(abs(r0.x) < abs(r0.y));
  r1.x = r1.y ? r1.x : 0;
  r0.z = r0.z * r0.w + r1.x;
  r0.w = cmp(r0.x < -r0.x);
  r0.w = r0.w ? -3.141593 : 0;
  r0.z = r0.z + r0.w;
  r0.w = min(r0.y, r0.x);
  r0.w = cmp(r0.w < -r0.w);
  r1.x = max(r0.y, r0.x);
  r1.x = cmp(r1.x >= -r1.x);
  r0.w = r0.w ? r1.x : 0;
  r0.z = r0.w ? -r0.z : r0.z;
  r0.z = cb0[0].w + r0.z;
  r0.z = 3.14159274 + r0.z;
  r0.w = 0.159154937 * r0.z;
  r1.x = asuint(cb0[0].x);
  r0.w = r1.x * r0.w;
  r1.x = rcp(r1.x);
  r0.w = floor(r0.w);
  r0.w = 0.5 + r0.w;
  r0.w = 6.28318548 * r0.w;
  r0.z = -r0.w * r1.x + r0.z;
  r0.z = cos(r0.z);
  r0.z = cb0[0].z / r0.z;
  r1.xy = cmp(r0.xy == float2(0,0));
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.y = r1.y ? r1.x : 0;
  r0.y = r0.y ? 1 : r0.z;
  r0.x = r0.x / r0.y;
  r0.x = 0.5 * r0.x;
  r0.yzw = float3(0,0,0);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xyzw
  return;
}