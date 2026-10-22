// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[43];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v7 : ATTRIBUTE8,
  float4 v8 : ATTRIBUTE9,
  float4 v9 : ATTRIBUTE10,
  int4 v10 : ATTRIBUTE11,
  float2 v11 : ATTRIBUTE12,
  float4 v12 : ATTRIBUTE14,
  float4 v13 : ATTRIBUTE15,
  uint v14 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v7.x;
  r0.y = v8.x;
  r0.z = v9.x;
  r0.x = dot(-r0.xyz, -r0.xyz);
  r1.x = v7.y;
  r1.y = v8.y;
  r1.z = v9.y;
  r0.y = dot(-r1.xyz, -r1.xyz);
  r0.xy = sqrt(r0.xy);
  r0.x = r0.x + r0.y;
  r1.x = v7.z;
  r1.y = v8.z;
  r1.z = v9.z;
  r0.y = dot(-r1.xyz, -r1.xyz);
  r0.y = sqrt(r0.y);
  r0.x = r0.x + r0.y;
  r0.x = r0.x * 0.333333343 + -1;
  r0.x = cb3[42].y * r0.x + 1;
  r0.y = cb1[18].x + cb1[18].y;
  r0.y = cb1[18].z + r0.y;
  r0.y = frac(r0.y);
  r0.y = cb0[142].z + r0.y;
  r0.y = cb2[2].x * r0.y;
  r0.y = cb3[27].z * r0.y;
  r0.zw = v6.xy + -v4.xy;
  r0.zw = cb3[28].ww * r0.zw + v4.xy;
  r0.zw = cb3[29].xx * r0.zw;
  r0.yz = r0.yy * cb3[28].yz + r0.zw;
  r0.yz = t0.SampleLevel(s0_s, r0.yz, -1).xy;
  r1.xy = r0.yz * float2(2,2) + float2(-1,-1);
  r2.xy = r0.yz + r0.yz;
  r0.y = dot(r1.xy, r1.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r2.z = sqrt(r0.y);
  r0.yzw = float3(-1,-1,-1) + r2.xyz;
  r0.yzw = v3.xxx * r0.yzw + float3(0,0,1);
  r1.xyz = float3(0,0,1) + -r0.yzw;
  r0.yzw = cb3[29].yyy * r1.xyz + r0.yzw;
  r1.xy = cb3[41].zw * r0.yz;
  r1.z = cb3[42].x * r0.w;
  r0.xyz = r1.xyz * r0.xxx;
  r0.xyz = cb3[42].zzz * r0.xyz;
  r1.x = dot(v0.xyzw, v7.xyzw);
  r1.y = dot(v0.xyzw, v8.xyzw);
  r1.z = dot(v0.xyzw, v9.xyzw);
  r1.xyz = cb0[70].xyz + r1.xyz;
  r0.xyz = r0.xyz * v3.xxx + r1.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = v0.wwww * cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}