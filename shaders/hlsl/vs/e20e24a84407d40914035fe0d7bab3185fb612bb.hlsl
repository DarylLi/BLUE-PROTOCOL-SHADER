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
  out float o0 : TEXCOORD6,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.x = 0;
  r0.x = -abs(cb1[25].z) * abs(cb1[25].z) + 1;
  r0.x = max(0, r0.x);
  r0.x = sqrt(r0.x);
  r0.x = r0.x / abs(cb1[25].z);
  r0.y = cmp(0 < abs(cb1[25].z));
  r0.x = r0.y ? r0.x : cb1[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb1[27].z, r0.x);
  r0.x = cb1[27].y * r0.x + cb1[27].x;
  r1.z = cb2[8].x * cb2[8].y;
  r0.y = (uint)v1.x;
  r1.x = 1;
  r1.y = cb2[8].x;
  r0.yzw = r0.yyy * r1.xyz;
  r0.yzw = floor(r0.yzw);
  r0.yzw = cb2[8].xyz * r0.yzw;
  r0.yzw = frac(r0.yzw);
  r0.yzw = cb2[8].xyz * float3(0.5,0.5,0.5) + r0.yzw;
  r1.xyz = cb2[1].xyz * r0.zzz;
  r1.xyz = r0.yyy * cb2[0].xyz + r1.xyz;
  r1.xyz = r0.www * cb2[2].xyz + r1.xyz;
  r0.yzw = t0.SampleLevel(s0_s, r0.yzw, 0).xyz;
  r1.xyz = cb2[3].xyz + r1.xyz;
  r1.xyz = -cb0[67].xyz + r1.xyz;
  r1.w = dot(r0.yzw, r0.yzw);
  r2.x = rsqrt(r1.w);
  r1.w = sqrt(r1.w);
  r1.w = cb2[8].w * r1.w;
  r1.w = min(10, r1.w);
  r0.yzw = r2.xxx * r0.yzw;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = cb2[5].xyz * r0.zzz;
  r2.xyz = r0.yyy * cb2[4].xyz + r2.xyz;
  r0.yzw = r0.www * cb2[6].xyz + r2.xyz;
  r1.w = (uint)v0.x;
  r0.yzw = r1.www * r0.yzw + r1.xyz;
  r1.xyzw = cb1[20].xyzw * r0.zzzz;
  r1.xyzw = r0.yyyy * cb1[19].xyzw + r1.xyzw;
  r1.xyzw = r0.wwww * cb1[21].xyzw + r1.xyzw;
  r1.xyzw = cb1[22].xyzw + r1.xyzw;
  r0.y = cmp(r1.z < 0);
  r0.z = cmp(0 < cb1[28].x);
  r0.y = r0.y ? r0.z : 0;
  r0.yz = r0.yy ? float2(9.99999997e-007,1) : r1.zw;
  o1.xy = r1.xy;
  r0.x = r0.y * cb1[27].w + r0.x;
  o1.z = r0.x * r0.z;
  o1.w = r0.z;
  return;
}