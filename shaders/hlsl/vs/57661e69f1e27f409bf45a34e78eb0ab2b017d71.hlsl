// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  out float4 o0 : TEXCOORD1,
  out float4 o1 : TEXCOORD2,
  out float4 o2 : TEXCOORD3,
  out float4 o3 : TEXCOORD4,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = v1.xyxy * cb1[1].xyxy + cb1[1].zwzw;
  r0.xyzw = cb1[2].zwzw * r0.xyzw;
  r1.xyzw = cb0[27].zwzw * float4(-1,0,0,-1) + r0.zwzw;
  o0.xyzw = r1.xyzw;
  r1.xyzw = cb0[27].zwzw * float4(1,0,0,1) + r0.zwzw;
  o1.xyzw = r1.xyzw;
  r1.xyzw = cb0[27].zwzw * float4(-2,0,0,-2) + r0.zwzw;
  o2.xyzw = r1.xyzw;
  o3.xyzw = r0.xyzw;
  r0.xy = v0.xy * cb1[0].xy + cb1[0].zw;
  r0.xy = cb1[2].xy * r0.xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  o4.xy = float2(1,-1) * r0.xy;
  o4.zw = v0.zw;
  return;
}