// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<uint4> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[215];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  uint v1 : SV_InstanceID0,
  out float3 o0 : TEXCOORD0,
  out float p0 : TEXCOORD1,
  out float4 o1 : TEXCOORD2,
  out float3 o2 : TEXCOORD3,
  out float4 o3 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v1.x << 3;
  r0.y = (uint)v0.x >> 2;
  r0.x = (int)r0.y + (int)r0.x;
  r0.yzw = cb1[213].xyz * cb1[213].www;
  r0.yzw = (uint3)r0.yzw;
  uiDest.x = (uint)r0.x / (uint)r0.y;
  r2.x = (uint)r0.x % (uint)r0.y;
  r1.x = uiDest.x;
  r1.x = (uint)r1.x % (uint)r0.z;
  r2.x = (uint)r2.x;
  r2.y = (uint)r1.x;
  r1.x = (int)r0.z * (int)r0.y;
  r0.yzw = (uint3)r0.yzw;
  uiDest.x = (uint)r0.x / (uint)r1.x;
  r0.x = uiDest.x;
  r2.z = (uint)r0.x;
  r0.xyz = r2.xyz / r0.yzw;
  r1.xyz = r2.xyz / cb1[213].www;
  r0.xyz = -cb1[212].xyz + r0.xyz;
  r0.xyz = r0.xyz / cb1[211].xyz;
  r2.xyz = -cb1[69].xyz + r0.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r2.xyz = (int3)r1.xyz;
  r2.w = 0;
  r2.xyzw = t0.Load(r2.xyzw).xyzw;
  r2.xyzw = (uint4)r2.xyzw;
  r3.x = cb1[213].x * cb1[211].x;
  r3.x = 1 / r3.x;
  r3.x = r3.x * r2.w;
  r3.x = cb0[0].x * r3.x;
  r3.x = cb1[28].x * r3.x;
  r3.x = r3.x / r1.w;
  p0.x = saturate(r3.x * 100 + -0.00999999978);
  r1.xyz = r1.xyz / r2.www;
  r1.xyz = frac(r1.xyz);
  r3.yzw = cb1[213].www * r1.xyz;
  r4.x = 1 + cb1[213].w;
  r2.xyz = r2.xyz * r4.xxx + r3.yzw;
  r3.yzw = round(r3.yzw);
  r1.xyz = r1.xyz * cb1[213].www + -r3.yzw;
  r1.xyz = cmp(abs(r1.xyz) < float3(0.00999999978,0.00999999978,0.00999999978));
  r2.w = sqrt(r2.w);
  r2.w = cb0[0].y * r2.w;
  r2.w = max(r3.x, r2.w);
  r1.w = r2.w * r1.w;
  r0.w = r1.w / cb1[28].x;
  r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
  o0.xyz = cb1[214].xyz * r2.xyz;
  o1.xyzw = r0.xyzw;
  r1.w = (int)v0.x & 1;
  r2.x = r1.w ? 1 : -1;
  if (1 == 0) r1.w = 0; else if (1+1 < 32) {   r1.w = (uint)v0.x << (32-(1 + 1)); r1.w = (uint)r1.w >> (32-1);  } else r1.w = (uint)v0.x >> 1;
  r2.y = r1.w ? 1 : -1;
  r2.xy = r2.xy * r0.ww;
  r2.xy = float2(1.41421354,1.41421354) * r2.xy;
  r0.xyz = r2.xxx * cb1[62].xyz + r0.xyz;
  r0.xyz = r2.yyy * cb1[61].xyz + r0.xyz;
  o2.xyz = r0.xyz;
  r2.xyzw = cb1[5].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb1[4].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb1[6].xyzw + r2.xyzw;
  r0.xyzw = cb1[7].xyzw + r0.xyzw;
  r1.x = r1.y ? r1.x : 0;
  r1.x = r1.z ? r1.x : 0;
  o3.xyzw = r1.xxxx ? r0.xyzw : 0;
  return;
}