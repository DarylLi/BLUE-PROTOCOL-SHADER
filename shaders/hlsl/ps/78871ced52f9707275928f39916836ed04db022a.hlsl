// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[39];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb1[2].y >= cb1[2].z);
  r0.x = r0.x ? 1.000000 : 0;
  r1.xy = cb1[2].yz;
  r1.zw = float2(0,-0.333333343);
  r2.xy = cb1[2].zy;
  r2.zw = float2(-1,0.666666687);
  r1.xyzw = -r2.xyzw + r1.xyzw;
  r0.xyzw = r0.xxxx * r1.xywz + r2.xywz;
  r1.x = cmp(cb1[2].x >= r0.x);
  r1.x = r1.x ? 1.000000 : 0;
  r2.z = r0.w;
  r0.w = cb1[2].x;
  r2.xyw = r0.wyx;
  r2.xyzw = r2.xyzw + -r0.xyzw;
  r0.xyzw = r1.xxxx * r2.xyzw + r0.xyzw;
  r1.x = min(r0.w, r0.y);
  r0.x = -r1.x + r0.x;
  r0.x = r0.x * 6 + 1.00000001e-007;
  r0.y = r0.w + -r0.y;
  r0.x = r0.y / r0.x;
  r0.x = r0.z + r0.x;
  r1.zw = float2(-1,0.666666687);
  r2.zw = float2(1,-1);
  r0.yz = asuint(cb0[37].xy);
  r0.yz = v0.xy + -r0.yz;
  r0.yz = cb0[38].zw * r0.yz;
  r3.xyzw = t0.Sample(s0_s, r0.yz).xyzw;
  r4.xyzw = t1.Sample(s1_s, r0.yz).xyzw;
  r5.xyzw = r4.xyzw + -r3.xyzw;
  r3.xyzw = r4.wwww * r5.xyzw + r3.xyzw;
  r0.yzw = r3.xyz / r3.www;
  r3.x = cmp(r0.z >= r0.w);
  r3.x = r3.x ? 1.000000 : 0;
  r1.xy = r0.wz;
  r2.xy = -r1.xy + r0.zw;
  r1.xyzw = r3.xxxx * r2.xywz + r1.xywz;
  r2.z = r1.w;
  r3.x = cmp(r0.y >= r1.x);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r0.y;
  r2.xyw = r1.wyx;
  r2.xyzw = r2.xyzw + -r1.xyzw;
  r1.xyzw = r3.xxxx * r2.xyzw + r1.xyzw;
  r2.x = min(r1.w, r1.y);
  r1.x = -r2.x + r1.x;
  r1.x = r1.x * 6 + 1.00000001e-007;
  r1.y = r1.w + -r1.y;
  r1.x = r1.y / r1.x;
  r1.x = r1.z + r1.x;
  r0.x = abs(r1.x) + -abs(r0.x);
  r0.x = -cb1[4].y + abs(r0.x);
  r1.x = 1 / -cb1[4].y;
  r0.x = saturate(r1.x * r0.x);
  r1.x = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = r1.x * r0.x;
  r1.x = dot(r0.yzw, float3(0.300000012,0.589999974,0.109999999));
  r1.xyz = r1.xxx + -r0.yzw;
  r1.xyz = cb1[4].xxx * r1.xyz;
  r0.xyz = r0.xxx * r1.xyz + r0.yzw;
  r1.xyz = r0.xyz * r3.www;
  r0.xyz = -r0.xyz * r3.www + cb1[3].xyz;
  o0.w = saturate(r3.w);
  r0.xyz = cb1[4].zzz * r0.xyz + r1.xyz;
  o0.xyz = max(float3(0,0,0), r0.xyz);
  return;
}