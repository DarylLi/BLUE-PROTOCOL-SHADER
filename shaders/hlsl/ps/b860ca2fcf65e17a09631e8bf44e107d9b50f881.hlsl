// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float3 v4 : TEXCOORD8,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[11].www * cb2[3].xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  o0.xyz = cb0[135].yyy * r0.xyz;
  r0.xy = t5.SampleBias(s4_s, v2.xy, cb0[143].y).xy;
  r0.x = saturate(cb2[13].y * r0.x);
  o0.w = r0.x;
  r0.z = mad((int)v3.x, 36, 18);
  r1.x = t0[r0.z].val[0/4];
  r1.y = t0[r0.z].val[0/4+1];
  r1.z = t0[r0.z].val[0/4+2];
  r0.z = r1.x + r1.y;
  r0.z = r0.z + r1.z;
  r0.z = frac(r0.z);
  r0.z = cb0[142].z + r0.z;
  r0.z = cb1[2].x * r0.z;
  r0.z = cb2[7].y * r0.z;
  r1.xy = -cb0[70].xy + v4.xy;
  r1.zw = r1.xy / cb2[11].xx;
  r1.xy = r1.xy / cb2[9].xx;
  r1.xy = r0.zz * cb2[8].xy + r1.xy;
  r0.zw = r0.zz * cb2[10].xy + r1.zw;
  r0.zw = t4.SampleBias(s3_s, r0.zw, cb0[143].y).xy;
  r2.xy = r0.zw * float2(2,2) + float2(-1,-1);
  r0.zw = t3.SampleBias(s2_s, r1.xy, cb0[143].y).xy;
  r1.xy = r0.zw * float2(2,2) + float2(-1,-1);
  r0.z = dot(r2.xy, r2.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r2.z = sqrt(r0.z);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb2[11].yyy * r3.xyz + r2.xyz;
  r2.xyz = float3(-1,-1,1) * r2.xyz;
  r0.z = dot(r1.xy, r1.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r1.z = sqrt(r0.z);
  r3.xyz = float3(0,0,1) + -r1.xyz;
  r1.xyz = cb2[9].yyy * r3.xyz + r1.xyz;
  r1.w = 1 + r1.z;
  r0.z = dot(r1.xyw, r2.xyz);
  r0.w = 1 + r1.z;
  r2.xyz = r0.www * r2.xyz;
  r1.xyz = r1.xyw * r0.zzz + -r2.xyz;
  r0.zw = t2.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r2.xy = r0.zw * float2(2,2) + float2(-1,-1);
  r0.z = dot(r2.xy, r2.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r2.z = sqrt(r0.z);
  r1.xyz = -r2.xyz + r1.xyz;
  r1.xyz = cb2[11].zzz * r1.xyz + r2.xyz;
  r0.zw = t1.SampleBias(s0_s, v2.xy, cb0[143].y).xy;
  r2.xy = r0.zw * float2(2,2) + float2(-1,-1);
  r0.z = dot(r2.xy, r2.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r2.z = sqrt(r0.z);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb2[7].xxx * r3.xyz + r2.xyz;
  r1.xyz = -r2.xyz + r1.xyz;
  r1.xyz = r0.yyy * r1.xyz + r2.xyz;
  r1.xyz = r1.xyz * cb0[138].www + cb0[138].xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r2.xyz = v1.zxy * v0.yzx;
  r2.xyz = v1.yzx * v0.zxy + -r2.xyz;
  r2.xyz = v1.www * r2.xyz;
  r2.xyz = r2.xyz * r1.yyy;
  r1.xyw = r1.xxx * v0.xyz + r2.xyz;
  r1.xyz = r1.zzz * v1.xyz + r1.xyw;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  o1.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o1.w = r0.x;
  r0.z = -cb2[13].x + cb2[12].w;
  r0.z = saturate(r0.y * r0.z + cb2[13].x);
  o2.z = r0.z * cb0[139].y + cb0[139].x;
  r0.z = cb2[12].y + -cb2[12].z;
  o2.y = saturate(r0.y * r0.z + cb2[12].z);
  o2.x = saturate(cb2[12].x);
  o2.w = r0.x;
  o3.w = r0.x;
  r0.yzw = saturate(cb2[6].xyz);
  o3.xyz = r0.yzw * r0.xxx;
  return;
}