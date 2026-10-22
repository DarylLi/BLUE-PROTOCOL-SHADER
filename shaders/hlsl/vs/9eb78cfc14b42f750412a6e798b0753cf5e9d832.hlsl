// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

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
  float2 v4 : ATTRIBUTE4,
  float2 v5 : ATTRIBUTE5,
  float2 v6 : ATTRIBUTE6,
  float2 v7 : ATTRIBUTE7,
  float4 v8 : ATTRIBUTE8,
  float4 v9 : ATTRIBUTE9,
  float4 v10 : ATTRIBUTE10,
  int4 v11 : ATTRIBUTE11,
  float2 v12 : ATTRIBUTE12,
  float4 v13 : ATTRIBUTE14,
  float4 v14 : ATTRIBUTE15,
  uint v15 : SV_InstanceID0,
  out float4 o0 : TEXCOORD6,
  out float3 o1 : TEXCOORD8,
  out uint o2 : SV_RenderTargetArrayIndex0,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v5.xy;
  r0.z = v6.x;
  r1.x = dot(r0.xyz, v8.xyz);
  r1.y = dot(r0.xyz, v9.xyz);
  r1.z = dot(r0.xyz, v10.xyz);
  r0.x = v6.y;
  r0.yz = v7.xy;
  r2.x = dot(r0.xyz, v8.xyz);
  r2.y = dot(r0.xyz, v9.xyz);
  r2.z = dot(r0.xyz, v10.xyz);
  r0.xyz = -cb3[5].www * r2.xyz + r1.xyz;
  r1.xyz = cb3[5].www * r2.xyz;
  r0.xyz = cb3[6].yyy * r0.xyz + r1.xyz;
  r1.x = dot(v0.xyzw, v8.xyzw);
  r1.y = dot(v0.xyzw, v9.xyzw);
  r1.z = dot(v0.xyzw, v10.xyzw);
  r1.xyz = cb1[70].xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o0.xyz = r0.xyz;
  o0.w = v0.w;
  o1.xyz = v2.xyz;
  o2.x = cb0[1].x;
  r0.w = asuint(cb0[1].x) << 2;
  r1.xyzw = cb2[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb2[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb2[r0.w+31].xyzw + r1.xyzw;
  o3.xyzw = v0.wwww * cb2[r0.w+32].xyzw + r1.xyzw;
  return;
}