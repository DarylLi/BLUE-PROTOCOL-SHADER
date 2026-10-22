// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_InstanceID0,
  uint v1 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out int o2 : TEXCOORD1,
  out int p2 : TEXCOORD2)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, vertex_id
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + 1;
  uiDest.x = (uint)r0.x / 3;
  r0.x = uiDest.x;
  r0.x = (int)r0.x & 1;
  r0.w = (int)v1.x & 1;
  r0.xy = (uint2)r0.xw;
  r0.z = 1 + -r0.y;
  o1.xy = r0.xy;
  r0.xy = r0.xz * float2(2,2) + float2(-1,-1);
  r0.z = (uint)v0.x >> 1;
  r0.z = (int)r0.z + 1;
  r1.x = t0[r0.z].val[0/4];
  r1.y = t0[r0.z].val[0/4+1];
  r1.z = t0[r0.z].val[0/4+2];
  r1.w = 1 + -r1.y;
  r0.zw = r1.xw * float2(2,2) + float2(-1,-1);
  o2.x = r1.z;
  r0.xy = r0.xy * cb0[0].xy + r0.zw;
  r0.zw = float2(0.200000003,-0.200000003) * cb0[0].xy;
  r1.x = (int)v0.x & 1;
  r0.zw = r1.xx ? float2(0,0) : r0.zw;
  p2.x = r1.x ? 0 : 1;
  o0.xy = r0.xy + r0.zw;
  o0.zw = float2(0,1);
  return;
}