// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb2 : register(b2)
{
  float4 cb2[29];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float4 v1 : ATTRIBUTE1,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float o2 : TEXCOORD6,
  out float p2 : TEXCOORD8,
  out float3 o3 : TEXCOORD7,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyzw = float4(0,0,0,0);
  o1.xyzw = float4(0,0,0,0);
  r0.xyz = cb1[4].yyy * cb1[1].xyz;
  r0.xyz = v1.yyy * r0.xyz;
  r1.xyz = cb1[4].xxx * cb1[0].xyz;
  r0.xyz = r1.xyz * v1.xxx + r0.xyz;
  r1.xyz = cb1[4].zzz * cb1[2].xyz;
  r0.xyz = r1.xyz * v1.zzz + r0.xyz;
  r1.x = cb2[23].z;
  r1.y = cb2[24].z;
  r1.z = cb2[25].z;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb2[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb2[27].z, r0.x);
  p2.x = cb2[27].y * r0.x + cb2[27].x;
  r0.xyz = cb1[1].xyz * v0.yyy;
  r0.xyz = cb1[0].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v0.zzz + r0.xyz;
  r1.xyz = cb1[3].xyz + cb0[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb2[20].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb2[19].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb2[21].xyzw + r1.xyzw;
  o3.xyz = r0.xyz;
  r0.xyzw = cb2[22].xyzw + r1.xyzw;
  r1.x = cmp(r0.z < 0);
  r1.y = cmp(0 < cb2[28].x);
  r1.x = r1.x ? r1.y : 0;
  r0.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o2.x = r0.z;
  o4.xyzw = r0.xyzw;
  return;
}