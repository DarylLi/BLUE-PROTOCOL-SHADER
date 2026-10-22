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
  float4 cb3[16];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
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
  float4 r0,r1,r2,r3,r4;
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
  r2.xyz = float3(1,1,1) + -r0.xyz;
  r0.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r2.xyz = cmp(r2.xyz < float3(0,0,0));
  r0.w = (int)r2.y | (int)r2.x;
  r0.w = (int)r2.z | (int)r0.w;
  if (r0.w != 0) discard;
  r1.y = 1;
  r1.xy = v0.ww * r1.xy;
  r0.w = r1.x * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r1.x = r1.x * cb1[65].x + cb1[65].y;
  r0.w = r1.x + r0.w;
  r1.x = cmp(cb1[31].w < 1);
  r0.w = r1.x ? r1.y : r0.w;
  r0.w = r0.w / cb3[8].y;
  r1.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = cb3[8].z * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb3[8].w * r1.x;
  r1.x = max(1, r1.x);
  r0.w = r0.w ? 1 : r1.x;
  r1.x = cb0[7].x + cb0[7].y;
  r1.x = cb0[7].z + r1.x;
  r1.x = frac(r1.x);
  r1.x = cb1[142].z + r1.x;
  r1.x = cb2[2].x * r1.x;
  r1.x = cb3[10].z * r1.x;
  r1.yz = cb3[12].xx * r0.zy;
  r1.xy = r1.xx * cb3[11].yz + r1.yz;
  r1.x = t3.SampleBias(s3_s, r1.xy, cb1[143].y).x;
  r1.y = log2(r1.x);
  r1.x = cmp(0 >= r1.x);
  r1.y = cb3[12].y * r1.y;
  r1.y = exp2(r1.y);
  r1.x = r1.x ? 0 : r1.y;
  r1.y = cb3[12].z * r1.x;
  r1.y = cb1[142].z * cb3[10].y + r1.y;
  r1.y = 6.28318548 * r1.y;
  r1.y = sin(r1.y);
  r1.y = r1.y * 0.5 + 0.5;
  r1.y = r1.y * cb3[13].x + cb3[12].w;
  r1.y = max(cb3[13].z, r1.y);
  r1.y = min(cb3[13].y, r1.y);
  r1.y = cb3[13].w * r1.y;
  r1.y = cb2[3].y * r1.y;
  r1.x = r1.y * r1.x;
  r0.yz = cb3[7].xz * r0.zy + cb3[7].yw;
  r0.x = r0.x * 2 + -1;
  r0.x = saturate(-abs(r0.x) * 4 + 4);
  r0.x = cb0[13].x * r0.x;
  r1.yz = r0.yz / cb3[9].zz;
  r2.x = cb3[9].w + r1.y;
  r2.y = cb3[10].x + r1.z;
  r1.yzw = t2.SampleBias(s2_s, r2.xy, cb1[143].y).xyz;
  r2.x = dot(float3(0.577350259,0.577350259,0.577350259), r1.yzw);
  r1.yzw = -r2.xxx * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r2.yzw = float3(0.577350259,0.577350259,0.577350259) * r1.wyz;
  r2.yzw = r1.wyz * float3(0.577350259,0.577350259,0.577350259) + -r2.wyz;
  sincos(cb3[9].y, r3.x, r4.x);
  r2.yzw = r3.xxx * r2.yzw;
  r1.yzw = r1.yzw * r4.xxx + r2.yzw;
  r1.yzw = r2.xxx * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r1.yzw = cb3[2].xyz * r1.yzw;
  r1.xyz = r1.yzw * r1.xxx;
  r2.xyz = r1.xyz * r0.www;
  r1.xyz = -r0.www * r1.xyz + cb3[4].xyz;
  r1.xyz = cb3[14].xxx * r1.xyz + r2.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  o0.xyz = cb1[135].yyy * r1.xyz;
  r1.xyzw = t4.SampleBias(s4_s, r0.yz, cb1[143].y).wxyz;
  r1.x = saturate(r1.x);
  r0.x = r1.x * r0.x;
  o0.w = r0.x;
  r2.xy = t1.SampleBias(s1_s, r0.yz, cb1[143].y).xy;
  r0.yz = t5.SampleBias(s5_s, r0.yz, cb1[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb3[8].xxx * r3.xyz + r2.xyz;
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
  r0.y = saturate(cb3[15].y + r0.y);
  o2.x = saturate(r0.z);
  o2.z = r0.y * cb1[139].y + cb1[139].x;
  o2.w = r0.x;
  o3.w = r0.x;
  o2.y = saturate(cb3[15].x);
  r0.x = dot(r1.yzw, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xxx + -r1.yzw;
  r0.xyz = cb3[14].www * r0.xyz + r1.yzw;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r0.xyz);
  r0.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r1.xyz = float3(0.577350259,0.577350259,0.577350259) * r0.zxy;
  r1.xyz = r0.zxy * float3(0.577350259,0.577350259,0.577350259) + -r1.zxy;
  sincos(cb3[14].z, r2.x, r3.x);
  r1.xyz = r2.xxx * r1.xyz;
  r0.xyz = r0.xyz * r3.xxx + r1.xyz;
  r0.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r0.xyz = cb3[6].xyz * r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  o3.xyz = min(float3(1,1,1), r0.xyz);
  return;
}