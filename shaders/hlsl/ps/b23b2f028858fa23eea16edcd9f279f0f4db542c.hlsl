// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD1,
  linear noperspective float4 v1 : TEXCOORD2,
  linear noperspective float4 v2 : TEXCOORD3,
  linear noperspective float4 v3 : TEXCOORD4,
  out float2 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t0.Sample(s0_s, v3.xy).xyz;
  r0.x = dot(r0.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r0.yzw = t0.Sample(s0_s, v0.xy).xyz;
  r1.x = dot(r0.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r0.yzw = t0.Sample(s0_s, v0.zw).xyz;
  r1.y = dot(r0.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r0.yz = -r1.xy + r0.xx;
  r1.zw = cmp(abs(r0.yz) >= cb0[34].xx);
  r1.zw = r1.zw ? float2(1,1) : 0;
  r0.w = dot(r1.zw, float2(1,1));
  r0.w = cmp(r0.w == 0.000000);
  if (r0.w != 0) discard;
  r2.xyz = t0.Sample(s0_s, v1.xy).xyz;
  r2.x = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r3.xyz = t0.Sample(s0_s, v1.zw).xyz;
  r2.y = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r0.xw = -r2.xy + r0.xx;
  r0.xw = max(abs(r0.yz), abs(r0.xw));
  r2.xyz = t0.Sample(s0_s, v2.xy).xyz;
  r2.x = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r3.xyz = t0.Sample(s0_s, v2.zw).xyz;
  r2.y = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r1.xy = -r2.xy + r1.xy;
  r0.xw = max(abs(r1.xy), r0.xw);
  r0.x = max(r0.x, r0.w);
  r0.yz = abs(r0.yz) + abs(r0.yz);
  r0.xy = cmp(r0.yz >= r0.xx);
  r0.xy = r0.xy ? float2(1,1) : 0;
  o0.xy = r1.zw * r0.xy;
  return;
}