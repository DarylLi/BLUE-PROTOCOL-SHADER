// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[16];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
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
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD6,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = mad((int)v3.x, 36, 18);
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  r0.x = frac(r0.x);
  r0.x = cb1[142].z + r0.x;
  r0.x = cb3[2].x * r0.x;
  r0.y = cb4[7].x * r0.x;
  r0.x = cb4[9].z * r0.x;
  r1.x = cb4[7].w * r0.y;
  r1.y = cb4[8].x * r0.y;
  r2.x = cb4[8].y * v2.x + cb4[8].z;
  r2.y = cb4[8].w * v2.y + cb4[9].x;
  r0.yz = r2.xy + r1.xy;
  r1.xyzw = cb1[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb1[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb1[46].xyzw + r1.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r2.xyz = v1.zxy * v0.yzx;
  r2.xyz = v1.yzx * v0.zxy + -r2.xyz;
  r2.xyz = v1.www * r2.xyz;
  r2.y = dot(r2.xyz, r1.xyz);
  r2.x = dot(v0.xyz, r1.xyz);
  r0.w = cb4[9].y * 0.0199999996 + -0.00999999978;
  r0.yz = r2.xy * r0.ww + r0.yz;
  r1.xy = cb4[10].ww * v2.xy;
  r0.xw = r0.xx * cb4[10].yz + r1.xy;
  r0.x = t1.SampleBias(s0_s, r0.xw, cb1[143].y).x;
  r0.x = cb4[11].x * r0.x;
  r0.w = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.w = cb4[11].y * r0.w;
  r0.w = exp2(r0.w);
  r0.x = r0.x ? 0 : r0.w;
  r0.xy = r0.yz + r0.xx;
  r0.x = t2.SampleBias(s1_s, r0.xy, cb1[143].y).w;
  r0.x = saturate(cb4[15].w * r0.x);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
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