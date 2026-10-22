// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[153];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.SampleLevel(s0_s, v0.xy, 0).w;
  r0.x = 255 * r0.x;
  r0.x = round(r0.x);
  r0.x = (uint)r0.x;
  r0.x = (int)r0.x & 15;
  r0.xy = cmp((int2)r0.xx == int2(5,9));
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x == 0) {
    o0.xyzw = t2.Sample(s1_s, v0.xy).xyzw;
    return;
  }
  r0.xyz = t1.SampleLevel(s0_s, v0.xy, 0).xyz;
  r1.xy = cb0[132].xy * v0.xy;
  r1.xy = (uint2)r1.xy;
  r0.w = (uint)cb0[152].x;
  r1.x = (int)r1.y + (int)r1.x;
  r0.w = (int)r0.w + (int)r1.x;
  r0.w = (int)r0.w & 1;
  r1.xyz = t2.SampleLevel(s1_s, v0.xy, 0).xyz;
  r2.xyz = t2.SampleLevel(s1_s, v0.xy, 0, int2(1, 0)).xyz;
  r3.xyz = t2.SampleLevel(s1_s, v0.xy, 0, int2(-1, 0)).xyz;
  r4.xyz = t2.SampleLevel(s1_s, v0.xy, 0, int2(0, 1)).xyz;
  r5.xyz = t2.SampleLevel(s1_s, v0.xy, 0, int2(0, -1)).xyz;
  r1.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = -r2.w + r1.w;
  r2.w = -r4.w + r3.w;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyz = r5.xyz + r4.xyz;
  r1.w = cmp(abs(r2.w) < abs(r1.w));
  r1.w = r1.w ? 1.000000 : 0;
  r3.xyz = r3.xyz + -r2.xyz;
  r2.xyz = r1.www * r3.xyz + r2.xyz;
  r3.xyz = float3(0.5,0.5,0.5) * r2.xyz;
  r0.w = r0.w ? 1 : 0;
  r4.xyz = -r2.xyz * float3(0.5,0.5,0.5) + r1.xyz;
  r3.xyz = r0.www * r4.xyz + r3.xyz;
  r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + -r1.xyz;
  r1.xyz = r0.www * r2.xyz + r1.xyz;
  o0.xyz = r3.xyz * r0.xyz + r1.xyz;
  o0.w = 0;
  return;
}