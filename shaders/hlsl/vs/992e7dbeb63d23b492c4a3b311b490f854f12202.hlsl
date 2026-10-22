// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[38];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v0.x;
  r0.x = 0.0303030312 * r0.x;
  r0.x = frac(r0.x);
  r0.x = 33 * r0.x;
  r0.x = (uint)r0.x;
  uiDest.z = (uint)v0.x / 33;
  r0.z = uiDest.z;
  r0.xy = (uint2)r0.xz;
  r0.zw = r0.xy * float2(0.0625,0.100000001) + float2(-1,-1);
  r0.xy = cb2[1].xy * r0.xy;
  r0.xy = r0.xy * float2(0.03125,0.0500000007) + cb2[1].zw;
  o0.xy = cb2[2].zw * r0.xy;
  r0.x = cb1[36].x * r0.z;
  r0.y = cb1[37].y * r0.w;
  r0.z = r0.x * r0.x + 1;
  r0.z = rsqrt(r0.z);
  r1.xy = r0.xy * r0.zz;
  r0.x = -r1.x * r1.x + 1;
  r0.x = sqrt(r0.x);
  r0.w = r1.y / r0.x;
  r0.x = cb0[27].x + r0.x;
  r0.y = -r0.y * r0.z + r0.w;
  r1.z = cb0[27].y * r0.y + r1.y;
  r0.y = 1 + cb0[27].x;
  r0.x = r0.y / r0.x;
  r0.xy = r0.xx * r1.xz;
  r0.z = cb1[28].x * r0.x;
  r0.w = cb1[29].y * r0.y;
  r0.xy = cb0[27].zz * r0.zw;
  r0.xy = r0.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r0.xy = r0.xy * cb2[0].xy + cb2[0].zw;
  r0.xy = cb2[2].xy * r0.xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = float2(1,-1) * r0.xy;
  o0.zw = r0.xy;
  o1.xy = r0.xy;
  o1.zw = float2(0,1);
  return;
}