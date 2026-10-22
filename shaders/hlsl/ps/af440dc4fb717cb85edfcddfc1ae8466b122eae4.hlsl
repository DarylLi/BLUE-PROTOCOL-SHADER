// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t0.Sample(s0_s, v1.xy).xyz;
  r0.w = cmp(asint(cb0[1].x) == 1);
  if (r0.w != 0) {
    r1.xyz = float3(12.9200001,12.9200001,12.9200001) * r0.xyz;
    r2.xyz = cmp(r0.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r3.xyz = log2(r0.xyz);
    r3.xyz = float3(0.416666657,0.416666657,0.416666657) * r3.xyz;
    r3.xyz = exp2(r3.xyz);
    r3.xyz = r3.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r0.xyz = r2.xyz ? r3.xyz : r1.xyz;
  }
  r0.x = dot(cb0[0].xyz, r0.xyz);
  o0.x = saturate(cb0[0].w + r0.x);
  return;
}