// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
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

  r0.xy = (uint2)v0.xy;
  r0.zw = float2(0,0);
  r0.x = t0.Load(r0.xyz).x;
  r1.xyzw = cb1[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb1[44].xyzw + r1.xyzw;
  r0.xyzw = r0.xxxx * cb1[46].xyzw + r1.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb1[70].xyz + r0.xyz;
  r0.xyz = cb1[67].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 9.99999975e-006 * r0.x;
  r0.yz = -cb1[129].xy + v0.xy;
  r0.yz = cb1[132].zw * r0.yz;
  r0.yz = cb1[132].xy * r0.yz;
  r0.yz = cb0[3].zw * r0.yz;
  r0.yz = cb0[4].yy * r0.yz;
  r0.yz = max(cb0[2].xy, r0.yz);
  r0.yz = min(cb0[2].zw, r0.yz);
  r0.w = t2.SampleLevel(s0_s, r0.yz, 0).x;
  r1.xyzw = t1.SampleLevel(s0_s, r0.yz, 0).xyzw;
  r0.x = cmp(r0.w < r0.x);
  r0.y = ~(int)r0.x;
  o0.xyzw = r0.xxxx ? r1.xyzw : float4(0,0,0,1);
  if (r0.y != 0) discard;
  return;
}