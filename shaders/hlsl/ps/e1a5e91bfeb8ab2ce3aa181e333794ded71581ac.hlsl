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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.zw = -cb1[129].xy + v0.xy;
  r0.zw = cb1[132].zw * r0.zw;
  r0.zw = cb1[132].xy * r0.zw;
  r0.zw = cb0[5].zw * r0.zw;
  r0.zw = cb0[6].yy * r0.zw;
  r1.xy = cb0[4].yy * r0.zw;
  r1.zw = cb1[132].zw * cb1[130].xy;
  r1.xy = r1.xy * r1.zw + cb0[3].xy;
  r1.x = t2.SampleLevel(s0_s, r1.xy, 0).x;
  r1.x = 100 * r1.x;
  r2.xyzw = cb1[45].xyzw * v0.yyyy;
  r2.xyzw = v0.xxxx * cb1[44].xyzw + r2.xyzw;
  r3.xyzw = cb1[46].xyzw * float4(0.5,0.5,0.5,0.5) + r2.xyzw;
  r3.xyzw = cb1[47].xyzw + r3.xyzw;
  r1.yzw = r3.xyz / r3.www;
  r1.yzw = -cb1[70].xyz + r1.yzw;
  r1.yzw = -cb1[67].xyz + r1.yzw;
  r3.x = dot(r1.yzw, r1.yzw);
  r3.x = rsqrt(r3.x);
  r1.yzw = r3.xxx * r1.yzw;
  r1.xyz = r1.yzw * r1.xxx + cb1[67].xyz;
  r1.yw = cb1[5].zw * r1.yy;
  r1.xy = r1.xx * cb1[4].zw + r1.yw;
  r1.xy = r1.zz * cb1[6].zw + r1.xy;
  r1.xy = cb1[7].zw + r1.xy;
  r1.x = r1.x / r1.y;
  r1.xyzw = r1.xxxx * cb1[46].xyzw + r2.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb1[70].xyz + r1.xyz;
  r1.xyz = cb1[67].xyz + -r1.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r0.x = t2.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = 100 * r0.x;
  r0.x = cmp(r1.x < r0.x);
  if (r0.x != 0) {
    if (-1 != 0) discard;
    return;
  }
  r0.x = 9.99999975e-006 * r1.x;
  r0.yz = max(cb0[2].xy, r0.zw);
  r0.yz = min(cb0[2].zw, r0.yz);
  r1.xyzw = t0.SampleLevel(s0_s, r0.yz, 0).xyzw;
  r0.y = t1.SampleLevel(s0_s, r0.yz, 0).x;
  r0.x = cmp(r0.y < r0.x);
  r0.y = ~(int)r0.x;
  if (r0.y != 0) discard;
  o0.xyzw = r0.xxxx ? r1.xyzw : float4(0,0,0,1);
  return;
}