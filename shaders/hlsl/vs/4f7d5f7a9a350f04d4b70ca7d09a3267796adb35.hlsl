// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float4 v4 : ATTRIBUTE4,
  out float4 o0 : TEXCOORD6,
  out float3 o1 : TEXCOORD8,
  out float4 o2 : SV_POSITION0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 1;
  r0.xyz = cb1[1].xyz * v0.yyy;
  r0.xyz = cb1[0].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v0.zzz + r0.xyz;
  r1.xyz = cb1[3].yzx + cb0[70].yzx;
  r0.xyz = r1.zxy + r0.xyz;
  o0.xyz = r0.xyz;
  r2.xyz = cb1[1].yzx * v1.yyy;
  r2.xyz = cb1[0].yzx * v1.xxx + r2.xyz;
  r2.xyz = cb1[2].yzx * v1.zzz + r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.xyz = -r1.xyz + r0.yzx;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = max(0.00999999978, r0.w);
  r0.w = sqrt(r0.w);
  r1.xyz = r1.xyz / r0.www;
  r2.xyz = cb0[67].yzx + -r0.yzx;
  o2.xyz = r0.xyz;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = max(0.00999999978, r0.x);
  r0.x = sqrt(r0.x);
  r0.xyz = r2.xyz / r0.xxx;
  r2.xyz = r0.xyz * r1.zxy;
  r0.xyz = r0.zxy * r1.xyz + -r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = max(0.00999999978, r0.w);
  r0.w = sqrt(r0.w);
  r0.xyz = r0.xyz / r0.www;
  sincos(v2.z, r2.x, r3.x);
  r2.yzw = cb2[0].zxy * r2.xxx;
  r2.yzw = -r3.xxx * cb2[1].zxy + r2.yzw;
  r0.w = cmp(1.5 < cb2[2].x);
  r0.xyz = r0.www ? r0.xyz : r2.yzw;
  r2.yzw = cb2[0].yzx * r3.xxx;
  r2.xyz = r2.xxx * cb2[1].yzx + r2.yzw;
  r1.xyz = r0.www ? r1.xyz : r2.xyz;
  r2.xyz = r1.xyz * r0.xyz;
  r0.xyz = r0.zxy * r1.yzx + -r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o1.xyz = -r0.xyz;
  o2.w = 1;
  return;
}