// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[29];
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
  out float o0 : TEXCOORD6,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.x = 0;
  r0.xyz = cb1[1].yzx * v1.yyy;
  r0.xyz = cb1[0].yzx * v1.xxx + r0.xyz;
  r0.xyz = cb1[2].yzx * v1.zzz + r0.xyz;
  r1.xyz = cb1[3].yzx + cb0[70].yzx;
  r0.xyz = r1.xyz + r0.xyz;
  r2.xyz = cb1[1].yzx * v0.yyy;
  r2.xyz = cb1[0].yzx * v0.xxx + r2.xyz;
  r2.xyz = cb1[2].yzx * v0.zzz + r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.xyz = r1.xyz + -r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = max(0.00999999978, r0.w);
  r0.w = sqrt(r0.w);
  r0.xyz = r0.xyz / r0.www;
  r2.xyz = cb0[67].yzx + -r1.xyz;
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
  r3.yzw = cb3[0].zxy * r3.xxx;
  r3.yzw = -r4.xxx * cb3[1].zxy + r3.yzw;
  r0.w = cmp(1.5 < cb3[2].x);
  r2.xyz = r0.www ? r2.xyz : r3.yzw;
  r3.yzw = cb3[0].yzx * r4.xxx;
  r3.xyz = r3.xxx * cb3[1].yzx + r3.yzw;
  r0.xyz = r0.www ? r0.xyz : r3.xyz;
  r3.xyz = r2.xyz * r0.xyz;
  r0.xyz = r2.zxy * r0.yzx + -r3.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.x = cb2[23].z;
  r2.y = cb2[24].z;
  r2.z = cb2[25].z;
  r0.x = dot(r2.xyz, -r0.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb2[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb2[27].z, r0.x);
  r0.x = cb2[27].y * r0.x + cb2[27].x;
  r2.xyzw = cb2[20].xyzw * r1.xxxx;
  r2.xyzw = r1.zzzz * cb2[19].xyzw + r2.xyzw;
  r1.xyzw = r1.yyyy * cb2[21].xyzw + r2.xyzw;
  r1.xyzw = cb2[22].xyzw + r1.xyzw;
  r0.y = cmp(r1.z < 0);
  r0.z = cmp(0 < cb2[28].x);
  r0.y = r0.y ? r0.z : 0;
  r0.yz = r0.yy ? float2(9.99999997e-007,1) : r1.zw;
  o1.xy = r1.xy;
  r0.x = r0.y * cb2[27].w + r0.x;
  o1.z = r0.x * r0.z;
  o1.w = r0.z;
  return;
}