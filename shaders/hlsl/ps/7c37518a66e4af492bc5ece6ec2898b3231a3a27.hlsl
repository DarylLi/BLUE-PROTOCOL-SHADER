// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DMS<float4,8> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[0].xy + v0.xy;
  r0.xy = (uint2)r0.xy;
  r0.zw = float2(0,0);
  r1.xyz = t0.Load(r0.xy, 0).xyz;
  r2.xyz = t0.Load(r0.xy, 1).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = t0.Load(r0.xy, 2).xyz;
  r0.xyz = t0.Load(r0.xy, 3).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o0.xyz = float3(0.25,0.25,0.25) * r0.xyz;
  o0.w = 0;
  return;
}