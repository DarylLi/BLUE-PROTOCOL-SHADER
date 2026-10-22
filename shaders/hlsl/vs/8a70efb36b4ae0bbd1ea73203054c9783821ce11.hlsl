// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[26];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out uint o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0[v1.x].val[0/4];
  r0.y = t0[v1.x].val[0/4+1];
  r0.z = t0[v1.x].val[0/4+2];
  r0.w = t0[v1.x].val[0/4+3];
  o0.xyzw = r0.xyzw;
  o1.x = v1.x;
  r0.w = cb0[8].x + r0.w;
  r0.w = cb0[25].z * r0.w;
  r0.xyz = v0.xyz * r0.www + r0.xyz;
  r1.xyzw = cb1[5].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[4].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[6].xyzw + r1.xyzw;
  o2.xyzw = cb1[7].xyzw + r0.xyzw;
  return;
}