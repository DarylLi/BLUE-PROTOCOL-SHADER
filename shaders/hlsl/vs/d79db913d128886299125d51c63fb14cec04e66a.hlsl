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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.x = v1.x;
  r0.xyz = mad((int3)v1.xxx, int3(17,17,17), int3(14,15,16));
  r1.x = t0[r0.x].val[0/4];
  r1.y = t0[r0.x].val[0/4+1];
  r1.z = t0[r0.x].val[0/4+2];
  r1.w = t0[r0.x].val[0/4+3];
  r2.x = r1.x;
  r3.x = t0[r0.y].val[0/4];
  r3.y = t0[r0.y].val[0/4+1];
  r3.z = t0[r0.y].val[0/4+2];
  r3.w = t0[r0.y].val[0/4+3];
  r0.x = t0[r0.z].val[0/4];
  r0.y = t0[r0.z].val[0/4+1];
  r0.z = t0[r0.z].val[0/4+2];
  r0.w = t0[r0.z].val[0/4+3];
  r2.y = r3.x;
  r2.zw = r0.xw;
  r1.x = dot(r2.xyz, r2.xyz);
  r1.x = sqrt(r1.x);
  r1.x = cb0[27].y / r1.x;
  r1.x = 0.699999988 + r1.x;
  r2.xyz = r2.zxy * r1.xxx;
  r3.x = r2.z;
  r4.xw = r1.yw;
  r4.y = r3.y;
  r4.z = r0.y;
  r1.x = dot(r4.xyz, r4.xyz);
  r1.x = sqrt(r1.x);
  r1.x = cb0[27].y / r1.x;
  r1.x = 0.699999988 + r1.x;
  r4.xyz = r4.yxz * r1.xxx;
  r3.y = r4.x;
  r0.x = r1.z;
  r0.y = r3.z;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  r0.w = cb0[27].y / r0.w;
  r0.w = 0.699999988 + r0.w;
  r0.xyz = r0.xyz * r0.www;
  r3.z = r0.y;
  r1.xyz = v0.xyz;
  r1.w = 1;
  r0.y = dot(r1.xyzw, r3.xyzw);
  r3.xyzw = cb0[10].xyzw * r0.yyyy;
  r4.x = r2.y;
  r2.y = r4.z;
  r4.z = r0.x;
  r2.z = r0.z;
  r0.x = dot(r1.xyzw, r2.xyzw);
  r0.y = dot(r1.xyzw, r4.xyzw);
  r1.xyzw = r0.yyyy * cb0[9].xyzw + r3.xyzw;
  r0.xyzw = r0.xxxx * cb0[11].xyzw + r1.xyzw;
  r0.xyzw = cb0[12].xyzw + r0.xyzw;
  r1.x = cmp(r0.z < 0);
  o1.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o1.xy = r0.xy;
  return;
}