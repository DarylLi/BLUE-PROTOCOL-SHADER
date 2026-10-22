// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r1.xyz = t0.SampleLevel(s2_s, r0.xy, 0).xyz;
  r2.xyzw = t3.Gather(s1_s, r0.xy).xyzw;
  r0.zw = r2.xy * cb1[65].xx + cb1[65].yy;
  r2.xy = r2.xy * cb1[65].zz + -cb1[65].ww;
  r2.xy = float2(1,1) / r2.xy;
  r3.zw = r2.xy + r0.zw;
  r0.zw = r2.wz * cb1[65].xx + cb1[65].yy;
  r2.xy = r2.wz * cb1[65].zz + -cb1[65].ww;
  r2.xy = float2(1,1) / r2.xy;
  r3.xy = r2.xy + r0.zw;
  r2.xyzw = min(float4(2000000,2000000,2000000,2000000), r3.xyzw);
  r3.xy = (uint2)v0.xy;
  r3.zw = float2(0,0);
  r0.z = t4.Load(r3.xyz).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r0.z = r0.w + r0.z;
  r0.z = min(2000000, r0.z);
  r2.xyzw = r2.zxyw + -r0.zzzz;
  r0.z = 1 / r0.z;
  r3.xyzw = abs(r2.yzxw) * r0.zzzz;
  r3.xyzw = cmp(r3.xyzw < float4(0.100000001,0.100000001,0.100000001,0.100000001));
  r0.z = r3.y ? r3.x : 0;
  r0.z = r3.z ? r0.z : 0;
  r0.z = r3.w ? r0.z : 0;
  if (r0.z == 0) {
    r3.yz = -cb0[1].xy * float2(0.5,0.5) + r0.xy;
    r3.x = min(100000000, abs(r2.y));
    r4.xy = cb0[1].xy + r3.yz;
    r0.w = cmp(abs(r2.z) < r3.x);
    r4.z = abs(r2.z);
    r5.xy = r0.ww ? r4.zx : r3.xy;
    r0.w = cmp(abs(r2.x) < r5.x);
    r2.x = abs(r2.x);
    r2.y = r3.y;
    r2.z = r4.y;
    r5.z = r3.z;
    r2.xyz = r0.www ? r2.xyz : r5.xyz;
    r0.w = cmp(abs(r2.w) < r2.x);
    r0.xy = r0.ww ? r4.xy : r2.yz;
  }
  if (r0.z == 0) {
    r2.xyzw = t1.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r3.xyz = t2.SampleLevel(s0_s, r0.xy, 0).xyz;
  } else {
    r2.xyzw = t1.SampleLevel(s1_s, r0.xy, 0).xyzw;
    r3.xyz = t2.SampleLevel(s1_s, r0.xy, 0).xyz;
  }
  r0.xyz = r2.www * r1.xyz;
  o0.xyz = r0.xyz * r3.xyz + r2.xyz;
  o0.w = 0;
  return;
}