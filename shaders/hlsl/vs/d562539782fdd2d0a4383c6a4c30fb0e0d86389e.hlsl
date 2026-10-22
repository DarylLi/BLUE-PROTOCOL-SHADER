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
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = v1.xyxy * cb1[1].xyxy + cb1[1].zwzw;
  r0.xyzw = cb1[2].zwzw * r0.xyzw;
  r1.xyzw = cb0[27].zzww * float4(-0.25,1.25,-0.125,-0.125) + r0.zzww;
  o1.xyzw = r1.xzyw;
  r2.xyzw = cb0[27].zwzw * float4(-0.125,-0.25,-0.125,1.25) + r0.zwzw;
  o2.xyzw = r2.xyzw;
  r1.zw = r2.yw;
  r1.xyzw = cb0[27].zzww * float4(-16,16,-16,16) + r1.xyzw;
  o3.xyzw = r1.xyzw;
  o4.xyzw = r0.xyzw;
  o0.xy = cb0[27].xy * r0.zw;
  r0.xy = v0.xy * cb1[0].xy + cb1[0].zw;
  r0.xy = cb1[2].xy * r0.xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  o5.xy = float2(1,-1) * r0.xy;
  o5.zw = v0.zw;
  return;
}