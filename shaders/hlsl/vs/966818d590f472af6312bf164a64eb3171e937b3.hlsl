// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  out float2 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  uiDest.x = (uint)v0.x / 6;
  r0.x = uiDest.x;
  r0.y = (int)r0.x & -16;
  r0.y = (int)-r0.y + (int)r0.x;
  r1.y = (uint)r0.y;
  r0.y = mad((int)r0.x, -6, (int)v0.x);
  r0.x = (uint)r0.x >> 4;
  r1.x = (uint)r0.x;
  r0.x = (int)r0.y + 1;
  r0.y = (int)r0.y & 1;
  uiDest.x = (uint)r0.x / 3;
  r0.x = uiDest.x;
  r0.x = (int)r0.x & 1;
  r2.xy = (uint2)r0.xy;
  r0.xy = r2.xy + r1.xy;
  r0.x = 0.03125 * r0.x;
  r0.z = -r0.y * 0.0625 + 1;
  o0.xy = r0.xz;
  r0.yw = t0.SampleLevel(s0_s, r0.xz, 0).xy;
  r0.xy = r0.yw + r0.xz;
  r0.z = 1 + -r0.y;
  o1.xy = r0.xz * float2(2,2) + float2(-1,-1);
  o1.zw = float2(0,1);
  return;
}