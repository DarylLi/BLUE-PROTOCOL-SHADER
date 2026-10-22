// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  nointerpolation float4 v0 : TEXCOORD0,
  nointerpolation float4 v1 : TEXCOORD1,
  nointerpolation float4 v2 : TEXCOORD2,
  nointerpolation float4 v3 : TEXCOORD3,
  nointerpolation float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v7.xy + -v0.xy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = (uint)r0.z >> 1;
  r0.z = (int)r0.z + 0x1fbd1df5;
  r0.w = cmp(0 < r0.z);
  r1.x = rcp(r0.z);
  r0.w = r0.w ? r1.x : 0;
  r0.w = -0.46875 * r0.w;
  r1.xy = r0.xy * r0.ww;
  r0.w = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r0.z = v1.w * r0.w + -r0.z;
  r1.xyzw = -cb0[0].xxxx * float4(1,0,0,1) + r0.xyxy;
  r0.xy = -cb0[0].xx + r0.xy;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = (uint)r0.w >> 1;
  r0.w = (int)r0.w + 0x1fbd1df5;
  r2.x = cmp(0 < r0.w);
  r2.y = rcp(r0.w);
  r2.x = r2.x ? r2.y : 0;
  r2.x = -0.46875 * r2.x;
  r1.xy = r2.xx * r1.xy;
  r1.x = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r0.w = v2.w * r1.x + -r0.w;
  r0.zw = saturate(float2(0.5,0.5) + r0.zw);
  r2.xyz = v2.xyz;
  r2.w = 0;
  r2.xyzw = r2.xyzw * r0.wwww;
  r3.xyz = v1.xyz;
  r3.w = 0;
  r2.xyzw = r3.xyzw * r0.zzzz + r2.xyzw;
  r0.z = dot(r1.zw, r1.zw);
  r0.z = (uint)r0.z >> 1;
  r0.z = (int)r0.z + 0x1fbd1df5;
  r0.w = cmp(0 < r0.z);
  r1.x = rcp(r0.z);
  r0.w = r0.w ? r1.x : 0;
  r0.w = -0.46875 * r0.w;
  r1.xy = r1.zw * r0.ww;
  r0.w = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r0.z = v3.w * r0.w + -r0.z;
  r0.z = saturate(0.5 + r0.z);
  r1.xyz = v3.xyz;
  r1.w = 0;
  r1.xyzw = r1.xyzw * r0.zzzz + r2.xyzw;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = (uint)r0.z >> 1;
  r0.z = (int)r0.z + 0x1fbd1df5;
  r0.w = cmp(0 < r0.z);
  r2.x = rcp(r0.z);
  r0.w = r0.w ? r2.x : 0;
  r0.w = -0.46875 * r0.w;
  r0.xy = r0.xy * r0.ww;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = v4.w * r0.x + -r0.z;
  r0.x = saturate(0.5 + r0.x);
  r2.xyz = v4.xyz;
  r2.w = 0;
  o0.xyzw = r2.xyzw * r0.xxxx + r1.xyzw;
  return;
}