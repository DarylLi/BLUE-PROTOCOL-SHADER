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
  float4 cb0[7];
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

  r0.xy = -cb1[129].xy + v0.xy;
  r0.xy = cb1[132].zw * r0.xy;
  r0.xy = cb1[132].xy * r0.xy;
  r0.xy = cb0[5].zw * r0.xy;
  r0.xy = cb0[6].yy * r0.xy;
  r0.zw = cb0[4].yy * r0.xy;
  r0.xy = max(cb0[2].xy, r0.xy);
  r0.xy = min(cb0[2].zw, r0.xy);
  r1.xy = cb1[132].zw * cb1[130].xy;
  r0.zw = r0.zw * r1.xy + cb0[3].xy;
  r0.z = t2.SampleLevel(s0_s, r0.zw, 0).x;
  r0.z = 100 * r0.z;
  r1.xyzw = cb1[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb1[44].xyzw + r1.xyzw;
  r2.xyzw = cb1[46].xyzw * float4(0.5,0.5,0.5,0.5) + r1.xyzw;
  r2.xyzw = cb1[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r2.xyz = -cb1[70].xyz + r2.xyz;
  r2.xyz = -cb1[67].xyz + r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = r2.xyz * r0.zzz + cb1[67].xyz;
  r0.zw = cb1[5].zw * r2.yy;
  r0.zw = r2.xx * cb1[4].zw + r0.zw;
  r0.zw = r2.zz * cb1[6].zw + r0.zw;
  r0.zw = cb1[7].zw + r0.zw;
  r0.z = r0.z / r0.w;
  r1.xyzw = r0.zzzz * cb1[46].xyzw + r1.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb1[70].xyz + r1.xyz;
  r1.xyz = cb1[67].xyz + -r1.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = sqrt(r0.z);
  r0.z = 9.99999975e-006 * r0.z;
  r0.w = t1.SampleLevel(s0_s, r0.xy, 0).x;
  r1.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r0.x = cmp(r0.w < r0.z);
  r0.y = ~(int)r0.x;
  o0.xyzw = r0.xxxx ? r1.xyzw : float4(0,0,0,1);
  if (r0.y != 0) discard;
  return;
}