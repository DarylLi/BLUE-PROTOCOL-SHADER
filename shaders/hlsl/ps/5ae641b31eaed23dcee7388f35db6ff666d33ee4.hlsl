// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[156];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t1.SampleLevel(s1_s, v0.xy, 0).x;
  r0.y = r0.x * cb1[65].z + -cb1[65].w;
  r0.x = r0.x * cb1[65].x + cb1[65].y;
  r0.y = 1 / r0.y;
  r0.x = r0.x + r0.y;
  r0.y = -cb1[154].z + r0.x;
  r0.y = -cb1[155].y + r0.y;
  r0.y = max(0, r0.y);
  r0.y = cb1[154].z + r0.y;
  r0.z = cmp(cb1[154].z < r0.x);
  r0.y = r0.z ? r0.y : r0.x;
  r0.xz = cmp(r0.xy < cb1[154].zz);
  r0.y = -cb1[154].z + r0.y;
  r0.z = r0.z ? cb1[155].z : cb1[155].w;
  r0.y = saturate(abs(r0.y) / r0.z);
  r0.z = r0.x ? 0 : 1;
  r0.x = r0.x ? 1.000000 : 0;
  r0.x = min(r0.x, r0.y);
  r0.y = min(r0.z, r0.y);
  r1.xyz = cb0[1].xyz * r0.xxx;
  r0.xzw = -r0.xxx * cb0[1].xyz + cb0[2].xyz;
  r0.xyz = saturate(r0.yyy * r0.xzw + r1.xyz);
  r1.xyz = t0.Sample(s0_s, v0.xy).xyz;
  r0.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyz = r0.www + -r0.xyz;
  o0.xyz = r1.xyz * float3(0.100000001,0.100000001,0.100000001) + r0.xyz;
  o0.w = 0;
  return;
}