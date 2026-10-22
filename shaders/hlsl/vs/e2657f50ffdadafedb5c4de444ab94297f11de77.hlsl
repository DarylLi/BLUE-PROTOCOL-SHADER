// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[53];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
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
  out uint o2 : SV_RenderTargetArrayIndex0,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 1;
  r0.xyz = cb2[1].xyz * v0.yyy;
  r0.xyz = cb2[0].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[2].xyz * v0.zzz + r0.xyz;
  r1.xyz = cb2[3].yzx + cb1[70].yzx;
  r0.xyz = r1.zxy + r0.xyz;
  o0.xyz = r0.xyz;
  r2.xyz = cb2[1].yzx * v1.yyy;
  r2.xyz = cb2[0].yzx * v1.xxx + r2.xyz;
  r2.xyz = cb2[2].yzx * v1.zzz + r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.xyz = -r1.xyz + r0.yzx;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = max(0.00999999978, r0.w);
  r0.w = sqrt(r0.w);
  r1.xyz = r1.xyz / r0.www;
  r2.xyz = cb1[67].yzx + -r0.yzx;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = max(0.00999999978, r0.w);
  r0.w = sqrt(r0.w);
  r2.xyz = r2.xyz / r0.www;
  r3.xyz = r2.xyz * r1.zxy;
  r2.xyz = r2.zxy * r1.xyz + -r3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = max(0.00999999978, r0.w);
  r0.w = sqrt(r0.w);
  r2.xyz = r2.xyz / r0.www;
  sincos(v2.z, r3.x, r4.x);
  r3.yzw = cb4[0].zxy * r3.xxx;
  r3.yzw = -r4.xxx * cb4[1].zxy + r3.yzw;
  r0.w = cmp(1.5 < cb4[2].x);
  r2.xyz = r0.www ? r2.xyz : r3.yzw;
  r3.yzw = cb4[0].yzx * r4.xxx;
  r3.xyz = r3.xxx * cb4[1].yzx + r3.yzw;
  r1.xyz = r0.www ? r1.xyz : r3.xyz;
  r3.xyz = r2.xyz * r1.xyz;
  r1.xyz = r2.zxy * r1.yzx + -r3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o1.xyz = -r1.xyz;
  o2.x = cb0[1].x;
  r0.w = asuint(cb0[1].x) << 2;
  r1.xyzw = cb3[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb3[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb3[r0.w+31].xyzw + r1.xyzw;
  o3.xyzw = cb3[r0.w+32].xyzw + r1.xyzw;
  return;
}