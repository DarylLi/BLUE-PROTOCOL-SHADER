// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = saturate(v3.zw);
  r0.xy = v3.zw + -r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = cmp(r0.x != 0.000000);
  if (r0.x != 0) discard;
  r0.x = t0.Sample(s0_s, v2.xy).x;
  r0.y = t0.Sample(s0_s, v3.xy).y;
  r0.z = t0.Sample(s0_s, v4.xy).z;
  o0.xyz = v1.xyz * r0.xyz;
  o0.w = 1;
  return;
}