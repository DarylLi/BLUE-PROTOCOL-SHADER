// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[9];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[53];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[68];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  uint v1 : SV_InstanceID0,
  out float4 o0 : TEXCOORD6,
  out float3 o1 : TEXCOORD8,
  out uint o2 : SV_RenderTargetArrayIndex0,
  out float4 o3 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.z = cb3[8].x * cb3[8].y;
  r0.w = (uint)v1.x;
  r0.x = 1;
  r0.y = cb3[8].x;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = floor(r0.xyz);
  r0.xyz = cb3[8].xyz * r0.xyz;
  r0.xyz = frac(r0.xyz);
  r0.xyz = cb3[8].xyz * float3(0.5,0.5,0.5) + r0.xyz;
  r1.xyz = cb3[1].xyz * r0.yyy;
  r1.xyz = r0.xxx * cb3[0].xyz + r1.xyz;
  r1.xyz = r0.zzz * cb3[2].xyz + r1.xyz;
  r0.xyz = t0.SampleLevel(s0_s, r0.xyz, 0).xyz;
  r1.xyz = cb3[3].xyz + r1.xyz;
  r1.xyz = -cb1[67].xyz + r1.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = sqrt(r0.w);
  r0.w = cb3[8].w * r0.w;
  r0.w = min(10, r0.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb3[5].xyz * r0.yyy;
  r0.xyw = r0.xxx * cb3[4].xyz + r2.xyz;
  r0.xyz = r0.zzz * cb3[6].xyz + r0.xyw;
  r0.w = (uint)v0.x;
  r0.xyz = r0.www * r0.xyz + r1.xyz;
  o0.xyz = r0.xyz;
  o0.w = 1;
  o1.xyz = float3(0,0,1);
  o2.x = cb0[1].x;
  r0.w = asuint(cb0[1].x) << 2;
  r1.xyzw = cb2[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb2[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb2[r0.w+31].xyzw + r1.xyzw;
  o3.xyzw = cb2[r0.w+32].xyzw + r1.xyzw;
  return;
}