// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  out float4 o2 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v0.xyzw, v4.xyzw);
  r0.y = dot(v0.xyzw, v5.xyzw);
  r0.z = dot(v0.xyzw, v6.xyzw);
  r0.xyz = cb0[70].xyz + r0.xyz;
  r0.w = v0.w;
  o0.xyzw = r0.xyzw;
  o2.xyzw = r0.xyzw;
  o1.xyz = v2.xyz;
  return;
}