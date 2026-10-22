// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz;
  r0.w = 0;
  r1.xy = v7.xy + -v0.xy;
  r1.z = dot(r1.xy, r1.xy);
  r1.z = (uint)r1.z >> 1;
  r1.z = (int)r1.z + 0x1fbd1df5;
  r1.w = cmp(0 < r1.z);
  r2.x = rcp(r1.z);
  r1.w = r1.w ? r2.x : 0;
  r1.w = 0.46875 * r1.w;
  r2.xy = r1.xy * r1.ww;
  r1.w = t0.SampleLevel(s0_s, r2.xy, 0).x;
  r1.z = v1.w * r1.w + -r1.z;
  r1.z = saturate(0.5 + r1.z);
  r2.xy = cb0[1].zw * v7.xy;
  r2.xy = t1.SampleLevel(s0_s, r2.xy, 0).xy;
  r1.w = v1.w * 0.949999988 + -r2.x;
  r1.w = max(0, r1.w);
  r1.w = r1.w * r1.w + r2.y;
  r1.w = r2.y / r1.w;
  r1.z = r1.z * r1.w;
  r3.xyzw = -cb0[0].xxxx * float4(1,0,0,1) + r1.xyxy;
  r1.xy = -cb0[0].xx + r1.xy;
  r1.w = dot(r3.xy, r3.xy);
  r1.w = (uint)r1.w >> 1;
  r1.w = (int)r1.w + 0x1fbd1df5;
  r2.z = cmp(0 < r1.w);
  r2.w = rcp(r1.w);
  r2.z = r2.z ? r2.w : 0;
  r2.z = 0.46875 * r2.z;
  r2.zw = r3.xy * r2.zz;
  r2.z = t0.SampleLevel(s0_s, r2.zw, 0).x;
  r1.w = v2.w * r2.z + -r1.w;
  r1.w = saturate(0.5 + r1.w);
  r2.z = v2.w * 0.949999988 + -r2.x;
  r2.z = max(0, r2.z);
  r2.z = r2.z * r2.z + r2.y;
  r2.z = r2.y / r2.z;
  r1.w = r2.z * r1.w;
  r4.xyz = v2.xyz;
  r4.w = 0;
  r4.xyzw = r4.xyzw * r1.wwww;
  r0.xyzw = r0.xyzw * r1.zzzz + r4.xyzw;
  r4.xyz = v3.xyz;
  r4.w = 0;
  r1.z = dot(r3.zw, r3.zw);
  r1.z = (uint)r1.z >> 1;
  r1.z = (int)r1.z + 0x1fbd1df5;
  r1.w = cmp(0 < r1.z);
  r2.z = rcp(r1.z);
  r1.w = r1.w ? r2.z : 0;
  r1.w = 0.46875 * r1.w;
  r2.zw = r3.zw * r1.ww;
  r1.w = t0.SampleLevel(s0_s, r2.zw, 0).x;
  r1.z = v3.w * r1.w + -r1.z;
  r1.z = saturate(0.5 + r1.z);
  r1.w = v3.w * 0.949999988 + -r2.x;
  r1.w = max(0, r1.w);
  r1.w = r1.w * r1.w + r2.y;
  r1.w = r2.y / r1.w;
  r1.z = r1.z * r1.w;
  r0.xyzw = r4.xyzw * r1.zzzz + r0.xyzw;
  r3.xyz = v4.xyz;
  r3.w = 0;
  r1.z = v4.w * 0.949999988 + -r2.x;
  r1.z = max(0, r1.z);
  r1.z = r1.z * r1.z + r2.y;
  r1.z = r2.y / r1.z;
  r1.w = dot(r1.xy, r1.xy);
  r1.w = (uint)r1.w >> 1;
  r1.w = (int)r1.w + 0x1fbd1df5;
  r2.x = cmp(0 < r1.w);
  r2.y = rcp(r1.w);
  r2.x = r2.x ? r2.y : 0;
  r2.x = 0.46875 * r2.x;
  r1.xy = r2.xx * r1.xy;
  r1.x = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r1.x = v4.w * r1.x + -r1.w;
  r1.x = saturate(0.5 + r1.x);
  r1.x = r1.x * r1.z;
  o0.xyzw = r3.xyzw * r1.xxxx + r0.xyzw;
  return;
}