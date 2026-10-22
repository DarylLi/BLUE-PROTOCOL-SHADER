// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[16];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[144];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD3,
  float3 v3 : PARTICLE_LIGHTING_OFFSET0,
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z * cb2[11].z + v2.x;
  r0.z = cb1[142].z * cb2[12].z + v2.y;
  r0.xy = cb2[12].yw * r0.xz;
  r0.xy = t0.SampleBias(s0_s, r0.xy, cb1[143].y).xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.z = dot(r0.xy, r0.xy);
  r1.xy = cb2[13].xx * r0.xy;
  r0.x = 1 + -r0.z;
  r0.x = max(0, r0.x);
  r1.z = sqrt(r0.x);
  r0.xyz = r1.xyz * cb1[138].www + cb1[138].xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = v1.zxy * v0.yzx;
  r1.xyz = v1.yzx * v0.zxy + -r1.xyz;
  r1.xyz = v1.www * r1.xyz;
  r1.xyz = r1.xyz * r0.yyy;
  r0.xyw = r0.xxx * v0.xyz + r1.xyz;
  r0.xyz = r0.zzz * v1.xyz + r0.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb1[18].xyz, r0.xyz);
  r0.x = 1 + -r0.x;
  r0.y = cb1[142].z * cb2[14].x + v2.x;
  r1.x = cb2[14].w * r0.y;
  r0.y = cb1[142].z * cb2[15].x + v2.y;
  r1.y = cb2[15].y * r0.y;
  r0.y = t1.SampleBias(s1_s, r1.xy, cb1[143].y).x;
  r0.y = 1 + -r0.y;
  r0.x = -r0.y * r0.x + cb2[15].z;
  r0.x = saturate(ceil(r0.x));
  r0.x = -0.333299994 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = cb0[2].xyzw;
  return;
}