// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[39];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[45].xyzw * v0.yyyy;
  r0.xyzw = v0.xxxx * cb1[44].xyzw + r0.xyzw;
  r1.xy = asuint(cb0[37].xy);
  r1.xy = v0.xy + -r1.xy;
  r1.xy = cb0[38].zw * r1.xy;
  r1.xy = r1.xy * cb1[130].xy + cb1[129].xy;
  r1.xy = cb1[132].zw * r1.xy;
  r1.x = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r1.y = max(1.00000005e-018, r1.x);
  r0.xyzw = r1.yyyy * cb1[46].xyzw + r0.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.w = dot(-r0.xyz, -r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyw = -r0.xyz * r0.www;
  r2.z = -cb1[70].z + r0.z;
  r0.x = dot(cb1[18].xyz, r0.xyw);
  r0.y = r1.x * cb1[65].z + -cb1[65].w;
  r0.z = r1.x * cb1[65].x + cb1[65].y;
  r0.y = 1 / r0.y;
  r2.x = r0.z + r0.y;
  r2.y = r2.x / -r0.x;
  r0.xyz = cb2[1].xyz + -r2.xyz;
  o0.xyz = cb2[2].xxx * r0.xyz + r2.xyz;
  o0.w = 1;
  return;
}