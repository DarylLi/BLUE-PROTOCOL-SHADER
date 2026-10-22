// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb2 : register(b2)
{
  float4 cb2[53];
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
  float4 v4 : ATTRIBUTE8,
  float4 v5 : ATTRIBUTE9,
  float4 v6 : ATTRIBUTE10,
  int4 v7 : ATTRIBUTE11,
  float2 v8 : ATTRIBUTE12,
  float4 v9 : ATTRIBUTE14,
  float4 v10 : ATTRIBUTE15,
  uint v11 : SV_InstanceID0,
  out float4 o0 : TEXCOORD6,
  out float3 o1 : TEXCOORD8,
  out uint o2 : SV_RenderTargetArrayIndex0,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = v0.w;
  r0.x = dot(v0.xyzw, v4.xyzw);
  r0.y = dot(v0.xyzw, v5.xyzw);
  r0.z = dot(v0.xyzw, v6.xyzw);
  r0.xyz = cb1[70].xyz + r0.xyz;
  o0.xyz = r0.xyz;
  o1.xyz = v2.xyz;
  o2.x = cb0[1].x;
  r0.w = asuint(cb0[1].x) << 2;
  r1.xyzw = cb2[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb2[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb2[r0.w+31].xyzw + r1.xyzw;
  o3.xyzw = v0.wwww * cb2[r0.w+32].xyzw + r1.xyzw;
  return;
}