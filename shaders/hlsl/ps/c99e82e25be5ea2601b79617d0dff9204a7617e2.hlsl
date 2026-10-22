// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[66];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Gather(s1_s, v0.xy).xyzw;
  r1.xy = r0.xy * cb1[65].xx + cb1[65].yy;
  r0.xy = r0.xy * cb1[65].zz + -cb1[65].ww;
  r0.xy = float2(1,1) / r0.xy;
  r1.zw = r1.xy + r0.xy;
  r0.xy = r0.wz * cb1[65].xx + cb1[65].yy;
  r0.zw = r0.wz * cb1[65].zz + -cb1[65].ww;
  r0.zw = float2(1,1) / r0.zw;
  r1.xy = r0.xy + r0.zw;
  r0.xyzw = min(float4(2000000,2000000,2000000,2000000), r1.xyzw);
  r1.xy = (uint2)v1.xy;
  r1.zw = float2(0,0);
  r1.x = t1.Load(r1.xyz).x;
  r1.y = r1.x * cb1[65].x + cb1[65].y;
  r1.x = r1.x * cb1[65].z + -cb1[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.y + r1.x;
  r1.x = min(2000000, r1.x);
  r0.xyzw = -r1.xxxx + r0.zxyw;
  r1.x = 1 / r1.x;
  r1.xyzw = r1.xxxx * abs(r0.yzxw);
  r1.xyzw = cmp(r1.xyzw < float4(0.100000001,0.100000001,0.100000001,0.100000001));
  r1.x = r1.y ? r1.x : 0;
  r1.x = r1.z ? r1.x : 0;
  r1.x = r1.w ? r1.x : 0;
  if (r1.x != 0) {
    r1.yz = v0.xy;
  } else {
    r2.yz = -cb0[0].xy * float2(0.5,0.5) + v0.xy;
    r2.x = min(100000000, abs(r0.y));
    r3.xy = cb0[0].xy + r2.yz;
    r1.w = cmp(abs(r0.z) < r2.x);
    r3.z = abs(r0.z);
    r4.xy = r1.ww ? r3.zx : r2.xy;
    r1.w = cmp(abs(r0.x) < r4.x);
    r0.x = abs(r0.x);
    r0.y = r2.y;
    r0.z = r3.y;
    r4.z = r2.z;
    r0.xyz = r1.www ? r0.xyz : r4.xyz;
    r0.x = cmp(abs(r0.w) < r0.x);
    r1.yz = r0.xx ? r3.xy : r0.yz;
  }
  if (r1.x == 0) {
    o0.xyzw = t2.SampleLevel(s0_s, r1.yz, 0).xyzw;
  } else {
    o0.xyzw = t2.SampleLevel(s1_s, r1.yz, 0).xyzw;
  }
  return;
}