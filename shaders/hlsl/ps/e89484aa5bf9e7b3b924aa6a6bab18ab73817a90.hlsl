// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
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
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = v0.xxxx * cb0[0].xyzw + r0.xyzw;
  r1.xy = cb1[132].zw * v0.xy;
  r1.x = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r0.xyzw = r1.xxxx * cb0[2].xyzw + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r2.xyz = float3(1,1,1) + r0.xyz;
  r2.xyz = cmp(r2.xyz < float3(0,0,0));
  r0.w = (int)r2.y | (int)r2.x;
  r0.w = (int)r2.z | (int)r0.w;
  if (r0.w != 0) discard;
  r0.yzw = float3(1,1,1) + -r0.xyz;
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = r0.x * 2 + -1;
  r0.x = saturate(-abs(r0.x) * 4 + 4);
  o0.w = cb0[13].x * r0.x;
  r0.xyz = cmp(r0.yzw < float3(0,0,0));
  r0.x = (int)r0.y | (int)r0.x;
  r0.x = (int)r0.z | (int)r0.x;
  if (r0.x != 0) discard;
  r1.y = 1;
  r0.xy = v0.ww * r1.xy;
  r0.z = r0.x * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r0.x = r0.x * cb1[65].x + cb1[65].y;
  r0.x = r0.x + r0.z;
  r0.z = cmp(cb1[31].w < 1);
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = r0.x / cb2[4].x;
  r0.y = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.y = cb2[4].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = cb2[4].z * r0.y;
  r0.y = max(1, r0.y);
  r0.x = r0.x ? 1 : r0.y;
  r0.yzw = cb2[2].xyz * r0.xxx;
  r1.xyz = -r0.xxx * cb2[2].xyz + cb2[3].xyz;
  r0.xyz = cb2[4].www * r1.xyz + r0.yzw;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  o0.xyz = cb1[135].yyy * r0.xyz;
  return;
}