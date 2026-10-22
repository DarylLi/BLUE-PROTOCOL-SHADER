// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
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
  float4 v5 : ATTRIBUTE5,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD6,
  out float4 o6 : TEXCOORD7,
  out float4 o7 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].zxy * v1.yyy;
  r0.xyz = cb1[0].zxy * v1.xxx + r0.xyz;
  r0.xyz = cb1[2].zxy * v1.zzz + r0.xyz;
  r1.xyz = cb1[3].zxy + cb0[70].zxy;
  r0.xyz = r1.xyz + r0.xyz;
  r2.xyz = cb1[1].xyz * v0.yyy;
  r2.xyz = cb1[0].xyz * v0.xxx + r2.xyz;
  r2.xyz = cb1[2].xyz * v0.zzz + r2.xyz;
  r1.xyz = r2.xyz + r1.yzx;
  r0.xyz = r1.zxy + -r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = max(0.00999999978, r0.w);
  r0.w = sqrt(r0.w);
  r0.xyz = r0.xyz / r0.www;
  r2.xyz = cb0[67].zxy + -r1.zxy;
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
  r3.yzw = cb3[0].xyz * r3.xxx;
  r3.yzw = -r4.xxx * cb3[1].xyz + r3.yzw;
  r0.w = cmp(1.5 < cb3[2].x);
  r2.xyz = r0.www ? r2.xyz : r3.yzw;
  r3.yzw = cb1[1].xyz * r2.yyy;
  r3.yzw = r2.xxx * cb1[0].xyz + r3.yzw;
  o0.xyz = r2.zzz * cb1[2].xyz + r3.yzw;
  o0.w = 0;
  r3.yzw = cb3[0].zxy * r4.xxx;
  r3.xyz = r3.xxx * cb3[1].zxy + r3.yzw;
  r0.xyz = r0.www ? r0.xyz : r3.xyz;
  r3.xyz = r2.xyz * r0.xyz;
  r3.xyz = r2.zxy * r0.yzx + -r3.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xyz = -r3.xyz * r0.xyz;
  r0.xyz = r0.zxy * -r3.yzx + -r4.xyz;
  r0.x = dot(r0.xyz, r2.xyz);
  r0.y = cmp(0 < r0.x);
  r0.x = cmp(r0.x < 0);
  r0.x = (int)-r0.y + (int)r0.x;
  o1.w = (int)r0.x;
  r0.xyz = cb1[1].xyz * -r3.xxx;
  r0.xyz = -r3.zzz * cb1[0].xyz + r0.xyz;
  o1.xyz = -r3.yyy * cb1[2].xyz + r0.xyz;
  o2.xyzw = v3.xyzw;
  o3.xyzw = v4.xyzw;
  o4.xyzw = v5.xyzw;
  r0.xyzw = cb2[8].xyzw * r1.yyyy;
  r0.xyzw = r1.xxxx * cb2[7].xyzw + r0.xyzw;
  r0.xyzw = r1.zzzz * cb2[9].xyzw + r0.xyzw;
  o6.xyz = r1.xyz;
  r0.xyzw = cb2[10].xyzw + r0.xyzw;
  r1.x = cmp(r0.z < 0);
  r1.y = cmp(0 != cb2[11].x);
  r1.x = r1.x ? r1.y : 0;
  r0.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o7.xyw = r0.xyw;
  r0.x = cb2[11].y * r0.z;
  o5.x = r0.x;
  o7.z = r0.x * r0.w;
  o6.w = 1;
  return;
}