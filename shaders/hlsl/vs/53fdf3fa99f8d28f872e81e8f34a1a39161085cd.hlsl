// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  uint v2 : SV_InstanceID0,
  out float2 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0,
  out uint o2 : TEXCOORD1)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xy = float2(0,0);
  r0.x = (int)v2.x + asint(cb0[65].x);
  r0.y = (uint)r0.x;
  o2.x = r0.x;
  r0.x = r0.y / cb1[2].z;
  r0.x = exp2(r0.x);
  r0.x = -cb1[2].y + r0.x;
  r0.x = r0.x / cb1[2].x;
  r0.y = -cb0[66].z + r0.x;
  r0.z = abs(r0.y) * abs(r0.y);
  r0.y = cmp(abs(r0.y) < cb0[66].w);
  r0.z = cb0[66].w * cb0[66].w + -r0.z;
  r0.z = sqrt(r0.z);
  r1.xy = v1.xy * float2(2,2) + float2(-1,-1);
  r0.zw = r1.xy * r0.zz + cb0[66].xy;
  r1.xyzw = cb0[68].xyzw * r0.wwww;
  r1.xyzw = r0.zzzz * cb0[67].xyzw + r1.xyzw;
  r1.xyzw = r0.xxxx * cb0[69].xyzw + r1.xyzw;
  r1.xyzw = cb0[70].xyzw + r1.xyzw;
  o1.xyzw = r0.yyyy ? r1.xyzw : 0;
  return;
}