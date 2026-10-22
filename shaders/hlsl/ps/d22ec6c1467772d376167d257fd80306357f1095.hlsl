// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
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
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[37].xy);
  r0.xy = v0.xy + -r0.xy;
  r0.xy = cb0[38].zw * r0.xy;
  r0.xy = r0.xy * cb1[130].xy + cb1[129].xy;
  r0.xy = cb1[132].zw * r0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.xy, 0).w;
  r0.x = t1.SampleLevel(s0_s, r0.xy, 0).w;
  r0.y = 255 * r0.z;
  r0.y = round(r0.y);
  r0.y = (uint)r0.y;
  r0.y = (int)r0.y & 15;
  r0.yz = cmp((int2)r0.yy == int2(12,13));
  r0.y = (int)r0.z | (int)r0.y;
  r0.x = r0.y ? r0.x : 1;
  r0.yzw = cb2[1].xyz + -r0.xxx;
  r0.xyz = cb2[2].xxx * r0.yzw + r0.xxx;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  o0.xyz = cb1[135].yyy * r0.xyz;
  o0.w = 1;
  return;
}