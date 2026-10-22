// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[29];
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
  out float2 o0 : TEXCOORD0,
  out float p0 : TEXCOORD6,
  out float p0 : TEXCOORD8,
  out float3 o1 : TEXCOORD7,
  out float4 o2 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -abs(cb1[25].z) * abs(cb1[25].z) + 1;
  r0.x = max(0, r0.x);
  r0.x = sqrt(r0.x);
  r0.x = r0.x / abs(cb1[25].z);
  r0.y = cmp(0 < abs(cb1[25].z));
  r0.x = r0.y ? r0.x : cb1[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb1[27].z, r0.x);
  r0.z = cb1[27].y * r0.x + cb1[27].x;
  r1.z = cb2[8].x * cb2[8].y;
  r1.w = (uint)v1.x;
  r1.x = 1;
  r1.y = cb2[8].x;
  r1.xyz = r1.www * r1.xyz;
  r1.xyz = floor(r1.xyz);
  r1.xyz = cb2[8].xyz * r1.xyz;
  r1.xyz = frac(r1.xyz);
  r1.xyz = cb2[8].xyz * float3(0.5,0.5,0.5) + r1.xyz;
  r2.xyz = cb2[1].xyz * r1.yyy;
  r2.xyz = r1.xxx * cb2[0].xyz + r2.xyz;
  r2.xyz = r1.zzz * cb2[2].xyz + r2.xyz;
  r1.xyz = t0.SampleLevel(s0_s, r1.xyz, 0).xyz;
  r2.xyz = cb2[3].xyz + r2.xyz;
  r2.xyz = -cb0[67].xyz + r2.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r2.w = rsqrt(r1.w);
  r1.w = sqrt(r1.w);
  r1.w = cb2[8].w * r1.w;
  r1.w = min(10, r1.w);
  r1.xyz = r2.www * r1.xyz;
  r1.xyz = r1.xyz * r1.www;
  r3.xyz = cb2[5].xyz * r1.yyy;
  r1.xyw = r1.xxx * cb2[4].xyz + r3.xyz;
  r1.xyz = r1.zzz * cb2[6].xyz + r1.xyw;
  r1.w = (uint)v0.x;
  r1.xyz = r1.www * r1.xyz + r2.xyz;
  r2.xyzw = cb1[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[19].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb1[21].xyzw + r2.xyzw;
  o1.xyz = r1.xyz;
  r1.xyzw = cb1[22].xyzw + r2.xyzw;
  r2.x = cmp(r1.z < 0);
  r2.y = cmp(0 < cb1[28].x);
  r2.x = r2.x ? r2.y : 0;
  r0.xy = r2.xx ? float2(9.99999997e-007,1) : r1.zw;
  o2.xy = r1.xy;
  r0.w = 0;
  o0.xyzw = r0.wwxz;
  o2.zw = r0.xy;
  return;
}