// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[365];
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
  float4 v13 : ATTRIBUTE13,
  float4 v14 : ATTRIBUTE14,
  float4 v15 : ATTRIBUTE15,
  uint v16 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v13.x + v13.x;
  r0.x = saturate(r0.x);
  r1.xy = v5.xy;
  r1.z = v6.x;
  r2.x = dot(r1.xyz, v8.xyz);
  r2.y = dot(r1.xyz, v9.xyz);
  r2.z = dot(r1.xyz, v10.xyz);
  r1.x = v6.y;
  r1.yz = v7.xy;
  r3.x = dot(r1.xyz, v8.xyz);
  r3.y = dot(r1.xyz, v9.xyz);
  r3.z = dot(r1.xyz, v10.xyz);
  r0.yzw = -r0.xxx * r3.xyz + r2.xyz;
  r1.xyz = r3.xyz * r0.xxx;
  r0.x = saturate(v13.x * 2 + -1);
  r0.xyz = r0.xxx * r0.yzw + r1.xyz;
  r1.x = dot(v0.xyzw, v8.xyzw);
  r1.y = dot(v0.xyzw, v9.xyzw);
  r1.z = dot(v0.xyzw, v10.xyzw);
  r1.xyz = cb0[70].xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = v0.wwww * cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}