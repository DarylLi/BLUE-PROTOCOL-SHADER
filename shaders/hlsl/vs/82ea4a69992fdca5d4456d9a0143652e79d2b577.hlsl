// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[23];
}

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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : COLOR0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[142].z + v13.w;
  r0.x = r0.x / v13.z;
  r0.x = frac(r0.x);
  r0.y = 1 + v13.x;
  r0.z = r0.x * r0.y + -v13.x;
  r0.x = r0.x * r0.y;
  r0.xy = saturate(cb1[22].zz * r0.xz);
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.y = cb0[142].z + cb0[142].z;
  r0.y = frac(r0.y);
  r0.y = 6.28318548 * r0.y;
  r0.y = sin(r0.y);
  r0.y = 1 + r0.y;
  r0.y = v13.y * r0.y;
  r0.z = saturate(r0.y * 0.5 + -1);
  r0.y = 0.5 * r0.y;
  r0.y = saturate(r0.y);
  r1.x = v6.y;
  r1.yz = v7.xy;
  r2.x = dot(r1.xyz, v8.xyz);
  r2.y = dot(r1.xyz, v9.xyz);
  r2.z = dot(r1.xyz, v10.xyz);
  r1.xyz = r2.xyz * r0.yyy;
  r3.xy = v5.xy;
  r3.z = v6.x;
  r4.x = dot(r3.xyz, v8.xyz);
  r4.y = dot(r3.xyz, v9.xyz);
  r4.z = dot(r3.xyz, v10.xyz);
  r2.xyz = -r0.yyy * r2.xyz + r4.xyz;
  r0.yzw = r0.zzz * r2.xyz + r1.xyz;
  r0.yzw = r0.yzw + -r4.xyz;
  r0.xyz = r0.xxx * r0.yzw + r4.xyz;
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
  o1.xy = v4.xy;
  o1.zw = float2(0,0);
  o2.xyzw = v3.xyzw;
  return;
}