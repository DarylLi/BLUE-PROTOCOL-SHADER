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
  float4 cb0[13];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v0.x * 6.28318548 + -3.14159274;
  sincos(r0.x, r0.x, r1.x);
  r0.y = 3.14159274 * v0.y;
  sincos(r0.y, r2.x, r3.x);
  r1.x = r2.x * r1.x;
  r1.y = r2.x * r0.x;
  r1.z = r3.x;
  r0.xyz = cb0[12].xyz + r1.xyz;
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