// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
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
  float4 v0 : ATTRIBUTE0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD9)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = floor(cb3[0].x);
  r0.y = exp2(-r0.x);
  r0.z = cb4[5].x * r0.y;
  r1.x = cb4[5].x * r0.y + -1;
  r0.y = 0.5 * r0.z;
  r0.y = max(2, r0.y);
  r1.y = -1 + r0.y;
  r0.yz = cb4[5].yy * r1.xy;
  r0.w = -cb3[0].x + r0.x;
  r0.w = exp2(-r0.w);
  r1.xy = v0.xy * r0.ww;
  r1.xy = floor(r1.xy);
  r1.zw = float2(0.5,0.5) * r1.xy;
  r2.xy = r1.xy / r0.yy;
  r0.yw = floor(r1.zw);
  r1.xy = r0.yw / r0.zz;
  r0.yz = r1.xy * cb4[2].xy + cb4[2].zw;
  r0.yz = cb4[2].xy * float2(0.5,0.5) + r0.yz;
  r0.yz = v0.zw * cb4[6].xy + r0.yz;
  r0.w = 1 + r0.x;
  r0.yz = t0.SampleLevel(s0_s, r0.yz, r0.w).xy;
  r0.y = dot(r0.yz, float2(65280,255));
  r0.y = -32768 + r0.y;
  r1.z = 0.0078125 * r0.y;
  r0.yz = r2.xy * cb4[2].xy + cb4[2].zw;
  r0.yz = cb4[2].xy * float2(0.5,0.5) + r0.yz;
  r0.yz = v0.zw * cb4[6].xy + r0.yz;
  r0.yz = t0.SampleLevel(s0_s, r0.yz, r0.x).xy;
  r0.x = cb3[0].x + -r0.x;
  r0.y = dot(r0.yz, float2(65280,255));
  r0.y = -32768 + r0.y;
  r2.z = 0.0078125 * r0.y;
  r0.yzw = -r2.xyz + r1.xyz;
  r0.xyz = r0.xxx * r0.yzw + r2.xyz;
  r1.xy = cb4[6].ww * v0.zw;
  r1.z = 0;
  r1.xyz = r1.xyz + r0.xyz;
  r2.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = cb1[1].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[0].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb1[2].xyzw + r2.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  o0.xy = cb0[1].xy + r1.xy;
  o0.zw = r1.zw;
  o4.xyzw = r1.xyzw;
  r0.zw = cb4[5].zw + r0.xy;
  o1.xy = v0.zw * cb4[6].ww + r0.zw;
  r0.zw = r0.xy * cb4[2].xy + cb4[2].zw;
  r0.xy = r0.xy * cb4[3].xy + cb4[3].zw;
  o2.xy = v0.zw * cb4[6].zz + r0.xy;
  r0.xy = cb4[2].xy * float2(0.5,0.5) + r0.zw;
  o2.zw = v0.zw * cb4[6].xy + r0.xy;
  o3.xyzw = float4(0,0,0,0);
  return;
}