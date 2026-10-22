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
  float4 cb2[25];
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
  r1.xy = cb2[17].yy + r0.zy;
  r1.xy = cb2[17].zw * r1.xy;
  r0.w = cb2[16].x * cb1[142].z;
  r2.x = cb2[16].w * r0.w;
  r2.y = cb2[17].x * r0.w;
  r1.xy = r1.xy * cb2[18].xx + r2.xy;
  r0.w = cb2[14].x * cb1[142].z;
  r2.x = cb2[14].w * r0.w;
  r2.y = cb2[15].x * r0.w;
  r1.zw = r0.zy * cb2[15].yy + r2.xy;
  r0.w = t1.SampleBias(s1_s, r1.zw, cb1[143].y).x;
  r0.w = cb2[15].z * r0.w;
  r1.z = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.z = cb2[15].w * r1.z;
  r1.z = exp2(r1.z);
  r0.w = r0.w ? 0 : r1.z;
  r1.xy = r0.ww + r1.xy;
  r1.xyzw = t2.SampleBias(s2_s, r1.xy, cb1[143].y).xyzw;
  r1.w = cb2[18].y * r1.w;
  r1.xyz = cb2[5].xyz * r1.xyz + -cb2[6].xyz;
  r1.xyz = r1.www * r1.xyz + cb2[6].xyz;
  r2.xy = cb2[19].ww + r0.zy;
  r2.xy = cb2[20].xy * r2.xy;
  r2.xy = cb2[18].xx * r2.xy;
  r1.w = cb2[18].z * cb1[142].z;
  r2.xy = r1.ww * cb2[19].yz + r2.xy;
  r2.xy = r2.xy + r0.ww;
  r2.xyzw = t2.SampleBias(s2_s, r2.xy, cb1[143].y).xyzw;
  r2.xyz = cb2[9].xyz * r2.xyz + -r1.xyz;
  r1.w = cb2[20].z * r2.w;
  r1.xyz = r1.www * r2.xyz + r1.xyz;
  r2.xy = cb2[22].xx + r0.zy;
  r2.xy = cb2[22].yz * r2.xy;
  r2.xy = cb2[18].xx * r2.xy;
  r1.w = cb2[20].w * cb1[142].z;
  r2.xy = r1.ww * cb2[21].zw + r2.xy;
  r2.xy = r2.xy + r0.ww;
  r2.xyzw = t2.SampleBias(s2_s, r2.xy, cb1[143].y).xyzw;
  r2.xyz = cb2[12].xyz * r2.xyz + -r1.xyz;
  r0.w = cb2[22].w * r2.w;
  r1.xyz = r0.www * r2.xyz + r1.xyz;
  r2.xyz = cb2[23].xxx * r1.xyz;
  r3.xyz = -r1.xyz * cb2[23].xxx + cb2[13].xyz;
  o2.xyz = saturate(r1.xyz);
  r1.xyz = cb2[23].yyy * r3.xyz + r2.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  o0.xyz = cb1[135].yyy * r1.xyz;
  r0.x = r0.x * 2 + -1;
  r0.y = t3.SampleBias(s3_s, r0.zy, cb1[143].y).x;
  r0.x = saturate(-abs(r0.x) * 4 + 4);
  r0.x = cb0[13].x * r0.x;
  r0.z = log2(r0.y);
  r0.y = cmp(0 >= r0.y);
  r0.z = cb2[24].x * r0.z;
  r0.z = exp2(r0.z);
  r0.z = saturate(cb2[24].y * r0.z);
  r0.x = r0.z * r0.x;
  r0.x = r0.y ? 0 : r0.x;
  o0.w = r0.x;
  r0.y = cb2[23].z + -cb2[23].w;
  r0.y = saturate(r0.w * r0.y + cb2[23].w);
  o1.z = r0.y * cb1[139].y + cb1[139].x;
  o1.w = r0.x;
  o2.w = r0.x;
  o1.xy = float2(0,0.5);
  return;
}