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
  r0.xyzw = (uint4)vThreadID.xyxy;
  r0.xyzw = float4(0.5,0.5,-31.5,-31.5) + r0.xyzw;
  r1.xy = cmp(float2(16,16) < r0.yx);
  r0.xy = r1.xy ? r0.wz : r0.yx;
  r0.z = max(abs(r0.x), abs(r0.y));
  r0.z = 1 / r0.z;
  r0.w = min(abs(r0.x), abs(r0.y));
  r0.z = r0.w * r0.z;
  r0.w = r0.z * r0.z;
  r1.x = r0.w * 0.0208350997 + -0.0851330012;
  r1.x = r0.w * r1.x + 0.180141002;
  r1.x = r0.w * r1.x + -0.330299497;
  r0.w = r0.w * r1.x + 0.999866009;
  r1.x = r0.z * r0.w;
  r1.x = r1.x * -2 + 1.57079637;
  r1.y = cmp(abs(r0.y) < abs(r0.x));
  r1.x = r1.y ? r1.x : 0;
  r0.z = r0.z * r0.w + r1.x;
  r0.w = cmp(r0.y < -r0.y);
  r0.w = r0.w ? -3.141593 : 0;
  r0.z = r0.z + r0.w;
  r0.w = min(r0.x, r0.y);
  r0.x = max(r0.x, r0.y);
  r0.x = cmp(r0.x >= -r0.x);
  r0.y = cmp(r0.w < -r0.w);
  r0.x = r0.x ? r0.y : 0;
  r0.x = r0.x ? -r0.z : r0.z;
  r0.x = cb0[0].w + r0.x;
  r0.x = 3.14159274 + r0.x;
  r0.y = 0.159154937 * r0.x;
  r0.z = asuint(cb0[0].x);
  r0.y = r0.y * r0.z;
  r0.z = rcp(r0.z);
  r0.y = floor(r0.y);
  r0.y = 0.5 + r0.y;
  r0.y = 6.28318548 * r0.y;
  r0.x = -r0.y * r0.z + r0.x;
  r0.x = cos(r0.x);
  r0.x = cb0[0].z / r0.x;
  r0.yzw = float3(0,0,0);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xyzw
  return;
}