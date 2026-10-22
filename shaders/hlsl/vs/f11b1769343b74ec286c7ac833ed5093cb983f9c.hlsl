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
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD7,
  out float4 o4 : TEXCOORD6,
  out float3 o5 : TEXCOORD8,
  out uint o6 : SV_RenderTargetArrayIndex0,
  out float4 o7 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[1].zxy * v1.yyy;
  r0.xyz = cb2[0].zxy * v1.xxx + r0.xyz;
  r0.xyz = cb2[2].zxy * v1.zzz + r0.xyz;
  r1.xyz = cb2[3].zxy + cb1[70].zxy;
  r0.xyz = r1.xyz + r0.xyz;
  r2.xyz = cb2[1].xyz * v0.yyy;
  r2.xyz = cb2[0].xyz * v0.xxx + r2.xyz;
  r2.xyz = cb2[2].xyz * v0.zzz + r2.xyz;
  r1.xyz = r2.xyz + r1.yzx;
  r0.xyz = r1.zxy + -r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = max(0.00999999978, r0.w);
  r0.w = sqrt(r0.w);
  r0.xyz = r0.xyz / r0.www;
  r2.xyz = cb1[67].zxy + -r1.zxy;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = max(0.00999999978, r0.w);
  r0.w = sqrt(r0.w);
  r2.xyz = r2.xyz / r0.www;
  r3.xyz = r2.xyz * r0.zxy;
  r2.xyz = r2.zxy * r0.xyz + -r3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = max(0.00999999978, r0.w);
  r0.w = sqrt(r0.w);
  r2.xyz = r2.xyz / r0.www;
  sincos(v2.z, r3.x, r4.x);
  r3.yzw = cb4[0].xyz * r3.xxx;
  r3.yzw = -r4.xxx * cb4[1].xyz + r3.yzw;
  r0.w = cmp(1.5 < cb4[2].x);
  r2.xyz = r0.www ? r2.xyz : r3.yzw;
  r3.yzw = cb2[1].xyz * r2.yyy;
  r3.yzw = r2.xxx * cb2[0].xyz + r3.yzw;
  o0.xyz = r2.zzz * cb2[2].xyz + r3.yzw;
  o0.w = 0;
  r3.yzw = cb4[0].zxy * r4.xxx;
  r3.xyz = r3.xxx * cb4[1].zxy + r3.yzw;
  r0.xyz = r0.www ? r0.xyz : r3.xyz;
  r3.xyz = r2.zxy * r0.zxy;
  r3.xyz = r2.yzx * r0.xyz + -r3.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xyz = -r3.yzx * r0.xyz;
  r0.xyz = r0.zxy * -r3.zxy + -r4.xyz;
  r0.x = dot(r0.xyz, r2.xyz);
  r0.y = cmp(0 < r0.x);
  r0.x = cmp(r0.x < 0);
  r0.x = (int)-r0.y + (int)r0.x;
  o1.w = (int)r0.x;
  r0.xyz = cb2[1].xyz * -r3.yyy;
  r0.xyz = -r3.xxx * cb2[0].xyz + r0.xyz;
  o1.xyz = -r3.zzz * cb2[2].xyz + r0.xyz;
  o5.xyz = -r3.xyz;
  o2.xyzw = v3.xyzw;
  o3.xyz = r1.xyz;
  r0.x = asuint(cb0[1].x) << 2;
  r2.xyzw = cb3[r0.x+30].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb3[r0.x+29].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb3[r0.x+31].xyzw + r2.xyzw;
  r0.xyzw = cb3[r0.x+32].xyzw + r1.xyzw;
  o4.xyzw = r0.xyzw;
  o7.xyzw = r0.xyzw;
  o6.x = cb0[1].x;
  return;
}