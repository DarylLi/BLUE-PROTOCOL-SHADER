// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[68];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -v1.xy * cb0[7].xy + float2(1,1);
  r1.xyzw = cb0[9].xyzw * r0.yyyy;
  r0.xyzw = r0.xxxx * cb0[8].xyzw + r1.xyzw;
  r0.xyzw = cb0[10].xyzw * float4(9.99999997e-007,9.99999997e-007,9.99999997e-007,9.99999997e-007) + r0.xyzw;
  r0.xyzw = cb0[11].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = cb1[67].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb0[6].x + -r0.x;
  r0.y = 0.200000003 * cb0[6].x;
  r0.x = saturate(r0.x / r0.y);
  r0.yzw = float3(-1,-1,-1) + cb2[1].xyz;
  r0.yzw = cb2[2].xxx * r0.yzw + float3(1,1,1);
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.y = dot(r0.yzw, float3(0.333299994,0.333299994,0.333299994));
  r0.y = -cb0[6].y + r0.y;
  r0.x = r0.x * r0.y;
  o0.xyzw = cb0[1].yyyy * r0.xxxx + cb0[6].yyyy;
  return;
}