// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[9];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[68];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  uint v1 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD7,
  out float4 o2 : TEXCOORD6,
  out float3 o3 : TEXCOORD8)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xy = float2(0,0);
  r0.z = cb1[8].x * cb1[8].y;
  r0.w = (uint)v1.x;
  r0.x = 1;
  r0.y = cb1[8].x;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = floor(r0.xyz);
  r0.xyz = cb1[8].xyz * r0.xyz;
  r0.xyz = frac(r0.xyz);
  r0.xyz = cb1[8].xyz * float3(0.5,0.5,0.5) + r0.xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r1.xyz = r0.xxx * cb1[0].xyz + r1.xyz;
  r1.xyz = r0.zzz * cb1[2].xyz + r1.xyz;
  r0.xyz = t0.SampleLevel(s0_s, r0.xyz, 0).xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r1.xyz = -cb0[67].xyz + r1.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = sqrt(r0.w);
  r0.w = cb1[8].w * r0.w;
  r0.w = min(10, r0.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb1[5].xyz * r0.yyy;
  r0.xyw = r0.xxx * cb1[4].xyz + r2.xyz;
  r0.xyz = r0.zzz * cb1[6].xyz + r0.xyw;
  r0.w = (uint)v0.x;
  r0.xyz = r0.www * r0.xyz + r1.xyz;
  o1.xyz = r0.xyz;
  o2.xyz = r0.xyz;
  o2.w = 1;
  o3.xyz = float3(0,0,1);
  return;
}