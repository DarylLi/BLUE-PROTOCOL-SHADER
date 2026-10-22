// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[33];
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
  r0.x = t2.SampleLevel(s1_s, r0.xy, 0).x;
  r0.y = r0.x * cb1[65].z + -cb1[65].w;
  r0.x = r0.x * cb1[65].x + cb1[65].y;
  r0.y = 1 / r0.y;
  r0.x = r0.x + r0.y;
  r0.yz = v0.xy * cb1[132].zw + -cb1[66].wz;
  r0.yz = r0.yz / cb1[66].xy;
  r0.yz = r0.yz * r0.xx;
  r1.xyzw = cb0[30].xyzw * r0.zzzz;
  r1.xyzw = r0.yyyy * cb0[29].xyzw + r1.xyzw;
  r0.xyzw = r0.xxxx * cb0[31].xyzw + r1.xyzw;
  r0.xyzw = cb0[32].xyzw + r0.xyzw;
  r1.xyz = float3(6.28318548,12.566371,18.849556) * r0.zzz;
  sincos(r1.xyz, r1.xyz, r2.xyz);
  r0.xy = r0.xy / r0.ww;
  r3.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r0.xyw = t1.SampleLevel(s0_s, r0.xy, 0).yzw;
  r1.xyz = r3.yzw * r1.xyz;
  r2.xyz = float3(1,1,1) + -r2.xyz;
  r0.xyw = r2.xyz * r0.xyw;
  r0.xyw = float3(0.156687468,0.0747561157,0.0460920706) * r0.xyw;
  r0.x = dot(r0.xyw, float3(1,1,1));
  r0.y = r3.x * r0.z;
  r0.z = -cb0[28].x + r0.z;
  r0.z = saturate(cb0[28].y * r0.z);
  r0.z = 1 + -r0.z;
  r0.z = cb0[26].y * r0.z;
  r1.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r1.xyz;
  r0.w = dot(r1.xyz, float3(1,1,1));
  r0.y = r0.y * 0.5 + r0.w;
  r0.x = r0.y + r0.x;
  r0.x = -1.44269502 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = min(1, r0.x);
  r0.x = -0.5 + r0.x;
  r0.x = saturate(r0.x * cb0[26].z + 0.5);
  r0.x = r0.x * r0.x + -1;
  r0.x = r0.z * r0.x + 1;
  o0.xz = sqrt(r0.xx);
  o0.yw = float2(1,1);
  return;
}