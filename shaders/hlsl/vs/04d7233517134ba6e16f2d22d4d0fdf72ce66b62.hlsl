// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[7];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[53];
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
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD7,
  out float4 o4 : TEXCOORD6,
  out float3 o5 : TEXCOORD8,
  out uint o6 : SV_RenderTargetArrayIndex0,
  out float4 o7 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = floor(cb4[0].x);
  r0.y = exp2(-r0.x);
  r0.z = cb5[5].x * r0.y;
  r1.x = cb5[5].x * r0.y + -1;
  r0.y = 0.5 * r0.z;
  r0.y = max(2, r0.y);
  r1.y = -1 + r0.y;
  r0.yz = cb5[5].yy * r1.xy;
  r0.w = -cb4[0].x + r0.x;
  r0.w = exp2(-r0.w);
  r1.xy = v0.xy * r0.ww;
  r1.xy = floor(r1.xy);
  r1.zw = float2(0.5,0.5) * r1.xy;
  r2.xy = r1.xy / r0.yy;
  r0.yw = floor(r1.zw);
  r1.xy = r0.yw / r0.zz;
  r0.yz = r1.xy * cb5[2].xy + cb5[2].zw;
  r0.yz = cb5[2].xy * float2(0.5,0.5) + r0.yz;
  r0.yz = v0.zw * cb5[6].xy + r0.yz;
  r0.w = 1 + r0.x;
  r3.xyzw = t0.SampleLevel(s0_s, r0.yz, r0.w).xyzw;
  r0.y = dot(r3.xy, float2(65280,255));
  r0.y = -32768 + r0.y;
  r1.z = 0.0078125 * r0.y;
  r0.yz = r2.xy * cb5[2].xy + cb5[2].zw;
  r0.yz = cb5[2].xy * float2(0.5,0.5) + r0.yz;
  r0.yz = v0.zw * cb5[6].xy + r0.yz;
  r4.xyzw = t0.SampleLevel(s0_s, r0.yz, r0.x).xyzw;
  r0.x = cb4[0].x + -r0.x;
  r0.y = dot(r4.xy, float2(65280,255));
  r0.y = -32768 + r0.y;
  r2.z = 0.0078125 * r0.y;
  r0.yzw = -r2.xyz + r1.xyz;
  r0.yzw = r0.xxx * r0.yzw + r2.xyz;
  r1.xy = cb5[5].zw + r0.yz;
  o0.xy = v0.zw * cb5[6].ww + r1.xy;
  r1.xy = r0.yz * cb5[2].xy + cb5[2].zw;
  r1.xy = cb5[2].xy * float2(0.5,0.5) + r1.xy;
  o1.zw = v0.zw * cb5[6].xy + r1.xy;
  r1.xy = r0.yz * cb5[3].xy + cb5[3].zw;
  o1.xy = v0.zw * cb5[6].zz + r1.xy;
  o2.xyzw = float4(0,0,0,0);
  r1.xy = cb5[6].ww * v0.zw;
  r1.z = 0;
  r0.yzw = r1.xyz + r0.yzw;
  r1.xyz = cb2[1].xyz * r0.zzz;
  r1.xyz = cb2[0].xyz * r0.yyy + r1.xyz;
  r0.yzw = cb2[2].xyz * r0.www + r1.xyz;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.yzw = r1.xyz + r0.yzw;
  o3.xyz = r0.yzw;
  r1.x = asuint(cb0[1].x) << 2;
  r2.xyzw = cb3[r1.x+30].xyzw * r0.zzzz;
  r2.xyzw = r0.yyyy * cb3[r1.x+29].xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * cb3[r1.x+31].xyzw + r2.xyzw;
  r1.xyzw = cb3[r1.x+32].xyzw + r2.xyzw;
  o4.xyzw = r1.xyzw;
  o7.xyzw = r1.xyzw;
  r0.yz = -r4.zw + r3.zw;
  r0.xy = r0.xx * r0.yz + r4.zw;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  o5.xy = r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  o5.z = sqrt(r0.x);
  o6.x = cb0[1].x;
  return;
}