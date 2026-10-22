// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

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
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float4 v4 : ATTRIBUTE4,
  out float o0 : TEXCOORD6,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.x = 0;
  r0.xyz = cb1[4].yyy * cb1[1].xyz;
  r0.xyz = v2.yyy * r0.xyz;
  r1.xyz = cb1[4].xxx * cb1[0].xyz;
  r0.xyz = v2.xxx * r1.xyz + r0.xyz;
  r1.xyz = cb1[4].zzz * cb1[2].xyz;
  r0.xyz = v2.zzz * r1.xyz + r0.xyz;
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
  r0.x = cb2[27].y * r0.x + cb2[27].x;
  r0.yzw = v0.xyz * cb3[1].xyz + cb3[0].xyz;
  r1.xyz = cb1[1].xyz * r0.zzz;
  r1.xyz = cb1[0].xyz * r0.yyy + r1.xyz;
  r0.yzw = cb1[2].xyz * r0.www + r1.xyz;
  r1.xyz = cb1[3].xyz + cb0[70].xyz;
  r0.yzw = r1.xyz + r0.yzw;
  r1.xyzw = cb2[20].xyzw * r0.zzzz;
  r1.xyzw = r0.yyyy * cb2[19].xyzw + r1.xyzw;
  r1.xyzw = r0.wwww * cb2[21].xyzw + r1.xyzw;
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