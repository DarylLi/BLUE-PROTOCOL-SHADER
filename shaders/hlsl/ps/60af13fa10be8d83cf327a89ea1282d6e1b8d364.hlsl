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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[37].xy);
  r0.xy = v0.xy + -r0.xy;
  r0.xy = cb0[38].zw * r0.xy;
  r0.xy = r0.xy * cb1[130].xy + cb1[129].xy;
  r0.xy = cb1[132].zw * r0.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = max(1.00000005e-018, r0.x);
  r1.xyzw = cb1[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb1[44].xyzw + r1.xyzw;
  r0.xyzw = r0.xxxx * cb1[46].xyzw + r1.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.x = dot(-r0.xyz, -r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = 0.00999999978 * r0.x;
  r0.xzw = -r0.xxx * float3(0.00999999978,0.00999999978,0.00999999978) + cb2[1].xyz;
  r0.xyz = cb2[2].xxx * r0.xzw + r0.yyy;
  o0.xyz = max(float3(0,0,0), r0.xyz);
  o0.w = 1;
  return;
}