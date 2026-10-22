// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.Sample(s0_s, v0.xy).w;
  o0.w = v1.w * r0.x;
  r0.x = cmp(cb0[2].x != 1.000000);
  if (r0.x != 0) {
    r0.xyz = saturate(v1.xyz);
    r0.w = 2.20000005 * cb0[2].x;
    r0.xyz = log2(r0.xyz);
    r0.xyz = r0.www * r0.xyz;
    r1.xyz = exp2(r0.xyz);
    r2.xyz = float3(12.9200001,12.9200001,12.9200001) * r1.xyz;
    r1.xyz = cmp(r1.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r0.xyz = float3(0.416666657,0.416666657,0.416666657) * r0.xyz;
    r0.xyz = exp2(r0.xyz);
    r0.xyz = r0.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    o0.xyz = r1.xyz ? r0.xyz : r2.xyz;
  } else {
    o0.xyz = v1.xyz;
  }
  o1.xyzw = float4(0,0,0,0);
  return;
}