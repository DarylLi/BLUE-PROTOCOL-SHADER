// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[136];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  uint v2 : PRIMITIVE_ID0,
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v3.z;
  r0.y = 1;
  r0.xy = v3.ww * r0.xy;
  r0.z = r0.x * cb0[65].z + -cb0[65].w;
  r0.z = 1 / r0.z;
  r0.x = r0.x * cb0[65].x + cb0[65].y;
  r0.x = r0.x + r0.z;
  r0.z = cmp(cb0[31].w < 1);
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = r0.x / cb1[4].x;
  r0.y = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.y = cb1[4].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = cb1[4].z * r0.y;
  r0.y = max(1, r0.y);
  r0.x = r0.x ? 1 : r0.y;
  r0.yzw = cb1[2].xyz * r0.xxx;
  r1.xyz = -r0.xxx * cb1[2].xyz + cb1[3].xyz;
  r0.xyz = cb1[4].www * r1.xyz + r0.yzw;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 1;
  return;
}