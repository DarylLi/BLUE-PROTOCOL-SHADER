// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[14];
}

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
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = v0.xxxx * cb0[0].xyzw + r0.xyzw;
  r1.xy = cb1[132].zw * v0.xy;
  r1.x = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r0.xyzw = r1.xxxx * cb0[2].xyzw + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.yzw = float3(1,1,1) + r0.xyz;
  r1.yzw = cmp(r1.yzw < float3(0,0,0));
  r0.w = (int)r1.z | (int)r1.y;
  r0.w = (int)r1.w | (int)r0.w;
  if (r0.w != 0) discard;
  r1.yzw = float3(1,1,1) + -r0.xyz;
  r0.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.yzw = cmp(r1.yzw < float3(0,0,0));
  r0.w = (int)r1.z | (int)r1.y;
  r0.w = (int)r1.w | (int)r0.w;
  if (r0.w != 0) discard;
  r1.yzw = cb3[11].www * cb3[3].xyz;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  o0.xyz = cb1[135].yyy * r1.yzw;
  r0.x = r0.x * 2 + -1;
  r0.x = saturate(-abs(r0.x) * 4 + 4);
  r0.x = cb0[13].x * r0.x;
  r1.yz = t5.SampleBias(s5_s, r0.zy, cb1[143].y).xy;
  r0.w = saturate(cb3[13].y * r1.y);
  r0.x = r0.w * r0.x;
  o0.w = r0.x;
  r2.xyz = cb1[45].xyw * v0.yyy;
  r2.xyz = v0.xxx * cb1[44].xyw + r2.xyz;
  r1.xyw = r1.xxx * cb1[46].xyw + r2.xyz;
  r1.xyw = cb1[47].xyw + r1.xyw;
  r1.xy = r1.xy / r1.ww;
  r1.xy = -cb1[70].xy + r1.xy;
  r2.xy = r1.xy / cb3[11].xx;
  r1.xy = r1.xy / cb3[9].xx;
  r0.w = cb0[7].x + cb0[7].y;
  r0.w = cb0[7].z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb1[142].z + r0.w;
  r0.w = cb2[2].x * r0.w;
  r0.w = cb3[7].y * r0.w;
  r2.xy = r0.ww * cb3[10].xy + r2.xy;
  r1.xy = r0.ww * cb3[8].xy + r1.xy;
  r1.xy = t3.SampleBias(s3_s, r1.xy, cb1[143].y).xy;
  r3.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r1.xy = t4.SampleBias(s4_s, r2.xy, cb1[143].y).xy;
  r2.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r1.xyw = float3(0,0,1) + -r2.xyz;
  r1.xyw = cb3[11].yyy * r1.xyw + r2.xyz;
  r1.xyw = float3(-1,-1,1) * r1.xyw;
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r2.xyz = float3(0,0,1) + -r3.xyz;
  r2.xyz = cb3[9].yyy * r2.xyz + r3.xyz;
  r2.w = 1 + r2.z;
  r0.w = dot(r2.xyw, r1.xyw);
  r2.z = 1 + r2.z;
  r1.xyw = r2.zzz * r1.xyw;
  r1.xyw = r2.xyw * r0.www + -r1.xyw;
  r2.xy = t2.SampleBias(s2_s, r0.zy, cb1[143].y).xy;
  r0.yz = t1.SampleBias(s1_s, r0.zy, cb1[143].y).xy;
  r3.xy = r0.yz * float2(2,2) + float2(-1,-1);
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.y = dot(r2.xy, r2.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r2.z = sqrt(r0.y);
  r0.yzw = -r2.xyz + r1.xyw;
  r0.yzw = cb3[11].zzz * r0.yzw + r2.xyz;
  r1.x = dot(r3.xy, r3.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r3.z = sqrt(r1.x);
  r1.xyw = float3(0,0,1) + -r3.xyz;
  r1.xyw = cb3[7].xxx * r1.xyw + r3.xyz;
  r0.yzw = -r1.xyw + r0.yzw;
  r0.yzw = r1.zzz * r0.yzw + r1.xyw;
  r0.yzw = r0.yzw * cb1[138].www + cb1[138].xyz;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  r1.x = dot(cb0[4].xyz, cb0[4].xyz);
  r1.x = rsqrt(r1.x);
  r0.w = r1.x * -r0.w;
  r1.x = dot(cb0[5].xyz, cb0[5].xyz);
  r2.y = rsqrt(r1.x);
  r1.x = dot(cb0[6].xyz, cb0[6].xyz);
  r2.z = rsqrt(r1.x);
  r0.yz = r2.yz * r0.zy;
  r1.xyw = cb0[5].xyz * r0.yyy;
  r1.xyw = r0.www * cb0[4].xyz + r1.xyw;
  r0.yzw = r0.zzz * cb0[6].xyz + r1.xyw;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  o1.xyz = r0.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o1.w = r0.x;
  r0.y = -cb3[13].x + cb3[12].w;
  r0.y = saturate(r1.z * r0.y + cb3[13].x);
  o2.z = r0.y * cb1[139].y + cb1[139].x;
  r0.y = cb3[12].y + -cb3[12].z;
  o2.y = saturate(r1.z * r0.y + cb3[12].z);
  o2.w = r0.x;
  o3.w = r0.x;
  o2.x = saturate(cb3[12].x);
  r0.yzw = saturate(cb3[6].xyz);
  o3.xyz = r0.yzw * r0.xxx;
  return;
}