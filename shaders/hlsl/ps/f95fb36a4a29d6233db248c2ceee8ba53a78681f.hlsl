// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[359];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb0[49].xyz * v0.www;
  r0.xyz = v0.zzz * cb0[48].xyz + r0.xyz;
  r0.xyz = cb0[50].xyz + r0.xyz;
  r1.xy = cb0[132].zw * v1.xy;
  r0.w = t1.SampleLevel(s0_s, r1.xy, 0).x;
  r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r2.x = r0.w * cb0[65].z + -cb0[65].w;
  r0.w = r0.w * cb0[65].x + cb0[65].y;
  r2.x = 1 / r2.x;
  r0.w = r2.x + r0.w;
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r0.w);
  r0.xyzw = r2.xxxx * r0.xyzw;
  r0.x = dot(r0.xyz, cb0[358].xyz);
  r0.x = -1 + r0.x;
  r0.x = -abs(r0.x) * 0.5 + 1;
  r0.x = max(0, r0.x);
  r0.yz = r0.ww / cb1[0].zw;
  r2.xyz = cb1[3].xyz + -cb1[2].xyz;
  r2.xyz = r0.xxx * r2.xyz + cb1[2].xyz;
  r2.xyz = -cb1[4].xyz + r2.xyz;
  r0.x = log2(r0.y);
  r0.y = cmp(0.5 >= r0.z);
  r0.y = r0.y ? 1.000000 : 0;
  r0.x = cb1[0].y * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.y = cb1[1].y * r0.x;
  r0.y = log2(r0.y);
  r0.y = cb1[1].x * r0.y;
  r0.y = exp2(r0.y);
  r0.xy = min(float2(1,1), r0.xy);
  r0.yzw = r0.yyy * r2.xyz + cb1[4].xyz;
  r0.yzw = r0.yzw + -r1.xyz;
  r0.yzw = cb1[0].xxx * r0.yzw;
  o0.xyz = r0.xxx * r0.yzw + r1.xyz;
  o0.w = r1.w;
  return;
}