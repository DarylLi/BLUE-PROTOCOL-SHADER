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
  float4 cb4[67];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
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
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD6,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[45].xyzw * v6.yyyy;
  r0.xyzw = v6.xxxx * cb1[44].xyzw + r0.xyzw;
  r0.xyzw = v6.zzzz * cb1[46].xyzw + r0.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.w = dot(-r0.xyz, -r0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r0.xyz * r0.www;
  r0.xyz = -cb1[70].xyz + r0.xyz;
  r2.xy = mad((int2)v3.xx, int2(36,36), int2(32,5));
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r0.xyz = r3.xyz + -r0.xyz;
  r0.w = dot(r1.xyz, r2.xzw);
  r1.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = cb4[53].y * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r0.w ? 0 : r1.x;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r1.x);
  r0.xyz = r0.xyz / r1.xxx;
  r1.xy = cb1[13].xy * r0.yy;
  r0.xy = r0.xx * cb1[12].xy + r1.xy;
  r0.xy = r0.zz * cb1[14].xy + r0.xy;
  r0.xy = r0.xy * cb4[11].xy + -cb4[12].xy;
  r0.x = r0.x + r0.y;
  r0.x = t2.Sample(s0_s, r0.xx).x;
  r0.x = r0.w * r0.x;
  r0.x = max(cb4[66].z, r0.x);
  r0.y = t1.SampleBias(s1_s, v2.xy, cb1[143].y).x;
  r0.y = -1 + r0.y;
  r0.z = cb4[55].y + r0.y;
  r0.y = cb4[56].z + r0.y;
  r0.yz = saturate(ceil(r0.yz));
  r0.w = 1 + -r0.z;
  r0.z = cb4[66].y * r0.w + r0.z;
  r0.x = r0.z * r0.x;
  r0.z = 1 + -r0.y;
  r0.y = cb4[66].w * r0.z + r0.y;
  r0.x = r0.x * r0.y;
  r0.y = saturate(cb1[142].w * cb2[0].x + cb2[0].y);
  r0.y = cb4[66].x * r0.y;
  r0.x = saturate(r0.y * r0.x);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = v4.x * cb3[11].y + cb0[1].x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}