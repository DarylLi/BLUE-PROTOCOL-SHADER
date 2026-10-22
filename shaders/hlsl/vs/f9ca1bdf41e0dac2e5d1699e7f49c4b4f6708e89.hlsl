// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[77];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float2 v1 : ATTRIBUTE1,
  out float2 o0 : TEXCOORD0,
  out float2 p0 : TEXCOORD3,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float2 o3 : TEXCOORD4,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb1[1].xy + cb1[1].zw;
  r0.zw = cb1[2].zw * r0.xy;
  o2.zw = r0.xy * cb1[2].zw + cb0[72].xy;
  o0.xy = r0.zw;
  r0.xy = r0.zw * cb0[37].yz + -cb0[39].xy;
  o2.xy = cb0[38].xy * float2(-0.5,0.5) + r0.zw;
  r0.xy = r0.xy / cb0[38].zw;
  r0.zw = r0.xy * cb0[76].zw + cb0[76].xy;
  p0.xy = r0.xy;
  r1.y = 1;
  r1.z = cb0[55].x * cb0[54].w;
  r0.xy = r1.yz * r0.zw;
  r0.z = r1.z * r1.z + 1;
  r0.z = sqrt(r0.z);
  r0.z = 1.41421354 / r0.z;
  o1.yz = r0.xy * r0.zz;
  r0.x = t0.Load(float4(0,0,0,0)).x;
  o1.x = r0.x;
  r0.xyzw = v0.xyxy * cb1[0].xyxy + cb1[0].zwzw;
  r0.xyzw = cb1[2].xyxy * r0.xyzw;
  r0.xyzw = r0.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  o3.xy = r0.zw * float2(0.5,0.5) + float2(0.5,0.5);
  r0.xy = float2(1,-1) * r0.xy;
  o4.xy = r0.xy;
  o4.zw = v0.zw;
  return;
}