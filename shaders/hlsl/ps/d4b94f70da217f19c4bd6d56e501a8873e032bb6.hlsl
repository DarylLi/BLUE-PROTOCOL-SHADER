// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  uint v3 : PRIMITIVE_ID0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[5].yyy * cb1[1].xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  o0.xyz = cb0[135].yyy * r0.xyz;
  r0.xy = cb1[4].xz * v2.xy + cb1[4].yw;
  r1.xyzw = t1.SampleBias(s1_s, r0.xy, cb0[143].y).xyzw;
  r1.w = saturate(r1.w);
  o0.w = r1.w;
  r0.zw = t0.SampleBias(s0_s, r0.xy, cb0[143].y).xy;
  r0.xy = t2.SampleBias(s2_s, r0.xy, cb0[143].y).xy;
  r2.xy = r0.zw * float2(2,2) + float2(-1,-1);
  r0.z = dot(r2.xy, r2.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r2.z = sqrt(r0.z);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb1[5].xxx * r3.xyz + r2.xyz;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r3.xyz = v1.zxy * v0.yzx;
  r3.xyz = v1.yzx * v0.zxy + -r3.xyz;
  r3.xyz = v1.www * r3.xyz;
  r3.xyz = r3.xyz * r2.yyy;
  r2.xyw = r2.xxx * v0.xyz + r3.xyz;
  r2.xyz = r2.zzz * v1.xyz + r2.xyw;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  o1.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o1.w = r1.w;
  r0.x = saturate(cb1[6].z + r0.x);
  o2.x = saturate(r0.y);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  o2.y = saturate(cb1[6].y);
  o2.w = r1.w;
  o3.w = r1.w;
  r0.x = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xxx + -r1.xyz;
  r0.xyz = cb1[6].xxx * r0.xyz + r1.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r0.xyz);
  r0.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r1.xyz = float3(0.577350259,0.577350259,0.577350259) * r0.zxy;
  r1.xyz = r0.zxy * float3(0.577350259,0.577350259,0.577350259) + -r1.zxy;
  sincos(cb1[5].w, r2.x, r3.x);
  r1.xyz = r2.xxx * r1.xyz;
  r0.xyz = r0.xyz * r3.xxx + r1.xyz;
  r0.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r0.xyz = cb1[3].xyz * r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  o3.xyz = min(float3(1,1,1), r0.xyz);
  return;
}