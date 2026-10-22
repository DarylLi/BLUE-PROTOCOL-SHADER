// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[152];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[34];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v2.x;
  r0.x = 0.5 + r0.x;
  r0.y = cb0[28].x;
  r0.x = r0.x * cb1[r0.y+150].w + cb1[r0.y+148].z;
  r0.zw = v0.xy / cb1[r0.y+150].xy;
  r0.zw = cb1[r0.y+148].xy + r0.zw;
  r0.yz = -cb1[r0.y+150].ww * float2(0.5,0.5) + r0.zw;
  r1.xyzw = cb0[30].xyzw * r0.zzzz;
  r1.xyzw = r0.yyyy * cb0[29].xyzw + r1.xyzw;
  r0.xyzw = r0.xxxx * cb0[31].xyzw + r1.xyzw;
  r0.xyzw = cb0[32].xyzw + r0.xyzw;
  r0.xy = r0.xy / r0.ww;
  r1.xy = cmp(r0.xy >= cb0[33].xy);
  r1.zw = cmp(cb0[33].zw >= r0.xy);
  r1.xy = r1.zw ? r1.xy : 0;
  r0.w = r1.y ? r1.x : 0;
  if (r0.w != 0) {
    r1.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r0.xyw = t1.SampleLevel(s0_s, r0.xy, 0).yzw;
    r2.xyz = float3(6.28318548,12.566371,18.849556) * r0.zzz;
    sincos(r2.xyz, r2.xyz, r3.xyz);
    r3.xyz = float3(1,1,1) + -r3.xyz;
    r0.z = r1.x * r0.z;
    r1.xyz = r2.xyz * r1.yzw;
    r1.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r1.xyz;
    r1.x = dot(r1.xyz, float3(1,1,1));
    r0.z = r0.z * 0.5 + r1.x;
    r0.xyw = r3.xyz * r0.xyw;
    r0.xyw = float3(0.156687468,0.0747561157,0.0460920706) * r0.xyw;
    r0.x = dot(r0.xyw, float3(1,1,1));
    r0.x = r0.z + r0.x;
    r0.x = -1.44269502 * r0.x;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
  } else {
    r0.x = 1;
  }
  o0.xyz = r0.xxx;
  o0.w = 0;
  return;
}