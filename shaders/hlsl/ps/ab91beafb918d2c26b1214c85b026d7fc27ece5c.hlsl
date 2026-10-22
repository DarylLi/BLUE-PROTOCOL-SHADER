// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  float4 v0 : TEXCOORD5,
  float3 v1 : PARTICLE_LIGHTING_OFFSET0,
  float w1 : TEXCOORD6,
  float4 v2 : TANGENTX0,
  float4 v3 : TANGENTZ0,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[45].xyzw * v5.yyyy;
  r0.xyzw = v5.xxxx * cb1[44].xyzw + r0.xyzw;
  r0.xyzw = v5.zzzz * cb1[46].xyzw + r0.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb1[70].xyz + r0.xyz;
  r0.xyz = -cb1[67].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.yzw = -cb2[2].xyz + cb1[67].xyz;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.xy = sqrt(r0.xy);
  r0.z = max(cb2[2].x, cb2[2].y);
  r0.z = max(cb2[2].z, r0.z);
  r0.z = saturate(ceil(r0.z));
  r0.w = r0.z * r0.y;
  r0.y = r0.z * r0.y + cb4[8].w;
  r0.z = max(r0.y, r0.w);
  r0.y = min(r0.y, r0.w);
  r0.xy = r0.xy / r0.zz;
  r0.z = 1 + r0.y;
  r0.x = saturate(r0.x * r0.z + -r0.y);
  r0.x = r0.x * 3 + -1;
  r0.x = max(cb4[9].x, r0.x);
  r0.x = min(1, r0.x);
  r0.y = 1 + -r0.x;
  r0.z = saturate(ceil(cb3[2].y));
  r0.x = r0.z * r0.y + r0.x;
  r0.x = saturate(v0.w * r0.x);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = cb0[1].y + w1.x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}