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
  float4 cb0[136];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD2,
  out float4 o6 : TEXCOORD3,
  out float4 o7 : TEXCOORD4)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(1 < asint(cb0[135].x));
  r0.yzw = cb1[1].zxy * v0.yyy;
  r0.yzw = cb1[0].zxy * v0.xxx + r0.yzw;
  r0.yzw = cb1[2].zxy * v0.zzz + r0.yzw;
  r1.xyz = cb1[3].zxy + cb0[70].zxy;
  r0.yzw = r1.xyz + r0.yzw;
  r2.xyzw = cb0[1].xyzw * r0.wwww;
  r2.xyzw = r0.zzzz * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r0.yyyy * cb0[2].xyzw + r2.xyzw;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  r1.w = 0.00100000005 * r2.w;
  r0.x = r0.x ? r1.w : 0;
  o0.z = r2.z + r0.x;
  o0.xyw = r2.xyw;
  o1.xyzw = r2.xyzw;
  r2.xyzw = cb0[92].xyzw * r0.wwww;
  r2.xyzw = r0.zzzz * cb0[91].xyzw + r2.xyzw;
  r2.xyzw = r0.yyyy * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r2.xyzw;
  r2.xyz = cb1[1].zxy * v1.yyy;
  r2.xyz = cb1[0].zxy * v1.xxx + r2.xyz;
  r2.xyz = cb1[2].zxy * v1.zzz + r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.xyz = -r1.xyz + r0.yzw;
  r0.xyz = cb0[67].zxy + -r0.yzw;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = max(0.00999999978, r0.w);
  r0.w = sqrt(r0.w);
  r1.xyz = r1.xyz / r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = max(0.00999999978, r0.w);
  r0.w = sqrt(r0.w);
  r0.xyz = r0.xyz / r0.www;
  r2.xyz = r0.xyz * r1.zxy;
  r0.xyz = r0.zxy * r1.xyz + -r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = max(0.00999999978, r0.w);
  r0.w = sqrt(r0.w);
  r0.xyz = r0.xyz / r0.www;
  sincos(v2.z, r2.x, r3.x);
  r2.yzw = cb2[0].xyz * r2.xxx;
  r2.yzw = -r3.xxx * cb2[1].xyz + r2.yzw;
  r0.w = cmp(1.5 < cb2[2].x);
  r0.xyz = r0.www ? r0.xyz : r2.yzw;
  r2.yzw = cb1[1].xyz * r0.yyy;
  r2.yzw = r0.xxx * cb1[0].xyz + r2.yzw;
  o3.xyz = r0.zzz * cb1[2].xyz + r2.yzw;
  o3.w = 0;
  r2.yzw = cb2[0].zxy * r3.xxx;
  r2.xyz = r2.xxx * cb2[1].zxy + r2.yzw;
  r1.xyz = r0.www ? r1.xyz : r2.xyz;
  r2.xyz = r1.xyz * r0.xyz;
  r2.xyz = r0.zxy * r1.yzx + -r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyz = -r2.xyz * r1.xyz;
  r1.xyz = r1.zxy * -r2.yzx + -r3.xyz;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.y = cmp(0 < r0.x);
  r0.x = cmp(r0.x < 0);
  r0.x = (int)-r0.y + (int)r0.x;
  o4.w = (int)r0.x;
  r0.xyz = cb1[1].xyz * -r2.xxx;
  r0.xyz = -r2.zzz * cb1[0].xyz + r0.xyz;
  o4.xyz = -r2.yyy * cb1[2].xyz + r0.xyz;
  o5.xyzw = v3.xyzw;
  o6.xyzw = v4.xyzw;
  o7.xyzw = v5.xyzw;
  return;
}