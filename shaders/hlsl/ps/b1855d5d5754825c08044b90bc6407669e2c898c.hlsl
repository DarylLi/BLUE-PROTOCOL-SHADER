// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[14];
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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[45].xyzw * v6.yyyy;
  r0.xyzw = v6.xxxx * cb1[44].xyzw + r0.xyzw;
  r0.xyzw = v6.zzzz * cb1[46].xyzw + r0.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb1[70].xyz + r0.xyz;
  r0.w = mad((int)v3.x, 36, 5);
  r1.x = t0[r0.w].val[0/4];
  r1.y = t0[r0.w].val[0/4+1];
  r1.z = t0[r0.w].val[0/4+2];
  r0.xyz = r1.xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 0.00499999989 * r0.x;
  r0.x = min(1, r0.x);
  r0.x = r0.x * 5 + -5;
  r0.x = saturate(cb2[2].w * 6 + r0.x);
  r0.x = saturate(cb3[13].w * r0.x);
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