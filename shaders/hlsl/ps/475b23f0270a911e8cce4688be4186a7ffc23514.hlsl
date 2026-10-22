// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[127];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD6,
  float4 v2 : TEXCOORD7,
  float4 v3 : TEXCOORD0,
  uint v4 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.Sample(s0_s, v3.xy).x;
  r0.x = r0.x * 180 + -90.3332977;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.xyz = v1.xyz / v1.www;
  r0.xy = -cb0[126].xy + r0.xy;
  r1.xyz = v2.xyz / v2.www;
  r1.xy = -cb0[126].zw + r1.xy;
  r0.xyz = -r1.xyz + r0.xyz;
  o0.xy = r0.xy * float2(0.249500006,0.249500006) + float2(0.499992371,0.499992371);
  r0.x = (uint)r0.z >> 16;
  r0.y = (int)r0.z & 0x0000ffff;
  r0.xy = (uint2)r0.xy;
  r0.y = r0.y * 1.52590219e-005 + 1.52590223e-006;
  r0.x = r0.x * 1.52590219e-005 + 1.52590223e-006;
  o0.zw = min(float2(1,1), r0.xy);
  return;
}