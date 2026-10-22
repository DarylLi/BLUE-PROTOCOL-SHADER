// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

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
  float4 cb0[7];
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

  r0.xy = cb1[132].zw * v0.xy;
  r1.xy = (uint2)v0.xy;
  r1.zw = float2(0,0);
  r0.z = t0.Load(r1.xyz).x;
  r1.xyzw = cb1[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb1[44].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[46].xyzw + r1.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb1[70].xyz + r1.xyz;
  r1.xyz = cb1[67].xyz + -r1.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = sqrt(r0.z);
  r0.x = t3.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = 100 * r0.x;
  r0.x = cmp(r0.z < r0.x);
  if (r0.x != 0) {
    if (-1 != 0) discard;
    return;
  }
  r0.xy = -cb1[129].xy + v0.xy;
  r0.xy = cb1[132].zw * r0.xy;
  r0.xy = cb1[132].xy * r0.xy;
  r0.xy = cb0[5].zw * r0.xy;
  r0.xy = cb0[6].yy * r0.xy;
  r0.z = 9.99999975e-006 * r0.z;
  r0.xy = max(cb0[2].xy, r0.xy);
  r0.xy = min(cb0[2].zw, r0.xy);
  r1.xyzw = t1.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r0.x = t2.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = cmp(r0.x < r0.z);
  r0.y = ~(int)r0.x;
  if (r0.y != 0) discard;
  o0.xyzw = r0.xxxx ? r1.xyzw : float4(0,0,0,1);
  return;
}