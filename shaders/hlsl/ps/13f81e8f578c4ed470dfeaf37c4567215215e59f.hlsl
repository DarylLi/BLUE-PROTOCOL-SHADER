// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[36];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t1.SampleLevel(s0_s, v0.xy, 0).w;
  r0.x = 255 * r0.x;
  r0.x = round(r0.x);
  r0.x = (uint)r0.x;
  r0.x = (int)r0.x & 15;
  r0.yz = cmp((int2)r0.xx == int2(5,9));
  r0.w = (int)r0.z | (int)r0.y;
  if (r0.w == 0) {
    o0.xyzw = t5.Sample(s1_s, v0.xy).xyzw;
    return;
  }
  r1.xyz = t2.SampleLevel(s0_s, v0.xy, 0).xyz;
  r2.xy = t3.SampleLevel(s0_s, v0.xy, 0).xw;
  r3.xyzw = cmp((int4)r0.xxxx == int4(2,3,4,6));
  r0.w = (int)r3.y | (int)r3.x;
  r0.w = (int)r3.z | (int)r0.w;
  r0.y = (int)r0.y | (int)r0.w;
  r0.y = (int)r3.w | (int)r0.y;
  r3.xyzw = cmp((int4)r0.xxxx == int4(7,8,12,13));
  r0.x = (int)r0.y | (int)r3.x;
  r0.x = (int)r3.y | (int)r0.x;
  r0.x = (int)r3.z | (int)r0.x;
  r0.x = (int)r3.w | (int)r0.x;
  r0.x = (int)r0.z | (int)r0.x;
  r0.xy = (int2)r2.xy & (int2)r0.xx;
  r0.z = t0.SampleLevel(s0_s, v0.xy, 0).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r0.z = r0.w + r0.z;
  r0.z = cb0[27].x / r0.z;
  r0.z = 1024 * r0.z;
  r2.x = 10 * r0.y;
  r0.x = r0.x * 255 + 0.5;
  r3.y = (uint)r0.x;
  r3.xzw = float3(33,0,0);
  r0.x = t4.Load(r3.xyz).w;
  r0.x = r0.x * r0.z;
  r0.x = 3 * r0.x;
  r0.y = 0.5 * cb0[35].z;
  r0.x = r0.x / r0.y;
  r0.x = saturate(-4 + r0.x);
  r2.x = saturate(r2.x);
  r0.x = r2.x * r0.x;
  r2.xyzw = t6.Sample(s1_s, v0.xy).xyzw;
  r0.y = max(9.99999975e-006, r2.w);
  r0.yzw = r2.xyz / r0.yyy;
  r2.xy = cb1[132].xy * v0.xy;
  r2.xy = (uint2)r2.xy;
  r1.w = (uint)cb1[152].x;
  r2.x = (int)r2.y + (int)r2.x;
  r1.w = (int)r1.w + (int)r2.x;
  r1.w = (int)r1.w & 1;
  r2.xyz = t5.SampleLevel(s1_s, v0.xy, 0).xyz;
  r4.xyz = t5.SampleLevel(s1_s, v0.xy, 0, int2(1, 0)).xyz;
  r5.xyz = t5.SampleLevel(s1_s, v0.xy, 0, int2(-1, 0)).xyz;
  r6.xyz = t5.SampleLevel(s1_s, v0.xy, 0, int2(0, 1)).xyz;
  r7.xyz = t5.SampleLevel(s1_s, v0.xy, 0, int2(0, -1)).xyz;
  r2.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.x = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = -r3.x + r2.w;
  r3.x = -r4.w + r3.z;
  r4.xyz = r5.xyz + r4.xyz;
  r5.xyz = r7.xyz + r6.xyz;
  r2.w = cmp(abs(r3.x) < abs(r2.w));
  r2.w = r2.w ? 1.000000 : 0;
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = r2.www * r5.xyz + r4.xyz;
  r5.xyz = float3(0.5,0.5,0.5) * r4.xyz;
  r1.w = r1.w ? 1 : 0;
  r6.xyz = -r4.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r5.xyz = r1.www * r6.xyz + r5.xyz;
  r4.xyz = r4.xyz * float3(0.5,0.5,0.5) + -r2.xyz;
  r2.xyz = r1.www * r4.xyz + r2.xyz;
  r3.xyz = t4.Load(r3.wyw).xyz;
  r3.xyz = r3.xyz * r0.xxx;
  r0.xyz = -r5.xyz + r0.yzw;
  r0.xyz = r3.xyz * r0.xyz + r5.xyz;
  o0.xyz = r0.xyz * r1.xyz + r2.xyz;
  o0.w = 0;
  return;
}