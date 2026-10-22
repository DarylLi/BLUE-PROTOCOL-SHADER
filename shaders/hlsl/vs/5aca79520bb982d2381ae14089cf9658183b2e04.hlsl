// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[365];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyz = t1.Load(r0.y).zxy;
  r2.x = r1.z;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r3.xyz = t0.Load(r0.x).xyz;
  r4.xyz = t1.Load(r0.y).yxz;
  r0.xyz = t1.Load(r0.z).xyz;
  r2.y = r4.x;
  r2.z = r0.y;
  r2.w = r3.y;
  r0.y = dot(v0.xyzw, r2.xyzw);
  r2.xyz = cb2[1].xyz * r0.yyy;
  r4.x = r1.y;
  r1.y = r4.z;
  r4.z = r0.x;
  r1.z = r0.z;
  r4.w = r3.x;
  r1.w = r3.z;
  r0.x = dot(v0.xyzw, r1.xyzw);
  r0.y = dot(v0.xyzw, r4.xyzw);
  r0.yzw = cb2[0].xyz * r0.yyy + r2.xyz;
  r0.xyz = cb2[2].xyz * r0.xxx + r0.yzw;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}