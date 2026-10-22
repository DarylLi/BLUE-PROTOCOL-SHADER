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
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float o2 : TEXCOORD6,
  out float3 p2 : TEXCOORD7,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v2.yzx * v1.xyz;
  r0.xyz = v2.xyz * v1.yzx + -r0.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = v2.yzx * r0.xyz;
  r0.xyz = r0.zxy * v2.zxy + -r1.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = cb1[4].yyy * cb1[1].xyz;
  r2.xyz = r1.xyz * r0.yyy;
  r1.xyz = v2.yyy * r1.xyz;
  r3.xyz = cb1[4].xxx * cb1[0].xyz;
  r0.xyw = r0.xxx * r3.xyz + r2.xyz;
  r1.xyz = v2.xxx * r3.xyz + r1.xyz;
  r2.xyz = cb1[4].zzz * cb1[2].xyz;
  o0.xyz = r0.zzz * r2.xyz + r0.xyw;
  r0.xyz = v2.zzz * r2.xyz + r1.xyz;
  o0.w = 0;
  o1.xyz = r0.xyz;
  o1.w = cb1[4].w * v2.w;
  o2.x = 0;
  r1.xyz = v0.xyz * cb3[1].xyz + cb3[0].xyz;
  r2.xyz = cb1[1].xyz * r1.yyy;
  r1.xyw = cb1[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb1[2].xyz * r1.zzz + r1.xyw;
  r2.xyz = cb1[3].xyz + cb0[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  p2.xyz = r1.xyz;
  r2.x = cb2[23].z;
  r2.y = cb2[24].z;
  r2.z = cb2[25].z;
  r0.x = dot(r2.xyz, r0.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb2[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb2[27].z, r0.x);
  r0.x = cb2[27].y * r0.x + cb2[27].x;
  r2.xyzw = cb2[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb2[19].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb2[21].xyzw + r2.xyzw;
  r1.xyzw = cb2[22].xyzw + r1.xyzw;
  r0.y = cmp(r1.z < 0);
  r0.z = cmp(0 < cb2[28].x);
  r0.y = r0.y ? r0.z : 0;
  r0.yz = r0.yy ? float2(9.99999997e-007,1) : r1.zw;
  o3.xy = r1.xy;
  r0.x = r0.y * cb2[27].w + r0.x;
  o3.z = r0.x * r0.z;
  o3.w = r0.z;
  return;
}