// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(asint(cb0[0].x) == 1);
  if (r0.x != 0) {
    r0.x = t0.Sample(s0_s, v0.xy).w;
    r0.y = cmp(r0.x >= 0);
    r0.z = cmp(1 >= r0.x);
    r0.yz = r0.yz ? float2(1,1) : 0;
    r1.x = r0.z * r0.y;
    r1.z = saturate(1 + -r0.x);
    r1.y = 0;
  } else {
    r0.x = cmp(asint(cb0[0].x) == 2);
    if (r0.x != 0) {
      r1.xyz = t1.SampleLevel(s1_s, v0.xy, 0).xyz;
    } else {
      r1.xyz = float3(0,0,0);
    }
  }
  o0.xyz = r1.xyz;
  o0.w = 1;
  return;
}