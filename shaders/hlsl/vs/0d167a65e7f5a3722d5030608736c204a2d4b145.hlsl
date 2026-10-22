// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<uint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out uint o1 : DISPATCH_NODECOUNT0,
  out uint2 p1 : DISPATCH_RESOLUTION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v0.x & 1;
  r0.z = (uint)v0.x >> 1;
  r0.xy = (uint2)r0.xz;
  r0.z = t0.Load(float4(0,0,0,0)).x;
  r0.w = (uint)r0.z;
  o1.x = r0.z;
  r0.z = sqrt(r0.w);
  r0.z = ceil(r0.z);
  r0.zw = (uint2)r0.zz;
  r1.x = (uint)r0.w;
  p1.xy = r0.zw;
  r0.z = 0.5 + r1.x;
  r1.xy = asint(cb0[0].xy);
  r0.zw = r0.zz / r1.xy;
  r1.xy = r0.zw + r0.zw;
  r1.z = 1;
  r0.xy = r0.xy * float2(-4,4) + r1.xz;
  r1.y = -r1.y;
  r1.x = -1;
  o0.xy = r1.xy + r0.xy;
  o0.zw = float2(0.5,1);
  return;
}