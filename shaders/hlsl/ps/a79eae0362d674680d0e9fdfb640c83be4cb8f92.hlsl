// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[10];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[131];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD9,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v4.xyz / v4.www;
  r0.xy = r0.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r0.xy = cb0[130].xy * r0.xy;
  r1.xyzw = cb0[45].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[44].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[46].xyzw + r1.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb0[70].xyz + r0.xyz;
  r0.y = cb1[7].z * r0.y;
  r0.x = r0.x * cb1[6].z + r0.y;
  r0.x = r0.z * cb1[8].z + r0.x;
  r0.x = cb1[9].z + r0.x;
  r0.x = 128 * r0.x;
  r0.x = round(r0.x);
  r0.x = 32768 + r0.x;
  r0.x = max(0, r0.x);
  r0.x = min(65535, r0.x);
  r0.x = 0.00390625 * r0.x;
  r1.x = floor(r0.x);
  r1.y = frac(r0.x);
  o0.xy = float2(0.00392156886,1.00392163) * r1.xy;
  o0.zw = float2(0,0);
  return;
}