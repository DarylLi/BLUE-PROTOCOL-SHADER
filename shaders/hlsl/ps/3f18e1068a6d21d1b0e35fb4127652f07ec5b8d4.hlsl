// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t1.Sample(s1_s, v0.xy).x;
  r0.y = r0.x * cb1[65].z + -cb1[65].w;
  r0.x = r0.x * cb1[65].x + cb1[65].y;
  r0.y = 1 / r0.y;
  r0.x = r0.x + r0.y;
  r0.xyz = v1.xyz * r0.xxx;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = -cb0[2].z * 0.800000012 + r0.x;
  r0.y = 0.199999988 * cb0[2].z;
  r0.y = 1 / r0.y;
  r0.x = saturate(r0.x * r0.y);
  r0.y = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = -r0.y * r0.x + 1;
  r0.yz = cmp(cb0[2].yy == float2(0,1));
  r1.w = r0.z ? r0.x : 1;
  r0.x = cmp(v1.z < 0);
  r0.z = cmp(cb0[2].w >= 1);
  r0.x = r0.z ? r0.x : 0;
  r2.xyz = t0.Sample(s0_s, v0.xy).xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r1.xyz = min(float3(65504,65504,65504), r2.xyz);
  r2.xyz = cb0[3].xyz + -r1.xyz;
  r2.xyz = cb0[3].www * r2.xyz + r1.xyz;
  r2.xyz = r0.xxx ? r2.xyz : r1.xyz;
  r2.w = 1;
  o0.xyzw = r0.yyyy ? r2.xyzw : r1.xyzw;
  return;
}