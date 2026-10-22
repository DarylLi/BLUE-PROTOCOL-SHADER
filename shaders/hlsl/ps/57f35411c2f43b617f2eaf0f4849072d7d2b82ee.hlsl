// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r1.xyzw = cb1[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb1[44].xyzw + r1.xyzw;
  r0.xyzw = r0.xxxx * cb1[46].xyzw + r1.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb1[70].xyz + r0.xyz;
  r0.xyz = cb1[67].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb0[10].x + -r0.x;
  r0.y = 0.200000003 * cb0[10].x;
  r0.x = saturate(r0.x / r0.y);
  r0.yzw = float3(-1,-1,-1) + cb2[1].xyz;
  r0.yzw = cb2[2].xxx * r0.yzw + float3(1,1,1);
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.y = dot(r0.yzw, float3(0.333299994,0.333299994,0.333299994));
  r0.y = -cb0[10].y + r0.y;
  r0.x = r0.x * r0.y;
  r0.x = cb0[1].y * r0.x + cb0[10].y;
  r0.zw = sqrt(r0.xx);
  r0.xy = float2(1,1);
  r1.xyzw = r0.wwww + -r0.yyww;
  o0.xyzw = cb0[10].zzzz * r1.xyzw + r0.xyzw;
  return;
}