// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
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

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = v0.xxxx * cb0[0].xyzw + r0.xyzw;
  r1.xy = cb1[132].zw * v0.xy;
  r1.x = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r0.xyzw = r1.xxxx * cb0[2].xyzw + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r0.xyzw = r0.xyzz / r0.wwww;
  r1.yzw = float3(1,1,1) + r0.xyw;
  r1.yzw = cmp(r1.yzw < float3(0,0,0));
  r1.y = (int)r1.z | (int)r1.y;
  r1.y = (int)r1.w | (int)r1.y;
  if (r1.y != 0) discard;
  r1.yzw = float3(1,1,1) + -r0.xyw;
  r0.xyzw = r0.xyzw * float4(0.5,0.5,0.5,0.5) + float4(0.5,0.5,0.5,0.99000001);
  r1.yzw = cmp(r1.yzw < float3(0,0,0));
  r1.y = (int)r1.z | (int)r1.y;
  r1.y = (int)r1.w | (int)r1.y;
  if (r1.y != 0) discard;
  r1.yzw = cb1[45].xyw * v0.yyy;
  r1.yzw = v0.xxx * cb1[44].xyw + r1.yzw;
  r1.xyz = r1.xxx * cb1[46].xyw + r1.yzw;
  r1.xyz = cb1[47].xyw + r1.xyz;
  r1.xy = r1.xy / r1.zz;
  r1.xy = -cb1[70].xy + r1.xy;
  r1.xy = r1.xy / cb2[5].xx;
  r1.x = t2.SampleBias(s2_s, r1.xy, cb1[143].y).x;
  r1.x = cb2[5].y + r1.x;
  r1.y = cb2[5].z + -cb2[5].w;
  r1.x = saturate(r1.x * r1.y + cb2[5].w);
  r2.x = cb2[4].y * r0.z;
  r2.y = r0.y;
  r2.xyzw = t1.SampleBias(s1_s, r2.xy, cb1[143].y).xyzw;
  r0.y = r2.w * r1.x;
  o2.xyz = saturate(cb2[3].xyz * r2.xyz);
  r0.z = 1.49000001 + -r0.z;
  r0.z = saturate(r0.z * 51 + -25);
  r0.w = saturate(r0.w * 51 + -25);
  r0.x = r0.x * 2 + -1;
  r0.x = saturate(-abs(r0.x) * 4 + 4);
  r0.x = cb0[13].x * r0.x;
  r0.z = r0.w * r0.z;
  r0.y = saturate(r0.y * r0.z);
  r0.x = r0.y * r0.x;
  o0.w = r0.x;
  r0.yzw = cb2[4].xxx * cb2[1].xyz;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  o0.xyz = cb1[135].yyy * r0.yzw;
  o1.w = r0.x;
  o2.w = r0.x;
  r0.x = saturate(cb2[4].z);
  o1.z = r0.x * cb1[139].y + cb1[139].x;
  o1.xy = float2(0,0.5);
  return;
}