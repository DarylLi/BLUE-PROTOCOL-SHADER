// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
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
  float4 r0,r1,r2,r3;
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
  r0.x = r0.x * 2 + -1;
  r0.x = saturate(-abs(r0.x) * 4 + 4);
  r0.x = cb0[13].x * r0.x;
  r1.x = cb2[4].w * r0.z + cb2[5].x;
  r1.y = r0.y * cb2[5].y + cb2[5].z;
  r2.xyzw = t1.SampleBias(s1_s, r1.xy, cb1[143].y).wxyz;
  r0.yz = t2.SampleBias(s2_s, r1.xy, cb1[143].y).xy;
  r2.x = saturate(r2.x);
  r0.x = r2.x * r0.x;
  o0.w = r0.x;
  r1.xyz = cb2[4].xxx * cb2[1].xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  o0.xyz = cb1[135].yyy * r1.xyz;
  r0.y = saturate(cb2[6].y + r0.y);
  o1.x = saturate(r0.z);
  o1.z = r0.y * cb1[139].y + cb1[139].x;
  o1.w = r0.x;
  o2.w = r0.x;
  o1.y = saturate(cb2[6].x);
  r0.x = dot(r2.yzw, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xxx + -r2.yzw;
  r0.xyz = cb2[5].www * r0.xyz + r2.yzw;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r0.xyz);
  r0.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r1.xyz = float3(0.577350259,0.577350259,0.577350259) * r0.zxy;
  r1.xyz = r0.zxy * float3(0.577350259,0.577350259,0.577350259) + -r1.zxy;
  sincos(cb2[4].z, r2.x, r3.x);
  r1.xyz = r2.xxx * r1.xyz;
  r0.xyz = r0.xyz * r3.xxx + r1.xyz;
  r0.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r0.xyz = cb2[3].xyz * r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  o2.xyz = min(float3(1,1,1), r0.xyz);
  return;
}