// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[29];
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
  float2 v4 : ATTRIBUTE4,
  float4 v5 : ATTRIBUTE8,
  float4 v6 : ATTRIBUTE9,
  float4 v7 : ATTRIBUTE10,
  int4 v8 : ATTRIBUTE11,
  float2 v9 : ATTRIBUTE12,
  float4 v10 : ATTRIBUTE14,
  float4 v11 : ATTRIBUTE15,
  uint v12 : SV_InstanceID0,
  out float o0 : TEXCOORD6,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.x = 0;
  r0.x = cb1[23].z;
  r0.y = cb1[24].z;
  r0.z = cb1[25].z;
  r0.x = dot(r0.xyz, v2.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb1[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb1[27].z, r0.x);
  r0.x = cb1[27].y * r0.x + cb1[27].x;
  r1.x = dot(v0.xyzw, v5.xyzw);
  r1.y = dot(v0.xyzw, v6.xyzw);
  r1.z = dot(v0.xyzw, v7.xyzw);
  r0.yzw = cb0[70].xyz + r1.xyz;
  r1.xyzw = cb1[20].xyzw * r0.zzzz;
  r1.xyzw = r0.yyyy * cb1[19].xyzw + r1.xyzw;
  r1.xyzw = r0.wwww * cb1[21].xyzw + r1.xyzw;
  r1.xyzw = v0.wwww * cb1[22].xyzw + r1.xyzw;
  r0.y = cmp(r1.z < 0);
  r0.z = cmp(0 < cb1[28].x);
  r0.y = r0.y ? r0.z : 0;
  r0.yz = r0.yy ? float2(9.99999997e-007,1) : r1.zw;
  o1.xy = r1.xy;
  r0.x = r0.y * cb1[27].w + r0.x;
  o1.z = r0.x * r0.z;
  o1.w = r0.z;
  return;
}