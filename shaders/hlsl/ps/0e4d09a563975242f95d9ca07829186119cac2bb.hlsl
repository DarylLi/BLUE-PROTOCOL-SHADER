// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[144];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[14];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  uint v1 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r1.xyzw = cb0[1].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.xxxx * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = float3(1,1,1) + r0.xyz;
  r1.xyz = cmp(r1.xyz < float3(0,0,0));
  r0.w = (int)r1.y | (int)r1.x;
  r0.w = (int)r1.z | (int)r0.w;
  if (r0.w != 0) discard;
  r1.xyz = float3(1,1,1) + -r0.xyz;
  r0.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.xyz = cmp(r1.xyz < float3(0,0,0));
  r0.w = (int)r1.y | (int)r1.x;
  r0.w = (int)r1.z | (int)r0.w;
  if (r0.w != 0) discard;
  r0.yzw = t1.SampleBias(s1_s, r0.zy, cb1[143].y).xyz;
  r0.x = r0.x * 2 + -1;
  r0.x = saturate(-abs(r0.x) * 4 + 4);
  r1.w = cb0[13].x * r0.x;
  r2.xyz = cb2[1].xyz + -r0.zyw;
  r0.xyz = cb2[2].xxx * r2.xyz + r0.zyw;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  o0.xyz = cb1[135].yyy * r0.xyz;
  o0.w = r1.w;
  r1.xy = float2(0,0.5);
  o1.xyw = r1.xyw;
  o2.xyzw = r1.xxxw;
  o1.z = cb1[139].y * 0.5 + cb1[139].x;
  return;
}