// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[111];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v5.z;
  r0.x = v5.w * r0.x;
  r0.y = 1;
  r0.y = r0.y * v5.w + cb1[110].w;
  r0.x = r0.x / r0.y;
  oDepthLE = min(v5.z, r0.x);
  o0.xyzw = cb0[1].xyzw;
  return;
}