// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_InstanceID0,
  out uint o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.x = v1.x;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)v1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.xyz = cb0[27].yyy + r0.xyz;
  r0.w = (uint)v1.x << 1;
  r1.x = t0[r0.w].val[0/4];
  r1.y = t0[r0.w].val[0/4+1];
  r1.z = t0[r0.w].val[0/4+2];
  r0.xyz = v0.xyz * r0.xyz + r1.xyz;
  r1.xyzw = cb0[10].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[9].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[11].xyzw + r1.xyzw;
  r0.xyzw = cb0[12].xyzw + r0.xyzw;
  r1.x = cmp(r0.z < 0);
  o1.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o1.xy = r0.xy;
  return;
}