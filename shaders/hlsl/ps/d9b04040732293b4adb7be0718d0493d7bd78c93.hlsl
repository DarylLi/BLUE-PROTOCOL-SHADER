// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

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
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
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
  r1.xyz = cb2[5].yyy * cb2[1].xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  o0.xyz = cb1[135].yyy * r1.xyz;
  r0.x = r0.x * 2 + -1;
  r0.yz = cb2[4].xz * r0.zy + cb2[4].yw;
  r0.x = saturate(-abs(r0.x) * 4 + 4);
  r0.x = cb0[13].x * r0.x;
  r1.xyzw = t2.SampleBias(s2_s, r0.yz, cb1[143].y).wxyz;
  r1.x = saturate(r1.x);
  r0.x = r1.x * r0.x;
  o0.w = r0.x;
  r2.xy = t1.SampleBias(s1_s, r0.yz, cb1[143].y).xy;
  r0.yz = t3.SampleBias(s3_s, r0.yz, cb1[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb2[5].xxx * r3.xyz + r2.xyz;
  r2.xyz = r2.xyz * cb1[138].www + cb1[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(cb0[4].xyz, cb0[4].xyz);
  r0.w = rsqrt(r0.w);
  r0.w = -r2.z * r0.w;
  r1.x = dot(cb0[5].xyz, cb0[5].xyz);
  r3.y = rsqrt(r1.x);
  r1.x = dot(cb0[6].xyz, cb0[6].xyz);
  r3.z = rsqrt(r1.x);
  r2.xy = r3.yz * r2.yx;
  r2.xzw = cb0[5].xyz * r2.xxx;
  r2.xzw = r0.www * cb0[4].xyz + r2.xzw;
  r2.xyz = r2.yyy * cb0[6].xyz + r2.xzw;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  o1.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o1.w = r0.x;
  r0.y = saturate(cb2[6].z + r0.y);
  o2.x = saturate(r0.z);
  o2.z = r0.y * cb1[139].y + cb1[139].x;
  o2.w = r0.x;
  o3.w = r0.x;
  o2.y = saturate(cb2[6].y);
  r0.x = dot(r1.yzw, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xxx + -r1.yzw;
  r0.xyz = cb2[6].xxx * r0.xyz + r1.yzw;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r0.xyz);
  r0.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r1.xyz = float3(0.577350259,0.577350259,0.577350259) * r0.zxy;
  r1.xyz = r0.zxy * float3(0.577350259,0.577350259,0.577350259) + -r1.zxy;
  sincos(cb2[5].w, r2.x, r3.x);
  r1.xyz = r2.xxx * r1.xyz;
  r0.xyz = r0.xyz * r3.xxx + r1.xyz;
  r0.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r0.xyz = cb2[3].xyz * r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  o3.xyz = min(float3(1,1,1), r0.xyz);
  return;
}