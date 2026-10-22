// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[66];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t1.SampleLevel(s1_s, v0.xy, 0).xw;
  r0.xy = float2(255,3.99900007) * r0.yx;
  r0.x = round(r0.x);
  r0.xy = (uint2)r0.xy;
  r0.xy = (int2)r0.xy & int2(15,1);
  r0.xz = cmp((int2)r0.xx == int2(12,13));
  r0.x = (int)r0.z | (int)r0.x;
  r0.x = cmp((int)r0.x == 0);
  r0.y = cmp((int)r0.y != 0);
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x != 0) discard;
  r0.x = t3.SampleLevel(s3_s, v0.xy, 0).x;
  r0.y = cmp(r0.x == 0.000000);
  if (r0.y != 0) discard;
  r0.y = t2.SampleLevel(s2_s, v0.xy, 0).x;
  r0.z = r0.y * cb1[65].x + cb1[65].y;
  r0.y = r0.y * cb1[65].z + -cb1[65].w;
  r0.y = 1 / r0.y;
  r0.y = r0.z + r0.y;
  r0.z = r0.x * cb1[65].x + cb1[65].y;
  r0.x = r0.x * cb1[65].z + -cb1[65].w;
  r0.x = 1 / r0.x;
  r0.x = r0.z + r0.x;
  r1.xyz = t0.SampleLevel(s0_s, v0.xy, 0).xyz;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.zw = v0.zw * r0.yy;
  r2.xyz = cb1[49].xyz * r0.www;
  r2.xyz = r0.zzz * cb1[48].xyz + r2.xyz;
  r0.yzw = r0.yyy * cb1[50].xyz + r2.xyz;
  r0.yzw = cb1[51].xyz + r0.yzw;
  r2.xy = v0.zw * r0.xx;
  r2.yzw = cb1[49].xyz * r2.yyy;
  r2.xyz = r2.xxx * cb1[48].xyz + r2.yzw;
  r2.xyz = r0.xxx * cb1[50].xyz + r2.xyz;
  r2.xyz = cb1[51].xyz + r2.xyz;
  r2.xyz = -cb1[60].xyz * cb0[27].zzz + r2.xyz;
  r0.xyz = r2.xyz + -r0.yzw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.x = dot(r0.xyz, r1.xyz);
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0.5,0.5,0.5,0.5);
  return;
}