// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  float4 v2 : COLOR0,
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
  r0.x = cb2[2].x * r0.x;
  r0.y = cb3[8].w * r0.x;
  r1.xyz = cb1[45].xyw * v6.yyy;
  r1.xyz = v6.xxx * cb1[44].xyw + r1.xyz;
  r1.xyz = v6.zzz * cb1[46].xyw + r1.xyz;
  r1.xyz = cb1[47].xyw + r1.xyz;
  r0.zw = r1.xy / r1.zz;
  r0.zw = -cb1[70].xy + r0.zw;
  r1.xy = r0.zw / cb3[10].xx;
  r1.xy = r0.yy * cb3[9].zw + r1.xy;
  r0.y = t1.SampleBias(s0_s, r1.xy, cb1[143].y).x;
  r0.y = cb3[10].y * r0.y;
  r1.x = log2(r0.y);
  r0.y = cmp(0 >= r0.y);
  r1.x = cb3[10].z * r1.x;
  r1.x = exp2(r1.x);
  r0.y = r0.y ? 0 : r1.x;
  r1.xy = r0.zw / cb3[12].yy;
  r0.zw = r0.zw / cb3[8].zz;
  r1.z = cb3[11].x * r0.x;
  r0.x = cb3[7].y * r0.x;
  r0.xz = r0.xx * cb3[8].xy + r0.zw;
  r0.xz = r0.xz + r0.yy;
  r0.x = t2.SampleBias(s1_s, r0.xz, cb1[143].y).x;
  r2.x = cb3[11].w * r1.z;
  r2.y = cb3[12].x * r1.z;
  r0.zw = r2.xy + r1.xy;
  r0.yz = r0.zw + r0.yy;
  r0.yz = float2(0.5,0.5) + r0.yz;
  r0.y = t2.SampleBias(s1_s, r0.yz, cb1[143].y).x;
  r0.z = log2(r0.y);
  r0.y = cmp(0 >= r0.y);
  r0.z = cb3[10].w * r0.z;
  r0.z = exp2(r0.z);
  r0.y = r0.y ? 0 : r0.z;
  r0.z = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.z = cb3[10].w * r0.z;
  r0.z = exp2(r0.z);
  r0.x = r0.x ? 0 : r0.z;
  r0.x = r0.x + r0.y;
  r0.x = cb3[12].z * r0.x;
  r0.x = saturate(v2.w * r0.x);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = cb0[1].x + v4.x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}