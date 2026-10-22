// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  out float4 o0 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = floor(cb2[0].x);
  r0.y = exp2(-r0.x);
  r0.z = cb3[5].x * r0.y;
  r1.x = cb3[5].x * r0.y + -1;
  r0.y = 0.5 * r0.z;
  r0.y = max(2, r0.y);
  r1.y = -1 + r0.y;
  r0.yz = cb3[5].yy * r1.xy;
  r0.w = -cb2[0].x + r0.x;
  r0.w = exp2(-r0.w);
  r1.xy = v0.xy * r0.ww;
  r1.xy = floor(r1.xy);
  r1.zw = float2(0.5,0.5) * r1.xy;
  r2.xy = r1.xy / r0.yy;
  r0.yw = floor(r1.zw);
  r1.xy = r0.yw / r0.zz;
  r0.yz = r1.xy * cb3[2].xy + cb3[2].zw;
  r0.yz = cb3[2].xy * float2(0.5,0.5) + r0.yz;
  r0.yz = v0.zw * cb3[6].xy + r0.yz;
  r0.w = 1 + r0.x;
  r0.yz = t0.SampleLevel(s0_s, r0.yz, r0.w).xy;
  r0.y = dot(r0.yz, float2(65280,255));
  r0.y = -32768 + r0.y;
  r1.z = 0.0078125 * r0.y;
  r0.yz = r2.xy * cb3[2].xy + cb3[2].zw;
  r0.yz = cb3[2].xy * float2(0.5,0.5) + r0.yz;
  r0.yz = v0.zw * cb3[6].xy + r0.yz;
  r0.yz = t0.SampleLevel(s0_s, r0.yz, r0.x).xy;
  r0.x = cb2[0].x + -r0.x;
  r0.y = dot(r0.yz, float2(65280,255));
  r0.y = -32768 + r0.y;
  r2.z = 0.0078125 * r0.y;
  r0.yzw = -r2.xyz + r1.xyz;
  r0.xyz = r0.xxx * r0.yzw + r2.xyz;
  r1.xy = cb3[6].ww * v0.zw;
  r1.z = 0;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r0.xyw = cb1[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb1[2].xyz * r0.zzz + r0.xyw;
  r1.xyz = cb1[3].xyz + cb0[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}