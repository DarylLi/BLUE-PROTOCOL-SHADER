// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[13];
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
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD8,
  out float4 o9 : TEXCOORD9,
  out float4 o10 : TEXCOORD10,
  out float4 o11 : TEXCOORD11,
  out float4 o12 : TEXCOORD12,
  out float4 o13 : TEXCOORD13,
  out float4 o14 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb1[1].xy + cb1[1].zw;
  r1.xyzw = r0.xyxy * cb1[2].zwzw + cb0[0].xyzw;
  o1.xyzw = r1.xyzw;
  r1.xyzw = r0.xyxy * cb1[2].zwzw + cb0[1].xyzw;
  o2.xyzw = r1.xyzw;
  r1.xyzw = r0.xyxy * cb1[2].zwzw + cb0[2].xyzw;
  o3.xyzw = r1.xyzw;
  r1.xyzw = r0.xyxy * cb1[2].zwzw + cb0[3].xyzw;
  o4.xyzw = r1.xyzw;
  r1.xyzw = r0.xyxy * cb1[2].zwzw + cb0[4].xyzw;
  o5.xyzw = r1.xyzw;
  r1.xyzw = r0.xyxy * cb1[2].zwzw + cb0[5].xyzw;
  o6.xyzw = r1.xyzw;
  r1.xyzw = r0.xyxy * cb1[2].zwzw + cb0[6].xyzw;
  o7.xyzw = r1.xyzw;
  r1.xyzw = r0.xyxy * cb1[2].zwzw + cb0[7].xyzw;
  o8.xyzw = r1.xyzw;
  r1.xyzw = r0.xyxy * cb1[2].zwzw + cb0[8].xyzw;
  o9.xyzw = r1.xyzw;
  r1.xyzw = r0.xyxy * cb1[2].zwzw + cb0[9].xyzw;
  o10.xyzw = r1.xyzw;
  r1.xyzw = r0.xyxy * cb1[2].zwzw + cb0[10].xyzw;
  o11.xyzw = r1.xyzw;
  r1.xyzw = r0.xyxy * cb1[2].zwzw + cb0[11].xyzw;
  o12.xyzw = r1.xyzw;
  r1.xyzw = r0.xyxy * cb1[2].zwzw + cb0[12].xyzw;
  r0.xy = cb1[2].zw * r0.xy;
  o0.xy = r0.xy;
  o13.xyzw = r1.xyzw;
  r0.xy = v0.xy * cb1[0].xy + cb1[0].zw;
  r0.xy = cb1[2].xy * r0.xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  o14.xy = float2(1,-1) * r0.xy;
  o14.zw = v0.zw;
  return;
}