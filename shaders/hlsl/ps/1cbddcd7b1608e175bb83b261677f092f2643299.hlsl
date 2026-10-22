// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t0.SampleLevel(s0_s, v0.xy, 0).xw;
  r0.xy = float2(255,3.99900007) * r0.yx;
  r0.x = round(r0.x);
  r0.xy = (uint2)r0.xy;
  r0.xy = (int2)r0.xy & int2(15,2);
  r0.y = cmp((int)r0.y != 0);
  r0.xz = cmp((int2)r0.xx == int2(12,13));
  r0.x = (int)r0.z | (int)r0.x;
  r0.x = r0.y ? r0.x : 0;
  r0.y = t2.SampleLevel(s2_s, v0.xy, 0).y;
  o0.w = r0.x ? r0.y : 0;
  r0.xyz = t1.SampleLevel(s1_s, v0.xy, 0).xyz;
  o0.xyz = r0.xyz;
  r0.x = t3.SampleLevel(s3_s, v0.xy, 0).x;
  oDepth = r0.x;
  return;
}