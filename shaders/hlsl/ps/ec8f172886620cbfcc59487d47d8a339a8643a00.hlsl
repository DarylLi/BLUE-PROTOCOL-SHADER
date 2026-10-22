// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[144];
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
  float4 v2 : TEXCOORD0,
  uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD6,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
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
  r1.xyzw = cb1[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb1[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb1[46].xyzw + r1.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r0.x = dot(r0.xyz, r1.xyz);
  r0.x = max(0, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-005, abs(r0.x));
  r0.x = log2(r0.x);
  r0.y = cb1[142].z * cb3[14].z + v2.x;
  r1.x = r0.y * cb3[15].y + 4;
  r0.y = cb1[142].z * cb3[15].z + v2.y;
  r1.y = r0.y * cb3[15].w + 3;
  r0.y = t0.SampleBias(s0_s, r1.xy, cb1[143].y).x;
  r0.y = -0.5 + r0.y;
  r0.z = cb1[142].z * cb3[12].z + v2.x;
  r1.x = r0.z * cb3[13].y + 4;
  r0.z = cb1[142].z * cb3[13].z + v2.y;
  r1.y = r0.z * cb3[13].w + 3;
  r0.yz = r0.yy * float2(0.200000003,0.200000003) + r1.xy;
  r0.y = t0.SampleBias(s0_s, r0.yz, cb1[143].y).x;
  r0.z = 1 + -r0.y;
  r0.y = r0.y * cb3[17].y + -cb3[17].y;
  r0.y = saturate(cb3[17].z + r0.y);
  r0.z = -r0.z * cb3[16].x + 1;
  r0.x = r0.z * r0.x;
  r0.x = exp2(r0.x);
  r0.x = 1 + -r0.x;
  r0.x = r0.x * cb3[17].y + -cb3[17].y;
  r0.x = saturate(cb3[18].x + r0.x);
  r0.z = 1 + -r0.y;
  r0.y = r0.z * r0.y;
  r0.z = r0.y * r0.x + -0.00392156886;
  r0.x = r0.y * r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.z < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = v4.x * cb2[11].y + cb0[1].x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}