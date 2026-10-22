// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
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
  float4 v3 : TEXCOORD6,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t0.SampleBias(s0_s, v2.xy, cb1[143].y).xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.zw = log2(r0.xy);
  r0.zw = cb3[4].xx * r0.zw;
  r0.zw = exp2(r0.zw);
  r1.xy = cmp(float2(0,0) >= r0.xy);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r0.x = sqrt(r0.x);
  r1.xy = r1.xy ? float2(0,0) : r0.zw;
  r0.y = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.y = cb3[4].x * r0.y;
  r0.y = exp2(r0.y);
  r1.z = r0.x ? 0 : r0.y;
  r0.xyz = r1.xyz * cb1[138].www + cb1[138].xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = v1.zxy * v0.yzx;
  r1.xyz = v1.yzx * v0.zxy + -r1.xyz;
  r1.xyz = v1.www * r1.xyz;
  r1.xyz = r1.xyz * r0.yyy;
  r0.xyw = r0.xxx * v0.xyz + r1.xyz;
  r0.xyz = r0.zzz * v1.xyz + r0.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = cb2[4].w * cb1[141].w;
  r0.xyz = r0.xyz * r0.www;
  r1.xyzw = cb1[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb1[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb1[46].xyzw + r1.xyzw;
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
  r0.x = 0.200000003 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * 5 + cb3[5].z;
  r0.x = saturate(-5 + r0.x);
  r0.x = r0.x * 0.949999988 + 0.0500000007;
  r0.y = t1.SampleBias(s1_s, v2.xy, cb1[143].y).x;
  r0.y = r0.y * 5 + cb3[6].x;
  r0.y = saturate(-5 + r0.y);
  r0.z = r0.x * r0.y + -0.00392156886;
  r0.x = r0.x * r0.y;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.z < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = cb0[1].x + v3.x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}