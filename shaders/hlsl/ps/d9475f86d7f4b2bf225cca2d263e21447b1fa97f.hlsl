// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb4 : register(b4)
{
  float4 cb4[6];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[11];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[139];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  uint v2 : PRIMITIVE_ID0,
  float4 v3 : TEXCOORD6,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyz = cb1[138].www * float3(0,0,1) + cb1[138].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r1.xxx * v0.xyz + r0.xyz;
  r0.xyz = r1.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyzw = cb1[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb1[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb1[46].xyzw + r1.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r1.xyz * r0.www;
  r1.xyz = -cb1[70].xyz + r1.xyz;
  r0.x = dot(r0.xyz, r2.xyz);
  r0.x = r0.x * cb4[4].z + -cb4[4].z;
  r0.x = saturate(cb4[5].x + r0.x);
  r0.yzw = cb3[9].xyz + -r1.xyz;
  r1.xyz = cb3[10].xyz + -r1.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = r1.x * 0.333333343 + -50;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.z = r0.y * 0.333333343 + -50;
  r0.y = -r0.y * 0.00666666683 + 1;
  r0.y = max(0, r0.y);
  r0.y = r0.y * 50 + -50;
  r0.y = saturate(cb3[2].y * 51.5099983 + r0.y);
  r1.yz = float2(1,1) + -cb3[0].yz;
  r0.z = saturate(r1.y * 51.5099983 + r0.z);
  r0.w = saturate(r1.z * 51 + r1.x);
  r1.x = floor(r0.z);
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r0.w;
  r0.x = r1.x * r0.x;
  r0.z = r0.y * r0.x + -0.00392156886;
  r0.x = r0.y * r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.z < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = v3.x * cb2[11].y + cb0[1].x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}