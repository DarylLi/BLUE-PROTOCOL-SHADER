// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD6,
  float4 v2 : TEXCOORD7,
  linear centroid float4 v3 : TEXCOORD10,
  linear centroid float4 v4 : TEXCOORD11,
  float4 v5 : TEXCOORD0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t0.SampleBias(s0_s, v5.xy, cb0[143].y).xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.zw = log2(r0.xy);
  r0.zw = cb2[4].xx * r0.zw;
  r0.zw = exp2(r0.zw);
  r1.xy = cmp(float2(0,0) >= r0.xy);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r0.x = sqrt(r0.x);
  r1.xy = r1.xy ? float2(0,0) : r0.zw;
  r0.y = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.y = cb2[4].x * r0.y;
  r0.y = exp2(r0.y);
  r1.z = r0.x ? 0 : r0.y;
  r0.xyz = r1.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = v4.zxy * v3.yzx;
  r1.xyz = v4.yzx * v3.zxy + -r1.xyz;
  r1.xyz = v4.www * r1.xyz;
  r1.xyz = r1.xyz * r0.yyy;
  r0.xyw = r0.xxx * v3.xyz + r1.xyz;
  r0.xyz = r0.zzz * v4.xyz + r0.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = cb1[4].w * cb0[141].w;
  r1.x = v6.x ? 1 : -1;
  r0.w = r1.x * r0.w;
  r0.xyz = r0.xyz * r0.www;
  r1.xyzw = cb0[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v0.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
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
  r0.x = r0.x * 5 + cb2[5].z;
  r0.x = saturate(-5 + r0.x);
  r0.x = r0.x * 0.949999988 + 0.0500000007;
  r0.y = t1.SampleBias(s1_s, v5.xy, cb0[143].y).x;
  r0.y = r0.y * 5 + cb2[6].x;
  r0.y = saturate(-5 + r0.y);
  r0.x = r0.x * r0.y + -0.337221563;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.xyz = v1.xyz / v1.www;
  r0.xy = -cb0[126].xy + r0.xy;
  r1.xyz = v2.xyz / v2.www;
  r1.xy = -cb0[126].zw + r1.xy;
  r0.xyz = -r1.xyz + r0.xyz;
  o0.xy = r0.xy * float2(0.249500006,0.249500006) + float2(0.499992371,0.499992371);
  r0.x = (uint)r0.z >> 16;
  r0.y = (int)r0.z & 0x0000ffff;
  r0.xy = (uint2)r0.xy;
  r0.y = r0.y * 1.52590219e-005 + 1.52590223e-006;
  r0.x = r0.x * 1.52590219e-005 + 1.52590223e-006;
  o0.zw = min(float2(1,1), r0.xy);
  return;
}